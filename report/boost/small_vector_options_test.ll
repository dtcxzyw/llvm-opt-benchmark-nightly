Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/small_vector_options_test?download=true
inline.NumInlined: 1377
inline.NumDeleted: 743
begin_hunk_0_@_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEENS0_10vector_optIS6_vEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS8_JiEEEEENS0_12vec_iteratorIPiLb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp ne ptr %i.q, %2
  %i.x = icmp ne ptr %i.q, null
  %spec.select.i.i.i.i = and i1 %i.x, %i.w
  br i1 %spec.select.i.i.i.i, label %bb.d, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEPiS9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i, !prof !62

bb.d:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 4 %i.q, i64 %i.t, i1 false)
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  br label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEPiS9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEPiS9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i: ; preds = %bb.d, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.p, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i) ]
  %i.z = load i32, ptr %4, align 4, !tbaa !17
  store i32 %i.z, ptr %.0.i.i.i.i, align 4, !tbaa !17
  %i.aa = icmp ne ptr %2, %i.v
  %i.ab = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ab, %i.aa
  br i1 %spec.select.i.i18.i.i, label %bb.e, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEPiS9_NS0_3dtl20insert_emplace_proxyIS8_JiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, !prof !62

bb.e:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEPiS9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.ad = ptrtoint ptr %i.v to i64
  %i.ae = sub i64 %i.ad, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 4 %2, i64 %i.ae, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEPiS9_NS0_3dtl20insert_emplace_proxyIS8_JiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEPiS9_NS0_3dtl20insert_emplace_proxyIS8_JiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i: ; preds = %bb.e, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEPiS9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i
  %.not.i = icmp eq ptr %i.q, null
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = icmp eq ptr %i.af, %i.q
  %or.cond = select i1 %.not.i, i1 true, i1 %i.ag
  br i1 %or.cond, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEENS0_10vector_optIS6_vEEE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS8_JiEEEEEvPimSG_mT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEPiS9_NS0_3dtl20insert_emplace_proxyIS8_JiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ai = shl i64 %i.ah, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ai) #23
  %.pre = load i64, ptr %i.d, align 8, !tbaa !55
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEENS0_10vector_optIS6_vEEE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS8_JiEEEEEvPimSG_mT_.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEENS0_10vector_optIS6_vEEE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS8_JiEEEEEvPimSG_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEPiS9_NS0_3dtl20insert_emplace_proxyIS8_JiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, %bb.f
  %i.aj = phi i64 [ %i.u, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEENS0_16small_vector_optINS0_17growth_factor_100ELm0EvEEEEPiS9_NS0_3dtl20insert_emplace_proxyIS8_JiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i ], [ %.pre, %bb.f ]
  store ptr %i.p, ptr %1, align 8, !tbaa !53
  %i.ak = add i64 %i.aj, %3
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !55
  store i64 %i.m, ptr %i.a, align 8, !tbaa !63
  %i.al = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.al, ptr %0, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 3 uses
  %1 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::small_vector.54", align 8 ; 19 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 4 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %4 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 6 uses
  store i8 -1, ptr %i.f, align 1, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, i8 0, i64 5, i1 false), !noalias !137
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(250) %i.g, i8 0, i64 250, i1 false), !noalias !138
  store i8 -1, ptr %i.e, align 8, !tbaa !69, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 271
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.h, i64 noundef 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 114, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.bv, %bb.bk, %bb.bb, %bb.aq, %bb.aa, %bb.k
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = extractvalue { ptr, i32 } %i.j, 1
  %i.m = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.n = icmp eq i32 %i.l, %i.m
  %i.o = call ptr @__cxa_begin_catch(ptr %i.k) #23 ; 0 uses
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.f unwind label %bb.m       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f, %bb.k, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !47
  %i.q = load i8, ptr %i.e, align 8, !tbaa !71    ; 2 uses
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = load i8, ptr %i.f, align 1, !tbaa !68
  %.not.i = icmp eq i8 %i.s, %i.q
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %2, align 8, !tbaa !67, !nonnull !56, !noundef !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 1, ptr %i.u, align 1, !tbaa !47
  %i.v = load i8, ptr %i.e, align 8, !tbaa !71
  %i.w = add i8 %i.v, 1
  store i8 %i.w, ptr %i.e, align 8, !tbaa !71
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE9push_backEOh.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  %i.x = load ptr, ptr %2, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.y, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.a)
          to label %.noexc64 unwind label %bb.o

.noexc64:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE9push_backEOh.exit

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE9push_backEOh.exit: ; preds = %.noexc64, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 115, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.t unwind label %bb.p

bb.j:                                             ; preds = %bb.d
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 114, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.m:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.n:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.o:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE9push_backEOh.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn31 = phi { ptr, i32 } [ %i.ad, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn31, 1
  %.120 = extractvalue { ptr, i32 } %.pn31, 0
  %i.ae = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.af = icmp eq i32 %.1, %i.ae
  %i.ag = call ptr @__cxa_begin_catch(ptr %.120) #23 ; 0 uses
  br i1 %i.af, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.ah = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.s unwind label %bb.ac      ; 0 uses

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s, %bb.aa, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE9push_backEOh.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !67, !noalias !139 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i8 1, ptr %i.b, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aj = load i8, ptr %i.f, align 1, !tbaa !68, !noalias !140
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !71, !noalias !140 ; 3 uses
  %.not.i.i = icmp eq i8 %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.y, label %bb.u, !prof !61

bb.u:                                             ; preds = %bb.t
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 5 uses
  %.not.i.i.i65 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i65, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.am, align 1, !tbaa !47, !noalias !140
  %i.an = load i8, ptr %i.e, align 8, !tbaa !71, !noalias !140
  %i.ao = add i8 %i.an, 1
  store i8 %i.ao, ptr %i.e, align 8, !tbaa !71, !noalias !140
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit

bb.w:                                             ; preds = %bb.u
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 -1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !47, !noalias !140
  store i8 %i.as, ptr %i.am, align 1, !tbaa !47, !noalias !140
  %i.at = load i8, ptr %i.e, align 8, !tbaa !71, !noalias !140
  %i.au = add i8 %i.at, 1
  store i8 %i.au, ptr %i.e, align 8, !tbaa !71, !noalias !140
  %i.av = xor i64 %i.ap, -1
  %i.aw = add i64 %i.aq, %i.av                    ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, label %bb.x, !prof !61

bb.x:                                             ; preds = %bb.w
  %i.ax = sub i64 0, %i.aw                        ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.am, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 %i.ax
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.az, i64 %i.aw, i1 false), !noalias !140
  br label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i

