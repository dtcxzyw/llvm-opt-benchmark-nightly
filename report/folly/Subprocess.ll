Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Subprocess?download=true
inline.NumInlined: 2346
inline.NumDeleted: 1250
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev:bb.a
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !39
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairISt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !274  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #48
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.b) #48
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !274    ; 3 uses
  %.not.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit3, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i2

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i2: ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.c) #48
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.c) #48
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit3

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit3: ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i2
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufdlEPv(ptr noundef) local_unnamed_addr #6

declare void @_ZN5folly5IOBuf21coalesceAndReallocateEmmPS0_m(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef i64 @_ZNK5folly5IOBuf22computeChainDataLengthEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef range(i64 -461168601842738790, 461168601842738791) i64 @_ZNK5folly10Subprocess13findByChildFdEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !192  ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEEiZNKS3_13findByChildFdEiE3$_0ET_SC_SC_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i: ; preds = %bb.a
  %i.j = udiv exact i64 %i.h, 20
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i
  %.07.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %i.k = lshr i64 %.07.i.i, 1                     ; 3 uses
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %.sroa.02.06.i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val.i.i.i = load i32, ptr %i.m, align 4, !tbaa !208
  %i.n = icmp slt i32 %.val.i.i.i, %1             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.p = xor i64 %i.k, -1
  %i.q = add nsw i64 %.07.i.i, %i.p
  %.sroa.02.1.i.i = select i1 %i.n, ptr %i.o, ptr %.sroa.02.06.i.i ; 2 uses
  %.1.i.i = select i1 %i.n, i64 %i.q, i64 %i.k    ; 2 uses
  %i.r = icmp sgt i64 %.1.i.i, 0
  br i1 %i.r, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEEiZNKS3_13findByChildFdEiE3$_0ET_SC_SC_RKT0_T1_.exit", !llvm.loop !1495

"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEEiZNKS3_13findByChildFdEiE3$_0ET_SC_SC_RKT0_T1_.exit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.sroa.02.0.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 3 uses
  %i.s = icmp eq ptr %.sroa.02.0.lcssa.i.i, %i.e
  br i1 %i.s, label %.critedge, label %bb.b

bb.b:                                             ; preds = %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEEiZNKS3_13findByChildFdEiE3$_0ET_SC_SC_RKT0_T1_.exit"
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !208
  %.not = icmp eq i32 %i.u, %1
  br i1 %.not, label %bb.h, label %.critedge

.critedge:                                        ; preds = %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEEiZNKS3_13findByChildFdEiE3$_0ET_SC_SC_RKT0_T1_.exit", %bb.b
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA20_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(20) @.str.105, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.critedge
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #49
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.critedge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !39
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.v) #48
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %.pn14, %bb.f ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn13

bb.h:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %.sroa.02.0.lcssa.i.i to i64
  %i.ae = sub i64 %i.ad, %i.g
  %i.af = sdiv exact i64 %i.ae, 20
  ret i64 %i.af

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10Subprocess11communicateENS_8FunctionIFbiiEEES3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef align 16 %1, ptr noundef align 16 %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZNK5folly17ProcessReturnCode7enforceENS0_5StateE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !192  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN5folly10Subprocess17setAllNonBlockingEv.exit, label %.lr.ph.i

bb.b:                                             ; preds = %_ZN5folly14checkUnixErrorIJRA6_KcEEEvlDpOT_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i, i64 20 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZN5folly10Subprocess17setAllNonBlockingEv.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.09.012.i = phi ptr [ %i.g, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.i = load i32, ptr %.sroa.09.012.i, align 4, !tbaa !194 ; 2 uses
  %i.j = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 3) ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.c, label %_ZN5folly14checkUnixErrorIJRA6_KcEEEvlDpOT_.exit.i, !prof !46

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_ZN5folly16throwSystemErrorIJRA6_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(6) @.str.4) #49
  unreachable

_ZN5folly14checkUnixErrorIJRA6_KcEEEvlDpOT_.exit.i: ; preds = %.lr.ph.i
  %i.l = or i32 %i.j, 2048
  %i.m = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 4, i32 noundef %i.l)
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.b, !prof !46

bb.d:                                             ; preds = %_ZN5folly14checkUnixErrorIJRA6_KcEEEvlDpOT_.exit.i
  tail call void @_ZN5folly16throwSystemErrorIJRA6_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(6) @.str.4) #49
  unreachable

_ZN5folly10Subprocess17setAllNonBlockingEv.exit.loopexit: ; preds = %bb.b
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !176
  %.pre365 = load ptr, ptr %i.b, align 8, !tbaa !175
  br label %_ZN5folly10Subprocess17setAllNonBlockingEv.exit

