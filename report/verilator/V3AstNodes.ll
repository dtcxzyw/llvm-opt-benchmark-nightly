Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3AstNodes?download=true
inline.NumInlined: 27718
inline.NumDeleted: 2557
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !75
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !74
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !73
  store ptr %i.v, ptr %i.s, align 8, !tbaa !75
  store i64 0, ptr %i.ac, align 8, !tbaa !73
  store i8 0, ptr %i.v, align 8, !tbaa !74
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1819) #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !75
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !70
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !75 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !73 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !75
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !74
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !73
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !73
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !75
  store i64 0, ptr %i.as, align 8, !tbaa !73
  store i8 0, ptr %i.al, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN6AstVar12scVarRecurseEP7AstNode(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.not.i51 = icmp eq ptr %0, null
  br i1 %.not.i51, label %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit
  %.tr52 = phi ptr [ %i.e, %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr52, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  switch i16 %.sroa.0.0.copyload.i.i.i, label %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit.thread [
    i16 68, label %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit.thread.sink.split
    i16 369, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit
    i16 279, label %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit
  ]

_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit:      ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.tr52, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !375
  br label %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit.thread.sink.split

_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit:   ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.tr52, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit.thread, label %.lr.ph

_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit.thread.sink.split: ; preds = %.lr.ph, %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit
  %.sink61 = phi ptr [ %i.c, %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit ], [ %.tr52, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sink61, i64 260
  %i.g = load i64, ptr %i.f, align 4
  %i.h = and i64 %i.g, 32
  %.not = icmp eq i64 %i.h, 0
  %spec.select = select i1 %.not, ptr null, ptr %.sink61
  br label %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit.thread

_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit.thread: ; preds = %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit, %.lr.ph, %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit.thread.sink.split, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %spec.select, %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit.thread.sink.split ], [ null, %.lr.ph ], [ null, %_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_.exit ]
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI6AstVarS_EEPT_PT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 68
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 369
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13AstNodeVarRef4varpEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !375
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI11AstArraySelS_EEPT_PT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 279
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %4 = alloca %"class.std::unordered_set.136", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %0, ptr %i.d, align 8, !tbaa !555
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !557
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 1, ptr %i.f, align 8, !tbaa !558
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !531
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %_ZN7AstNode2isI14AstMemberDType12AstNodeDTypeEEbPKT0_.exit

_ZN7AstNode2isI14AstMemberDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %bb.r, %bb.a
  %i.j = phi ptr [ %0, %bb.a ], [ %i.aj, %bb.r ]  ; 2 uses
  %.033248 = phi i32 [ 0, %bb.a ], [ %i.ba, %bb.r ]
  %.sroa.0157.0247 = phi ptr [ null, %bb.a ], [ %.sroa.0157.1, %bb.r ] ; 10 uses
  %.sroa.10.0246 = phi ptr [ null, %bb.a ], [ %.sroa.10.1, %bb.r ] ; 7 uses
  %.sroa.15.0245 = phi ptr [ null, %bb.a ], [ %.sroa.15.1, %bb.r ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.k, align 8, !tbaa !62 ; 3 uses
  switch i16 %.sroa.0.0.copyload.i.i.i, label %_ZN7AstNode2isI13AstConstDType12AstNodeDTypeEEbPKT0_.exit [
    i16 86, label %bb.b
    i16 88, label %bb.b
    i16 91, label %bb.b
    i16 92, label %bb.b
  ]

_ZN7AstNode2isI13AstConstDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %_ZN7AstNode2isI14AstMemberDType12AstNodeDTypeEEbPKT0_.exit
  %i.l = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 78
  %or.cond = and i1 %1, %i.l
  %i.m = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 83
  %or.cond4 = and i1 %2, %i.m
  %or.cond327 = or i1 %or.cond, %or.cond4
  br i1 %or.cond327, label %bb.b, label %.thread174

bb.b:                                             ; preds = %_ZN7AstNode2isI14AstMemberDType12AstNodeDTypeEEbPKT0_.exit, %_ZN7AstNode2isI14AstMemberDType12AstNodeDTypeEEbPKT0_.exit, %_ZN7AstNode2isI14AstMemberDType12AstNodeDTypeEEbPKT0_.exit, %_ZN7AstNode2isI14AstMemberDType12AstNodeDTypeEEbPKT0_.exit, %_ZN7AstNode2isI13AstConstDType12AstNodeDTypeEEbPKT0_.exit
  %i.n = invoke { ptr, i8 } @_ZNSt10_HashtableIPK12AstNodeDTypeS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE10_M_emplaceIJRS2_EEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNSt13unordered_setIPK12AstNodeDTypeSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb0EEEbEDpOT_.exit unwind label %bb.c

_ZNSt13unordered_setIPK12AstNodeDTypeSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb0EEEbEDpOT_.exit: ; preds = %bb.b
  %.fca.1.extract = extractvalue { ptr, i8 } %i.n, 1
  %i.o = trunc i8 %.fca.1.extract to i1           ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.s

.loopexit.split-lp:                               ; preds = %_ZNKSt6vectorIPK12AstNodeDTypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body146

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body146

bb.d:                                             ; preds = %_ZNSt13unordered_setIPK12AstNodeDTypeSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb0EEEbEDpOT_.exit
  %i.q = ptrtoint ptr %.sroa.10.0246 to i64
  %i.r = ptrtoint ptr %.sroa.0157.0247 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = ashr exact i64 %i.s, 3                   ; 3 uses
  %i.u = icmp ult i64 %i.t, 10
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i79 = icmp eq ptr %.sroa.10.0246, %.sroa.15.0245
  br i1 %.not.i79, label %_ZNKSt6vectorIPK12AstNodeDTypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !555
  store ptr %i.v, ptr %.sroa.10.0246, align 8, !tbaa !555
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.10.0246, i64 8
  br label %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE9push_backERKS2_.exit

_ZNKSt6vectorIPK12AstNodeDTypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.x = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #37
          to label %.noexc80 unwind label %.loopexit.split-lp ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIPK12AstNodeDTypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.s ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !555
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !555
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %.noexc80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %.sroa.0157.0247, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %.noexc80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0157.0247, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.0247, i64 noundef %i.s) #34
  br label %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  br label %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.f, %bb.d
  %.sroa.15.1 = phi ptr [ %.sroa.15.0245, %bb.d ], [ %i.ae, %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.15.0245, %bb.f ] ; 6 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.0246, %bb.d ], [ %i.ad, %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.w, %bb.f ] ; 2 uses
  %.sroa.0157.1 = phi ptr [ %.sroa.0157.0247, %bb.d ], [ %i.z, %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0157.0247, %bb.f ] ; 6 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !555 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 408
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(162) %i.af)
          to label %bb.i unwind label %.loopexit189 ; 3 uses