_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i: ; preds = %bb.x, %bb.w
  %i.ba = load i8, ptr %i.b, align 1, !tbaa !47, !noalias !140
  store i8 %i.ba, ptr %i.ai, align 1, !tbaa !47, !noalias !140
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit

bb.y:                                             ; preds = %bb.t
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ai, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit unwind label %bb.ae

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit: ; preds = %bb.v, %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.aj unwind label %bb.af

bb.z:                                             ; preds = %bb.q
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 115, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.c

bb.ab:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.ac:                                            ; preds = %bb.r
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.ad:                                            ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ae:                                            ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ag

bb.af:                                            ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn35 = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %i.be, %bb.ae ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn35, 1
  %.322 = extractvalue { ptr, i32 } %.pn35, 0
  %i.bg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.bh = icmp eq i32 %.3, %i.bg
  %i.bi = call ptr @__cxa_begin_catch(ptr %.322) #23 ; 0 uses
  br i1 %i.bh, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.bj = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ai unwind label %bb.as     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %bb.ai, %bb.aq, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit
  %i.bk = load ptr, ptr %2, align 8, !tbaa !67, !noalias !141 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 1, ptr %i.c, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bl = load i8, ptr %i.f, align 1, !tbaa !68, !noalias !142
  %i.bm = load i8, ptr %i.e, align 8, !tbaa !71, !noalias !142 ; 3 uses
  %.not.i.i67 = icmp eq i8 %i.bl, %i.bm
  br i1 %.not.i.i67, label %bb.ao, label %bb.ak, !prof !61

bb.ak:                                            ; preds = %bb.aj
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn ; 5 uses
  %.not.i.i.i68 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i68, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.bo, align 1, !tbaa !47, !noalias !142
  %i.bp = load i8, ptr %i.e, align 8, !tbaa !71, !noalias !142
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.e, align 8, !tbaa !71, !noalias !142
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73

bb.am:                                            ; preds = %bb.ak
  %i.br = ptrtoint ptr %i.bk to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 -1 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !47, !noalias !142
  store i8 %i.bu, ptr %i.bo, align 1, !tbaa !47, !noalias !142
  %i.bv = load i8, ptr %i.e, align 8, !tbaa !71, !noalias !142
  %i.bw = add i8 %i.bv, 1
  store i8 %i.bw, ptr %i.e, align 8, !tbaa !71, !noalias !142
  %i.bx = xor i64 %i.br, -1
  %i.by = add i64 %i.bs, %i.bx                    ; 3 uses
  %.not.i.i.i.i69 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.i69, label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70, label %bb.an, !prof !61

bb.an:                                            ; preds = %bb.am
  %i.bz = sub i64 0, %i.by                        ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 %i.bz
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 1 %i.cb, i64 %i.by, i1 false), !noalias !142
  br label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70

_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70: ; preds = %bb.an, %bb.am
  %i.cc = load i8, ptr %i.c, align 1, !tbaa !47, !noalias !142
  store i8 %i.cc, ptr %i.bk, align 1, !tbaa !47, !noalias !142
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73

bb.ao:                                            ; preds = %bb.aj
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.bk, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73 unwind label %bb.au

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73: ; preds = %bb.al, %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.az unwind label %bb.av

bb.ap:                                            ; preds = %bb.ag
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.c

bb.ar:                                            ; preds = %bb.ap
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.as:                                            ; preds = %bb.ah
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.at:                                            ; preds = %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.au:                                            ; preds = %bb.ao
  %i.cg = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.aw