_ZN5folly10Subprocess17setAllNonBlockingEv.exit:  ; preds = %_ZN5folly10Subprocess17setAllNonBlockingEv.exit.loopexit, %bb.a
  %i.o = phi ptr [ %.pre365, %_ZN5folly10Subprocess17setAllNonBlockingEv.exit.loopexit ], [ %i.c, %bb.a ] ; 4 uses
  %i.p = phi ptr [ %.pre, %_ZN5folly10Subprocess17setAllNonBlockingEv.exit.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 20                  ; 3 uses
  %i.u = icmp ugt i64 %i.t, 1152921504606846975
  br i1 %i.u, label %.noexc, label %bb.e

.noexc:                                           ; preds = %_ZN5folly10Subprocess17setAllNonBlockingEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #49
  unreachable

bb.e:                                             ; preds = %_ZN5folly10Subprocess17setAllNonBlockingEv.exit
  %.not173 = icmp eq ptr %i.p, %i.o
  br i1 %.not173, label %_ZNSt6vectorI6pollfdSaIS0_EE7reserveEm.exit, label %_ZNSt12_Vector_baseI6pollfdSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI6pollfdSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %3 = shl nuw nsw i64 %i.t, 3
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #52 ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.t
  %.pre366 = load ptr, ptr %i.d, align 8, !tbaa !176
  %.pre367 = load ptr, ptr %i.b, align 8, !tbaa !175
  br label %_ZNSt6vectorI6pollfdSaIS0_EE7reserveEm.exit

_ZNSt6vectorI6pollfdSaIS0_EE7reserveEm.exit:      ; preds = %_ZNSt12_Vector_baseI6pollfdSaIS0_EE11_M_allocateEm.exit.i, %bb.e
  %6 = phi ptr [ %.pre367, %_ZNSt12_Vector_baseI6pollfdSaIS0_EE11_M_allocateEm.exit.i ], [ %i.o, %bb.e ] ; 2 uses
  %7 = phi ptr [ %.pre366, %_ZNSt12_Vector_baseI6pollfdSaIS0_EE11_M_allocateEm.exit.i ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.25.5 = phi ptr [ %5, %_ZNSt12_Vector_baseI6pollfdSaIS0_EE11_M_allocateEm.exit.i ], [ null, %bb.e ] ; 5 uses
  %.sroa.15.2 = phi ptr [ %4, %_ZNSt12_Vector_baseI6pollfdSaIS0_EE11_M_allocateEm.exit.i ], [ null, %bb.e ] ; 6 uses
  %.pre372 = ptrtoint ptr %7 to i64
  %.pre373 = ptrtoint ptr %6 to i64
  %i.v = sub i64 %.pre372, %.pre373
  %i.w = sdiv exact i64 %i.v, 20                  ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorI6pollfdSaIS0_EE7reserveEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #49
          to label %.noexc42 unwind label %.loopexit.split-lp186

.noexc42:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorI6pollfdSaIS0_EE7reserveEm.exit
  %i.y = icmp eq ptr %7, %6
  br i1 %i.y, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.z = shl nuw nsw i64 %i.w, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #52
          to label %_ZNSt6vectorImSaImEE7reserveEm.exit unwind label %.loopexit.split-lp186 ; 4 uses

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.w ; 2 uses
  %.pre368 = load ptr, ptr %i.b, align 8, !tbaa !192 ; 2 uses
  %.pre369 = load ptr, ptr %i.d, align 8, !tbaa !192 ; 2 uses
  %i.ac = icmp eq ptr %.pre368, %.pre369
  br i1 %i.ac, label %._crit_edge.thread434, label %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit.lr.ph

_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit.lr.ph:  ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit

.loopexit176.loopexit:                            ; preds = %bb.am
  %.pre370 = load ptr, ptr %i.b, align 8, !tbaa !192
  %.pre371 = load ptr, ptr %i.d, align 8, !tbaa !192
  br label %.loopexit176

.loopexit176:                                     ; preds = %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader, %.loopexit176.loopexit, %.preheader
  %.sroa.32.1.lcssa426 = phi ptr [ %.sroa.32.5, %.loopexit176.loopexit ], [ %.sroa.32.5, %.preheader ], [ %.sroa.32.0299, %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader ] ; 2 uses
  %.sroa.17.1.lcssa425 = phi ptr [ %.sroa.17.4, %.loopexit176.loopexit ], [ %.sroa.17.4, %.preheader ], [ %.sroa.17.6, %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader ]
  %.sroa.0119.1.lcssa424 = phi ptr [ %.sroa.0119.5, %.loopexit176.loopexit ], [ %.sroa.0119.5, %.preheader ], [ %.sroa.0119.0297, %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader ] ; 3 uses
  %i.af = phi ptr [ %.pre371, %.loopexit176.loopexit ], [ %i.ei, %.preheader ], [ %i.bo, %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader ] ; 2 uses
  %i.ag = phi ptr [ %.pre370, %.loopexit176.loopexit ], [ %i.ej, %.preheader ], [ %i.bp, %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader ] ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.af
  br i1 %i.ah, label %._crit_edge, label %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit, !llvm.loop !1496

_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit:        ; preds = %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit.lr.ph, %.loopexit176
  %i.ai = phi ptr [ %.pre369, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit.lr.ph ], [ %i.af, %.loopexit176 ]
  %i.aj = phi ptr [ %.pre368, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit.lr.ph ], [ %i.ag, %.loopexit176 ]
  %.sroa.0143.0301 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit.lr.ph ], [ %.sroa.0143.6, %.loopexit176 ] ; 3 uses
  %.sroa.15.0300 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit.lr.ph ], [ %.sroa.15.4, %.loopexit176 ] ; 2 uses
  %.sroa.32.0299 = phi ptr [ %i.ab, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit.lr.ph ], [ %.sroa.32.1.lcssa426, %.loopexit176 ] ; 5 uses
  %.sroa.17.0298 = phi ptr [ %i.aa, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit.lr.ph ], [ %.sroa.17.1.lcssa425, %.loopexit176 ] ; 2 uses
  %.sroa.0119.0297 = phi ptr [ %i.aa, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit.lr.ph ], [ %.sroa.0119.1.lcssa424, %.loopexit176 ] ; 7 uses
  %.sroa.25.0296 = phi ptr [ %.sroa.25.5, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit.lr.ph ], [ %.sroa.25.6, %.loopexit176 ]
  %.not.i.i = icmp eq ptr %.sroa.15.0300, %.sroa.0143.0301
  %spec.select = select i1 %.not.i.i, ptr %.sroa.15.0300, ptr %.sroa.0143.0301
  %.not.i.i44 = icmp eq ptr %.sroa.17.0298, %.sroa.0119.0297
  %.sroa.17.6 = select i1 %.not.i.i44, ptr %.sroa.17.0298, ptr %.sroa.0119.0297 ; 2 uses
  br label %bb.h

.preheader184:                                    ; preds = %_ZNSt6vectorI6pollfdSaIS0_EE9push_backERKS0_.exit
  %i.ak = ptrtoint ptr %.sroa.15.4 to i64
  %i.al = ptrtoint ptr %.sroa.0143.6 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  br label %bb.p

