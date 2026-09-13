Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/pow2_solver?download=true
inline.NumInlined: 1744
inline.NumDeleted: 596
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv:bb.a
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE16_M_allocate_nodeIJRKS8_EEEPS9_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !21     ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !21
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i64 %i.d, 40
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1048575                    ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 1048574
  br i1 %i.h, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.i = add nuw nsw i32 %i.g, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 40
  %i.l = and i64 %i.d, -1152920405095219201
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %i.c, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.g, 1048574
  br i1 %i.n, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.o = or i64 %i.d, 1152920405095219200
  store i64 %i.o, ptr %i.c, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %bb.i

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 5 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !21
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = lshr i64 %i.s, 40
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 1048575                    ; 3 uses
  %i.w = icmp samesign ult i32 %i.v, 1048574
  br i1 %i.w, label %bb.e, label %bb.f, !prof !43

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i
  %i.x = add nuw nsw i32 %i.v, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 40
  %i.aa = and i64 %i.s, -1152920405095219201
  %i.ab = or i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.r, align 8
  br label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE9constructIS8_JRKS8_EEEvRSA_PT_DpOT0_.exit

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i
  %i.ac = icmp eq i32 %i.v, 1048574
  br i1 %i.ac, label %bb.g, label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE9constructIS8_JRKS8_EEEvRSA_PT_DpOT0_.exit, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.ad = or i64 %i.s, 1152920405095219200
  store i64 %i.ad, ptr %i.r, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE9constructIS8_JRKS8_EEEvRSA_PT_DpOT0_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.b) #22
  br label %bb.j

_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE9constructIS8_JRKS8_EEEvRSA_PT_DpOT0_.exit: ; preds = %bb.g, %bb.f, %bb.e
  ret ptr %i.a

bb.i:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.ae, %bb.h ]
  %i.ag = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #24
  invoke void @__cxa_rethrow() #26
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ai

bb.m:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

bb.n:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE18_M_deallocate_nodeEPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = and i64 %i.d, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.e, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1152920405095219200
  %i.g = and i64 %i.f, 1152920405095219200        ; 2 uses
  %i.h = and i64 %i.d, -1152920405095219201
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.c, align 8
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i, !prof !42

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = and i64 %i.n, 1152920405095219200
  %.not.i.i1.i = icmp eq i64 %i.o, 1152920405095219200
  br i1 %.not.i.i1.i, label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEES3_ED2Ev.exit, label %bb.e, !prof !42

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i
  %i.p = add i64 %i.n, 1152920405095219200
  %i.q = and i64 %i.p, 1152920405095219200        ; 2 uses
  %i.r = and i64 %i.n, -1152920405095219201
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %i.m, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.f, label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEES3_ED2Ev.exit, !prof !42

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEES3_ED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEES3_ED2Ev.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i, %bb.e, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 7 uses
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 3 uses
  %13 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %14 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %15 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 2 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit31

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph184