bb.av:                                            ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73
  %i.ch = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn39 = phi { ptr, i32 } [ %i.ch, %bb.av ], [ %i.cg, %bb.au ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn39, 1
  %.524 = extractvalue { ptr, i32 } %.pn39, 0
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.cj = icmp eq i32 %.5, %i.ci
  %i.ck = call ptr @__cxa_begin_catch(ptr %.524) #23 ; 0 uses
  br i1 %i.cj, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.cl = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ay unwind label %bb.bd     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay, %bb.bb, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73
  invoke void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc74 unwind label %bb.bf

.noexc74:                                         ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.aw
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.c

bb.bc:                                            ; preds = %bb.ba
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.bd:                                            ; preds = %bb.ax
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.be:                                            ; preds = %bb.ay
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bf:                                            ; preds = %bb.az
  %i.cp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  %i.cr = extractvalue { ptr, i32 } %i.cp, 1
  %i.cs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23 ; 2 uses
  %i.ct = icmp eq i32 %i.cr, %i.cs
  %i.cu = call ptr @__cxa_begin_catch(ptr %i.cq) #23 ; 0 uses
  br i1 %i.ct, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.cv = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bh unwind label %bb.bm     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_end_catch()
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh, %bb.bk
  invoke void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc75 unwind label %bb.bo

.noexc75:                                         ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bf
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_end_catch()
          to label %bb.bi unwind label %bb.c

bb.bl:                                            ; preds = %bb.bj
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.bm:                                            ; preds = %bb.bg
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.bn:                                            ; preds = %bb.bh
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bo:                                            ; preds = %bb.bi
  %i.cz = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %.8 = extractvalue { ptr, i32 } %i.cz, 1
  %.827 = extractvalue { ptr, i32 } %i.cz, 0
  %i.da = icmp eq i32 %.8, %i.cs
  %i.db = call ptr @__cxa_begin_catch(ptr %.827) #23 ; 0 uses
  br i1 %i.da, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.dc = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bq unwind label %bb.bx     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.by

bb.br:                                            ; preds = %bb.bq, %bb.bv
  %i.dd = load i8, ptr %i.f, align 1, !tbaa !68   ; 2 uses
  %.not.i.i79 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i79, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEED2Ev.exit80, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.de = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.df = icmp eq ptr %i.d, %i.de
  br i1 %i.df, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEED2Ev.exit80, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
end_hunk_0
begin_hunk_1_@_Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv:bb.a
  ret void

bb.bu:                                            ; preds = %bb.bo
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.c

bb.bw:                                            ; preds = %bb.bu
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.bx:                                            ; preds = %bb.bp
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.by:                                            ; preds = %bb.bq
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bn, %bb.bm, %bb.be, %bb.bd, %bb.at, %bb.as, %bb.ad, %bb.ac, %bb.n, %bb.m, %bb.bw, %bb.bl, %bb.bc, %bb.ar, %bb.ab, %bb.l, %bb.c
  %.pn47.pn = phi { ptr, i32 } [ %i.cx, %bb.bm ], [ %i.i, %bb.c ], [ %i.dh, %bb.bw ], [ %i.cn, %bb.bd ], [ %i.cw, %bb.bl ], [ %i.ce, %bb.as ], [ %i.cm, %bb.bc ], [ %i.bc, %bb.ac ], [ %i.cd, %bb.ar ], [ %i.aa, %bb.m ], [ %i.bb, %bb.ab ], [ %i.z, %bb.l ], [ %i.ab, %bb.n ], [ %i.bd, %bb.ad ], [ %i.cf, %bb.at ], [ %i.co, %bb.be ], [ %i.cy, %bb.bn ], [ %i.dj, %bb.by ], [ %i.di, %bb.bx ]
  %i.dk = load i8, ptr %i.f, align 1, !tbaa !68   ; 2 uses
  %.not.i.i81 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i81, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEED2Ev.exit82, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dl = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.dm = icmp eq ptr %i.d, %i.dl
  br i1 %i.dm, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEED2Ev.exit82, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dn = zext i8 %i.dk to i64
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dn) #23
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEED2Ev.exit82

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEED2Ev.exit82: ; preds = %bb.bz, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn47.pn

bb.cc:                                            ; preds = %bb.bx, %bb.bw, %bb.bm, %bb.bl, %bb.bd, %bb.bc, %bb.as, %bb.ar, %bb.ac, %bb.ab, %bb.m, %bb.l
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EhEEEEEvv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 3 uses
  %1 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::small_vector.75", align 8 ; 19 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 4 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %4 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 5 uses
  store i8 -1, ptr %i.f, align 1, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, i8 0, i64 5, i1 false), !noalias !159
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(250) %i.g, i8 0, i64 250, i1 false), !noalias !160
  store i8 -1, ptr %i.e, align 8, !tbaa !76, !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 271
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.h, i64 noundef 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 114, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.bw, %bb.bk, %bb.bb, %bb.aq, %bb.aa, %bb.k
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = extractvalue { ptr, i32 } %i.j, 1
  %i.m = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.n = icmp eq i32 %i.l, %i.m
  %i.o = call ptr @__cxa_begin_catch(ptr %i.k) #23 ; 0 uses
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.f unwind label %bb.m       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f, %bb.k, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !47
  %i.q = load i8, ptr %i.e, align 8, !tbaa !78    ; 2 uses
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = load i8, ptr %i.f, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.s, %i.q
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %2, align 8, !tbaa !74, !nonnull !56, !noundef !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 1, ptr %i.u, align 1, !tbaa !47
  %i.v = load i8, ptr %i.e, align 8, !tbaa !78
  %i.w = add i8 %i.v, 1
  store i8 %i.w, ptr %i.e, align 8, !tbaa !78
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE9push_backEOh.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  %i.x = load ptr, ptr %2, align 8, !tbaa !74
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.y, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.a)
          to label %.noexc64 unwind label %bb.o

.noexc64:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE9push_backEOh.exit

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE9push_backEOh.exit: ; preds = %.noexc64, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 115, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.t unwind label %bb.p

bb.j:                                             ; preds = %bb.d
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 114, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.m:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.n:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.o:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE9push_backEOh.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn31 = phi { ptr, i32 } [ %i.ad, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn31, 1
  %.120 = extractvalue { ptr, i32 } %.pn31, 0
  %i.ae = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.af = icmp eq i32 %.1, %i.ae
  %i.ag = call ptr @__cxa_begin_catch(ptr %.120) #23 ; 0 uses
  br i1 %i.af, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.ah = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.s unwind label %bb.ac      ; 0 uses

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s, %bb.aa, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE9push_backEOh.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !74, !noalias !161 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i8 1, ptr %i.b, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aj = load i8, ptr %i.f, align 1, !tbaa !75, !noalias !162
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !78, !noalias !162 ; 3 uses
  %.not.i.i = icmp eq i8 %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.y, label %bb.u, !prof !61

bb.u:                                             ; preds = %bb.t
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 5 uses
  %.not.i.i.i65 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i65, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.am, align 1, !tbaa !47, !noalias !162
  %i.an = load i8, ptr %i.e, align 8, !tbaa !78, !noalias !162
  %i.ao = add i8 %i.an, 1
  store i8 %i.ao, ptr %i.e, align 8, !tbaa !78, !noalias !162
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit

bb.w:                                             ; preds = %bb.u
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 -1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !47, !noalias !162
  store i8 %i.as, ptr %i.am, align 1, !tbaa !47, !noalias !162
  %i.at = load i8, ptr %i.e, align 8, !tbaa !78, !noalias !162
  %i.au = add i8 %i.at, 1
  store i8 %i.au, ptr %i.e, align 8, !tbaa !78, !noalias !162
  %i.av = xor i64 %i.ap, -1
  %i.aw = add i64 %i.aq, %i.av                    ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, label %bb.x, !prof !61

bb.x:                                             ; preds = %bb.w
  %i.ax = sub i64 0, %i.aw                        ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.am, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 %i.ax
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.az, i64 %i.aw, i1 false), !noalias !162
  br label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i

