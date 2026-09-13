Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/partition_generator?download=true
inline.NumInlined: 1265
inline.NumDeleted: 560
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_:bb.a
  br i1 %.not.i11, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %1, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #22
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #26
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit
  %.014 = phi ptr [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 3 uses
  %.sroa.08.013 = phi ptr [ %i.n, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.sroa.08.013, align 8, !tbaa !283 ; 5 uses
  store ptr %i.a, ptr %.014, align 8, !tbaa !283
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !292

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit, !prof !284

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit unwind label %bb.e

_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !455

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #26
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #24
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 3 uses
  %.01215 = phi ptr [ %i.n, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.01215, align 8, !tbaa !283 ; 5 uses
  store ptr %i.a, ptr %.016, align 8, !tbaa !283
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !292

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit, !prof !284

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit unwind label %bb.e

_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.01215, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !456

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #26
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #24
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 7 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph59

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEET_SI_SI_T0_.exit"
  %i.h = icmp eq i64 %i.ea, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph59, !llvm.loop !457

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa53 = phi i64 [ %i.d, %.lr.ph ], [ %i.eo, %bb.b ] ; 2 uses
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.i = add nsw i64 %.lcssa53, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16.i.i.i, %._crit_edge
  %.012.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.au, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !283  ; 16 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !283
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = lshr i64 %i.m, 40
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = and i32 %i.o, 1048575                    ; 3 uses
  %i.q = icmp samesign ult i32 %i.p, 1048574
  br i1 %i.q, label %bb.d, label %bb.e, !prof !292

bb.d:                                             ; preds = %bb.c
  %i.r = add nuw nsw i32 %i.p, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 40
  %i.u = and i64 %i.m, -1152920405095219201
  %i.v = or i64 %i.t, %i.u                        ; 2 uses
  store i64 %i.v, ptr %i.l, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.p, 1048574
  br i1 %i.w, label %bb.f, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i, !prof !284

bb.f:                                             ; preds = %bb.e
  %i.x = or i64 %i.m, 1152920405095219200
  store i64 %i.x, ptr %i.l, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  %.pre.i.i.i = load i64, ptr %i.l, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.y = phi i64 [ %i.v, %bb.d ], [ %i.m, %bb.e ], [ %.pre.i.i.i, %bb.f ] ; 3 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !283
  %i.z = lshr i64 %i.y, 40
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 1048575                  ; 3 uses
  %i.ac = icmp samesign ult i32 %i.ab, 1048574
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !292

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i
  %i.ad = add nuw nsw i32 %i.ab, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 40
  %i.ag = and i64 %i.y, -1152920405095219201
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.l, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit14.i.i.i

bb.h:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.i
  %i.ai = icmp eq i32 %i.ab, 1048574
  br i1 %i.ai, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit14.i.i.i, !prof !284

bb.i:                                             ; preds = %bb.h
  %i.aj = or i64 %i.y, 1152920405095219200
  store i64 %i.aj, ptr %i.l, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit14.i.i.i unwind label %bb.q

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit14.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_T0_SJ_T1_T2_"(ptr nonnull %0, i64 noundef %.012.i.i.i, i64 noundef %.lcssa53, ptr noundef align 8 %9, ptr %3)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit14.i.i.i
  %i.ak = load i64, ptr %i.l, align 8             ; 4 uses
  %i.al = and i64 %i.ak, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.al, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, label %bb.k, !prof !284

bb.k:                                             ; preds = %bb.j
  %i.am = add i64 %i.ak, 1152920405095219200
  %i.an = and i64 %i.am, 1152920405095219200      ; 2 uses
  %i.ao = and i64 %i.ak, -1152920405095219201
  %i.ap = or disjoint i64 %i.an, %i.ao            ; 2 uses
  store i64 %i.ap, ptr %i.l, align 8
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %bb.l, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, !prof !284

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i.i.i unwind label %bb.m

._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i.i.i: ; preds = %bb.l
  %.pre22.i.i.i = load i64, ptr %i.l, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i.i.i, %bb.k, %bb.j
  %i.at = phi i64 [ %.pre22.i.i.i, %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i.i.i ], [ %i.ak, %bb.j ], [ %i.ap, %bb.k ] ; 3 uses
  %.not.i.i.i = icmp eq i64 %.012.i.i.i, 0
  %i.au = add nsw i64 %.012.i.i.i, -1
  %i.av = and i64 %i.at, 1152920405095219200
  %.not.i.i15.i.i.i = icmp eq i64 %i.av, 1152920405095219200
  br i1 %.not.i.i15.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16.i.i.i, label %bb.n, !prof !284

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i
  %i.aw = add i64 %i.at, 1152920405095219200
  %i.ax = and i64 %i.aw, 1152920405095219200      ; 2 uses
  %i.ay = and i64 %i.at, -1152920405095219201
  %i.az = or disjoint i64 %i.ax, %i.ay
  store i64 %i.az, ptr %i.l, align 8
  %i.ba = icmp eq i64 %i.ax, 0
  br i1 %i.ba, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16.i.i.i, !prof !284

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16.i.i.i: ; preds = %bb.o, %bb.n, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_RT0_.exit.i.i", label %bb.c, !llvm.loop !458

bb.q:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit14.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.s

common.resume:                                    ; preds = %bb.ao, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %bb.s ], [ %.pn.i, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.i.i.i = phi { ptr, i32 } [ %i.be, %bb.r ], [ %i.bd, %bb.q ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %common.resume

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_RT0_.exit.i.i": ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_RT0_.exit"
  %.sroa.0.05.i.i = phi ptr [ %i.bf, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_RT0_.exit" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_RT0_.exit.i.i" ]
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !283 ; 16 uses
  store ptr %i.bg, ptr %4, align 8, !tbaa !283
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = lshr i64 %i.bh, 40
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 1048575                  ; 3 uses
  %i.bl = icmp samesign ult i32 %i.bk, 1048574
  br i1 %i.bl, label %bb.t, label %bb.u, !prof !292

bb.t:                                             ; preds = %.lr.ph.i9.i
  %i.bm = add nuw nsw i32 %i.bk, 1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 40
  %i.bp = and i64 %i.bh, -1152920405095219201
  %i.bq = or i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.u:                                             ; preds = %.lr.ph.i9.i
  %i.br = icmp eq i32 %i.bk, 1048574
  br i1 %i.br, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !284

bb.v:                                             ; preds = %bb.u
  %i.bs = or i64 %i.bh, 1152920405095219200
  store i64 %i.bs, ptr %i.bg, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.bt = load ptr, ptr %i.bf, align 8, !tbaa !283 ; 4 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !283
  %.not.i.i = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i, label %bb.w, !prof !284

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i
  %i.bv = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.bw = and i64 %i.bv, 1152920405095219200
  %.not.i.i.i14 = icmp eq i64 %i.bw, 1152920405095219200
  br i1 %.not.i.i.i14, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i, label %bb.x, !prof !284

bb.x:                                             ; preds = %bb.w
  %i.bx = add i64 %i.bv, 1152920405095219200
  %i.by = and i64 %i.bx, 1152920405095219200      ; 2 uses
  %i.bz = and i64 %i.bv, -1152920405095219201
  %i.ca = or disjoint i64 %i.by, %i.bz
  store i64 %i.ca, ptr %i.bt, align 8
  %i.cb = icmp eq i64 %i.by, 0
  br i1 %i.cb, label %bb.y, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i, !prof !284

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i unwind label %bb.am

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i:  ; preds = %bb.y, %bb.x, %bb.w
  %i.cc = load ptr, ptr %0, align 8, !tbaa !283   ; 5 uses
  store ptr %i.cc, ptr %i.bf, align 8, !tbaa !283
  %i.cd = load i64, ptr %i.cc, align 8            ; 3 uses
  %i.ce = lshr i64 %i.cd, 40
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = and i32 %i.cf, 1048575                  ; 3 uses
  %i.ch = icmp samesign ult i32 %i.cg, 1048574
  br i1 %i.ch, label %bb.z, label %bb.aa, !prof !292

bb.z:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i
  %i.ci = add nuw nsw i32 %i.cg, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 40
  %i.cl = and i64 %i.cd, -1152920405095219201
  %i.cm = or i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.cc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i

bb.aa:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i
  %i.cn = icmp eq i32 %i.cg, 1048574
  br i1 %i.cn, label %bb.ab, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i, !prof !284

bb.ab:                                            ; preds = %bb.aa
  %i.co = or i64 %i.cd, 1152920405095219200
  store i64 %i.co, ptr %i.cc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i unwind label %bb.am

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i
  %i.cp = ptrtoint ptr %i.bf to i64
  %i.cq = sub i64 %i.cp, %i.a                     ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 3
  store ptr %i.bg, ptr %5, align 8, !tbaa !283
  %i.cs = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.ct = lshr i64 %i.cs, 40
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = and i32 %i.cu, 1048575                  ; 3 uses
  %i.cw = icmp samesign ult i32 %i.cv, 1048574
  br i1 %i.cw, label %bb.ac, label %bb.ad, !prof !292

bb.ac:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i
  %i.cx = add nuw nsw i32 %i.cv, 1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 40
  %i.da = and i64 %i.cs, -1152920405095219201
  %i.db = or i64 %i.cz, %i.da
  store i64 %i.db, ptr %i.bg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit7.i

bb.ad:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i
  %i.dc = icmp eq i32 %i.cv, 1048574
  br i1 %i.dc, label %bb.ae, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit7.i, !prof !284

bb.ae:                                            ; preds = %bb.ad
  %i.dd = or i64 %i.cs, 1152920405095219200
  store i64 %i.dd, ptr %i.bg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit7.i unwind label %bb.am

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit7.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_T0_SJ_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.cr, ptr noundef align 8 %5, ptr %3)
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit7.i
  %i.de = load i64, ptr %i.bg, align 8            ; 4 uses
  %i.df = and i64 %i.de, 1152920405095219200
  %.not.i.i8.i = icmp eq i64 %i.df, 1152920405095219200
  br i1 %.not.i.i8.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i, label %bb.ag, !prof !284

bb.ag:                                            ; preds = %bb.af
  %i.dg = add i64 %i.de, 1152920405095219200
  %i.dh = and i64 %i.dg, 1152920405095219200      ; 2 uses
  %i.di = and i64 %i.de, -1152920405095219201
  %i.dj = or disjoint i64 %i.dh, %i.di            ; 2 uses
  store i64 %i.dj, ptr %i.bg, align 8
  %i.dk = icmp eq i64 %i.dh, 0
  br i1 %i.dk, label %bb.ah, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i, !prof !284

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i unwind label %bb.ai

._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i: ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.bg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  tail call void @__clang_call_terminate(ptr %i.dm) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i, %bb.ag, %bb.af
  %i.dn = phi i64 [ %.pre.i, %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit_crit_edge.i ], [ %i.de, %bb.af ], [ %i.dj, %bb.ag ] ; 3 uses
  %i.do = and i64 %i.dn, 1152920405095219200
  %.not.i.i10.i = icmp eq i64 %i.do, 1152920405095219200
  br i1 %.not.i.i10.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_RT0_.exit", label %bb.aj, !prof !284

bb.aj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i
  %i.dp = add i64 %i.dn, 1152920405095219200
  %i.dq = and i64 %i.dp, 1152920405095219200      ; 2 uses
  %i.dr = and i64 %i.dn, -1152920405095219201
  %i.ds = or disjoint i64 %i.dq, %i.dr
  store i64 %i.ds, ptr %i.bg, align 8
  %i.dt = icmp eq i64 %i.dq, 0
  br i1 %i.dt, label %bb.ak, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_RT0_.exit", !prof !284

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_RT0_.exit" unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  tail call void @__clang_call_terminate(ptr %i.dv) #24
  unreachable

bb.am:                                            ; preds = %bb.ae, %bb.ab, %bb.y
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit7.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.i = phi { ptr, i32 } [ %i.dx, %bb.an ], [ %i.dw, %bb.am ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_RT0_.exit": ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dy = icmp sgt i64 %i.cq, 8
  br i1 %i.dy, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !459

.lr.ph59:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2658 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02757 = phi i64 [ %i.ea, %bb.b ], [ %2, %.lr.ph ]
  %i.dz = phi i64 [ %i.eo, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ea = add nsw i64 %.02757, -1                 ; 3 uses
  %i.eb = lshr i64 %i.dz, 1
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eb ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %storemerge2658, i64 -8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %3, ptr %7, align 8
  %i.ee = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal6theory18PartitionGenerator15collectLiteralsENS5_15LiteralListTypeEE3$_0EclINS_17__normal_iteratorIPNS3_12NodeTemplateILb1EEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull %i.f, ptr %i.ec)
  br i1 %i.ee, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph59
  %i.ef = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal6theory18PartitionGenerator15collectLiteralsENS5_15LiteralListTypeEE3$_0EclINS_17__normal_iteratorIPNS3_12NodeTemplateILb1EEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %i.ec, ptr nonnull %i.ed)
  br i1 %i.ef, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_SI_T0_.exit.i", label %.sink.split.i.i

bb.aq:                                            ; preds = %.lr.ph59
  %i.eg = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal6theory18PartitionGenerator15collectLiteralsENS5_15LiteralListTypeEE3$_0EclINS_17__normal_iteratorIPNS3_12NodeTemplateILb1EEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull %i.f, ptr nonnull %i.ed)
  br i1 %i.eg, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_SI_T0_.exit.i", label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.aq, %bb.ap
  %.sink29.i.i = phi ptr [ %i.f, %bb.ap ], [ %i.ec, %bb.aq ] ; 2 uses
  %i.eh = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal6theory18PartitionGenerator15collectLiteralsENS5_15LiteralListTypeEE3$_0EclINS_17__normal_iteratorIPNS3_12NodeTemplateILb1EEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %.sink29.i.i, ptr nonnull %i.ed)
  %.26.i.i = select i1 %i.eh, ptr %i.ed, ptr %.sink29.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_SI_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_SI_T0_.exit.i": ; preds = %.sink.split.i.i, %bb.aq, %bb.ap
  %.sink.i.i = phi ptr [ %i.ec, %bb.ap ], [ %i.f, %bb.aq ], [ %.26.i.i, %.sink.split.i.i ]
  tail call void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sink.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.au, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_SI_T0_.exit.i"
  %.sroa.010.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_SI_T0_.exit.i" ], [ %i.ej, %bb.au ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2658, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_SI_T0_.exit.i" ], [ %.sroa.0.1.i.i, %bb.au ]
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.ar ], [ %i.ej, %bb.as ] ; 8 uses
  %i.ei = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal6theory18PartitionGenerator15collectLiteralsENS5_15LiteralListTypeEE3$_0EclINS_17__normal_iteratorIPNS3_12NodeTemplateILb1EEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nonnull %.sroa.010.1.i.i, ptr nonnull readonly %0)
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.as, label %.preheader.i.i, !llvm.loop !460