bb.b:                                             ; preds = %bb.bc
  %i.m = icmp eq i64 %i.ek, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph184, !llvm.loop !358

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa166 = phi i64 [ %i.d, %.lr.ph ], [ %i.ez, %bb.b ] ; 2 uses
  %storemerge88.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(376) %i.n, ptr noundef nonnull align 8 dereferenceable(376) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  invoke void @_ZN4cvc58internal6theory5arith2nl7NlModelC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(376) %i.o, ptr noundef nonnull align 8 dereferenceable(376) %i.n)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.p = add nsw i64 %.lcssa166, -2
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19.i.i.i, %bb.c
  %.012.i.i.i = phi i64 [ %i.q, %bb.c ], [ %i.bc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 16 uses
  store ptr %i.t, ptr %9, align 8, !tbaa !21
  %i.u = load i64, ptr %i.t, align 8              ; 4 uses
  %i.v = lshr i64 %i.u, 40
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = and i32 %i.w, 1048575                    ; 3 uses
  %i.y = icmp samesign ult i32 %i.x, 1048574
  br i1 %i.y, label %bb.e, label %bb.f, !prof !43

bb.e:                                             ; preds = %bb.d
  %i.z = add nuw nsw i32 %i.x, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 40
  %i.ac = and i64 %i.u, -1152920405095219201
  %i.ad = or i64 %i.ab, %i.ac                     ; 2 uses
  store i64 %i.ad, ptr %i.t, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp eq i32 %i.x, 1048574
  br i1 %i.ae, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.af = or i64 %i.u, 1152920405095219200
  store i64 %i.af, ptr %i.t, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.t, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i: ; preds = %.noexc.i, %bb.f, %bb.e
  %i.ag = phi i64 [ %i.ad, %bb.e ], [ %i.u, %bb.f ], [ %.pre.i.i.i, %.noexc.i ] ; 3 uses
  store ptr %i.t, ptr %10, align 8, !tbaa !21
  %i.ah = lshr i64 %i.ag, 40
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1048575                  ; 3 uses
  %i.ak = icmp samesign ult i32 %i.aj, 1048574
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !43

bb.h:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i
  %i.al = add nuw nsw i32 %i.aj, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 40
  %i.ao = and i64 %i.ag, -1152920405095219201
  %i.ap = or i64 %i.an, %i.ao
  store i64 %i.ap, ptr %i.t, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16.i.i.i

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i
  %i.aq = icmp eq i32 %i.aj, 1048574
  br i1 %i.aq, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16.i.i.i, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.ar = or i64 %i.ag, 1152920405095219200
  store i64 %i.ar, ptr %i.t, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16.i.i.i unwind label %bb.r

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  invoke void @_ZN4cvc58internal6theory5arith2nl7NlModelC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(376) %i.r, ptr noundef nonnull align 8 dereferenceable(376) %i.o)
          to label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESA_ILi2EENS7_7NlModelEEEEC2ERKSG_.exit.i.i.i" unwind label %bb.s

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESA_ILi2EENS7_7NlModelEEEEC2ERKSG_.exit.i.i.i": ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16.i.i.i
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_T0_SR_T1_T2_"(ptr nonnull %0, i64 noundef %.012.i.i.i, i64 noundef %.lcssa166, ptr noundef align 8 %10, ptr noundef align 8 %11)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESA_ILi2EENS7_7NlModelEEEEC2ERKSG_.exit.i.i.i"
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %i.r) #22
  %i.as = load i64, ptr %i.t, align 8             ; 4 uses
  %i.at = and i64 %i.as, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.at, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, label %bb.l, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.au = add i64 %i.as, 1152920405095219200
  %i.av = and i64 %i.au, 1152920405095219200      ; 2 uses
  %i.aw = and i64 %i.as, -1152920405095219201
  %i.ax = or disjoint i64 %i.av, %i.aw            ; 2 uses
  store i64 %i.ax, ptr %i.t, align 8
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, !prof !42

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i.i.i unwind label %bb.n

._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i.i.i: ; preds = %bb.m
  %.pre29.i.i.i = load i64, ptr %i.t, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i.i.i, %bb.l, %bb.k
  %i.bb = phi i64 [ %.pre29.i.i.i, %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i.i.i ], [ %i.as, %bb.k ], [ %i.ax, %bb.l ] ; 3 uses
  %.not.i.i.i = icmp eq i64 %.012.i.i.i, 0
  %i.bc = add nsw i64 %.012.i.i.i, -1
  %i.bd = and i64 %i.bb, 1152920405095219200
  %.not.i.i18.i.i.i = icmp eq i64 %i.bd, 1152920405095219200
  br i1 %.not.i.i18.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19.i.i.i, label %bb.o, !prof !42

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i
  %i.be = add i64 %i.bb, 1152920405095219200
  %i.bf = and i64 %i.be, 1152920405095219200      ; 2 uses
  %i.bg = and i64 %i.bb, -1152920405095219201
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.t, align 8
  %i.bi = icmp eq i64 %i.bf, 0
  br i1 %i.bi, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19.i.i.i, !prof !42

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19.i.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19.i.i.i: ; preds = %bb.p, %bb.o, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_RT0_.exit.i.i", label %bb.d, !llvm.loop !359