_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i: ; preds = %bb.x, %bb.w
  %i.ba = load i8, ptr %i.b, align 1, !tbaa !47, !noalias !162
  store i8 %i.ba, ptr %i.ai, align 1, !tbaa !47, !noalias !162
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit

bb.y:                                             ; preds = %bb.t
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ai, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit unwind label %bb.ae

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit: ; preds = %bb.v, %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.aj unwind label %bb.af

bb.z:                                             ; preds = %bb.q
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 115, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.c

bb.ab:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.ac:                                            ; preds = %bb.r
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.ad:                                            ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ae:                                            ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ag

bb.af:                                            ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn35 = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %i.be, %bb.ae ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn35, 1
  %.322 = extractvalue { ptr, i32 } %.pn35, 0
  %i.bg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.bh = icmp eq i32 %.3, %i.bg
  %i.bi = call ptr @__cxa_begin_catch(ptr %.322) #23 ; 0 uses
  br i1 %i.bh, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.bj = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ai unwind label %bb.as     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %bb.ai, %bb.aq, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit
  %i.bk = load ptr, ptr %2, align 8, !tbaa !74, !noalias !163 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 1, ptr %i.c, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bl = load i8, ptr %i.f, align 1, !tbaa !75, !noalias !164
  %i.bm = load i8, ptr %i.e, align 8, !tbaa !78, !noalias !164 ; 3 uses
  %.not.i.i67 = icmp eq i8 %i.bl, %i.bm
  br i1 %.not.i.i67, label %bb.ao, label %bb.ak, !prof !61

bb.ak:                                            ; preds = %bb.aj
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn ; 5 uses
  %.not.i.i.i68 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i68, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.bo, align 1, !tbaa !47, !noalias !164
  %i.bp = load i8, ptr %i.e, align 8, !tbaa !78, !noalias !164
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.e, align 8, !tbaa !78, !noalias !164
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73

bb.am:                                            ; preds = %bb.ak
  %i.br = ptrtoint ptr %i.bk to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 -1 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !47, !noalias !164
  store i8 %i.bu, ptr %i.bo, align 1, !tbaa !47, !noalias !164
  %i.bv = load i8, ptr %i.e, align 8, !tbaa !78, !noalias !164
  %i.bw = add i8 %i.bv, 1
  store i8 %i.bw, ptr %i.e, align 8, !tbaa !78, !noalias !164
  %i.bx = xor i64 %i.br, -1
  %i.by = add i64 %i.bs, %i.bx                    ; 3 uses
  %.not.i.i.i.i69 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.i69, label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70, label %bb.an, !prof !61

bb.an:                                            ; preds = %bb.am
  %i.bz = sub i64 0, %i.by                        ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 %i.bz
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 1 %i.cb, i64 %i.by, i1 false), !noalias !164
  br label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70

_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70: ; preds = %bb.an, %bb.am
  %i.cc = load i8, ptr %i.c, align 1, !tbaa !47, !noalias !164
  store i8 %i.cc, ptr %i.bk, align 1, !tbaa !47, !noalias !164
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73

bb.ao:                                            ; preds = %bb.aj
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.bk, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73 unwind label %bb.au

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73: ; preds = %bb.al, %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.az unwind label %bb.av

bb.ap:                                            ; preds = %bb.ag
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.c

bb.ar:                                            ; preds = %bb.ap
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.as:                                            ; preds = %bb.ah
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.at:                                            ; preds = %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.au:                                            ; preds = %bb.ao
  %i.cg = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.aw

bb.av:                                            ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73
  %i.ch = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn39 = phi { ptr, i32 } [ %i.ch, %bb.av ], [ %i.cg, %bb.au ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn39, 1
  %.524 = extractvalue { ptr, i32 } %.pn39, 0
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.cj = icmp eq i32 %.5, %i.ci
  %i.ck = call ptr @__cxa_begin_catch(ptr %.524) #23 ; 0 uses
  br i1 %i.cj, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.cl = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ay unwind label %bb.bd     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay, %bb.bb, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73
  invoke void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc74 unwind label %bb.bf

.noexc74:                                         ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.aw
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.c

bb.bc:                                            ; preds = %bb.ba
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bd:                                            ; preds = %bb.ax
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.be:                                            ; preds = %bb.ay
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bf:                                            ; preds = %bb.az
  %i.cp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  %i.cr = extractvalue { ptr, i32 } %i.cp, 1
  %i.cs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23 ; 2 uses
  %i.ct = icmp eq i32 %i.cr, %i.cs
  %i.cu = call ptr @__cxa_begin_catch(ptr %i.cq) #23 ; 0 uses
  br i1 %i.ct, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.cv = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bh unwind label %bb.bm     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_end_catch()
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh, %bb.bk
  invoke void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc75 unwind label %bb.bo

.noexc75:                                         ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bf
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implIhN5boost9container12small_vectorIhLm255ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EhEEEEEvv)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_end_catch()
          to label %bb.bi unwind label %bb.c

bb.bl:                                            ; preds = %bb.bj
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bm:                                            ; preds = %bb.bg
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bn:                                            ; preds = %bb.bh
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bo:                                            ; preds = %bb.bi
  %i.cz = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %.8 = extractvalue { ptr, i32 } %i.cz, 1
  %.827 = extractvalue { ptr, i32 } %i.cz, 0
  %i.da = icmp eq i32 %.8, %i.cs
  %i.db = call ptr @__cxa_begin_catch(ptr %.827) #23 ; 0 uses
  br i1 %i.da, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.dc = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bq unwind label %bb.by     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq, %bb.bw
  %i.dd = load i8, ptr %i.f, align 1, !tbaa !75
  %.not.i.i77 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i77, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEED2Ev.exit78, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.de = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.df = icmp eq ptr %i.d, %i.de
  br i1 %i.df, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEED2Ev.exit78, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.q, i64 %i.t, i1 false)
  %i.z = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  br label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEEPhS8_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEEPhS8_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %bb.f, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEEhNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.z, %bb.f ], [ %i.p, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEEhNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i) ]
  %i.aa = load i8, ptr %4, align 1, !tbaa !47
  store i8 %i.aa, ptr %.0.i.i.i.i, align 1, !tbaa !47
  %i.ab = icmp ne ptr %2, %i.w
  %i.ac = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ac, %i.ab
  br i1 %spec.select.i.i18.i.i, label %bb.g, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEEPhS8_NS0_3dtl20insert_emplace_proxyIS7_JhEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, !prof !62