bb.i:                                             ; preds = %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE9push_backERKS2_.exit
  %.not.not = icmp eq ptr %i.aj, null
  br i1 %.not.not, label %bb.j, label %bb.r

.loopexit189:                                     ; preds = %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EE9push_backERKS2_.exit
  %lpad.loopexit191 = landingpad { ptr, i32 }
          cleanup
  br label %.body146

.loopexit.split-lp190:                            ; preds = %bb.k, %bb.l
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          cleanup
  br label %.body146

bb.j:                                             ; preds = %bb.i
  br i1 %3, label %bb.k, label %.thread174

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !555
  %i.al = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1103, i32 noundef 1051)
          to label %bb.l unwind label %.loopexit.split-lp190 ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.am = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.m unwind label %.loopexit.split-lp190

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !555
  invoke void @_ZNK7AstNode14prettyTypeNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(152) %i.an)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %5, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !73
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef %i.ao, i64 noundef %i.aq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.n
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1212, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ak, ptr noundef nonnull align 8 dereferenceable(112) %i.ar) #35
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !74
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.at, %bb.p ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.au, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.body146

bb.r:                                             ; preds = %bb.i
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !555
  %i.ba = add nuw nsw i32 %.033248, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, 1000
  br i1 %exitcond.not, label %bb.s, label %_ZN7AstNode2isI14AstMemberDType12AstNodeDTypeEEbPKT0_.exit, !llvm.loop !1162

