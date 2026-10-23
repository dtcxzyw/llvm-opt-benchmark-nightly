Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/csa-generator?download=true
inline.NumInlined: 2685
inline.NumDeleted: 621
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal6torque12CSAGenerator12EmitCSAValueENS1_11VisitResultERKNS1_5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERSo:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit29

_ZN2v88internal6torque11VisitResultD2Ev.exit29:   ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27, %_ZN2v88internal6torque11VisitResultD2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn = phi { ptr, i32 } [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn, %_ZN2v88internal6torque11VisitResultD2Ev.exit26 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27 ], [ %.pn, %bb.aa ]
  resume { ptr, i32 } %.pn.pn

bb.af:                                            ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7PopManyEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.neg = mul i64 %2, -32                         ; 2 uses
  %i.c = icmp eq i64 %.neg, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %.neg
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %bb.b
  %.lcssa = phi ptr [ %i.b, %bb.b ], [ %i.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = ptrtoint ptr %.lcssa to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 5                   ; 2 uses
  %i.l = sub nuw i64 %i.k, %2
  %i.m = icmp ugt i64 %2, %i.k
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.n = sub i64 0, %2
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.n)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %._crit_edge
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.l ; 3 uses
  %.not.i.i = icmp eq ptr %.lcssa, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.o, %bb.e ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %.lcssa
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.o, ptr %i.a, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %.sroa.011.015 = phi ptr [ %i.d, %.lr.ph ], [ %i.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ] ; 7 uses
  %i.v = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.w = load ptr, ptr %i.f, align 8
  %.not.i.i8 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i8, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8
  %i.y = load ptr, ptr %.sroa.011.015, align 8    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.y, ptr %i.v, align 8
  %i.af = load i64, ptr %i.z, align 8
  store i64 %i.af, ptr %i.x, align 8
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.ah, ptr %i.ai, align 8
  store ptr %i.z, ptr %.sroa.011.015, align 8
  store i64 0, ptr %i.ag, align 8
  store i8 0, ptr %i.z, align 8
  %i.aj = load ptr, ptr %i.e, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ak, ptr %i.e, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

bb.i:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.015)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 32 ; 3 uses
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %._crit_edge, label %bb.f, !llvm.loop !92

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.a, %bb.c
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %lpad.loopexit.split-lp31

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque12CSAGenerator15EmitInstructionERKNS1_24CallIntrinsicInstructionEPNS1_5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"struct.v8::internal::torque::ListPrintAdaptor", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"struct.v8::internal::torque::ListPrintAdaptor", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::vector.38", align 8   ; 7 uses
  %16 = alloca %"class.std::vector", align 8      ; 10 uses
  %17 = alloca %"class.std::vector", align 8      ; 7 uses
  %18 = alloca %"class.v8::internal::torque::Stack", align 8 ; 8 uses
  %19 = alloca %"class.std::vector", align 8      ; 15 uses
  %20 = alloca %"class.std::vector.38", align 8   ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.v8::internal::torque::DefinitionLocation", align 8 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %33 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i, !prof !16

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25
  %.pre = load ptr, ptr %i.c, align 8             ; 3 uses
  %.pre470 = load ptr, ptr %i.d, align 8          ; 2 uses
  %.pre484 = ptrtoint ptr %.pre470 to i64
  %.pre485 = ptrtoint ptr %.pre to i64
  %36 = icmp eq ptr %.pre470, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi486 = phi i64 [ %.pre485, %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.h, %bb.a ]
  %.pre-phi = phi i64 [ %.pre484, %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %37 = phi i1 [ %36, %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ]
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.k, %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 11 uses
  store ptr %i.m, ptr %15, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.o, ptr %i.p, align 8
  %i.q = sub i64 %.pre-phi, %.pre-phi486          ; 6 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.l, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.l, align 8
  store ptr %i.t, ptr %i.m, align 8
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  store ptr %i.u, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i139 = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i139, label %.noexc141, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i140, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !16

.noexc.i.i140:                                    ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i140
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #25
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge unwind label %bb.q

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre471 = load ptr, ptr %i.v, align 8
  %.pre472 = load ptr, ptr %i.w, align 8
  br label %.noexc141

.noexc141:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit
  %i.ae = phi ptr [ %i.x, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit ], [ %.pre472, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge ]
  %i.af = phi ptr [ %i.y, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit ], [ %.pre471, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge ]
  %i.ag = phi ptr [ null, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit ], [ %i.ad, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge ] ; 6 uses
  store ptr %i.ag, ptr %17, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.af, ptr %i.ae, ptr noundef %i.ag)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc141
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ab) #24
  br label %.body