bb.h:                                             ; preds = %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit, %_ZNSt6vectorI6pollfdSaIS0_EE9push_backERKS0_.exit
  %.sroa.0143.1286 = phi ptr [ %.sroa.0143.0301, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit ], [ %.sroa.0143.6, %_ZNSt6vectorI6pollfdSaIS0_EE9push_backERKS0_.exit ] ; 6 uses
  %.sroa.15.1285 = phi ptr [ %spec.select, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit ], [ %.sroa.15.4, %_ZNSt6vectorI6pollfdSaIS0_EE9push_backERKS0_.exit ] ; 5 uses
  %.sroa.0116.0284 = phi ptr [ %i.aj, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit ], [ %i.bk, %_ZNSt6vectorI6pollfdSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.sroa.25.1283 = phi ptr [ %.sroa.25.0296, %_ZNSt6vectorI6pollfdSaIS0_EE5clearEv.exit ], [ %.sroa.25.6, %_ZNSt6vectorI6pollfdSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.ao = load i32, ptr %.sroa.0116.0284, align 4, !tbaa !194 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0116.0284, i64 16
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !210, !range !171, !noundef !172
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0116.0284, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !209
  %i.au = icmp eq i32 %i.at, -3
  %i.av = select i1 %i.au, i64 17179869184, i64 4294967296
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.6.0 = phi i64 [ 0, %bb.h ], [ %i.av, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.15.1285, %.sroa.25.1283
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0100.0.insert.ext = zext i32 %i.ao to i64
  %.sroa.0100.0.insert.insert = or disjoint i64 %.sroa.6.0, %.sroa.0100.0.insert.ext
  store i64 %.sroa.0100.0.insert.insert, ptr %.sroa.15.1285, align 4
  br label %_ZNSt6vectorI6pollfdSaIS0_EE9push_backERKS0_.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = ptrtoint ptr %.sroa.15.1285 to i64
  %i.ax = ptrtoint ptr %.sroa.0143.1286 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.m, label %_ZNKSt6vectorI6pollfdSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #49
          to label %.noexc45 unwind label %.loopexit.split-lp191.loopexit.split-lp

.noexc45:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorI6pollfdSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #52
          to label %.noexc46 unwind label %.loopexit.split-lp191.loopexit.split-lp ; 4 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorI6pollfdSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  %.sroa.0100.0.insert.ext102 = zext i32 %i.ao to i64
  %.sroa.0100.0.insert.insert104 = or disjoint i64 %.sroa.6.0, %.sroa.0100.0.insert.ext102
  store i64 %.sroa.0100.0.insert.insert104, ptr %i.bh, align 4
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.n, label %_ZNSt6vectorI6pollfdSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.n:                                             ; preds = %.noexc46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr align 4 %.sroa.0143.1286, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorI6pollfdSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI6pollfdSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.n, %.noexc46
  %.not.i17.i.i = icmp eq ptr %.sroa.0143.1286, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI6pollfdSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI6pollfdSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.1286, i64 noundef %i.ay) #50
  br label %_ZNSt6vectorI6pollfdSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI6pollfdSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorI6pollfdSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  br label %_ZNSt6vectorI6pollfdSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI6pollfdSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI6pollfdSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.k
  %.sroa.25.6 = phi ptr [ %i.bj, %_ZNSt6vectorI6pollfdSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.25.1283, %bb.k ] ; 9 uses
  %.pn = phi ptr [ %i.bh, %_ZNSt6vectorI6pollfdSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.15.1285, %bb.k ]
  %.sroa.0143.6 = phi ptr [ %i.bg, %_ZNSt6vectorI6pollfdSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.0143.1286, %bb.k ] ; 12 uses
  %.sroa.15.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0116.0284, i64 20 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ai
  br i1 %i.bl, label %.preheader184, label %bb.h

.loopexit.split-lp191.loopexit.split-lp:          ; preds = %_ZNKSt6vectorI6pollfdSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.p:                                             ; preds = %.preheader184, %bb.r
  %i.bm = invoke i32 @poll(ptr noundef %.sroa.0143.6, i64 noundef %i.an, i32 noundef -1)
          to label %bb.q unwind label %.loopexit185

bb.q:                                             ; preds = %bb.p
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.r, label %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader

_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader: ; preds = %bb.q
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !176 ; 2 uses
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !175 ; 3 uses
  %.not306 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not306, label %.loopexit176, label %.lr.ph

bb.r:                                             ; preds = %bb.q
  %i.bq = tail call ptr @__errno_location() #55
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.bs = icmp eq i32 %i.br, 4
  br i1 %i.bs, label %bb.p, label %.critedge.thread, !llvm.loop !1497

.critedge.thread:                                 ; preds = %bb.r
  invoke void @_ZN5folly16throwSystemErrorIJRA5_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(5) @.str.100) #49
          to label %.noexc47 unwind label %.loopexit.split-lp186

.noexc47:                                         ; preds = %.critedge.thread
  unreachable

.preheader:                                       ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit76
  %.not175293 = icmp eq ptr %.sroa.17.4, %.sroa.0119.5
  br i1 %.not175293, label %.loopexit176, label %.lr.ph295

.lr.ph:                                           ; preds = %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit76
  %i.bt = phi ptr [ %i.ej, %_ZNSt6vectorImSaImEE9push_backERKm.exit76 ], [ %i.bp, %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader ]
  %storemerge290 = phi i64 [ %i.eh, %_ZNSt6vectorImSaImEE9push_backERKm.exit76 ], [ 0, %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader ] ; 9 uses
  %.sroa.32.1289 = phi ptr [ %.sroa.32.5, %_ZNSt6vectorImSaImEE9push_backERKm.exit76 ], [ %.sroa.32.0299, %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader ] ; 8 uses
  %.sroa.17.1288 = phi ptr [ %.sroa.17.4, %_ZNSt6vectorImSaImEE9push_backERKm.exit76 ], [ %.sroa.17.6, %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader ] ; 5 uses
  %.sroa.0119.1287 = phi ptr [ %.sroa.0119.5, %_ZNSt6vectorImSaImEE9push_backERKm.exit76 ], [ %.sroa.0119.0297, %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit.preheader ] ; 10 uses
  %i.bu = getelementptr inbounds nuw [20 x i8], ptr %i.bt, i64 %storemerge290 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !194 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0143.6, i64 %storemerge290
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !1501 ; 3 uses
  %i.bz = and i16 %i.by, 4
  %.not = icmp eq i16 %i.bz, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !208
  %i.cc = load ptr, ptr %i.ad, align 16, !tbaa !283
  %i.cd = invoke noundef zeroext i1 %i.cc(i32 noundef %i.bv, i32 noundef %i.cb, ptr noundef nonnull align 16 dereferenceable(48) %2)
          to label %_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit unwind label %.loopexit177, !inline_history !1498

_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit: ; preds = %bb.s
  br i1 %i.cd, label %bb.t, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.t:                                             ; preds = %_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit
  %.not.i49 = icmp eq ptr %.sroa.17.1288, %.sroa.32.1289
  br i1 %.not.i49, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %storemerge290, ptr %.sroa.17.1288, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.17.1288, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.v:                                             ; preds = %bb.t
  %i.cf = ptrtoint ptr %.sroa.32.1289 to i64
  %i.cg = ptrtoint ptr %.sroa.0119.1287 to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 6 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.w, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #49
          to label %.noexc53 unwind label %.loopexit.split-lp178

.noexc53:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.cj = ashr exact i64 %i.ch, 3                 ; 3 uses
  %.sroa.speculated.i.i.i50 = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i50, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i.i.i51 = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i51)
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #52
          to label %.noexc54 unwind label %.loopexit177 ; 4 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %i.ch ; 2 uses
  store i64 %storemerge290, ptr %i.cq, align 8, !tbaa !47
  %i.cr = icmp sgt i64 %i.ch, 0
  br i1 %i.cr, label %bb.x, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cp, ptr align 8 %.sroa.0119.1287, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %.noexc54
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.not.i17.i.i52 = icmp eq ptr %.sroa.0119.1287, null
  br i1 %.not.i17.i.i52, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.1287, i64 noundef %i.ch) #50
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit177:                                     ; preds = %bb.s, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.z, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i58, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i68
  %.sroa.0119.2.ph = phi ptr [ %.sroa.0119.1287, %bb.s ], [ %.sroa.0119.1287, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0119.3, %bb.z ], [ %.sroa.0119.3, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i58 ], [ %.sroa.0119.3, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i68 ]
  %.sroa.32.2.ph = phi ptr [ %.sroa.32.1289, %bb.s ], [ %.sroa.32.1289, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.32.3, %bb.z ], [ %.sroa.17.2, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i58 ], [ %.sroa.17.2, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i68 ]
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp178:                            ; preds = %.invoke, %bb.w
  %.sroa.0119.2.ph179 = phi ptr [ %.sroa.0119.3, %.invoke ], [ %.sroa.0119.1287, %bb.w ]
  %.sroa.32.2.ph180 = phi ptr [ %.sroa.17.2, %.invoke ], [ %.sroa.32.1289, %bb.w ]
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.u, %_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit, %.lr.ph
  %.sroa.0119.3 = phi ptr [ %.sroa.0119.1287, %.lr.ph ], [ %.sroa.0119.1287, %_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit ], [ %i.cp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0119.1287, %bb.u ] ; 15 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.1288, %.lr.ph ], [ %.sroa.17.1288, %_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit ], [ %i.cs, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ce, %bb.u ] ; 12 uses
  %.sroa.32.3 = phi ptr [ %.sroa.32.1289, %.lr.ph ], [ %.sroa.32.1289, %_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit ], [ %i.ct, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.32.1289, %bb.u ] ; 6 uses
  %.022 = phi i1 [ false, %.lr.ph ], [ false, %_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit ], [ true, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ true, %bb.u ]
  %i.cu = and i16 %i.by, 17
  %.not34 = icmp eq i16 %i.cu, 0
  br i1 %.not34, label %_ZNSt6vectorImSaImEE9push_backERKm.exit66, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !208
  %i.cx = load ptr, ptr %i.ae, align 16, !tbaa !283
  %i.cy = invoke noundef zeroext i1 %i.cx(i32 noundef %i.bv, i32 noundef %i.cw, ptr noundef nonnull align 16 dereferenceable(48) %1)
          to label %_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit56 unwind label %.loopexit177, !inline_history !1498