bb.s:                                             ; preds = %bb.r, %_ZNSt13unordered_setIPK12AstNodeDTypeSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb0EEEbEDpOT_.exit
  %.sroa.15.0.lcssa = phi ptr [ %.sroa.15.1, %bb.r ], [ %.sroa.15.0245, %_ZNSt13unordered_setIPK12AstNodeDTypeSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb0EEEbEDpOT_.exit ] ; 10 uses
  %.sroa.10.0.lcssa = phi ptr [ %.sroa.10.1, %bb.r ], [ %.sroa.10.0246, %_ZNSt13unordered_setIPK12AstNodeDTypeSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb0EEEbEDpOT_.exit ] ; 2 uses
  %.sroa.0157.0.lcssa = phi ptr [ %.sroa.0157.1, %bb.r ], [ %.sroa.0157.0247, %_ZNSt13unordered_setIPK12AstNodeDTypeSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb0EEEbEDpOT_.exit ] ; 12 uses
  %i.bb = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5)
          to label %bb.t unwind label %bb.z       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.bc = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.u, label %bb.y, !prof !465

bb.u:                                             ; preds = %bb.t
  %i.be = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bf = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #33 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  br label %.body146

bb.y:                                             ; preds = %bb.w, %bb.u, %bb.t
  %i.bh = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.1759, ptr nonnull @.str.1760, i32 481, ptr null) ; 13 uses
  br i1 %i.o, label %bb.ab, label %.invoke

bb.z:                                             ; preds = %bb.bn, %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body146

bb.aa:                                            ; preds = %.invoke, %bb.ab, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body146

bb.ab:                                            ; preds = %bb.y
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.1214, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86: ; preds = %bb.ab
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 noundef 1000)
          to label %.invoke unwind label %bb.aa

.invoke:                                          ; preds = %bb.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86
  %i.bm = phi ptr [ %i.bl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 ], [ %i.bh, %bb.y ]
  %i.bn = phi ptr [ @.str.1215, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 ], [ @.str.1213, %bb.y ]
  %i.bo = phi i64 [ 11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 ], [ 25, %bb.y ]
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull %i.bn, i64 noundef %i.bo)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84: ; preds = %.invoke
  %.not249 = icmp eq ptr %.sroa.0157.0.lcssa, %.sroa.10.0.lcssa
  br i1 %.not249, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.ac

._crit_edge:                                      ; preds = %bb.aq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !559
  %i.ca = icmp ugt i64 %i.bz, 10
  br i1 %i.ca, label %bb.ba, label %bb.bi

bb.ac:                                            ; preds = %.lr.ph, %bb.aq
  %.0251 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.aq ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK12AstNodeDType12skipRefIterpEbbb:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.ay
  %i.eq = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.au
  %.pn59.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.au ], [ %.pn59.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %.pn59.pn, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %bb.at
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.ef, %bb.at ] ; 2 uses
  %i.es = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.bx
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.az
  %i.eu = load i64, ptr %i.bx, align 8, !tbaa !74
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.as
  %.pn59.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ee, %bb.as ], [ %.pn59.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %.pn59.pn.pn.pn, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %.body146

bb.ba:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !74
  %i.ew = load ptr, ptr %i.bh, align 8, !tbaa !77
  %i.ex = getelementptr i8, ptr %i.ew, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %i.bh, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !86
  %.not.i127 = icmp eq i64 %i.fb, 0
  br i1 %.not.i127, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.bd unwind label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i8 noundef signext 10)
          to label %bb.bd unwind label %bb.bf     ; 0 uses

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %.0.i128 = phi ptr [ %i.fc, %bb.bb ], [ %i.bh, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !451
  invoke void @_ZNK8FileLine8warnMoreB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %i.ff)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.fg = load ptr, ptr %10, align 8, !tbaa !75
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !73
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i128, ptr noundef %i.fg, i64 noundef %i.fi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit133 unwind label %bb.bh ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit133: ; preds = %bb.be
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull @.str.1217, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135 unwind label %bb.bh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit133
  %i.fl = load i64, ptr %i.by, align 8, !tbaa !559
  %i.fm = add i64 %i.fl, -10
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, i64 noundef %i.fm)
          to label %_ZNSolsEm.exit unwind label %bb.bh

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull @.str.1218, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138 unwind label %bb.bh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138: ; preds = %_ZNSolsEm.exit
  %i.fp = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !74
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bc, %bb.bb
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body146