bb.r:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESA_ILi2EENS7_7NlModelEEEEC2ERKSG_.exit.i.i.i"
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %i.r) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bn, %bb.t ], [ %i.bm, %bb.s ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.u ], [ %i.bl, %bb.r ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.body.i

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_RT0_.exit.i.i": ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %i.o) #22
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_RT0_.exit.i.i", %.noexc17
  %.sroa.0.05.i.i = phi ptr [ %i.bo, %.noexc17 ], [ %storemerge88.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_RT0_.exit.i.i" ]
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !21 ; 16 uses
  store ptr %i.bp, ptr %4, align 8, !tbaa !21
  %i.bq = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.br = lshr i64 %i.bq, 40
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = and i32 %i.bs, 1048575                  ; 3 uses
  %i.bu = icmp samesign ult i32 %i.bt, 1048574
  br i1 %i.bu, label %bb.w, label %bb.x, !prof !43

bb.w:                                             ; preds = %.lr.ph.i10.i
  %i.bv = add nuw nsw i32 %i.bt, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 40
  %i.by = and i64 %i.bq, -1152920405095219201
  %i.bz = or i64 %i.bx, %i.by
  store i64 %i.bz, ptr %i.bp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.x:                                             ; preds = %.lr.ph.i10.i
  %i.ca = icmp eq i32 %i.bt, 1048574
  br i1 %i.ca, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !42

bb.y:                                             ; preds = %bb.x
  %i.cb = or i64 %i.bq, 1152920405095219200
  store i64 %i.cb, ptr %i.bp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %.loopexit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !21 ; 4 uses
  %i.cd = load ptr, ptr %0, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i, label %bb.z, !prof !42

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i
  %i.ce = load i64, ptr %i.cc, align 8            ; 3 uses
  %i.cf = and i64 %i.ce, 1152920405095219200
  %.not.i.i.i24 = icmp eq i64 %i.cf, 1152920405095219200
  br i1 %.not.i.i.i24, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i, label %bb.aa, !prof !42

bb.aa:                                            ; preds = %bb.z
  %i.cg = add i64 %i.ce, 1152920405095219200
  %i.ch = and i64 %i.cg, 1152920405095219200      ; 2 uses
  %i.ci = and i64 %i.ce, -1152920405095219201
  %i.cj = or disjoint i64 %i.ch, %i.ci
  store i64 %i.cj, ptr %i.cc, align 8
  %i.ck = icmp eq i64 %i.ch, 0
  br i1 %i.ck, label %bb.ab, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i, !prof !42

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i unwind label %bb.ap

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i:  ; preds = %bb.ab, %bb.aa, %bb.z
  %i.cl = load ptr, ptr %0, align 8, !tbaa !21    ; 5 uses
  store ptr %i.cl, ptr %i.bo, align 8, !tbaa !21
  %i.cm = load i64, ptr %i.cl, align 8            ; 3 uses
  %i.cn = lshr i64 %i.cm, 40
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = and i32 %i.co, 1048575                  ; 3 uses
  %i.cq = icmp samesign ult i32 %i.cp, 1048574
  br i1 %i.cq, label %bb.ac, label %bb.ad, !prof !43

bb.ac:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i
  %i.cr = add nuw nsw i32 %i.cp, 1
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 40
  %i.cu = and i64 %i.cm, -1152920405095219201
  %i.cv = or i64 %i.ct, %i.cu
  store i64 %i.cv, ptr %i.cl, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i

bb.ad:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i
  %i.cw = icmp eq i32 %i.cp, 1048574
  br i1 %i.cw, label %bb.ae, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i, !prof !42

bb.ae:                                            ; preds = %bb.ad
  %i.cx = or i64 %i.cm, 1152920405095219200
  store i64 %i.cx, ptr %i.cl, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i unwind label %bb.ap

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i
  %i.cy = ptrtoint ptr %i.bo to i64
  %i.cz = sub i64 %i.cy, %i.a                     ; 2 uses
  %i.da = ashr exact i64 %i.cz, 3
  store ptr %i.bp, ptr %5, align 8, !tbaa !21
  %i.db = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.dc = lshr i64 %i.db, 40
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = and i32 %i.dd, 1048575                  ; 3 uses
  %i.df = icmp samesign ult i32 %i.de, 1048574
  br i1 %i.df, label %bb.af, label %bb.ag, !prof !43

bb.af:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i
  %i.dg = add nuw nsw i32 %i.de, 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 40
  %i.dj = and i64 %i.db, -1152920405095219201
  %i.dk = or i64 %i.di, %i.dj
  store i64 %i.dk, ptr %i.bp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit8.i

bb.ag:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i
  %i.dl = icmp eq i32 %i.de, 1048574
  br i1 %i.dl, label %bb.ah, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit8.i, !prof !42

bb.ah:                                            ; preds = %bb.ag
  %i.dm = or i64 %i.db, 1152920405095219200
  store i64 %i.dm, ptr %i.bp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit8.i unwind label %bb.ap

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit8.i: ; preds = %bb.ah, %bb.ag, %bb.af
  invoke void @_ZN4cvc58internal6theory5arith2nl7NlModelC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(376) %16, ptr noundef nonnull align 8 dereferenceable(376) %i.n)
          to label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESA_ILi2EENS7_7NlModelEEEEC2ERKSG_.exit.i" unwind label %bb.aq

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESA_ILi2EENS7_7NlModelEEEEC2ERKSG_.exit.i": ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit8.i
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_T0_SR_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.da, ptr noundef align 8 %5, ptr noundef align 8 %6)
          to label %bb.ai unwind label %bb.ar