bb.j:                                             ; preds = %.noexc141
  store ptr %i.ak, ptr %i.ah, align 8
  invoke void @_ZN2v88internal6torque12CSAGenerator22ProcessArgumentsCommonERKSt6vectorIPKNS1_4TypeESaIS6_EES3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEPNS1_5StackISG_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %16, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 %17, ptr noundef %2)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %17, align 8              ; 5 uses
  %i.an = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.am, %bb.k ] ; 3 uses
  %i.ao = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.at, %i.an
  br i1 %.not.i.i.i142, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %bb.k
  %.not.i.i1.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.au = load ptr, ptr %i.aj, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.am to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ax) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.ba = load ptr, ptr %2, align 8               ; 3 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i.i.i, label %.noexc146, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.be = icmp ugt i64 %i.bd, 9223372036854775776
  br i1 %i.be, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !16

.noexc.i.i.i:                                     ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc145 unwind label %bb.s

.noexc145:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #25
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc146_crit_edge unwind label %bb.s

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc146_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre473 = load ptr, ptr %2, align 8
  %.pre474 = load ptr, ptr %i.ay, align 8
  br label %.noexc146

.noexc146:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc146_crit_edge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bg = phi ptr [ %i.az, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %.pre474, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc146_crit_edge ]
  %i.bh = phi ptr [ %i.ba, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %.pre473, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc146_crit_edge ]
  %i.bi = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %i.bf, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc146_crit_edge ] ; 5 uses
  store ptr %i.bi, ptr %18, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bd
  %i.bl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bh, ptr %i.bg, ptr noundef %i.bi)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %.noexc146
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i144 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i144, label %.body147, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bd) #24
  br label %.body147

bb.p:                                             ; preds = %.noexc146
  store ptr %i.bm, ptr %i.bj, align 8
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 384
  %i.bq = load ptr, ptr %i.bp, align 8            ; 41 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZN2v88internal6torque9LowerTypeEPKNS1_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.38") align 8 %20, ptr noundef %i.bq)
          to label %.preheader unwind label %bb.t

.preheader:                                       ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load ptr, ptr %20, align 8
  %.not465 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not465, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 12 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal6torque12CSAGenerator15EmitInstructionERKNS1_24CallIntrinsicInstructionEPNS1_5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:bb.a

bb.bk:                                            ; preds = %bb.bj
  %i.jk = icmp eq i64 %i.jg, 0
  %.pre483 = load ptr, ptr %26, align 8           ; 3 uses
  br i1 %i.jk, label %.critedge132, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jl = load ptr, ptr %25, align 8
  %bcmp.i195 = call i32 @bcmp(ptr %i.jl, ptr %.pre483, i64 %i.jg)
  %i.jm = icmp ne i32 %bcmp.i195, 0
  br label %.critedge132

.critedge132:                                     ; preds = %..critedge132_crit_edge, %bb.bk, %bb.bl
  %i.jn = phi ptr [ %.pre482, %..critedge132_crit_edge ], [ %.pre483, %bb.bl ], [ %.pre483, %bb.bk ] ; 2 uses
  %i.jo = phi i1 [ true, %..critedge132_crit_edge ], [ %i.jm, %bb.bl ], [ false, %bb.bk ]
  %i.jp = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jn, %i.jp
  br i1 %i.jq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197: ; preds = %.critedge132
  %i.jr = icmp ult i64 %i.ji, 16
  call void @llvm.assume(i1 %i.jr)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %.critedge132
  %i.js = load i64, ptr %i.jp, align 8
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.ju = load ptr, ptr %25, align 8              ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %.critedge134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %i.jx = load i64, ptr %i.jv, align 8
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #24
  br label %.critedge134

.critedge134:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br i1 %i.jo, label %bb.bm, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210

bb.bm:                                            ; preds = %.critedge134
  %i.jz = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque10TypeOracleES4_E4top_E)
  %i.ka = load ptr, ptr %i.jz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.kb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.kb, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.kb, ptr noundef nonnull align 1 dereferenceable(6) @.str.174, i64 6, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 6, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i8 0, ptr %i.kd, align 2
  %i.ke = invoke noundef ptr @_ZN2v88internal6torque10TypeOracle14GetBuiltinTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %i.ka, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kf = load ptr, ptr %11, align 8              ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.kb
  br i1 %i.kg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205: ; preds = %bb.bn
  %i.kh = load i64, ptr %i.kb, align 8
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i206

bb.bo:                                            ; preds = %bb.bm
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = load ptr, ptr %11, align 8              ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.kb
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i202: ; preds = %bb.bo
  %i.km = load i64, ptr %i.kb, align 8
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i203: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i206: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ko = load ptr, ptr %i.bq, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = invoke noundef zeroext i1 %i.kq(ptr noundef nonnull align 8 dereferenceable(128) %i.bq, ptr noundef %i.ke)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i206
  %i.ks = load ptr, ptr %i.ce, align 8            ; 3 uses
  br i1 %i.kr, label %.invoke643, label %bb.bs

