Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_string_test?download=true
inline.NumInlined: 5601
inline.NumDeleted: 957
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_NS0_3dtl18insert_range_proxyIS9_PKS8_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SN_mSI_:bb.a
  %.not.i.i60 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i60, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEPKS9_E17copy_n_and_updateIPS9_EEvRSA_T_m.exit63, label %.lr.ph.i.i52, !llvm.loop !949

_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEPKS9_E17copy_n_and_updateIPS9_EEvRSA_T_m.exit63: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i.i59, %bb.k
  %.015.lcssa.i95 = phi ptr [ %i.bo, %bb.k ], [ %i.bq, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i.i59 ] ; 2 uses
  %.07.lcssa.i.i61 = phi ptr [ %4, %bb.k ], [ %i.do, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i.i59 ]
  %i.dq = sub nuw i64 %3, %i.d
  br label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEPKS9_E17copy_n_and_updateIPS9_EEvRSA_T_m.exit63, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i
  %.023.i.i = phi i64 [ %i.dt, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i ], [ %i.dq, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEPKS9_E17copy_n_and_updateIPS9_EEvRSA_T_m.exit63 ]
  %.0922.i.i = phi ptr [ %i.dr, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i ], [ %.07.lcssa.i.i61, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEPKS9_E17copy_n_and_updateIPS9_EEvRSA_T_m.exit63 ] ; 2 uses
  %.01721.i.i = phi ptr [ %i.ds, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i ], [ %2, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEPKS9_E17copy_n_and_updateIPS9_EEvRSA_T_m.exit63 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01721.i.i) ]
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01721.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0922.i.i)
          to label %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i unwind label %bb.q

_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i: ; preds = %.lr.ph.i.i64
  %i.dr = getelementptr inbounds nuw i8, ptr %.0922.i.i, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %.01721.i.i, i64 24
  %i.dt = add i64 %.023.i.i, -1                   ; 2 uses
  %.not.i.i65 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i65, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEED2Ev.exit, label %.lr.ph.i.i64, !llvm.loop !84

bb.q:                                             ; preds = %.lr.ph.i.i64
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  %i.dw = tail call ptr @__cxa_begin_catch(ptr %i.dv) #26 ; 0 uses
  %.not1024.i.i = icmp eq ptr %2, %.01721.i.i
  br i1 %.not1024.i.i, label %._crit_edge28.i.i, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.q, %.lr.ph27.i.i
  %.01625.i.i = phi ptr [ %i.dx, %.lr.ph27.i.i ], [ %2, %bb.q ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.01625.i.i) #26
  %i.dx = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 24 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.dx, %.01721.i.i
  br i1 %.not10.i.i, label %._crit_edge28.i.i, label %.lr.ph27.i.i, !llvm.loop !85

bb.r:                                             ; preds = %._crit_edge28.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.s

._crit_edge28.i.i:                                ; preds = %.lr.ph27.i.i, %bb.q
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.r

bb.s:                                             ; preds = %bb.r
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  tail call void @__clang_call_terminate(ptr %i.ea) #28
  unreachable

bb.t:                                             ; preds = %._crit_edge28.i.i
  unreachable

.body.thread:                                     ; preds = %bb.l
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i71.preheader