bb.ai:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESA_ILi2EENS7_7NlModelEEEEC2ERKSG_.exit.i"
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %16) #22
  %i.dn = load i64, ptr %i.bp, align 8            ; 4 uses
  %i.do = and i64 %i.dn, 1152920405095219200
  %.not.i.i10.i = icmp eq i64 %i.do, 1152920405095219200
  br i1 %.not.i.i10.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i, label %bb.aj, !prof !42

bb.aj:                                            ; preds = %bb.ai
  %i.dp = add i64 %i.dn, 1152920405095219200
  %i.dq = and i64 %i.dp, 1152920405095219200      ; 2 uses
  %i.dr = and i64 %i.dn, -1152920405095219201
  %i.ds = or disjoint i64 %i.dq, %i.dr            ; 2 uses
  store i64 %i.ds, ptr %i.bp, align 8
  %i.dt = icmp eq i64 %i.dq, 0
  br i1 %i.dt, label %bb.ak, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i, !prof !42

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i unwind label %bb.al

._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i: ; preds = %bb.ak
  %.pre.i = load i64, ptr %i.bp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i, %bb.aj, %bb.ai
  %i.dw = phi i64 [ %.pre.i, %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i ], [ %i.dn, %bb.ai ], [ %i.ds, %bb.aj ] ; 3 uses
  %i.dx = and i64 %i.dw, 1152920405095219200
  %.not.i.i12.i = icmp eq i64 %i.dx, 1152920405095219200
  br i1 %.not.i.i12.i, label %.noexc17, label %bb.am, !prof !42

bb.am:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i
  %i.dy = add i64 %i.dw, 1152920405095219200
  %i.dz = and i64 %i.dy, 1152920405095219200      ; 2 uses
  %i.ea = and i64 %i.dw, -1152920405095219201
  %i.eb = or disjoint i64 %i.dz, %i.ea
  store i64 %i.eb, ptr %i.bp, align 8
  %i.ec = icmp eq i64 %i.dz, 0
  br i1 %i.ec, label %bb.an, label %.noexc17, !prof !42

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.noexc17 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #25
  unreachable

bb.ap:                                            ; preds = %bb.ah, %bb.ae, %bb.ab
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit8.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESA_ILi2EENS7_7NlModelEEEEC2ERKSG_.exit.i"
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %16) #22
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn.i25 = phi { ptr, i32 } [ %i.eh, %bb.ar ], [ %i.eg, %bb.aq ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i25, %bb.as ], [ %i.ef, %bb.ap ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

.noexc17:                                         ; preds = %bb.an, %bb.am, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ei = icmp sgt i64 %i.cz, 8
  br i1 %i.ei, label %.lr.ph.i10.i, label %.loopexit30, !llvm.loop !360

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %bb.v
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.v ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %i.o) #22
  br label %.body

.loopexit30:                                      ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %i.n) #22
  br label %.loopexit31

.loopexit:                                        ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph184:                                        ; preds = %.lr.ph, %bb.b
  %storemerge88183 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.089182 = phi i64 [ %i.ek, %bb.b ], [ %2, %.lr.ph ]
  %i.ej = phi i64 [ %i.ez, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ek = add nsw i64 %.089182, -1                ; 3 uses
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(376) %i.f, ptr noundef nonnull align 8 dereferenceable(376) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.el = lshr i64 %i.ej, 1
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.el ; 4 uses
  %i.en = getelementptr inbounds i8, ptr %storemerge88183, i64 -8 ; 4 uses
  invoke void @_ZN4cvc58internal6theory5arith2nl7NlModelC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(376) %i.i, ptr noundef nonnull align 8 dereferenceable(376) %i.f)
          to label %.noexc20 unwind label %bb.bd