bb.bg:                                            ; preds = %bb.bd
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.bh:                                            ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit133, %bb.be
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.bh
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !74
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.bg
  %.pn57 = phi { ptr, i32 } [ %i.fv, %bb.bg ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.fw, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %.body146

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %._crit_edge
  %i.gc = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.gd = icmp eq i8 %i.gc, 0
  br i1 %i.gd, label %bb.bj, label %bb.bn, !prof !465

bb.bj:                                            ; preds = %bb.bi
  %i.ge = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  %.not.i.i145 = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i145, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gf = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #33 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  br label %.body146

bb.bn:                                            ; preds = %bb.bl, %bb.bj, %bb.bi
  %i.gh = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.1759, ptr nonnull @.str.1760, i32 481, ptr null)
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.gh)
          to label %.thread174 unwind label %bb.z

.thread174:                                       ; preds = %_ZN7AstNode2isI13AstConstDType12AstNodeDTypeEEbPKT0_.exit, %bb.j, %bb.bn
  %.sroa.0157.2185 = phi ptr [ %.sroa.0157.0.lcssa, %bb.bn ], [ %.sroa.0157.1, %bb.j ], [ %.sroa.0157.0247, %_ZN7AstNode2isI13AstConstDType12AstNodeDTypeEEbPKT0_.exit ] ; 3 uses
  %.sroa.15.2181 = phi ptr [ %.sroa.15.0.lcssa, %bb.bn ], [ %.sroa.15.1, %bb.j ], [ %.sroa.15.0245, %_ZN7AstNode2isI13AstConstDType12AstNodeDTypeEEbPKT0_.exit ]
  %.3 = phi ptr [ null, %bb.bn ], [ null, %bb.j ], [ %i.j, %_ZN7AstNode2isI13AstConstDType12AstNodeDTypeEEbPKT0_.exit ]
  %.not.i.i.i149 = icmp eq ptr %.sroa.0157.2185, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %.thread174
  %i.gi = ptrtoint ptr %.sroa.15.2181 to i64
  %i.gj = ptrtoint ptr %.sroa.0157.2185 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.2185, i64 noundef %i.gk) #34
  br label %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EED2Ev.exit

_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EED2Ev.exit:   ; preds = %.thread174, %bb.bo
  %i.gl = load ptr, ptr %i.g, align 8, !tbaa !560 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPK12AstNodeDTypeS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.gm, %.lr.ph.i.i.i.i ], [ %i.gl, %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EED2Ev.exit ] ; 2 uses
  %i.gm = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !536 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #34
  %.not.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPK12AstNodeDTypeS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZNSt10_HashtableIPK12AstNodeDTypeS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EED2Ev.exit
  %i.gn = load ptr, ptr %4, align 8, !tbaa !557
  %i.go = load i64, ptr %i.f, align 8, !tbaa !558
  %i.gp = shl i64 %i.go, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gn, i8 0, i64 %i.gp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.gq = load ptr, ptr %4, align 8, !tbaa !557   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.e
  br i1 %i.gr, label %_ZNSt13unordered_setIPK12AstNodeDTypeSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt10_HashtableIPK12AstNodeDTypeS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.gs = load i64, ptr %i.f, align 8, !tbaa !558
  %i.gt = shl i64 %i.gs, 3
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #34
  br label %_ZNSt13unordered_setIPK12AstNodeDTypeSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit

_ZNSt13unordered_setIPK12AstNodeDTypeSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIPK12AstNodeDTypeS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  ret ptr %.3