.preheader.i.i:                                   ; preds = %bb.as, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.as ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal6theory18PartitionGenerator15collectLiteralsENS5_15LiteralListTypeEE3$_0EclINS_17__normal_iteratorIPNS3_12NodeTemplateILb1EEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nonnull readonly %0, ptr nonnull %.sroa.0.1.i.i)
  br i1 %i.ek, label %.preheader.i.i, label %bb.at, !llvm.loop !461

bb.at:                                            ; preds = %.preheader.i.i
  %i.el = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.el, label %bb.au, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEET_SI_SI_T0_.exit"

bb.au:                                            ; preds = %bb.at
  tail call void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1.i.i)
  br label %bb.ar, !llvm.loop !462

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEET_SI_SI_T0_.exit": ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2658, i64 noundef %i.ea, ptr %3)
  %i.em = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.en = sub i64 %i.em, %i.a
  %i.eo = ashr exact i64 %i.en, 3                 ; 3 uses
  %i.ep = icmp sgt i64 %i.eo, 16
  br i1 %i.ep, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !457

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEET_SI_SI_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_SI_SI_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal6theory18PartitionGenerator15collectLiteralsENS5_15LiteralListTypeEE3$_0EclINS_17__normal_iteratorIPNS3_12NodeTemplateILb1EEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !283    ; 5 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !283
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !292

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !284

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.n = load ptr, ptr %2, align 8, !tbaa !283    ; 5 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !283
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = lshr i64 %i.o, 40
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = and i32 %i.q, 1048575                    ; 3 uses
  %i.s = icmp samesign ult i32 %i.r, 1048574
  br i1 %i.s, label %bb.e, label %bb.f, !prof !292

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.t = add nuw nsw i32 %i.r, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 40
  %i.w = and i64 %i.o, -1152920405095219201
  %i.x = or i64 %i.v, %i.w
  store i64 %i.x, ptr %i.n, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit4

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.y = icmp eq i32 %i.r, 1048574
  br i1 %i.y, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit4, !prof !284