.invoke643:                                       ; preds = %bb.bp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305
  %i.kt = phi ptr [ %i.wy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305 ], [ %i.ks, %bb.bp ]
  %i.ku = phi ptr [ @.str.56, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305 ], [ @.str.31, %bb.bp ]
  %i.kv = phi i64 [ 27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305 ], [ 11, %bb.bp ]
  %i.kw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kt, ptr noundef nonnull %i.ku, i64 noundef %i.kv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bq:                                            ; preds = %bb.bh
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

bb.br:                                            ; preds = %bb.bi
  %i.ky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.kz = load ptr, ptr %25, align 8              ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.br
  %i.lc = load i64, ptr %i.la, align 8
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211, %bb.bq
  %.pn113 = phi { ptr, i32 } [ %i.kx, %bb.bq ], [ %i.ky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ], [ %i.ky, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.bs:                                            ; preds = %bb.bp
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, ptr noundef nonnull @.str.32, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215: ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  invoke void @_ZNK2v88internal6torque4Type25GetGeneratedTNodeTypeNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(128) %i.bq)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.lf = load ptr, ptr %27, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, ptr noundef %i.lf, i64 noundef %i.lh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit217 unwind label %bb.bv

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit217: ; preds = %bb.bt
  %i.lj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef nonnull @.str.33, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 unwind label %bb.bv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit217
  %i.lk = load ptr, ptr %27, align 8              ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
  %i.ln = load i64, ptr %i.ll, align 8
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

bb.bv:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit217, %bb.bt
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lr = load ptr, ptr %27, align 8              ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.bv
  %i.lu = load i64, ptr %i.ls, align 8
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223, %bb.bu
  %.pn116 = phi { ptr, i32 } [ %i.lp, %bb.bu ], [ %i.lq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ %i.lq, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit227: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186
  %.pre479 = load ptr, ptr %i.ho, align 8
  %bcmp.i226 = call i32 @bcmp(ptr %.pre479, ptr nonnull @.str.34, i64 %i.hq)
  %i.lw = icmp eq i32 %bcmp.i226, 0
  br i1 %i.lw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit227.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296.thread443

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit227.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit227
  br i1 %37, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit227.thread
  invoke void @_ZN2v88internal6torque11ReportErrorIJRA46_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(46) @.str.35) #23
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  unreachable

bb.by:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit227.thread
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = load ptr, ptr %i.lx, align 8            ; 2 uses
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc
  %.not102 = icmp eq i64 %i.md, 8
  br i1 %.not102, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN2v88internal6torque11ReportErrorIJRA74_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(74) @.str.36) #23
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  unreachable

bb.cb:                                            ; preds = %bb.by
  %i.me = load ptr, ptr %i.ma, align 8            ; 5 uses
  %.not.i = icmp eq ptr %i.me, null
  br i1 %.not.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load i32, ptr %i.mf, align 8
  %i.mh = icmp eq i32 %i.mg, 6
  br i1 %i.mh, label %_ZN2v88internal6torque9ClassType11DynamicCastEPKNS1_8TypeBaseE.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  invoke void @_ZN2v88internal6torque11ReportErrorIJRA54_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(54) @.str.37) #23
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cd
  unreachable

_ZN2v88internal6torque9ClassType11DynamicCastEPKNS1_8TypeBaseE.exit: ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  invoke void @_ZNK2v88internal6torque4Type25GetGeneratedTNodeTypeNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(128) %i.me)
          to label %bb.cf unwind label %bb.cu

bb.cf:                                            ; preds = %_ZN2v88internal6torque9ClassType11DynamicCastEPKNS1_8TypeBaseE.exit
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 176
  %i.mk = load i64, ptr %i.mj, align 8            ; 11 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.mm = load i64, ptr %i.ml, align 8
  %i.mn = icmp eq i64 %i.mk, %i.mm
  br i1 %i.mn, label %bb.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit229.thread437

bb.cg:                                            ; preds = %bb.cf
  %i.mo = icmp eq i64 %i.mk, 0
  br i1 %i.mo, label %._crit_edge.i.i236.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit229

._crit_edge.i.i236.thread:                        ; preds = %bb.cg
  %i.mp = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  store ptr %i.mp, ptr %28, align 8
  br label %.thread439

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit229: ; preds = %bb.cg
  %i.mq = load ptr, ptr %29, align 8
  %i.mr = load ptr, ptr %i.mi, align 8            ; 3 uses
  %bcmp.i228 = call i32 @bcmp(ptr %i.mr, ptr %i.mq, i64 %i.mk)
  %i.ms = icmp eq i32 %bcmp.i228, 0
  br i1 %i.ms, label %bb.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit229.thread437

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit229.thread437: ; preds = %bb.cf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit229
  %i.mt = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  store ptr %i.mt, ptr %28, align 8
  store i32 1684631414, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 4, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i8 0, ptr %i.mv, align 4
  br label %.critedge136