.noexc20:                                         ; preds = %.lr.ph184
  %i.eo = invoke fastcc noundef zeroext i1 @"_ZNSt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EES7_ILi2EENS4_7NlModelEEEclIJRNS1_12NodeTemplateILb1EEESG_EbEET0_DpOT_"(ptr noundef nonnull align 8 dereferenceable(384) %7, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.em)
          to label %.noexc.i19 unwind label %bb.ba

.noexc.i19:                                       ; preds = %.noexc20
  br i1 %i.eo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.noexc.i19
  %i.ep = invoke fastcc noundef zeroext i1 @"_ZNSt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EES7_ILi2EENS4_7NlModelEEEclIJRNS1_12NodeTemplateILb1EEESG_EbEET0_DpOT_"(ptr noundef nonnull align 8 dereferenceable(384) %7, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.em, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.en)
          to label %.noexc11.i unwind label %bb.ba

.noexc11.i:                                       ; preds = %bb.au
  br i1 %i.ep, label %bb.aw, label %.sink.split.i.i

bb.av:                                            ; preds = %.noexc.i19
  %i.eq = invoke fastcc noundef zeroext i1 @"_ZNSt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EES7_ILi2EENS4_7NlModelEEEclIJRNS1_12NodeTemplateILb1EEESG_EbEET0_DpOT_"(ptr noundef nonnull align 8 dereferenceable(384) %7, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.en)
          to label %.noexc12.i unwind label %bb.ba

.noexc12.i:                                       ; preds = %bb.av
  br i1 %i.eq, label %bb.aw, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.noexc12.i, %.noexc11.i
  %.sink29.i.i = phi ptr [ %i.h, %.noexc11.i ], [ %i.em, %.noexc12.i ] ; 2 uses
  %i.er = invoke fastcc noundef zeroext i1 @"_ZNSt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EES7_ILi2EENS4_7NlModelEEEclIJRNS1_12NodeTemplateILb1EEESG_EbEET0_DpOT_"(ptr noundef nonnull align 8 dereferenceable(384) %7, ptr noundef nonnull readonly align 8 dereferenceable(8) %.sink29.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.en)
          to label %.noexc13.i unwind label %bb.ba

.noexc13.i:                                       ; preds = %.sink.split.i.i
  %.26.i.i = select i1 %i.er, ptr %i.en, ptr %.sink29.i.i
  br label %bb.aw

bb.aw:                                            ; preds = %.noexc13.i, %.noexc12.i, %.noexc11.i
  %.sink.i.i = phi ptr [ %i.em, %.noexc11.i ], [ %i.h, %.noexc12.i ], [ %.26.i.i, %.noexc13.i ]
  invoke void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sink.i.i)
          to label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_SQ_SQ_T0_.exit.i" unwind label %bb.ba

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_SQ_SQ_T0_.exit.i": ; preds = %bb.aw
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %i.i) #22
  invoke void @_ZN4cvc58internal6theory5arith2nl7NlModelC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(376) %i.j, ptr noundef nonnull align 8 dereferenceable(376) %i.f)
          to label %.noexc17.i unwind label %bb.bd

.noexc17.i:                                       ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_SQ_SQ_T0_.exit.i", %bb.az
  %.sroa.010.0.i.i = phi ptr [ %i.et, %bb.az ], [ %i.h, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_SQ_SQ_T0_.exit.i" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.az ], [ %storemerge88183, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_SQ_SQ_T0_.exit.i" ]
  br label %bb.ax

bb.ax:                                            ; preds = %.noexc15.i, %.noexc17.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %.noexc17.i ], [ %i.et, %.noexc15.i ] ; 8 uses
  %i.es = invoke fastcc noundef zeroext i1 @"_ZNSt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EES7_ILi2EENS4_7NlModelEEEclIJRNS1_12NodeTemplateILb1EEESG_EbEET0_DpOT_"(ptr noundef nonnull align 8 dereferenceable(384) %8, ptr noundef nonnull readonly align 8 dereferenceable(8) %.sroa.010.1.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %0)
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.i