_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit56: ; preds = %bb.z
  br i1 %i.cy, label %bb.aa, label %_ZNSt6vectorImSaImEE9push_backERKm.exit66

bb.aa:                                            ; preds = %_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit56
  %.not.i57 = icmp eq ptr %.sroa.17.2, %.sroa.32.3
  br i1 %.not.i57, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %storemerge290, ptr %.sroa.17.2, align 8, !tbaa !47
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.17.2, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit76

bb.ac:                                            ; preds = %bb.aa
  %i.da = ptrtoint ptr %.sroa.17.2 to i64
  %i.db = ptrtoint ptr %.sroa.0119.3 to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 6 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775800
  br i1 %i.dd, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i58

.invoke:                                          ; preds = %bb.ah, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #49
          to label %.cont unwind label %.loopexit.split-lp178

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i58: ; preds = %bb.ac
  %i.de = ashr exact i64 %i.dc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i59 = tail call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i59, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 1152921504606846975)
  %i.di = select i1 %i.dg, i64 1152921504606846975, i64 %i.dh ; 3 uses
  %.not.i.i.i60 = icmp ne i64 %i.di, 0
  tail call void @llvm.assume(i1 %.not.i.i.i60)
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #52
          to label %.noexc65 unwind label %.loopexit177 ; 4 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i58
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dc ; 2 uses
  store i64 %storemerge290, ptr %i.dl, align 8, !tbaa !47
  %i.dm = icmp sgt i64 %i.dc, 0
  br i1 %i.dm, label %bb.ad, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i61

bb.ad:                                            ; preds = %.noexc65
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %.sroa.0119.3, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i61

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i61: ; preds = %bb.ad, %.noexc65
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.not.i17.i.i62 = icmp eq ptr %.sroa.0119.3, null
  br i1 %.not.i17.i.i62, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i63, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i61
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.3, i64 noundef %i.dc) #50
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i63

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i63: ; preds = %bb.ae, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i61
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit76

_ZNSt6vectorImSaImEE9push_backERKm.exit66:        ; preds = %_ZN5folly6detail8function14FunctionTraitsIFbiiEEclEii.exit56, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.dp = and i16 %i.by, 24
  %i.dq = icmp eq i16 %i.dp, 0
  %or.cond = or i1 %i.dq, %.022
  br i1 %or.cond, label %_ZNSt6vectorImSaImEE9push_backERKm.exit76, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit66
  %.not.i67 = icmp eq ptr %.sroa.17.2, %.sroa.32.3
  br i1 %.not.i67, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 %storemerge290, ptr %.sroa.17.2, align 8, !tbaa !47
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.17.2, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit76

bb.ah:                                            ; preds = %bb.af
  %i.ds = ptrtoint ptr %.sroa.17.2 to i64
  %i.dt = ptrtoint ptr %.sroa.0119.3 to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 6 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i68

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i68: ; preds = %bb.ah
  %i.dw = ashr exact i64 %i.du, 3                 ; 3 uses
  %.sroa.speculated.i.i.i69 = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i69, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 1152921504606846975)
  %i.ea = select i1 %i.dy, i64 1152921504606846975, i64 %i.dz ; 3 uses
  %.not.i.i.i70 = icmp ne i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i.i.i70)
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #52
          to label %.noexc75 unwind label %.loopexit177 ; 4 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i68
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  store i64 %storemerge290, ptr %i.ed, align 8, !tbaa !47
  %i.ee = icmp sgt i64 %i.du, 0
  br i1 %i.ee, label %bb.ai, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i71

bb.ai:                                            ; preds = %.noexc75
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %.sroa.0119.3, i64 %i.du, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i71

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i71: ; preds = %bb.ai, %.noexc75
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.not.i17.i.i72 = icmp eq ptr %.sroa.0119.3, null
  br i1 %.not.i17.i.i72, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i73, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i71
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.3, i64 noundef %i.du) #50
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i73

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i73: ; preds = %bb.aj, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i71
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit76

_ZNSt6vectorImSaImEE9push_backERKm.exit76:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i63, %bb.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i73, %bb.ag, %_ZNSt6vectorImSaImEE9push_backERKm.exit66
  %.sroa.0119.5 = phi ptr [ %.sroa.0119.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit66 ], [ %.sroa.0119.3, %bb.ag ], [ %i.ec, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i73 ], [ %.sroa.0119.3, %bb.ab ], [ %i.dk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i63 ] ; 6 uses
  %.sroa.17.4 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit66 ], [ %i.dr, %bb.ag ], [ %i.ef, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i73 ], [ %i.cz, %bb.ab ], [ %i.dn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i63 ] ; 5 uses
  %.sroa.32.5 = phi ptr [ %.sroa.32.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit66 ], [ %.sroa.32.3, %bb.ag ], [ %i.eg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i73 ], [ %.sroa.32.3, %bb.ab ], [ %i.do, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i63 ] ; 4 uses
  %i.eh = add nuw i64 %storemerge290, 1           ; 2 uses
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !176 ; 2 uses
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !175 ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = sdiv exact i64 %i.em, 20
  %i.eo = icmp ult i64 %i.eh, %i.en
  br i1 %i.eo, label %.lr.ph, label %.preheader, !llvm.loop !1499