bb.g:                                             ; preds = %bb.f
  %i.z = or i64 %i.o, 1152920405095219200
  store i64 %i.z, ptr %i.n, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit4 unwind label %bb.o

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit4: ; preds = %bb.f, %bb.e, %bb.g
  %.val = load ptr, ptr %0, align 8, !tbaa !465
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 304 ; 2 uses
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS4_mESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc5 unwind label %bb.p

.noexc5:                                          ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit4
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS4_mESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %.noexc5
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = load ptr, ptr %4, align 8, !tbaa !283   ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = and i64 %i.ag, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ah, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.i, !prof !284

bb.i:                                             ; preds = %bb.h
  %i.ai = add i64 %i.ag, 1152920405095219200
  %i.aj = and i64 %i.ai, 1152920405095219200      ; 2 uses
  %i.ak = and i64 %i.ag, -1152920405095219201
  %i.al = or disjoint i64 %i.aj, %i.ak
  store i64 %i.al, ptr %i.af, align 8
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !284

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.h, %bb.i, %bb.j
  %i.ap = load ptr, ptr %3, align 8, !tbaa !283   ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = and i64 %i.aq, 1152920405095219200
  %.not.i.i7 = icmp eq i64 %i.ar, 1152920405095219200
  br i1 %.not.i.i7, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit8, label %bb.l, !prof !284

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.as = add i64 %i.aq, 1152920405095219200
  %i.at = and i64 %i.as, 1152920405095219200      ; 2 uses
  %i.au = and i64 %i.aq, -1152920405095219201
  %i.av = or disjoint i64 %i.at, %i.au
  store i64 %i.av, ptr %i.ap, align 8
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit8, !prof !284

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit8 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit8:  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.l, %bb.m
  %i.az = icmp ugt i64 %i.ac, %i.ae
  ret i1 %i.az

bb.o:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %.noexc5, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit4
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %i.ba, %bb.o ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_6theory18PartitionGenerator15collectLiteralsENSE_15LiteralListTypeEE3$_0EEEvT_T0_SJ_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) %3, ptr %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  store ptr %4, ptr %7, align 8
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %.047 = phi i64 [ %spec.select, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.047, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal6theory18PartitionGenerator15collectLiteralsENS5_15LiteralListTypeEE3$_0EclINS_17__normal_iteratorIPNS3_12NodeTemplateILb1EEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %i.f, ptr nonnull %i.h)
  %spec.select = select i1 %i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.047 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !283  ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !283
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.b, !prof !284

bb.b:                                             ; preds = %.lr.ph
  %i.n = load i64, ptr %i.l, align 8              ; 3 uses
  %i.o = and i64 %i.n, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.o, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.c, !prof !284

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %i.n, 1152920405095219200
  %i.q = and i64 %i.p, 1152920405095219200        ; 2 uses
  %i.r = and i64 %i.n, -1152920405095219201
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %i.l, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.d, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !284

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i

end_hunk_0