.noexc15.i:                                       ; preds = %bb.ax
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.es, label %bb.ax, label %.preheader.i.i, !llvm.loop !361

.preheader.i.i:                                   ; preds = %.noexc15.i, %.noexc16.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.noexc16.i ], [ %.sroa.0.0.i.i, %.noexc15.i ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.eu = invoke fastcc noundef zeroext i1 @"_ZNSt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EES7_ILi2EENS4_7NlModelEEEclIJRNS1_12NodeTemplateILb1EEESG_EbEET0_DpOT_"(ptr noundef nonnull align 8 dereferenceable(384) %8, ptr noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 dereferenceable(8) %.sroa.0.1.i.i)
          to label %.noexc16.i unwind label %.loopexit.i

.noexc16.i:                                       ; preds = %.preheader.i.i
  br i1 %i.eu, label %.preheader.i.i, label %bb.ay, !llvm.loop !362

bb.ay:                                            ; preds = %.noexc16.i
  %i.ev = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ev, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1.i.i)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !llvm.loop !363

bb.ba:                                            ; preds = %bb.aw, %.sink.split.i.i, %bb.av, %bb.au, %.noexc20
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i18

.loopexit.i:                                      ; preds = %.preheader.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i18

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ax
  %lpad.loopexit23.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i18

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.az
  %lpad.loopexit.split-lp24.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i18

.loopexit.split-lp.i18:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %bb.ba
  %.sink.i = phi ptr [ %i.i, %bb.ba ], [ %i.j, %.loopexit.split-lp.loopexit.i ], [ %i.j, %.loopexit.split-lp.loopexit.split-lp.i ], [ %i.j, %.loopexit.i ]
  %.pn.i = phi { ptr, i32 } [ %i.ew, %bb.ba ], [ %lpad.loopexit23.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp24.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %.sink.i) #22
  br label %.body

bb.bb:                                            ; preds = %bb.ay
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %i.f) #22
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(376) %i.k, ptr noundef nonnull align 8 dereferenceable(376) %i.g)
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge88183, i64 noundef %i.ek, ptr noundef align 8 %15)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %i.k) #22
  %i.ex = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ey = sub i64 %i.ex, %i.a
  %i.ez = ashr exact i64 %i.ey, 3                 ; 3 uses
  %i.fa = icmp sgt i64 %i.ez, 16
  br i1 %i.fa, label %bb.b, label %.loopexit31, !llvm.loop !358

bb.bd:                                            ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_SQ_SQ_SQ_T0_.exit.i", %.lr.ph184
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.be:                                            ; preds = %bb.bb
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit31:                                      ; preds = %bb.bc, %bb.a, %.loopexit30
  ret void