.loopexit185:                                     ; preds = %bb.p
  %lpad.loopexit187 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp186:                            ; preds = %bb.f, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %.critedge.thread
  %.sroa.25.2.ph = phi ptr [ %.sroa.25.5, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %.sroa.25.6, %.critedge.thread ], [ %.sroa.25.5, %bb.f ]
  %.sroa.0119.6.ph = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %.sroa.0119.0297, %.critedge.thread ], [ null, %bb.f ]
  %.sroa.32.6.ph = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %.sroa.32.0299, %.critedge.thread ], [ null, %bb.f ]
  %.sroa.0143.2.ph = phi ptr [ %.sroa.15.2, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %.sroa.0143.6, %.critedge.thread ], [ %.sroa.15.2, %bb.f ]
  %lpad.loopexit.split-lp188 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.lr.ph295:                                        ; preds = %.preheader, %bb.am
  %.sroa.089.0294 = phi ptr [ %i.ep, %bb.am ], [ %.sroa.17.4, %.preheader ]
  %i.ep = getelementptr inbounds i8, ptr %.sroa.089.0294, i64 -8 ; 3 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !47
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.es = shl i64 %i.eq, 32
  %i.et = ashr exact i64 %i.es, 32
  %i.eu = getelementptr inbounds [20 x i8], ptr %i.er, i64 %i.et ; 2 uses
  invoke void @_ZN5folly4File5closeEv(ptr noundef nonnull align 4 dereferenceable(5) %i.eu)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %.lr.ph295
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !192 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 20 ; 3 uses
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !192 ; 4 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 2 uses
  %i.fg = icmp sgt i64 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %bb.am

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.al
  %i.fh = udiv exact i64 %i.ff, 20
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc78, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.fn, %.noexc78 ], [ %i.fh, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.fm, %.noexc78 ], [ %i.ez, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.fl, %.noexc78 ], [ %i.fa, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.fi = invoke noundef nonnull align 4 dereferenceable(5) ptr @_ZN5folly4FileaSEOS0_(ptr noundef nonnull align 4 dereferenceable(17) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(17) %.0910.i.i.i.i.i.i.i)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc78:                                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.fj, ptr noundef nonnull align 4 dereferenceable(9) %i.fk, i64 9, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 20
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 20
  %i.fn = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.fo = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i, !llvm.loop !12

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i: ; preds = %.noexc78
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !176
  br label %bb.am

bb.am:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i, %bb.al, %bb.ak
  %i.fp = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i ], [ %i.fb, %bb.al ], [ %i.fb, %bb.ak ]
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -20 ; 2 uses
  store ptr %i.fq, ptr %i.d, align 8, !tbaa !176
  tail call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(17) %i.fq) #48
  %.not175 = icmp eq ptr %i.ep, %.sroa.0119.5
  br i1 %.not175, label %.loopexit176.loopexit, label %.lr.ph295

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph295
  %lpad.loopexit.split-lp567 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

._crit_edge:                                      ; preds = %.loopexit176
  %.not.i.i.i79 = icmp eq ptr %.sroa.0119.1.lcssa424, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorImSaImEED2Ev.exit, label %._crit_edge.thread434

._crit_edge.thread434:                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit, %._crit_edge
  %.sroa.0143.0.lcssa443 = phi ptr [ %.sroa.0143.6, %._crit_edge ], [ %.sroa.15.2, %_ZNSt6vectorImSaImEE7reserveEm.exit ]
  %.sroa.32.0.lcssa442 = phi ptr [ %.sroa.32.1.lcssa426, %._crit_edge ], [ %i.ab, %_ZNSt6vectorImSaImEE7reserveEm.exit ]
  %.sroa.0119.0.lcssa441 = phi ptr [ %.sroa.0119.1.lcssa424, %._crit_edge ], [ %i.aa, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 2 uses
  %.sroa.25.0.lcssa440 = phi ptr [ %.sroa.25.6, %._crit_edge ], [ %.sroa.25.5, %_ZNSt6vectorImSaImEE7reserveEm.exit ]
  %i.fr = ptrtoint ptr %.sroa.32.0.lcssa442 to i64
  %i.fs = ptrtoint ptr %.sroa.0119.0.lcssa441 to i64
  %i.ft = sub i64 %i.fr, %i.fs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.0.lcssa441, i64 noundef %i.ft) #50
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.g, %._crit_edge, %._crit_edge.thread434
  %.sroa.0143.0.lcssa415 = phi ptr [ %.sroa.0143.0.lcssa443, %._crit_edge.thread434 ], [ %.sroa.0143.6, %._crit_edge ], [ %.sroa.15.2, %bb.g ] ; 3 uses
  %.sroa.25.0.lcssa414 = phi ptr [ %.sroa.25.0.lcssa440, %._crit_edge.thread434 ], [ %.sroa.25.6, %._crit_edge ], [ %.sroa.25.5, %bb.g ]
  %.not.i.i.i80 = icmp eq ptr %.sroa.0143.0.lcssa415, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit, label %_ZNSt6vectorImSaImEED2Ev.exit.thread447

_ZNSt6vectorImSaImEED2Ev.exit.thread447:          ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.fu = ptrtoint ptr %.sroa.25.0.lcssa414 to i64
  %i.fv = ptrtoint ptr %.sroa.0143.0.lcssa415 to i64
  %i.fw = sub i64 %i.fu, %i.fv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.0.lcssa415, i64 noundef %i.fw) #50
  br label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit

_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit:            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNSt6vectorImSaImEED2Ev.exit.thread447
  ret void

bb.an:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit185, %.loopexit.split-lp186, %.loopexit177, %.loopexit.split-lp178, %.loopexit.split-lp191.loopexit.split-lp
  %.sroa.25.3 = phi ptr [ %.sroa.25.6, %.loopexit.split-lp178 ], [ %.sroa.15.1285, %.loopexit.split-lp191.loopexit.split-lp ], [ %.sroa.25.2.ph, %.loopexit.split-lp186 ], [ %.sroa.25.6, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.25.6, %.loopexit177 ], [ %.sroa.25.6, %.loopexit185 ]
  %.sroa.0119.7 = phi ptr [ %.sroa.0119.2.ph179, %.loopexit.split-lp178 ], [ %.sroa.0119.0297, %.loopexit.split-lp191.loopexit.split-lp ], [ %.sroa.0119.6.ph, %.loopexit.split-lp186 ], [ %.sroa.0119.5, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0119.2.ph, %.loopexit177 ], [ %.sroa.0119.0297, %.loopexit185 ] ; 3 uses
  %.sroa.32.7 = phi ptr [ %.sroa.32.2.ph180, %.loopexit.split-lp178 ], [ %.sroa.32.0299, %.loopexit.split-lp191.loopexit.split-lp ], [ %.sroa.32.6.ph, %.loopexit.split-lp186 ], [ %.sroa.32.5, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.32.2.ph, %.loopexit177 ], [ %.sroa.32.0299, %.loopexit185 ]
  %.sroa.0143.3 = phi ptr [ %.sroa.0143.6, %.loopexit.split-lp178 ], [ %.sroa.0143.1286, %.loopexit.split-lp191.loopexit.split-lp ], [ %.sroa.0143.2.ph, %.loopexit.split-lp186 ], [ %.sroa.0143.6, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0143.6, %.loopexit177 ], [ %.sroa.0143.6, %.loopexit185 ] ; 3 uses
  %.pn37 = phi { ptr, i32 } [ %lpad.loopexit.split-lp182, %.loopexit.split-lp178 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp191.loopexit.split-lp ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp186 ], [ %lpad.loopexit.split-lp567, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit181, %.loopexit177 ], [ %lpad.loopexit187, %.loopexit185 ]
  %.not.i.i.i81 = icmp eq ptr %.sroa.0119.7, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorImSaImEED2Ev.exit82, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fx = ptrtoint ptr %.sroa.32.7 to i64
  %i.fy = ptrtoint ptr %.sroa.0119.7 to i64
  %i.fz = sub i64 %i.fx, %i.fy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.7, i64 noundef %i.fz) #50
  br label %_ZNSt6vectorImSaImEED2Ev.exit82