bb.g:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEEPhS8_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %3
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = sub i64 %i.ae, %i.r
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %2, i64 %i.af, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEEPhS8_NS0_3dtl20insert_emplace_proxyIS7_JhEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEEPhS8_NS0_3dtl20insert_emplace_proxyIS7_JhEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %bb.g, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEEPhS8_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JhEEEEEvPhmSF_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEEPhS8_NS0_3dtl20insert_emplace_proxyIS7_JhEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %i.ag = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JhEEEEEvPhmSF_mT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.ag)
          to label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JhEEEEEvPhmSF_mT_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEENS0_10vector_optIvhEEE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JhEEEEEvPhmSF_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EhEEEEPhS8_NS0_3dtl20insert_emplace_proxyIS7_JhEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %bb.h, %bb.i
  store ptr %i.p, ptr %1, align 8, !tbaa !74
  %i.al = load i8, ptr %i.e, align 8, !tbaa !76
  %i.am = trunc i64 %3 to i8
  %i.an = add i8 %i.al, %i.am
  store i8 %i.an, ptr %i.e, align 8, !tbaa !76
  %i.ao = trunc nuw i64 %i.n to i8
  store i8 %i.ao, ptr %i.a, align 1, !tbaa !47
  %i.ap = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.ap, ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 3 uses
  %1 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::small_vector.90", align 8 ; 19 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 4 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %4 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 6 uses
  store i16 -1, ptr %i.f, align 2, !tbaa !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, i8 0, i64 5, i1 false), !noalias !181
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65530) %i.g, i8 0, i64 65530, i1 false), !noalias !182
  store i16 -1, ptr %i.e, align 8, !tbaa !85, !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 65551
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.h, i64 noundef 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 114, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.bv, %bb.bk, %bb.bb, %bb.aq, %bb.aa, %bb.k
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = extractvalue { ptr, i32 } %i.j, 1
  %i.m = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.n = icmp eq i32 %i.l, %i.m
  %i.o = call ptr @__cxa_begin_catch(ptr %i.k) #23 ; 0 uses
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.f unwind label %bb.m       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f, %bb.k, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !47
  %i.q = load i16, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %i.r = zext i16 %i.q to i64                     ; 2 uses
  %i.s = load i16, ptr %i.f, align 2, !tbaa !84
  %.not.i = icmp eq i16 %i.s, %i.q
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %2, align 8, !tbaa !83, !nonnull !56, !noundef !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 1, ptr %i.u, align 1, !tbaa !47
  %i.v = load i16, ptr %i.e, align 8, !tbaa !87
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.e, align 8, !tbaa !87
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE9push_backEOh.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  %i.x = load ptr, ptr %2, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.y, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.a)
          to label %.noexc64 unwind label %bb.o

.noexc64:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE9push_backEOh.exit

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE9push_backEOh.exit: ; preds = %.noexc64, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 115, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.t unwind label %bb.p

bb.j:                                             ; preds = %bb.d
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 114, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.m:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.n:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.o:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE9push_backEOh.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn31 = phi { ptr, i32 } [ %i.ad, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn31, 1
  %.120 = extractvalue { ptr, i32 } %.pn31, 0
  %i.ae = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.af = icmp eq i32 %.1, %i.ae
  %i.ag = call ptr @__cxa_begin_catch(ptr %.120) #23 ; 0 uses
  br i1 %i.af, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.ah = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.s unwind label %bb.ac      ; 0 uses

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s, %bb.aa, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE9push_backEOh.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !83, !noalias !183 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i8 1, ptr %i.b, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aj = load i16, ptr %i.f, align 2, !tbaa !84, !noalias !184
  %i.ak = load i16, ptr %i.e, align 8, !tbaa !87, !noalias !184 ; 3 uses
  %.not.i.i = icmp eq i16 %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.y, label %bb.u, !prof !61

bb.u:                                             ; preds = %bb.t
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 5 uses
  %.not.i.i.i65 = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i65, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.am, align 1, !tbaa !47, !noalias !184
  %i.an = load i16, ptr %i.e, align 8, !tbaa !87, !noalias !184
  %i.ao = add i16 %i.an, 1
  store i16 %i.ao, ptr %i.e, align 8, !tbaa !87, !noalias !184
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit

bb.w:                                             ; preds = %bb.u
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 -1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !47, !noalias !184
  store i8 %i.as, ptr %i.am, align 1, !tbaa !47, !noalias !184
  %i.at = load i16, ptr %i.e, align 8, !tbaa !87, !noalias !184
  %i.au = add i16 %i.at, 1
  store i16 %i.au, ptr %i.e, align 8, !tbaa !87, !noalias !184
  %i.av = xor i64 %i.ap, -1
  %i.aw = add i64 %i.aq, %i.av                    ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, label %bb.x, !prof !61

bb.x:                                             ; preds = %bb.w
  %i.ax = sub i64 0, %i.aw                        ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.am, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 %i.ax
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.az, i64 %i.aw, i1 false), !noalias !184
  br label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i

_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i: ; preds = %bb.x, %bb.w
  %i.ba = load i8, ptr %i.b, align 1, !tbaa !47, !noalias !184
  store i8 %i.ba, ptr %i.ai, align 1, !tbaa !47, !noalias !184
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit

bb.y:                                             ; preds = %bb.t
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ai, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit unwind label %bb.ae

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit: ; preds = %bb.v, %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.aj unwind label %bb.af

bb.z:                                             ; preds = %bb.q
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 115, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.c

bb.ab:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.ac:                                            ; preds = %bb.r
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.ad:                                            ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ae:                                            ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ag