.body:                                            ; preds = %bb.r
  %.not2.i70 = icmp eq ptr %i.bo, %.015.lcssa.i95
  br i1 %.not2.i70, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEED2Ev.exit48, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %.body.thread, %.body
  %eh.lpad-body124 = phi { ptr, i32 } [ %i.eb, %.body.thread ], [ %i.dy, %.body ]
  %.015.lcssa.i94123 = phi ptr [ %i.bq, %.body.thread ], [ %.015.lcssa.i95, %.body ]
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71
  %.sroa.0.1 = phi ptr [ %i.ec, %.lr.ph.i71 ], [ %i.bo, %.lr.ph.i71.preheader ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sroa.0.1) #26
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 24 ; 2 uses
  %.not.i72 = icmp eq ptr %i.ec, %.015.lcssa.i94123
  br i1 %.not.i72, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEED2Ev.exit48, label %.lr.ph.i71, !llvm.loop !93

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEED2Ev.exit: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i.i, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i, %_ZN5boost9container13move_backwardIPNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SD_E4typeESC_SC_SD_.exit
  ret void

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEED2Ev.exit48: ; preds = %.lr.ph.i46, %.lr.ph.i71, %.body, %bb.j
  %.pn = phi { ptr, i32 } [ %eh.lpad-body124, %.lr.ph.i71 ], [ %i.bm, %bb.j ], [ %i.dy, %.body ], [ %i.bm, %.lr.ph.i46 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_PKS8_EEEEvRT_T0_SI_SI_T1_mT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = inttoptr i64 %6 to ptr
  %.not16.i = icmp eq ptr %1, %2
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.018.i = phi ptr [ %i.b, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.01517.i = phi ptr [ %i.c, %.lr.ph.i ], [ %4, %bb.a ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC1EOS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, ptr noundef nonnull align 8 dereferenceable(24) %.018.i) #26
  %i.b = getelementptr inbounds nuw i8, ptr %.018.i, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.b, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit, label %.lr.ph.i, !llvm.loop !87

_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit: ; preds = %.lr.ph.i, %bb.a
  %.015.lcssa.i = phi ptr [ %4, %bb.a ], [ %i.c, %.lr.ph.i ] ; 6 uses
  %.not20.i.i = icmp eq i64 %5, 0
  br i1 %.not20.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEPKS9_E31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i
  %.023.i.i = phi i64 [ %i.f, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i ], [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit ]
  %.0922.i.i = phi ptr [ %i.d, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i ], [ %i.a, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit ] ; 2 uses
  %.01721.i.i = phi ptr [ %i.e, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i ], [ %.015.lcssa.i, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01721.i.i) ]
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01721.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0922.i.i)
          to label %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i unwind label %bb.b

_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.0922.i.i, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %.01721.i.i, i64 24
  %i.f = add i64 %.023.i.i, -1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEPKS9_E31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit, label %.lr.ph.i.i, !llvm.loop !84

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #26 ; 0 uses
  %.not1024.i.i = icmp eq ptr %.015.lcssa.i, %.01721.i.i
  br i1 %.not1024.i.i, label %._crit_edge28.i.i, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.b, %.lr.ph27.i.i
  %.01625.i.i = phi ptr [ %i.j, %.lr.ph27.i.i ], [ %.015.lcssa.i, %bb.b ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.01625.i.i) #26
  %i.j = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 24 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.j, %.01721.i.i
  br i1 %.not10.i.i, label %._crit_edge28.i.i, label %.lr.ph27.i.i, !llvm.loop !85

bb.c:                                             ; preds = %._crit_edge28.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

._crit_edge28.i.i:                                ; preds = %.lr.ph27.i.i, %bb.b
  invoke void @__cxa_rethrow() #27
          to label %bb.e unwind label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable

bb.e:                                             ; preds = %._crit_edge28.i.i
  unreachable

_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEPKS9_E31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit: ; preds = %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit
  %.not16.i19 = icmp eq ptr %2, %3
  br i1 %.not16.i19, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEED2Ev.exit, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEPKS9_E31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.015.lcssa.i, i64 %5
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %.lr.ph.i20
  %.018.i21 = phi ptr [ %i.o, %.lr.ph.i20 ], [ %2, %.lr.ph.i20.preheader ] ; 2 uses
  %.01517.i22 = phi ptr [ %i.p, %.lr.ph.i20 ], [ %i.n, %.lr.ph.i20.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22) ]
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC1EOS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i22, ptr noundef nonnull align 8 dereferenceable(24) %.018.i21) #26
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i21, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01517.i22, i64 24
  %.not.i23 = icmp eq ptr %i.o, %3
  br i1 %.not.i23, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEED2Ev.exit, label %.lr.ph.i20, !llvm.loop !87

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEED2Ev.exit: ; preds = %.lr.ph.i20, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEPKS9_E31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit
  ret void