_ZNSt6vectorImSaImEED2Ev.exit82:                  ; preds = %bb.ao, %bb.an
  %.not.i.i.i83 = icmp eq ptr %.sroa.0143.3, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit84, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit82
  %i.ga = ptrtoint ptr %.sroa.25.3 to i64
  %i.gb = ptrtoint ptr %.sroa.0143.3 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.3, i64 noundef %i.gc) #50
  br label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit84

_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit84:          ; preds = %_ZNSt6vectorImSaImEED2Ev.exit82, %bb.ap
  resume { ptr, i32 } %.pn37
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly5IOBuf5emptyEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZN5folly6detail8function5call_IZNS_10Subprocess16communicateIOBufENS_10IOBufQueueEE3$_0Lb1ELb0EbJiiEEET2_DpT3_RNS1_4DataE"(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %2) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %2, align 16              ; 4 uses
  switch i32 %1, label %bb.n [
    i32 1, label %bb.b
    i32 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !272 ; 2 uses
  %.pre16.i.i = load ptr, ptr %.pre.i.i, align 8, !tbaa !273
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %i.b = phi ptr [ %i.r, %bb.g ], [ %.pre16.i.i, %bb.b ] ; 3 uses
  %i.c = phi ptr [ %i.p, %bb.g ], [ %.pre.i.i, %bb.b ]
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1502
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %.not8.i.i.i = icmp ult i64 %i.h, 100
  br i1 %.not8.i.i.i, label %.critedge.i.i.i, label %bb.e, !prof !46

bb.e:                                             ; preds = %bb.d
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i.i, i64 %i.h, 1
  br label %_ZN5folly10IOBufQueue11preallocateEmmm.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.d, %bb.c
  %i.i = tail call { ptr, i64 } @_ZN5folly10IOBufQueue15preallocateSlowEmmm(ptr noundef nonnull align 8 dereferenceable(72) %.val, i64 noundef 100, i64 noundef 65000, i64 noundef -1)
  br label %_ZN5folly10IOBufQueue11preallocateEmmm.exit.i.i

_ZN5folly10IOBufQueue11preallocateEmmm.exit.i.i:  ; preds = %.critedge.i.i.i, %bb.e
  %.pn.i.i.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i.i, %bb.e ], [ %i.i, %.critedge.i.i.i ] ; 2 uses
  %i.j = extractvalue { ptr, i64 } %.pn.i.i.i, 0
  %i.k = extractvalue { ptr, i64 } %.pn.i.i.i, 1
  %i.l = tail call noundef i64 @_ZN5folly9readNoIntEiPvm(i32 noundef %0, ptr noundef %i.j, i64 noundef %i.k) ; 2 uses
  switch i64 %i.l, label %bb.g [
    i64 -1, label %bb.f
    i64 0, label %"_ZZN5folly10Subprocess16communicateIOBufENS_10IOBufQueueEENK3$_0clEii.exit"
  ]

bb.f:                                             ; preds = %_ZN5folly10IOBufQueue11preallocateEmmm.exit.i.i
  %i.m = tail call ptr @__errno_location() #55
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %"_ZZN5folly10Subprocess16communicateIOBufENS_10IOBufQueueEENK3$_0clEii.exit", label %.split9.i.i

.split9.i.i:                                      ; preds = %bb.f
  tail call void @_ZN5folly16throwSystemErrorIJRA5_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(5) @.str.94) #49
  unreachable

bb.g:                                             ; preds = %_ZN5folly10IOBufQueue11preallocateEmmm.exit.i.i
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !272  ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !273
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l ; 2 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !273
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 104 ; 2 uses
  %.pre.i7.i = load ptr, ptr %i.t, align 8, !tbaa !272 ; 2 uses
  %.pre16.i8.i = load ptr, ptr %.pre.i7.i, align 8, !tbaa !273
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.h
  %i.u = phi ptr [ %i.ak, %bb.m ], [ %.pre16.i8.i, %bb.h ] ; 3 uses
  %i.v = phi ptr [ %i.ai, %bb.m ], [ %.pre.i7.i, %bb.h ]
  %.not.i.i9.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i9.i, label %.critedge.i.i17.i, label %bb.j, !prof !46

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1502
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %.not8.i.i10.i = icmp ult i64 %i.aa, 100
  br i1 %.not8.i.i10.i, label %.critedge.i.i17.i, label %bb.k, !prof !46

bb.k:                                             ; preds = %bb.j
  %.fca.0.insert.i.i.i11.i = insertvalue { ptr, i64 } poison, ptr %i.u, 0
  %.fca.1.insert.i.i.i12.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i11.i, i64 %i.aa, 1
  br label %_ZN5folly10IOBufQueue11preallocateEmmm.exit.i13.i

.critedge.i.i17.i:                                ; preds = %bb.j, %bb.i
  %i.ab = tail call { ptr, i64 } @_ZN5folly10IOBufQueue15preallocateSlowEmmm(ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 noundef 100, i64 noundef 65000, i64 noundef -1)
  br label %_ZN5folly10IOBufQueue11preallocateEmmm.exit.i13.i

_ZN5folly10IOBufQueue11preallocateEmmm.exit.i13.i: ; preds = %.critedge.i.i17.i, %bb.k
  %.pn.i.i14.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i12.i, %bb.k ], [ %i.ab, %.critedge.i.i17.i ] ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %.pn.i.i14.i, 0
  %i.ad = extractvalue { ptr, i64 } %.pn.i.i14.i, 1
  %i.ae = tail call noundef i64 @_ZN5folly9readNoIntEiPvm(i32 noundef %0, ptr noundef %i.ac, i64 noundef %i.ad) ; 2 uses
  switch i64 %i.ae, label %bb.m [
    i64 -1, label %bb.l
    i64 0, label %"_ZZN5folly10Subprocess16communicateIOBufENS_10IOBufQueueEENK3$_0clEii.exit"
  ]

bb.l:                                             ; preds = %_ZN5folly10IOBufQueue11preallocateEmmm.exit.i13.i
  %i.af = tail call ptr @__errno_location() #55
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33
  %i.ah = icmp eq i32 %i.ag, 11
  br i1 %i.ah, label %"_ZZN5folly10Subprocess16communicateIOBufENS_10IOBufQueueEENK3$_0clEii.exit", label %.split9.i16.i

.split9.i16.i:                                    ; preds = %bb.l
  tail call void @_ZN5folly16throwSystemErrorIJRA5_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(5) @.str.94) #49
  unreachable

bb.m:                                             ; preds = %_ZN5folly10IOBufQueue11preallocateEmmm.exit.i13.i
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !272 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !273
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 2 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !273
  br label %bb.i

bb.n:                                             ; preds = %bb.a
  %i.al = load atomic i8, ptr @_ZGVZN5folly12_GLOBAL__N_111discardReadEiE3buf acquire, align 8
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.o, label %.preheader, !prof !252