.body146:                                         ; preds = %.loopexit189, %.loopexit.split-lp190, %bb.ae, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %bb.aa, %bb.x, %bb.z, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.bf, %.loopexit.split-lp, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.15.3 = phi ptr [ %.sroa.10.0246, %.loopexit.split-lp ], [ %.sroa.15.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.15.0.lcssa, %bb.ae ], [ %.sroa.15.0.lcssa, %bb.x ], [ %.sroa.15.0245, %bb.c ], [ %.sroa.15.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.sroa.15.0.lcssa, %bb.bf ], [ %.sroa.15.0.lcssa, %bb.bm ], [ %.sroa.15.0.lcssa, %bb.z ], [ %.sroa.15.0.lcssa, %bb.aa ], [ %.sroa.15.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.sroa.15.0.lcssa, %bb.ar ], [ %.sroa.15.1, %.loopexit189 ], [ %.sroa.15.1, %.loopexit.split-lp190 ]
  %.sroa.0157.3 = phi ptr [ %.sroa.0157.0247, %.loopexit.split-lp ], [ %.sroa.0157.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0157.0.lcssa, %bb.ae ], [ %.sroa.0157.0.lcssa, %bb.x ], [ %.sroa.0157.0247, %bb.c ], [ %.sroa.0157.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.sroa.0157.0.lcssa, %bb.bf ], [ %.sroa.0157.0.lcssa, %bb.bm ], [ %.sroa.0157.0.lcssa, %bb.z ], [ %.sroa.0157.0.lcssa, %bb.aa ], [ %.sroa.0157.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.sroa.0157.0.lcssa, %bb.ar ], [ %.sroa.0157.1, %.loopexit189 ], [ %.sroa.0157.1, %.loopexit.split-lp190 ] ; 3 uses
  %.pn59.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cm, %bb.ae ], [ %i.bg, %bb.x ], [ %i.p, %bb.c ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.fu, %bb.bf ], [ %i.gg, %bb.bm ], [ %i.bi, %bb.z ], [ %i.bj, %bb.aa ], [ %.pn59.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.ed, %bb.ar ], [ %lpad.loopexit191, %.loopexit189 ], [ %lpad.loopexit.split-lp192, %.loopexit.split-lp190 ]
  %.not.i.i.i150 = icmp eq ptr %.sroa.0157.3, null
  br i1 %.not.i.i.i150, label %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EED2Ev.exit151, label %bb.bq

bb.bq:                                            ; preds = %.body146
  %i.gu = ptrtoint ptr %.sroa.15.3 to i64
  %i.gv = ptrtoint ptr %.sroa.0157.3 to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.3, i64 noundef %i.gw) #34
  br label %_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EED2Ev.exit151

_ZNSt6vectorIPK12AstNodeDTypeSaIS2_EED2Ev.exit151: ; preds = %.body146, %bb.bq
  call void @_ZNSt13unordered_setIPK12AstNodeDTypeSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  resume { ptr, i32 } %.pn59.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI14AstMemberDType12AstNodeDTypeEEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 86
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI17AstParamTypeDType12AstNodeDTypeEEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI11AstRefDType12AstNodeDTypeEEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 91
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI15AstRequireDType12AstNodeDTypeEEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI13AstConstDType12AstNodeDTypeEEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 78
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI12AstEnumDType12AstNodeDTypeEEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

declare void @_ZNK7AstNode14prettyTypeNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

declare void @_ZNK8FileLine9warnOtherB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7V3Error1sEv.exit, !prof !465

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7V3Error1sEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #33 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  br label %_ZN7V3Error1sEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  br label %common.resume

_ZN7V3Error1sEv.exit:                             ; preds = %bb.a, %bb.b, %bb.d
  %i.f = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 200), ptr nonnull @.str.1759, ptr nonnull @.str.1760, i32 468, ptr null)
  store i8 1, ptr %i.f, align 8, !tbaa !583
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZNK8FileLine11warnContextB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZNK8FileLine17warnContextParentB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN7V3Error1sEv.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %3, align 8, !tbaa !75     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !74
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.l = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !74
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

end_hunk_1