bb.af:                                            ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn35 = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %i.be, %bb.ae ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn35, 1
  %.322 = extractvalue { ptr, i32 } %.pn35, 0
  %i.bg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.bh = icmp eq i32 %.3, %i.bg
  %i.bi = call ptr @__cxa_begin_catch(ptr %.322) #23 ; 0 uses
  br i1 %i.bh, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.bj = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ai unwind label %bb.as     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %bb.ai, %bb.aq, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit
  %i.bk = load ptr, ptr %2, align 8, !tbaa !83, !noalias !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 1, ptr %i.c, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bl = load i16, ptr %i.f, align 2, !tbaa !84, !noalias !186
  %i.bm = load i16, ptr %i.e, align 8, !tbaa !87, !noalias !186 ; 3 uses
  %.not.i.i67 = icmp eq i16 %i.bl, %i.bm
  br i1 %.not.i.i67, label %bb.ao, label %bb.ak, !prof !61

bb.ak:                                            ; preds = %bb.aj
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn ; 5 uses
  %.not.i.i.i68 = icmp eq i16 %i.bm, 0
  br i1 %.not.i.i.i68, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.bo, align 1, !tbaa !47, !noalias !186
  %i.bp = load i16, ptr %i.e, align 8, !tbaa !87, !noalias !186
  %i.bq = add i16 %i.bp, 1
  store i16 %i.bq, ptr %i.e, align 8, !tbaa !87, !noalias !186
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73

bb.am:                                            ; preds = %bb.ak
  %i.br = ptrtoint ptr %i.bk to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 -1 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !47, !noalias !186
  store i8 %i.bu, ptr %i.bo, align 1, !tbaa !47, !noalias !186
  %i.bv = load i16, ptr %i.e, align 8, !tbaa !87, !noalias !186
  %i.bw = add i16 %i.bv, 1
  store i16 %i.bw, ptr %i.e, align 8, !tbaa !87, !noalias !186
  %i.bx = xor i64 %i.br, -1
  %i.by = add i64 %i.bs, %i.bx                    ; 3 uses
  %.not.i.i.i.i69 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.i69, label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70, label %bb.an, !prof !61

bb.an:                                            ; preds = %bb.am
  %i.bz = sub i64 0, %i.by                        ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 %i.bz
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 1 %i.cb, i64 %i.by, i1 false), !noalias !186
  br label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70

_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70: ; preds = %bb.an, %bb.am
  %i.cc = load i8, ptr %i.c, align 1, !tbaa !47, !noalias !186
  store i8 %i.cc, ptr %i.bk, align 1, !tbaa !47, !noalias !186
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73

bb.ao:                                            ; preds = %bb.aj
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.bk, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73 unwind label %bb.au

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73: ; preds = %bb.al, %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.az unwind label %bb.av

bb.ap:                                            ; preds = %bb.ag
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.c

bb.ar:                                            ; preds = %bb.ap
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.as:                                            ; preds = %bb.ah
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.at:                                            ; preds = %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.au:                                            ; preds = %bb.ao
  %i.cg = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.aw

bb.av:                                            ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73
  %i.ch = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn39 = phi { ptr, i32 } [ %i.ch, %bb.av ], [ %i.cg, %bb.au ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn39, 1
  %.524 = extractvalue { ptr, i32 } %.pn39, 0
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.cj = icmp eq i32 %.5, %i.ci
  %i.ck = call ptr @__cxa_begin_catch(ptr %.524) #23 ; 0 uses
  br i1 %i.cj, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.cl = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ay unwind label %bb.bd     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay, %bb.bb, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73
  invoke void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc74 unwind label %bb.bf

.noexc74:                                         ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.aw
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.c

bb.bc:                                            ; preds = %bb.ba
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.bd:                                            ; preds = %bb.ax
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.be:                                            ; preds = %bb.ay
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bf:                                            ; preds = %bb.az
  %i.cp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  %i.cr = extractvalue { ptr, i32 } %i.cp, 1
  %i.cs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23 ; 2 uses
  %i.ct = icmp eq i32 %i.cr, %i.cs
  %i.cu = call ptr @__cxa_begin_catch(ptr %i.cq) #23 ; 0 uses
  br i1 %i.ct, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.cv = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bh unwind label %bb.bm     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_end_catch()
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh, %bb.bk
  invoke void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc75 unwind label %bb.bo

.noexc75:                                         ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bf
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_end_catch()
          to label %bb.bi unwind label %bb.c

bb.bl:                                            ; preds = %bb.bj
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.bm:                                            ; preds = %bb.bg
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.bn:                                            ; preds = %bb.bh
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bo:                                            ; preds = %bb.bi
  %i.cz = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %.8 = extractvalue { ptr, i32 } %i.cz, 1
  %.827 = extractvalue { ptr, i32 } %i.cz, 0
  %i.da = icmp eq i32 %.8, %i.cs
  %i.db = call ptr @__cxa_begin_catch(ptr %.827) #23 ; 0 uses
  br i1 %i.da, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.dc = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bq unwind label %bb.bx     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.by

bb.br:                                            ; preds = %bb.bq, %bb.bv
  %i.dd = load i16, ptr %i.f, align 2, !tbaa !84  ; 2 uses
  %.not.i.i79 = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i79, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEED2Ev.exit80, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.de = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.df = icmp eq ptr %i.d, %i.de
  br i1 %i.df, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEED2Ev.exit80, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
end_hunk_2
begin_hunk_3_@_Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv:bb.a
  ret void

bb.bu:                                            ; preds = %bb.bo
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_13new_allocatorIhEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.c

bb.bw:                                            ; preds = %bb.bu
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.bx:                                            ; preds = %bb.bp
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cc

bb.by:                                            ; preds = %bb.bq
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bn, %bb.bm, %bb.be, %bb.bd, %bb.at, %bb.as, %bb.ad, %bb.ac, %bb.n, %bb.m, %bb.bw, %bb.bl, %bb.bc, %bb.ar, %bb.ab, %bb.l, %bb.c
  %.pn47.pn = phi { ptr, i32 } [ %i.cx, %bb.bm ], [ %i.i, %bb.c ], [ %i.dh, %bb.bw ], [ %i.cn, %bb.bd ], [ %i.cw, %bb.bl ], [ %i.ce, %bb.as ], [ %i.cm, %bb.bc ], [ %i.bc, %bb.ac ], [ %i.cd, %bb.ar ], [ %i.aa, %bb.m ], [ %i.bb, %bb.ab ], [ %i.z, %bb.l ], [ %i.ab, %bb.n ], [ %i.bd, %bb.ad ], [ %i.cf, %bb.at ], [ %i.co, %bb.be ], [ %i.cy, %bb.bn ], [ %i.dj, %bb.by ], [ %i.di, %bb.bx ]
  %i.dk = load i16, ptr %i.f, align 2, !tbaa !84  ; 2 uses
  %.not.i.i81 = icmp eq i16 %i.dk, 0
  br i1 %.not.i.i81, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEED2Ev.exit82, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dl = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.dm = icmp eq ptr %i.d, %i.dl
  br i1 %i.dm, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEED2Ev.exit82, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dn = zext i16 %i.dk to i64
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dn) #23
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEED2Ev.exit82

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_13new_allocatorIvEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEED2Ev.exit82: ; preds = %bb.bz, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn47.pn