bb.o:                                             ; preds = %bb.n
  %i.an = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_111discardReadEiE3buf) #48
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = invoke noalias noundef nonnull dereferenceable(65000) ptr @_Znam(i64 noundef 65000) #52
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  store ptr %i.ao, ptr @_ZZN5folly12_GLOBAL__N_111discardReadEiE3buf, align 8, !tbaa !53
  %i.ap = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZZN5folly12_GLOBAL__N_111discardReadEiE3buf, ptr nonnull @__dso_handle) #48 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_111discardReadEiE3buf) #48
  br label %.preheader

.preheader:                                       ; preds = %bb.q, %bb.o, %bb.n
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.r
  %i.aq = load ptr, ptr @_ZZN5folly12_GLOBAL__N_111discardReadEiE3buf, align 8, !tbaa !53
  %i.ar = tail call noundef i64 @_ZN5folly9readNoIntEiPvm(i32 noundef %0, ptr noundef %i.aq, i64 noundef 65000)
  switch i64 %i.ar, label %bb.r [
    i64 -1, label %bb.s
    i64 0, label %"_ZZN5folly10Subprocess16communicateIOBufENS_10IOBufQueueEENK3$_0clEii.exit"
  ]

bb.s:                                             ; preds = %bb.r
  %i.as = tail call ptr @__errno_location() #55
  %i.at = load i32, ptr %i.as, align 4, !tbaa !33
  %i.au = icmp eq i32 %i.at, 11
  br i1 %i.au, label %"_ZZN5folly10Subprocess16communicateIOBufENS_10IOBufQueueEENK3$_0clEii.exit", label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.s
  tail call void @_ZN5folly16throwSystemErrorIJRA5_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(5) @.str.94) #49
  unreachable
end_hunk_0
begin_hunk_1_@_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_:bb.a
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #51
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

declare noundef i64 @_ZN5folly9readNoIntEiPvm(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare { ptr, i64 } @_ZN5folly10IOBufQueue15preallocateSlowEmmm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #50
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #37

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #37

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #44

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZN5folly6detail8function5call_IZNS_10Subprocess16communicateIOBufENS_10IOBufQueueEE3$_1Lb1ELb0EbJiiEEET2_DpT3_RNS1_4DataE"(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %2) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::io::Cursor", align 8 ; 11 uses
  %.val = load ptr, ptr %2, align 16              ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %"_ZZN5folly10Subprocess16communicateIOBufENS_10IOBufQueueEENK3$_1clEii.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !271  ; 3 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !272
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !273  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.m
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !274 ; 6 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK5folly10IOBufQueue5frontEv.exit.i.i.i, label %_ZNK5folly10IOBufQueue5frontEv.exit.thread.i.i.i

_ZNK5folly10IOBufQueue5frontEv.exit.thread.i.i.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !277  ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = load i64, ptr %i.o, align 8, !tbaa !278
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr %i.o, align 8, !tbaa !278
  %i.u = load i64, ptr %i.d, align 8, !tbaa !279
  %i.v = add i64 %i.u, %i.r
  store i64 %i.v, ptr %i.d, align 8, !tbaa !279
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.r
  store ptr %i.w, ptr %i.b, align 8, !tbaa !271
  br label %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i.i.i

_ZNK5folly10IOBufQueue5frontEv.exit.i.i.i:        ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not.i.i.i, label %"_ZZN5folly10Subprocess16communicateIOBufENS_10IOBufQueueEENK3$_1clEii.exit", label %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i.i.i

_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i.i.i:    ; preds = %_ZNK5folly10IOBufQueue5frontEv.exit.i.i.i, %_ZNK5folly10IOBufQueue5frontEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  store ptr %.pre.i.i.i.i, ptr %3, align 8, !tbaa !285
  store ptr %.pre.i.i.i.i, ptr %i.e, align 8, !tbaa !286
  store i64 0, ptr %i.h, align 8
  store i64 -1, ptr %i.g, align 8, !tbaa !287
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !281  ; 4 uses
  store ptr %i.y, ptr %i.f, align 8, !tbaa !288
  store ptr %i.y, ptr %i.i, align 8, !tbaa !289
  %i.z = load i64, ptr %.pre.i.i.i.i, align 8, !tbaa !278 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !290
  %.not.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.i.i, label %_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.thread25.i.i, !prof !46

_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.thread25.i.i: ; preds = %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %bb.d

_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.i.i: ; preds = %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i.i.i
  %i.ab = call noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE13peekBytesSlowEv(ptr noundef nonnull align 8 dereferenceable(56) %3) ; 2 uses
  %.pre.i4.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %i.ac = icmp samesign eq i64 %i.ab, 0
  br i1 %i.ac, label %"_ZZN5folly10Subprocess16communicateIOBufENS_10IOBufQueueEENK3$_1clEii.exit", label %bb.d

bb.d:                                             ; preds = %_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.i.i, %_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.thread25.i.i
  %.0.i.i27.i.i = phi i64 [ %i.z, %_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.thread25.i.i ], [ %i.ab, %_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.i.i ]
  %i.ad = phi ptr [ %i.y, %_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.thread25.i.i ], [ %.pre.i4.i.i.i, %_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.i.i ]
  %i.ae = call noundef i64 @_ZN5folly10writeNoIntEiPKvm(i32 noundef %0, ptr noundef %i.ad, i64 noundef %.0.i.i27.i.i) ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call ptr @__errno_location() #55
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.ai = icmp eq i32 %i.ah, 11
  br i1 %i.ai, label %"_ZZN5folly10Subprocess16communicateIOBufENS_10IOBufQueueEENK3$_1clEii.exit", label %.split9.i.i

.split9.i.i:                                      ; preds = %bb.e
  call void @_ZN5folly16throwSystemErrorIJRA6_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(6) @.str.10) #49
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @_ZN5folly10IOBufQueue9trimStartEm(ptr noundef nonnull align 8 dereferenceable(72) %.val, i64 noundef %i.ae)
  br label %bb.c

"_ZZN5folly10Subprocess16communicateIOBufENS_10IOBufQueueEENK3$_1clEii.exit": ; preds = %_ZNK5folly10IOBufQueue5frontEv.exit.i.i.i, %_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.i.i, %bb.a, %bb.e
  %.0.i = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ true, %_ZN5folly12_GLOBAL__N_110queueFrontERKNS_10IOBufQueueE.exit.i.i ], [ true, %_ZNK5folly10IOBufQueue5frontEv.exit.i.i.i ]
  ret i1 %.0.i
}