.body:                                            ; preds = %bb.c
  %.not2.i28 = icmp eq ptr %4, %.015.lcssa.i
  br i1 %.not2.i28, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEED2Ev.exit31, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.body, %.lr.ph.i29
  %.sroa.0.1 = phi ptr [ %i.q, %.lr.ph.i29 ], [ %4, %.body ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sroa.0.1) #26
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 24 ; 2 uses
  %.not.i30 = icmp eq ptr %i.q, %.015.lcssa.i
  br i1 %.not.i30, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEED2Ev.exit31, label %.lr.ph.i29, !llvm.loop !93

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS4_IwEEvEEEEED2Ev.exit31: ; preds = %.lr.ph.i29, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_explicit_inst_string_test.cpp() #21 section ".text.startup" {
bb.a:
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @dummy) #26
  %i.a = tail call i32 @__cxa_atexit(ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvED1Ev, ptr nonnull @dummy, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind }
attributes #9 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin allocsize(0) }

!llvm.module.flags = !{!94, !95, !96}
!llvm.ident = !{!97}
!llvm.errno.tbaa = !{!102}

!0 = distinct !{!0, !112}
!1 = distinct !{!1, !112}
!2 = distinct !{!2, !112}
!3 = distinct !{!3, !112}
!4 = distinct !{!4, !112}
!5 = distinct !{!5, !112}
!6 = distinct !{!6, !112}
!7 = distinct !{!7, !112}
!8 = distinct !{!8, !112}
!9 = distinct !{!9, !112}
!10 = distinct !{!10, !112}
!11 = distinct !{!11, !112}
!12 = distinct !{!12, !112}
!13 = distinct !{!13, !112}
!14 = distinct !{!14, !112}
!15 = distinct !{!15, !112}
!16 = distinct !{!16, !112}
!17 = distinct !{!17, !112}
!18 = distinct !{!18, !112}
!19 = distinct !{!19, !112}
!20 = distinct !{!20, !112}
!21 = distinct !{!21, !112}
!22 = distinct !{!22, !112}
!23 = distinct !{!23, !112}
!24 = distinct !{!24, !112}
!25 = distinct !{!25, !112}
!26 = distinct !{!26, !112}
!27 = distinct !{!27, !112}
!28 = distinct !{!28, !112}
!29 = distinct !{!29, !112}
!30 = distinct !{!30, !112}
!31 = distinct !{!31, !112}
!32 = distinct !{!32, !112}
!33 = distinct !{!33, !112}
!34 = distinct !{!34, !112}
!35 = distinct !{!35, !112}
!36 = distinct !{!36, !112}
!37 = distinct !{!37, !112}
!38 = distinct !{!38, !112}
!39 = distinct !{!39, !112}
!40 = distinct !{!40, !112}
!41 = distinct !{!41, !112}
!42 = distinct !{!42, !112}
!43 = distinct !{!43, !112}
!44 = distinct !{!44, !112}
!45 = distinct !{!45, !112}
!46 = distinct !{!46, !112}
!47 = distinct !{!47, !112}
!48 = distinct !{!48, !112}
!49 = distinct !{!49, !112}
!50 = distinct !{!50, !112}
!51 = distinct !{!51, !112}
!52 = distinct !{!52, !112}
!53 = distinct !{!53, !112}
!54 = distinct !{!54, !112}
!55 = distinct !{!55, !112}
!56 = distinct !{!56, !112}
!57 = distinct !{!57, !112}
!58 = distinct !{!58, !112}
!59 = distinct !{!59, !112}
!60 = distinct !{!60, !112}
!61 = distinct !{!61, !112}
!62 = distinct !{!62, !112}
!63 = distinct !{!63, !112}
!64 = distinct !{!64, !112}
!65 = distinct !{!65, !112}
!66 = distinct !{!66, !112}
!67 = distinct !{!67, !112}
!68 = distinct !{!68, !112}
!69 = distinct !{!69, !112}
!70 = distinct !{!70, !112}
!71 = distinct !{!71, !112}
!72 = distinct !{!72, !112}
!73 = distinct !{!73, !112}
!74 = distinct !{!74, !112}
!75 = distinct !{!75, !112}
!76 = distinct !{!76, !112}
!77 = distinct !{!77, !112}
!78 = distinct !{!78, !112}
!79 = distinct !{!79, !112}
!80 = distinct !{!80, !112}
!81 = distinct !{!81, !112}
!82 = distinct !{!82, !112}
!83 = distinct !{!83, !112}
!84 = distinct !{!84, !112}
!85 = distinct !{!85, !112}
!86 = distinct !{!86, !112}
!87 = distinct !{!87, !112}
!88 = distinct !{!88, !112}
!89 = distinct !{!89, !112}
!90 = distinct !{!90, !112}
!91 = distinct !{!91, !112}
!92 = distinct !{!92, !112}
!93 = distinct !{!93, !112}
!94 = !{i32 8, !"PIC Level", i32 2}
!95 = !{i32 7, !"PIE Level", i32 2}
!96 = !{i32 7, !"uwtable", i32 2}
!97 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!98 = !{!"Simple C++ TBAA"}
!99 = !{!"omnipotent char", !98, i64 0}
!100 = !{!"int", !99, i64 0}
!101 = !{!"__libc_errno", !100, i64 0}
!102 = !{!101, !100, i64 0}
!103 = !{!"long", !99, i64 0}
!104 = !{!"any pointer", !99, i64 0}
!105 = !{!"p1 omnipotent char", !104, i64 0}
!106 = !{!"_ZTSN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE6long_tE", !103, i64 0, !103, i64 0, !103, i64 8, !105, i64 16}
!107 = !{!106, !105, i64 16}
!108 = !{!106, !103, i64 8}
!109 = !{!99, !99, i64 0}
!110 = !{i64 0, i64 24, !109}
!111 = !{i64 0, i64 1, !109, i64 1, i64 23, !109}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!"llvm.loop.isvectorized", i32 1}
!114 = !{!"llvm.loop.unroll.runtime.disable"}
!115 = !{!"branch_weights", i32 4, i32 28}
!116 = !{!"_ZTSSt9exception"}
!117 = !{!"_ZTSN5boost9container9exceptionE", !116, i64 0, !105, i64 8}
!118 = !{!117, !105, i64 8}
!119 = !{!"vtable pointer", !98, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!122 = !{!"_ZTSN5boost7movelib16reverse_iteratorIPcEE", !105, i64 0}
!123 = !{!122, !105, i64 0}
!124 = !{!"_ZTSN5boost7movelib16reverse_iteratorIPKcEE", !105, i64 0}
!125 = !{!124, !105, i64 0}
!126 = !{!"branch_weights", i32 8, i32 24}
!127 = !{!103, !103, i64 0}
!128 = !{!105, !105, i64 0}
!129 = !{!"llvm.loop.unroll.disable"}
!130 = !{!"_ZTSN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE6long_tE", !103, i64 0, !103, i64 0, !103, i64 8, !105, i64 16}
!131 = !{!130, !105, i64 16}
!132 = !{!130, !103, i64 8}
!133 = !{!"wchar_t", !99, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!"p1 wchar_t", !104, i64 0}
!136 = !{!"_ZTSN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE6long_tE", !103, i64 0, !103, i64 0, !103, i64 8, !135, i64 16}
!137 = !{!136, !135, i64 16}
!138 = !{!136, !103, i64 8}
!139 = !{i64 0, i64 1, !109, i64 4, i64 20, !109}
!140 = !{!"_ZTSN5boost7movelib16reverse_iteratorIPwEE", !135, i64 0}
!141 = !{!140, !135, i64 0}
end_hunk_0