bb.cc:                                            ; preds = %bb.bx, %bb.bw, %bb.bm, %bb.bl, %bb.bd, %bb.bc, %bb.as, %bb.ar, %bb.ac, %bb.ab, %bb.m, %bb.l
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EtEEEEEvv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 3 uses
  %1 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::small_vector.108", align 8 ; 19 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 4 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %4 = alloca %"class.boost::container::vec_iterator.64", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  store i16 -1, ptr %i.f, align 2, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, i8 0, i64 5, i1 false), !noalias !203
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65530) %i.g, i8 0, i64 65530, i1 false), !noalias !204
  store i16 -1, ptr %i.e, align 8, !tbaa !91, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 65551
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.h, i64 noundef 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 114, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.bw, %bb.bk, %bb.bb, %bb.aq, %bb.aa, %bb.k
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = extractvalue { ptr, i32 } %i.j, 1
  %i.m = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.n = icmp eq i32 %i.l, %i.m
  %i.o = call ptr @__cxa_begin_catch(ptr %i.k) #23 ; 0 uses
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.f unwind label %bb.m       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f, %bb.k, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !47
  %i.q = load i16, ptr %i.e, align 8, !tbaa !93   ; 2 uses
  %i.r = zext i16 %i.q to i64                     ; 2 uses
  %i.s = load i16, ptr %i.f, align 2, !tbaa !90
  %.not.i = icmp eq i16 %i.s, %i.q
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %2, align 8, !tbaa !89, !nonnull !56, !noundef !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 1, ptr %i.u, align 1, !tbaa !47
  %i.v = load i16, ptr %i.e, align 8, !tbaa !93
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.e, align 8, !tbaa !93
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE9push_backEOh.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  %i.x = load ptr, ptr %2, align 8, !tbaa !89
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.y, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.a)
          to label %.noexc64 unwind label %bb.o

.noexc64:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE9push_backEOh.exit

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE9push_backEOh.exit: ; preds = %.noexc64, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 115, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.t unwind label %bb.p

bb.j:                                             ; preds = %bb.d
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 114, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.m:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.n:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.o:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE9push_backEOh.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn31 = phi { ptr, i32 } [ %i.ad, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn31, 1
  %.120 = extractvalue { ptr, i32 } %.pn31, 0
  %i.ae = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.af = icmp eq i32 %.1, %i.ae
  %i.ag = call ptr @__cxa_begin_catch(ptr %.120) #23 ; 0 uses
  br i1 %i.af, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.ah = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.s unwind label %bb.ac      ; 0 uses

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s, %bb.aa, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE9push_backEOh.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !89, !noalias !205 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i8 1, ptr %i.b, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aj = load i16, ptr %i.f, align 2, !tbaa !90, !noalias !206
  %i.ak = load i16, ptr %i.e, align 8, !tbaa !93, !noalias !206 ; 3 uses
  %.not.i.i = icmp eq i16 %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.y, label %bb.u, !prof !61

bb.u:                                             ; preds = %bb.t
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 5 uses
  %.not.i.i.i65 = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i65, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.am, align 1, !tbaa !47, !noalias !206
  %i.an = load i16, ptr %i.e, align 8, !tbaa !93, !noalias !206
  %i.ao = add i16 %i.an, 1
  store i16 %i.ao, ptr %i.e, align 8, !tbaa !93, !noalias !206
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit

bb.w:                                             ; preds = %bb.u
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 -1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !47, !noalias !206
  store i8 %i.as, ptr %i.am, align 1, !tbaa !47, !noalias !206
  %i.at = load i16, ptr %i.e, align 8, !tbaa !93, !noalias !206
  %i.au = add i16 %i.at, 1
  store i16 %i.au, ptr %i.e, align 8, !tbaa !93, !noalias !206
  %i.av = xor i64 %i.ap, -1
  %i.aw = add i64 %i.aq, %i.av                    ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, label %bb.x, !prof !61

bb.x:                                             ; preds = %bb.w
  %i.ax = sub i64 0, %i.aw                        ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.am, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 %i.ax
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.az, i64 %i.aw, i1 false), !noalias !206
  br label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i

_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i: ; preds = %bb.x, %bb.w
  %i.ba = load i8, ptr %i.b, align 1, !tbaa !47, !noalias !206
  store i8 %i.ba, ptr %i.ai, align 1, !tbaa !47, !noalias !206
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit

bb.y:                                             ; preds = %bb.t
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ai, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit unwind label %bb.ae

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit: ; preds = %bb.v, %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.aj unwind label %bb.af

bb.z:                                             ; preds = %bb.q
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 115, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.c

bb.ab:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.ac:                                            ; preds = %bb.r
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.ad:                                            ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ae:                                            ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ag