declare noundef i64 @_ZN5folly10writeNoIntEiPKvm(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN5folly10IOBufQueue9trimStartEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE13peekBytesSlowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286
  %.promoted = load ptr, ptr %0, align 8, !tbaa !285
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted6 = load i64, ptr %i.c, align 8
  %.promoted7 = load ptr, ptr %i.d, align 8
  %.promoted8 = load ptr, ptr %i.e, align 8
  %.promoted9 = load i64, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %i.h = phi i64 [ %.promoted9, %bb.a ], [ %i.t, %._crit_edge ]
  %i.i = phi ptr [ %.promoted8, %bb.a ], [ %i.v, %._crit_edge ]
  %i.j = phi ptr [ %.promoted7, %bb.a ], [ %i.ae, %._crit_edge ] ; 2 uses
  %i.k = phi i64 [ %.promoted6, %bb.a ], [ %i.af, %._crit_edge ] ; 4 uses
  %i.l = phi ptr [ %.promoted, %bb.a ], [ %i.n, %._crit_edge ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 5 uses
  %i.o = icmp eq ptr %i.n, %i.b
  %i.p = icmp eq i64 %i.k, 0
  %or.cond = select i1 %i.o, i1 true, i1 %i.p, !prof !254
  br i1 %or.cond, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE16tryAdvanceBufferEv.exit, label %bb.c, !prof !254

bb.c:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = add i64 %i.s, %i.h                       ; 2 uses
  store i64 %i.t, ptr %i.f, align 8, !tbaa !1504
  store ptr %i.n, ptr %0, align 8, !tbaa !285
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !281  ; 6 uses
  store ptr %i.v, ptr %i.e, align 8, !tbaa !288
  store ptr %i.v, ptr %i.g, align 8, !tbaa !289
  %i.w = load i64, ptr %i.n, align 8, !tbaa !278
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 4 uses
  store ptr %i.x, ptr %i.d, align 8, !tbaa !290
  %.not.i = icmp eq i64 %i.k, -1
  %.pre = ptrtoint ptr %i.v to i64                ; 2 uses
  br i1 %.not.i, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = add i64 %i.k, %.pre                      ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k ; 2 uses
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !290
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi ptr [ %i.ab, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %.pre-phi.i.pre-phi = ptrtoint ptr %i.ac to i64
  %i.ad = sub i64 %i.y, %.pre-phi.i.pre-phi       ; 2 uses
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !287
  br label %._crit_edge

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE16tryAdvanceBufferEv.exit: ; preds = %bb.b
  store ptr %i.j, ptr %i.g, align 8, !tbaa !289
  br label %.critedge

._crit_edge:                                      ; preds = %bb.c, %bb.f
  %i.ae = phi ptr [ %i.ac, %bb.f ], [ %i.x, %bb.c ] ; 2 uses
  %i.af = phi i64 [ %i.ad, %bb.f ], [ -1, %bb.c ]
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.ag, %.pre                    ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.b, label %.critedge, !llvm.loop !1503

.critedge:                                        ; preds = %._crit_edge, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE16tryAdvanceBufferEv.exit
  %.04 = phi i64 [ 0, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE16tryAdvanceBufferEv.exit ], [ %i.ah, %._crit_edge ]
  ret i64 %.04
}

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN5folly4File5closeEv(ptr noundef nonnull align 4 dereferenceable(5)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10Subprocess19enableNotificationsEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noundef i64 @_ZNK5folly10Subprocess13findByChildFdEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %i.a, ptr %i.f, align 4, !tbaa !210
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly10Subprocess20notificationsEnabledEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef i64 @_ZNK5folly10Subprocess13findByChildFdEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw [20 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 4, !tbaa !210, !range !171, !noundef !172
  %i.g = trunc nuw i8 %i.f to i1
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10Subprocess13closeParentFdEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5folly10Subprocess13findByChildFdEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = shl i64 %i.a, 32
  %i.d = ashr exact i64 %i.c, 32                  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.d
  tail call void @_ZN5folly4File5closeEv(ptr noundef nonnull align 4 dereferenceable(5) %i.f)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.h = getelementptr inbounds [20 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !192  ; 4 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNSt6vectorIN5folly10Subprocess4PipeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly10Subprocess4PipeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.q = udiv exact i64 %i.o, 20
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = tail call noundef nonnull align 4 dereferenceable(5) ptr @_ZN5folly4FileaSEOS0_(ptr noundef nonnull align 4 dereferenceable(17) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(17) %.0910.i.i.i.i.i.i.i) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.s, ptr noundef nonnull align 4 dereferenceable(9) %i.t, i64 9, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 20
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.x = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i, !llvm.loop !12

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !176
  br label %_ZNSt6vectorIN5folly10Subprocess4PipeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIN5folly10Subprocess4PipeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %bb.a, %bb.b, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i
  %i.y = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly10Subprocess4PipeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i ], [ %i.k, %bb.b ], [ %i.k, %bb.a ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -20 ; 2 uses
  store ptr %i.z, ptr %i.j, align 8, !tbaa !176
  tail call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(17) %i.z) #48
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10Subprocess20takeOwnershipOfPipesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.232") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !192  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_ZSt8_DestroyIPN5folly10Subprocess4PipeES2_EvT_S4_RSaIT0_E.exit.i

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5folly10Subprocess9ChildPipeESaIS2_EE12emplace_backIJRiNS0_4FileEEEERS2_DpOT_.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !175 ; 4 uses
  %.pre15 = load ptr, ptr %i.c, align 8, !tbaa !176 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !177  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5folly10Subprocess4PipeES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  tail call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(17) %.05.i.i.i) #48
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre15
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5folly10Subprocess4PipeES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN5folly10Subprocess4PipeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.thread, %._crit_edge
  %i.m = phi ptr [ %i.g, %._crit_edge.thread ], [ %i.k, %._crit_edge ], [ %i.k, %.lr.ph.i.i.i ]
  %i.n = phi ptr [ %i.b, %._crit_edge.thread ], [ %.pre, %._crit_edge ], [ %.pre, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5folly10Subprocess4PipeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5folly10Subprocess4PipeES2_EvT_S4_RSaIT0_E.exit.i
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #50
  br label %_ZNSt6vectorIN5folly10Subprocess4PipeESaIS2_EED2Ev.exit

_ZNSt6vectorIN5folly10Subprocess4PipeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly10Subprocess4PipeES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5folly10Subprocess9ChildPipeESaIS2_EE12emplace_backIJRiNS0_4FileEEEERS2_DpOT_.exit
  %.sroa.011.014 = phi ptr [ %i.b, %.lr.ph ], [ %i.y, %_ZNSt6vectorIN5folly10Subprocess9ChildPipeESaIS2_EE12emplace_backIJRiNS0_4FileEEEERS2_DpOT_.exit ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.014, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !293  ; 4 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !294
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.r, align 4, !tbaa !33
  store i32 %i.u, ptr %i.s, align 4, !tbaa !296
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  tail call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 4 dereferenceable(5) %i.v, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.011.014) #48
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !293
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store ptr %i.x, ptr %i.h, align 8, !tbaa !293
  br label %_ZNSt6vectorIN5folly10Subprocess9ChildPipeESaIS2_EE12emplace_backIJRiNS0_4FileEEEERS2_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIN5folly10Subprocess9ChildPipeESaIS2_EE17_M_realloc_insertIJRiNS0_4FileEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.011.014)
          to label %_ZNSt6vectorIN5folly10Subprocess9ChildPipeESaIS2_EE12emplace_backIJRiNS0_4FileEEEERS2_DpOT_.exit unwind label %bb.f

_ZNSt6vectorIN5folly10Subprocess9ChildPipeESaIS2_EE12emplace_backIJRiNS0_4FileEEEERS2_DpOT_.exit: ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.011.014, i64 20 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN5folly10Subprocess9ChildPipeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #48
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly10Subprocess9ChildPipeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !297    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !293  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
end_hunk_1