bb.ch:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit229
  %i.mw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 5 uses
  store ptr %i.mw, ptr %28, align 8
  %i.mx = icmp ugt i64 %i.mk, 15
  br i1 %i.mx, label %bb.ci, label %._crit_edge.i.i236

bb.ci:                                            ; preds = %bb.ch
  %i.my = icmp slt i64 %i.mk, 0
  br i1 %i.my, label %.noexc.i239, label %bb.cj

.noexc.i239:                                      ; preds = %bb.ci
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #23
          to label %.noexc240 unwind label %.critedge138

.noexc240:                                        ; preds = %.noexc.i239
  unreachable

bb.cj:                                            ; preds = %bb.ci
  %i.mz = add nuw i64 %i.mk, 1                    ; 2 uses
  %i.na = icmp slt i64 %i.mz, 0
  br i1 %i.na, label %.noexc6.i238, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i237, !prof !16

.noexc6.i238:                                     ; preds = %bb.cj
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc241 unwind label %.critedge138

.noexc241:                                        ; preds = %.noexc6.i238
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i237: ; preds = %bb.cj
  %i.nb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mz) #25
          to label %._crit_edge.i.i236.thread638 unwind label %.critedge138 ; 2 uses

._crit_edge.i.i236.thread638:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i237
  store ptr %i.nb, ptr %28, align 8
  store i64 %i.mk, ptr %i.mw, align 8
  br label %bb.cl

._crit_edge.i.i236:                               ; preds = %bb.ch
  %cond = icmp eq i64 %i.mk, 1
  br i1 %cond, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %._crit_edge.i.i236
  %i.nc = load i8, ptr %i.mr, align 1
  store i8 %i.nc, ptr %i.mw, align 8
  br label %.thread439

bb.cl:                                            ; preds = %._crit_edge.i.i236.thread638, %._crit_edge.i.i236
  %i.nd = phi ptr [ %i.nb, %._crit_edge.i.i236.thread638 ], [ %i.mw, %._crit_edge.i.i236 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nd, ptr align 1 %i.mr, i64 %i.mk, i1 false)
  br label %.thread439

.thread439:                                       ; preds = %bb.cl, %bb.ck, %._crit_edge.i.i236.thread
  %i.ne = phi ptr [ %i.mp, %._crit_edge.i.i236.thread ], [ %i.nd, %bb.cl ], [ %i.mw, %bb.ck ]
  %i.nf = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.mk, ptr %i.nf, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.mk
  store i8 0, ptr %i.ng, align 1
  br label %.critedge136

.critedge136:                                     ; preds = %.thread439, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit229.thread437
  %i.nh = load ptr, ptr %29, align 8              ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.nj = icmp eq ptr %i.nh, %i.ni
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %.critedge136
  %i.nk = load i64, ptr %i.ni, align 8
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %.critedge136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.nm = load ptr, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.nn = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 12 uses
  store ptr %i.nn, ptr %32, align 8
  %i.no = invoke noalias noundef nonnull dereferenceable(47) ptr @_Znwm(i64 noundef 47) #25
          to label %.noexc253 unwind label %bb.cv ; 4 uses

.noexc253:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246
  store ptr %i.no, ptr %32, align 8
  store i64 46, ptr %i.nn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.no, ptr noundef nonnull align 1 dereferenceable(46) @.str.39, i64 46, i1 false)
  %i.np = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 7 uses
  store i64 46, ptr %i.np, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 46
  store i8 0, ptr %i.nq, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.nr = load ptr, ptr %28, align 8, !noalias !103
  %i.ns = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !noalias !103 ; 4 uses
  %i.nu = icmp ugt i64 %i.nt, 9223372036854775761
  br i1 %i.nu, label %bb.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.cm:                                            ; preds = %.noexc253
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.165) #23
          to label %.noexc258 unwind label %bb.cw

.noexc258:                                        ; preds = %bb.cm
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %.noexc253
  %i.nv = add nuw nsw i64 %i.nt, 46               ; 2 uses
  %.not.i.i.i.i256.not = icmp eq i64 %i.nt, 0
  br i1 %.not.i.i.i.i256.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, i64 noundef 46, i64 noundef 0, ptr noundef %i.nr, i64 noundef %i.nt)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i_crit_edge unwind label %bb.cw

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i_crit_edge: ; preds = %bb.cn
end_hunk_1