.body:                                            ; preds = %bb.bd, %.loopexit.split-lp.i18, %.body.i, %bb.at, %.loopexit.split-lp, %.loopexit, %bb.be
  %.sink = phi ptr [ %i.n, %.body.i ], [ %i.k, %bb.be ], [ %i.n, %.loopexit ], [ %i.n, %.loopexit.split-lp ], [ %i.n, %bb.at ], [ %i.f, %.loopexit.split-lp.i18 ], [ %i.f, %bb.bd ]
  %.pn15 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.fc, %bb.be ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn.pn.i, %bb.at ], [ %.pn.i, %.loopexit.split-lp.i18 ], [ %i.fb, %bb.bd ]
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelD1Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(376) %.sink) #22
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterISt5_BindIFZNS3_6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EESJ_ILi2EENSG_7NlModelEEEEEEvT_T0_SR_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) %3, ptr noundef nonnull align 8 %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8 ; 5 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %.02449 = phi i64 [ %spec.select, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.02449, 1                       ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = tail call fastcc noundef zeroext i1 @"_ZNSt5_BindIFZN4cvc58internal6theory5arith2nl10Pow2Solver21sortPow2sBasedOnModelEvE3$_0St12_PlaceholderILi1EES7_ILi2EENS4_7NlModelEEEclIJRNS1_12NodeTemplateILb1EEESG_EbEET0_DpOT_"(ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.h)
  %spec.select = select i1 %i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.02449 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %.lr.ph
  %i.n = load i64, ptr %i.l, align 8              ; 3 uses
  %i.o = and i64 %i.n, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.o, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %i.n, 1152920405095219200
  %i.q = and i64 %i.p, 1152920405095219200        ; 2 uses
  %i.r = and i64 %i.n, -1152920405095219201
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %i.l, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.d, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !42

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.d, %bb.c, %bb.b
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !21   ; 5 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !21
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = lshr i64 %i.v, 40
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = and i32 %i.x, 1048575                    ; 3 uses
  %i.z = icmp samesign ult i32 %i.y, 1048574
  br i1 %i.z, label %bb.e, label %bb.f, !prof !43

bb.e:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.aa = add nuw nsw i32 %i.y, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = and i64 %i.v, -1152920405095219201
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.u, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.f:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.af = icmp eq i32 %i.y, 1048574
  br i1 %i.af, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.ag = or i64 %i.v, 1152920405095219200
  store i64 %i.ag, ptr %i.u, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %.lr.ph, %bb.e, %bb.f, %bb.g
  %i.ah = icmp slt i64 %spec.select, %i.b
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !364

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.a
  %.024.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit31

bb.h:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.024.lcssa, %i.al
  br i1 %i.am, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit31

bb.i:                                             ; preds = %bb.h
  %i.an = shl nsw i64 %.024.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 5 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.024.lcssa ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21 ; 4 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !21
  %.not.i28 = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i28, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit31, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.at = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.au = and i64 %i.at, 1152920405095219200
  %.not.i.i29 = icmp eq i64 %i.au, 1152920405095219200
  br i1 %.not.i.i29, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i30, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.av = add i64 %i.at, 1152920405095219200
  %i.aw = and i64 %i.av, 1152920405095219200      ; 2 uses
  %i.ax = and i64 %i.at, -1152920405095219201
  %i.ay = or disjoint i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.ar, align 8
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %bb.l, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i30, !prof !42

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i30

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i30:  ; preds = %bb.l, %bb.k, %bb.j
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 5 uses
  store ptr %i.ba, ptr %i.aq, align 8, !tbaa !21
  %i.bb = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bc = lshr i64 %i.bb, 40
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = and i32 %i.bd, 1048575                  ; 3 uses
  %i.bf = icmp samesign ult i32 %i.be, 1048574
  br i1 %i.bf, label %bb.m, label %bb.n, !prof !43

bb.m:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i30
  %i.bg = add nuw nsw i32 %i.be, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 40
  %i.bj = and i64 %i.bb, -1152920405095219201
  %i.bk = or i64 %i.bi, %i.bj
  store i64 %i.bk, ptr %i.ba, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit31

bb.n:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i30
  %i.bl = icmp eq i32 %i.be, 1048574
  br i1 %i.bl, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit31, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.bm = or i64 %i.bb, 1152920405095219200
  store i64 %i.bm, ptr %i.ba, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit31

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit31: ; preds = %bb.o, %bb.n, %bb.m, %bb.i, %bb.h, %._crit_edge
  %.1 = phi i64 [ %.024.lcssa, %._crit_edge ], [ %.024.lcssa, %bb.h ], [ %i.ao, %bb.i ], [ %i.ao, %bb.m ], [ %i.ao, %bb.n ], [ %i.ao, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4cvc58internal6theory5arith2nl7NlModelC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(376) %i.bn, ptr noundef nonnull align 8 dereferenceable(376) %i.bo)
  %i.bp = load ptr, ptr %3, align 8, !tbaa !21    ; 14 uses
  store ptr %i.bp, ptr %6, align 8, !tbaa !21
  %i.bq = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.br = lshr i64 %i.bq, 40
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = and i32 %i.bs, 1048575                  ; 3 uses
  %i.bu = icmp samesign ult i32 %i.bt, 1048574
  br i1 %i.bu, label %bb.p, label %bb.q, !prof !43

bb.p:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit31
  %i.bv = add nuw nsw i32 %i.bt, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 40
  %i.by = and i64 %i.bq, -1152920405095219201
  %i.bz = or i64 %i.bx, %i.by
  store i64 %i.bz, ptr %i.bp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.q:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit31
  %i.ca = icmp eq i32 %i.bt, 1048574
  br i1 %i.ca, label %bb.r, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !42

end_hunk_0