bb.af:                                            ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn35 = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %i.be, %bb.ae ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn35, 1
  %.322 = extractvalue { ptr, i32 } %.pn35, 0
  %i.bg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.bh = icmp eq i32 %.3, %i.bg
  %i.bi = call ptr @__cxa_begin_catch(ptr %.322) #23 ; 0 uses
  br i1 %i.bh, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.bj = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ai unwind label %bb.as     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %bb.ai, %bb.aq, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE6insertENS0_12vec_iteratorIPhLb1EEEOh.exit
  %i.bk = load ptr, ptr %2, align 8, !tbaa !89, !noalias !207 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 1, ptr %i.c, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bl = load i16, ptr %i.f, align 2, !tbaa !90, !noalias !208
  %i.bm = load i16, ptr %i.e, align 8, !tbaa !93, !noalias !208 ; 3 uses
  %.not.i.i67 = icmp eq i16 %i.bl, %i.bm
  br i1 %.not.i.i67, label %bb.ao, label %bb.ak, !prof !61

bb.ak:                                            ; preds = %bb.aj
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn ; 5 uses
  %.not.i.i.i68 = icmp eq i16 %i.bm, 0
  br i1 %.not.i.i.i68, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.bo, align 1, !tbaa !47, !noalias !208
  %i.bp = load i16, ptr %i.e, align 8, !tbaa !93, !noalias !208
  %i.bq = add i16 %i.bp, 1
  store i16 %i.bq, ptr %i.e, align 8, !tbaa !93, !noalias !208
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73

bb.am:                                            ; preds = %bb.ak
  %i.br = ptrtoint ptr %i.bk to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 -1 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !47, !noalias !208
  store i8 %i.bu, ptr %i.bo, align 1, !tbaa !47, !noalias !208
  %i.bv = load i16, ptr %i.e, align 8, !tbaa !93, !noalias !208
  %i.bw = add i16 %i.bv, 1
  store i16 %i.bw, ptr %i.e, align 8, !tbaa !93, !noalias !208
  %i.bx = xor i64 %i.br, -1
  %i.by = add i64 %i.bs, %i.bx                    ; 3 uses
  %.not.i.i.i.i69 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.i69, label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70, label %bb.an, !prof !61

bb.an:                                            ; preds = %bb.am
  %i.bz = sub i64 0, %i.by                        ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 %i.bz
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 1 %i.cb, i64 %i.by, i1 false), !noalias !208
  br label %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70

_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70: ; preds = %bb.an, %bb.am
  %i.cc = load i8, ptr %i.c, align 1, !tbaa !47, !noalias !208
  store i8 %i.cc, ptr %i.bk, align 1, !tbaa !47, !noalias !208
  br label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73

bb.ao:                                            ; preds = %bb.aj
  invoke void @_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JhEEEEENS0_12vec_iteratorIPhLb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.64") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.bk, i64 noundef 1, ptr nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73 unwind label %bb.au

_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73: ; preds = %bb.al, %_ZN5boost9container15move_backward_nIPhS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i70, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.az unwind label %bb.av

bb.ap:                                            ; preds = %bb.ag
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.c

bb.ar:                                            ; preds = %bb.ap
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.as:                                            ; preds = %bb.ah
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.at:                                            ; preds = %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.au:                                            ; preds = %bb.ao
  %i.cg = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.aw

bb.av:                                            ; preds = %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73
  %i.ch = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn39 = phi { ptr, i32 } [ %i.ch, %bb.av ], [ %i.cg, %bb.au ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn39, 1
  %.524 = extractvalue { ptr, i32 } %.pn39, 0
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.cj = icmp eq i32 %.5, %i.ci
  %i.ck = call ptr @__cxa_begin_catch(ptr %.524) #23 ; 0 uses
  br i1 %i.cj, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.cl = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ay unwind label %bb.bd     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay, %bb.bb, %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEE7emplaceIJhEEENS0_12vec_iteratorIPhLb0EEENSC_ISD_Lb1EEEDpOT_.exit73
  invoke void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc74 unwind label %bb.bf

.noexc74:                                         ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.aw
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.c

bb.bc:                                            ; preds = %bb.ba
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bd:                                            ; preds = %bb.ax
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.be:                                            ; preds = %bb.ay
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bf:                                            ; preds = %bb.az
  %i.cp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  %i.cr = extractvalue { ptr, i32 } %i.cp, 1
  %i.cs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23 ; 2 uses
  %i.ct = icmp eq i32 %i.cr, %i.cs
  %i.cu = call ptr @__cxa_begin_catch(ptr %i.cq) #23 ; 0 uses
  br i1 %i.ct, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.cv = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bh unwind label %bb.bm     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_end_catch()
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh, %bb.bk
  invoke void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc75 unwind label %bb.bo

.noexc75:                                         ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bf
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_stored_size_type_implItN5boost9container12small_vectorIhLm65535ENS1_9allocatorIhLj2ELj0EEENS1_16small_vector_optIvLm0EtEEEEEvv)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_end_catch()
          to label %bb.bi unwind label %bb.c

bb.bl:                                            ; preds = %bb.bj
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bm:                                            ; preds = %bb.bg
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bn:                                            ; preds = %bb.bh
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bo:                                            ; preds = %bb.bi
  %i.cz = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %.8 = extractvalue { ptr, i32 } %i.cz, 1
  %.827 = extractvalue { ptr, i32 } %i.cz, 0
  %i.da = icmp eq i32 %.8, %i.cs
  %i.db = call ptr @__cxa_begin_catch(ptr %.827) #23 ; 0 uses
  br i1 %i.da, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.dc = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bq unwind label %bb.by     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq, %bb.bw
  %i.dd = load i16, ptr %i.f, align 2, !tbaa !90
  %.not.i.i77 = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i77, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEED2Ev.exit78, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.de = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.df = icmp eq ptr %i.d, %i.de
  br i1 %i.df, label %_ZN5boost9container6vectorIhNS0_22small_vector_allocatorIhNS0_9allocatorIvLj2ELj0EEENS0_16small_vector_optIvLm0EtEEEENS0_10vector_optIvtEEED2Ev.exit78, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
end_hunk_3
