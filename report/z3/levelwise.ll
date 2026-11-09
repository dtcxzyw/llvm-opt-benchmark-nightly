Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/levelwise?download=true
inline.NumInlined: 2279
inline.NumDeleted: 964
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5nlsat20undef_var_assignment1mEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180, !nonnull !95, !align !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164, !nonnull !95, !align !96
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5nlsat20undef_var_assignment8containsEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !161
  %.not = icmp eq i32 %1, %i.b
  br i1 %.not, label %_ZNK5nlsat10assignment11is_assignedEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !180, !nonnull !95, !align !96
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !276  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK5nlsat10assignment11is_assignedEj.exit, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !123
  %.not.i.i = icmp ult i32 %1, %i.i
  br i1 %.not.i.i, label %bb.c, label %_ZNK5nlsat10assignment11is_assignedEj.exit

bb.c:                                             ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %.0.i.sroa.speculate.load..i = load i8, ptr %i.k, align 1, !tbaa !277
  %i.l = trunc nuw i8 %.0.i.sroa.speculate.load..i to i1
  br label %_ZNK5nlsat10assignment11is_assignedEj.exit

_ZNK5nlsat10assignment11is_assignedEj.exit:       ; preds = %bb.c, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i, %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.a ], [ %i.l, %bb.c ], [ false, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i ], [ false, %bb.b ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat20undef_var_assignmentclEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180, !nonnull !95, !align !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE17_M_realloc_insertIJS4_RS7_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !151    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.o) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !119, !nonnull !95, !align !96 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !165
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_ZN17algebraic_numbers7manager4swapERNS_4anumES2_(ptr noundef nonnull align 8 dereferenceable(17) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #21
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load ptr, ptr %3, align 8, !tbaa !124
  store ptr %i.v, ptr %i.u, align 8, !tbaa !168
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.ag, %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0912.i.i.i = phi ptr [ %i.af, %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.w = load ptr, ptr %.0912.i.i.i, align 8, !tbaa !119, !alias.scope !286, !nonnull !95, !align !96 ; 2 uses
  store ptr %i.w, ptr %.013.i.i.i, align 8, !tbaa !88, !alias.scope !285
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !165, !alias.scope !285
  %i.y = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8 ; 2 uses
  tail call void @_ZN17algebraic_numbers7manager4swapERNS_4anumES2_(ptr noundef nonnull align 8 dereferenceable(17) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.y) #21
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !168, !alias.scope !286
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !168, !alias.scope !285
  %i.ac = load ptr, ptr %.0912.i.i.i, align 8, !tbaa !119, !alias.scope !286, !nonnull !95, !align !96
  invoke void @_ZN17algebraic_numbers7manager3delERNS_4anumE(ptr noundef nonnull align 8 dereferenceable(17) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #22
  unreachable

_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit, label %.lr.ph.i.i.i, !llvm.loop !281

_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE12_M_check_lenEmPKc.exit ], [ %i.ag, %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not11.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i17, label %_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit24, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit, %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i21
  %.013.i.i.i19 = phi ptr [ %i.as, %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.ah, %_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit ] ; 4 uses
  %.0912.i.i.i20 = phi ptr [ %i.ar, %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.ai = load ptr, ptr %.0912.i.i.i20, align 8, !tbaa !119, !alias.scope !288, !nonnull !95, !align !96 ; 2 uses
  store ptr %i.ai, ptr %.013.i.i.i19, align 8, !tbaa !88, !alias.scope !287
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i19, i64 8 ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !165, !alias.scope !287
  %i.ak = getelementptr inbounds nuw i8, ptr %.0912.i.i.i20, i64 8 ; 2 uses
  tail call void @_ZN17algebraic_numbers7manager4swapERNS_4anumES2_(ptr noundef nonnull align 8 dereferenceable(17) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #21
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i19, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0912.i.i.i20, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !168, !alias.scope !288
  store ptr %i.an, ptr %i.al, align 8, !tbaa !168, !alias.scope !287
  %i.ao = load ptr, ptr %.0912.i.i.i20, align 8, !tbaa !119, !alias.scope !288, !nonnull !95, !align !96
  invoke void @_ZN17algebraic_numbers7manager3delERNS_4anumE(ptr noundef nonnull align 8 dereferenceable(17) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i21 unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i18
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #22
  unreachable

_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %.lr.ph.i.i.i18
  %i.ar = getelementptr inbounds nuw i8, ptr %.0912.i.i.i20, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i19, i64 24 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.ar, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit24, label %.lr.ph.i.i.i18, !llvm.loop !281

_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit24: ; preds = %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.ah, %_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit ], [ %i.as, %_ZSt19__relocate_object_aISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEES8_13std_allocatorIS8_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE13_M_deallocateEPS8_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit24
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
  br label %_ZNSt12_Vector_baseISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorISt4pairI15_scoped_numeralIN17algebraic_numbers7managerEEPN10polynomial10polynomialEE13std_allocatorIS8_EE11_S_relocateEPS8_SC_SC_RSA_.exit24, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !151
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !150
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.at, align 8, !tbaa !166
  ret void
}

; Function Attrs: nounwind
declare void @_ZN17algebraic_numbers7manager4swapERNS_4anumES2_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z23stable_index_merge_sortIZN5nlsat9levelwise4impl28add_adjacent_root_resultantsEvEUljjE_EvPjS4_jT_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ult i32 %2, 2
  br i1 %i.a, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit, label %.preheader69

.preheader69:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %.preheader68

.preheader68:                                     ; preds = %.preheader69, %bb.c
  %.03985 = phi i32 [ 1, %.preheader69 ], [ %i.c, %bb.c ] ; 2 uses
  %.06584 = phi ptr [ %0, %.preheader69 ], [ %.06683, %bb.c ] ; 8 uses
  %.06683 = phi ptr [ %1, %.preheader69 ], [ %.06584, %bb.c ] ; 9 uses
  %.0658498 = ptrtoaddr ptr %.06683 to i64
  %.0668399 = ptrtoaddr ptr %.06584 to i64
  %i.c = shl i32 %.03985, 1                       ; 3 uses
  %5 = sub i64 %.0658498, %.0668399               ; 2 uses
  %invariant.op = add i64 %5, -1
  %invariant.op126 = add i64 %5, -1
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq ptr %.06683, %0
  br i1 %.not, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit, label %bb.e

.loopexit:                                        ; preds = %.lr.ph81, %middle.block, %.preheader
  %i.d = icmp ult i32 %i.g, %2
  br i1 %i.d, label %bb.d, label %bb.c, !llvm.loop !289

bb.c:                                             ; preds = %.loopexit
  %i.e = icmp ult i32 %i.c, %2
  br i1 %i.e, label %.preheader68, label %bb.b, !llvm.loop !290

bb.d:                                             ; preds = %.preheader68, %.loopexit
  %.03882 = phi i32 [ 0, %.preheader68 ], [ %i.g, %.loopexit ] ; 7 uses
  %i.f = add i32 %.03882, %.03985                 ; 2 uses
  %.sroa.speculated46 = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.f) ; 6 uses
  %i.g = add i32 %.03882, %i.c                    ; 3 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.g) ; 4 uses
  %i.h = icmp ult i32 %.03882, %.sroa.speculated46
  %i.i = icmp ult i32 %i.f, %.sroa.speculated
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %.preheader67

.preheader67:                                     ; preds = %.lr.ph, %bb.d
  %.035.lcssa = phi i32 [ %.03882, %bb.d ], [ %.136, %.lr.ph ] ; 2 uses
  %.032.lcssa = phi i32 [ %.sroa.speculated46, %bb.d ], [ %.133, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ %.03882, %bb.d ], [ %i.ba, %.lr.ph ] ; 8 uses
  %i.k = icmp ult i32 %.035.lcssa, %.sroa.speculated46
  br i1 %i.k, label %.lr.ph77.preheader, label %.preheader

.lr.ph77.preheader:                               ; preds = %.preheader67
  %i.l = zext i32 %.035.lcssa to i64              ; 8 uses
  %i.m = zext i32 %.sroa.speculated46 to i64      ; 3 uses
  %i.n = sub nsw i64 %i.m, %i.l                   ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.n, 20
  br i1 %min.iters.check106, label %.lr.ph77.preheader121, label %vector.scevcheck102

vector.scevcheck102:                              ; preds = %.lr.ph77.preheader
  %i.o = xor i64 %i.l, -1
  %i.p = add nsw i64 %i.o, %i.m                   ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = xor i32 %.0.lcssa, -1
  %i.s = icmp ult i32 %i.r, %i.q
  %i.t = icmp ugt i64 %i.p, 4294967295
  %i.u = or i1 %i.s, %i.t
  br i1 %i.u, label %.lr.ph77.preheader121, label %vector.memcheck107

vector.memcheck107:                               ; preds = %vector.scevcheck102
  %i.v = zext i32 %.0.lcssa to i64
  %6 = sub nsw i64 %i.v, %i.l
  %i.w = shl nsw i64 %6, 2
  %i.x = add i64 %i.w, %invariant.op
  %diff.check108 = icmp ult i64 %i.x, 31
  br i1 %diff.check108, label %.lr.ph77.preheader121, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck107
  %n.vec110 = and i64 %i.n, -8                    ; 4 uses
  %i.y = add nsw i64 %n.vec110, %i.l
  %i.z = trunc i64 %n.vec110 to i32
  %i.aa = add i32 %.0.lcssa, %i.z                 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.06584, i64 %i.l
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body111 ] ; 3 uses
  %i.ab = trunc i64 %index112 to i32
  %i.ac = add i32 %.0.lcssa, %i.ab
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load113 = load <4 x i32>, ptr %gep, align 4, !tbaa !123
  %wide.load114 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !123
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x i32> %wide.load113, ptr %i.af, align 4, !tbaa !123
  store <4 x i32> %wide.load114, ptr %i.ag, align 4, !tbaa !123
  %index.next115 = add nuw i64 %index112, 8       ; 2 uses
  %i.ah = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.ah, label %middle.block116, label %vector.body111, !llvm.loop !291

middle.block116:                                  ; preds = %vector.body111
  %cmp.n117 = icmp eq i64 %i.n, %n.vec110
  br i1 %cmp.n117, label %.preheader, label %.lr.ph77.preheader121

.lr.ph77.preheader121:                            ; preds = %vector.memcheck107, %vector.scevcheck102, %.lr.ph77.preheader, %middle.block116
  %indvars.iv.ph = phi i64 [ %i.l, %vector.memcheck107 ], [ %i.l, %vector.scevcheck102 ], [ %i.l, %.lr.ph77.preheader ], [ %i.y, %middle.block116 ]
  %.176.ph = phi i32 [ %.0.lcssa, %vector.memcheck107 ], [ %.0.lcssa, %vector.scevcheck102 ], [ %.0.lcssa, %.lr.ph77.preheader ], [ %i.aa, %middle.block116 ]
  br label %.lr.ph77

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.072 = phi i32 [ %i.ba, %.lr.ph ], [ %.03882, %bb.d ] ; 2 uses
  %.03271 = phi i32 [ %.133, %.lr.ph ], [ %.sroa.speculated46, %bb.d ] ; 2 uses
  %.03570 = phi i32 [ %.136, %.lr.ph ], [ %.03882, %bb.d ] ; 2 uses
  %i.ai = zext i32 %.03271 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !123
  %i.al = zext i32 %.03570 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !123
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !140, !nonnull !95, !align !96
  %i.ap = zext i32 %i.ak to i64
  %i.aq = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = zext i32 %i.an to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = tail call noundef zeroext i1 @_ZN17algebraic_numbers7manager2ltERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.av) ; 3 uses
  %not. = xor i1 %i.aw, true
  %i.ax = zext i1 %not. to i32
  %.136 = add nuw i32 %.03570, %i.ax              ; 3 uses
  %i.ay = zext i1 %i.aw to i32
  %.133 = add nuw i32 %.03271, %i.ay              ; 3 uses
  %.in = select i1 %i.aw, ptr %i.aj, ptr %i.am
  %i.az = load i32, ptr %.in, align 4, !tbaa !123
  %i.ba = add i32 %.072, 1                        ; 2 uses
  %i.bb = zext i32 %.072 to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.bb
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !123
  %i.bd = icmp ult i32 %.136, %.sroa.speculated46
  %i.be = icmp ult i32 %.133, %.sroa.speculated
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.lr.ph, label %.preheader67, !llvm.loop !292

.preheader:                                       ; preds = %.lr.ph77, %middle.block116, %.preheader67
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader67 ], [ %i.aa, %middle.block116 ], [ %i.cg, %.lr.ph77 ] ; 7 uses
  %i.bg = icmp ult i32 %.032.lcssa, %.sroa.speculated
  br i1 %i.bg, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %.preheader
  %i.bh = zext i32 %.032.lcssa to i64             ; 8 uses
  %i.bi = zext i32 %.sroa.speculated to i64       ; 3 uses
  %i.bj = sub nsw i64 %i.bi, %i.bh                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bj, 20
  br i1 %min.iters.check, label %.lr.ph81.preheader120, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph81.preheader
  %i.bk = xor i64 %i.bh, -1
  %i.bl = add nsw i64 %i.bk, %i.bi                ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = xor i32 %.1.lcssa, -1
  %i.bo = icmp ult i32 %i.bn, %i.bm
  %i.bp = icmp ugt i64 %i.bl, 4294967295
  %i.bq = or i1 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph81.preheader120, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.br = zext i32 %.1.lcssa to i64
  %7 = sub nsw i64 %i.br, %i.bh
  %i.bs = shl nsw i64 %7, 2
  %i.bt = add i64 %i.bs, %invariant.op126
  %diff.check = icmp ult i64 %i.bt, 31
  br i1 %diff.check, label %.lr.ph81.preheader120, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, -8                      ; 4 uses
  %i.bu = add nsw i64 %n.vec, %i.bh
  %i.bv = trunc i64 %n.vec to i32
  %i.bw = add i32 %.1.lcssa, %i.bv
  %invariant.gep124 = getelementptr [4 x i8], ptr %.06584, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bx = trunc i64 %index to i32
  %i.by = add i32 %.1.lcssa, %i.bx
  %gep125 = getelementptr [4 x i8], ptr %invariant.gep124, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %gep125, i64 16
  %wide.load = load <4 x i32>, ptr %gep125, align 4, !tbaa !123
  %wide.load100 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !123
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <4 x i32> %wide.load, ptr %i.cb, align 4, !tbaa !123
  store <4 x i32> %wide.load100, ptr %i.cc, align 4, !tbaa !123
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph81.preheader120

.lr.ph81.preheader120:                            ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph81.preheader, %middle.block
  %indvars.iv88.ph = phi i64 [ %i.bh, %vector.memcheck ], [ %i.bh, %vector.scevcheck ], [ %i.bh, %.lr.ph81.preheader ], [ %i.bu, %middle.block ]
  %.280.ph = phi i32 [ %.1.lcssa, %vector.memcheck ], [ %.1.lcssa, %vector.scevcheck ], [ %.1.lcssa, %.lr.ph81.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph81

.lr.ph77:                                         ; preds = %.lr.ph77.preheader121, %.lr.ph77
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph77 ], [ %indvars.iv.ph, %.lr.ph77.preheader121 ] ; 2 uses
  %.176 = phi i32 [ %i.cg, %.lr.ph77 ], [ %.176.ph, %.lr.ph77.preheader121 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %indvars.iv
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !123
  %i.cg = add i32 %.176, 1                        ; 2 uses
  %i.ch = zext i32 %.176 to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.ch
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !123
  %i.cj = icmp samesign ult i64 %indvars.iv.next, %i.m
  br i1 %i.cj, label %.lr.ph77, label %.preheader, !llvm.loop !294

.lr.ph81:                                         ; preds = %.lr.ph81.preheader120, %.lr.ph81
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.lr.ph81 ], [ %indvars.iv88.ph, %.lr.ph81.preheader120 ] ; 2 uses
  %.280 = phi i32 [ %i.cm, %.lr.ph81 ], [ %.280.ph, %.lr.ph81.preheader120 ] ; 2 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %indvars.iv88
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !123
  %i.cm = add i32 %.280, 1
  %i.cn = zext i32 %.280 to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.cn
  store i32 %i.cl, ptr %i.co, align 4, !tbaa !123
  %i.cp = icmp samesign ult i64 %indvars.iv.next89, %i.bi
  br i1 %i.cp, label %.lr.ph81, label %.loopexit, !llvm.loop !295

bb.e:                                             ; preds = %bb.b
  %i.cq = zext i32 %2 to i64
  %.idx = shl nuw nsw i64 %i.cq, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %.06683, i64 %.idx, i1 false)
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.b, %bb.e, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN17algebraic_numbers7manager2ltERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIPN10polynomial10polynomialES3_ES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE16_M_insert_uniqueIS4_EES0_ISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02123.i = load ptr, ptr %i.a, align 8, !tbaa !181 ; 2 uses
  %.not24.i = icmp eq ptr %.02123.i, null
  br i1 %.not24.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !124    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02125.i = phi ptr [ %.02123.i, %.lr.ph.i ], [ %.021.i, %bb.b ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02125.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 3 uses
  %i.h = icmp ult ptr %i.c, %i.g
  %i.i = icmp eq ptr %i.c, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %.02125.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ult ptr %i.e, %i.k
  %.sroa.05.0.i.i.i = select i1 %i.i, i1 %i.l, i1 %i.h ; 2 uses
  %.in.v.i = select i1 %.sroa.05.0.i.i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02125.i, i64 %.in.v.i
  %.021.i = load ptr, ptr %.in.i, align 8, !tbaa !181 ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !296

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %.sroa.05.0.i.i.i, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.020.lcssa30.i = phi ptr [ %.02125.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103
  %i.o = icmp eq ptr %.020.lcssa30.i, %i.n
  br i1 %i.o, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i) #24 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !124
  %.pre19 = load ptr, ptr %1, align 8, !tbaa !124
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.pre21 = load ptr, ptr %.phi.trans.insert20, align 8
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre23 = load ptr, ptr %.phi.trans.insert22, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.q = phi ptr [ %.pre23, %bb.c ], [ %i.e, %._crit_edge.i ]
  %i.r = phi ptr [ %.pre21, %bb.c ], [ %i.k, %._crit_edge.i ]
  %i.s = phi ptr [ %.pre19, %bb.c ], [ %i.c, %._crit_edge.i ] ; 2 uses
  %i.t = phi ptr [ %.pre, %bb.c ], [ %i.g, %._crit_edge.i ] ; 2 uses
  %.020.lcssa29.i = phi ptr [ %.020.lcssa30.i, %bb.c ], [ %.02125.i, %._crit_edge.i ]
  %.sroa.06.0.i = phi ptr [ %i.p, %bb.c ], [ %.02125.i, %._crit_edge.i ]
  %i.u = icmp ult ptr %i.t, %i.s
  %i.v = icmp eq ptr %i.t, %i.s
  %i.w = icmp ult ptr %i.r, %i.q
  %.sroa.05.0.i.i5.i = select i1 %i.v, i1 %i.w, i1 %i.u
  br i1 %.sroa.05.0.i.i5.i, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.020.lcssa30.i, %._crit_edge.thread.i ], [ %.020.lcssa29.i, %bb.d ] ; 4 uses
  %i.x = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.x, label %_ZNSt8_Rb_treeISt4pairIPN10polynomial10polynomialES3_ES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.z = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !124 ; 2 uses
  %i.ab = icmp ult ptr %i.z, %i.aa
  %i.ac = icmp eq ptr %i.z, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.af = load ptr, ptr %i.ad, align 8
  %i.ag = load ptr, ptr %i.ae, align 8
  %i.ah = icmp ult ptr %i.af, %i.ag
  %.sroa.05.0.i.i.i6 = select i1 %i.ac, i1 %i.ah, i1 %i.ab
  br label %_ZNSt8_Rb_treeISt4pairIPN10polynomial10polynomialES3_ES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit

_ZNSt8_Rb_treeISt4pairIPN10polynomial10polynomialES3_ES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit: ; preds = %select.unfold, %bb.e
  %i.ai = phi i1 [ %.sroa.05.0.i.i.i6, %bb.e ], [ true, %select.unfold ]
  %i.aj = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #21
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !105
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !105
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeISt4pairIPN10polynomial10polynomialES3_ES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit
  %.sroa.011.0 = phi ptr [ %i.aj, %_ZNSt8_Rb_treeISt4pairIPN10polynomial10polynomialES3_ES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit ], [ %.sroa.06.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeISt4pairIPN10polynomial10polynomialES3_ES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

declare void @_ZN10polynomial5cache9psc_chainEPKNS_10polynomialES3_jR10ref_vectorIS1_NS_7managerEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeISt4pairIPN10polynomial10polynomialES3_ES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  tail call void @_ZNSt8_Rb_treeISt4pairIPN10polynomial10polynomialES3_ES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #20
end_hunk_0
begin_hunk_1_@_ZN5nlsat9levelwise4impl17apply_permutationERSt6vectorINS1_13root_functionE13std_allocatorIS3_EEjRKS2_IjS4_IjEE:bb.a
  store ptr null, ptr %i.i, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i32 0, ptr %i.j, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.k, align 8, !tbaa !99
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIb13std_allocatorIbEEC2EmRKbRKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.g, 63                     ; 2 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.m, 2305843009213693944
  %i.o = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.n)
          to label %_ZNSt6vectorIb13std_allocatorIbEE13_M_initializeEm.exit.i unwind label %bb.d ; 6 uses

_ZNSt6vectorIb13std_allocatorIbEE13_M_initializeEm.exit.i: ; preds = %bb.b
  %i.p = lshr i64 %i.l, 6                         ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p ; 2 uses
  store ptr %i.o, ptr %5, align 8
  store i32 0, ptr %i.h, align 8
  %i.r = sdiv i64 %i.g, 64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.r
  %i.t = and i64 %i.g, -9223372036854775745
  %i.u = icmp ugt i64 %i.t, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.u, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.s, i64 %storemerge.idx.i.i.i.i.i
  %i.v = trunc i64 %i.g to i32
  %i.w = and i32 %i.v, 63
  store ptr %storemerge.i.i.i.i.i, ptr %i.i, align 8
  store i32 %i.w, ptr %i.j, align 8
  %.not.i5.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i, label %_ZNSt6vectorIb13std_allocatorIbEEC2EmRKbRKS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIb13std_allocatorIbEE13_M_initializeEm.exit.i
  %.idx.i = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIb13std_allocatorIbEEC2EmRKbRKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13_Bvector_baseI13std_allocatorIbEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #21
  resume { ptr, i32 } %i.x

_ZNSt6vectorIb13std_allocatorIbEEC2EmRKbRKS1_.exit: ; preds = %bb.a, %_ZNSt6vectorIb13std_allocatorIbEE13_M_initializeEm.exit.i, %bb.c
  %i.y = phi ptr [ null, %bb.a ], [ %i.q, %_ZNSt6vectorIb13std_allocatorIbEE13_M_initializeEm.exit.i ], [ %i.q, %bb.c ] ; 2 uses
  %i.z = phi ptr [ null, %bb.a ], [ null, %_ZNSt6vectorIb13std_allocatorIbEE13_M_initializeEm.exit.i ], [ %i.o, %bb.c ] ; 6 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !142 ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !120   ; 2 uses
  %.not62 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not62, label %._crit_edge, label %.lr.ph61

._crit_edge:                                      ; preds = %_ZNSt6vectorIb13std_allocatorIbEEC2EmRKbRKS1_.exit
  %.not.i.i29 = icmp eq ptr %i.z, null
  br i1 %.not.i.i29, label %_ZNSt13_Bvector_baseI13std_allocatorIbEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.critedge, %._crit_edge
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ag
  invoke void @_ZN6memory10deallocateEPv(ptr noundef %i.ah)
          to label %_ZNSt13_Bvector_baseI13std_allocatorIbEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #22
  unreachable

_ZNSt13_Bvector_baseI13std_allocatorIbEED2Ev.exit: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

.lr.ph61:                                         ; preds = %_ZNSt6vectorIb13std_allocatorIbEEC2EmRKbRKS1_.exit, %.critedge
  %i.ak = phi ptr [ %i.cn, %.critedge ], [ %i.ab, %_ZNSt6vectorIb13std_allocatorIbEEC2EmRKbRKS1_.exit ] ; 4 uses
  %i.al = phi ptr [ %i.co, %.critedge ], [ %i.aa, %_ZNSt6vectorIb13std_allocatorIbEEC2EmRKbRKS1_.exit ] ; 3 uses
  %i.am = phi i64 [ %i.cq, %.critedge ], [ 0, %_ZNSt6vectorIb13std_allocatorIbEEC2EmRKbRKS1_.exit ] ; 2 uses
  %.02559 = phi i32 [ %i.cp, %.critedge ], [ 0, %_ZNSt6vectorIb13std_allocatorIbEEC2EmRKbRKS1_.exit ] ; 5 uses
  %i.an = lshr i32 %.02559, 6
  %.zext = zext nneg i32 %i.an to i64             ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.zext
  %i.ap = and i64 %i.am, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !139
  %i.as = and i64 %i.ar, %i.aq
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph61
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.am
  %i.au = load i32, ptr %i.at, align 4, !tbaa !123
  %i.av = icmp eq i32 %i.au, %.02559
  br i1 %i.av, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.aw = zext i32 %.02559 to i64                 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.zext ; 2 uses
  %i.ay = and i64 %i.aw, 63
  %i.az = shl nuw i64 1, %i.ay                    ; 2 uses
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !139 ; 2 uses
  %i.bb = and i64 %i.az, %i.ba
  %.not5457 = icmp eq i64 %i.bb, 0
  br i1 %.not5457, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %i.bc = phi i64 [ %i.cl, %bb.h ], [ %i.ba, %.preheader ]
  %i.bd = phi i64 [ %i.ck, %bb.h ], [ %i.az, %.preheader ]
  %i.be = phi ptr [ %i.ci, %bb.h ], [ %i.ax, %.preheader ]
  %i.bf = phi i64 [ %i.ch, %bb.h ], [ %i.aw, %.preheader ]
  %.058 = phi i32 [ %i.bj, %bb.h ], [ %.02559, %.preheader ]
  %i.bg = or i64 %i.bd, %i.bc
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !139
  %i.bh = load ptr, ptr %3, align 8, !tbaa !120
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !123 ; 5 uses
  %i.bk = lshr i32 %i.bj, 6
  %.zext53 = zext nneg i32 %i.bk to i64           ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.zext53
  %i.bm = and i32 %i.bj, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !139
  %i.bq = and i64 %i.bo, %i.bp
  %.not55 = icmp eq i64 %i.bq, 0
  br i1 %.not55, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.br = add i32 %.058, %2
  %i.bs = zext i32 %i.br to i64
  %i.bt = load ptr, ptr %1, align 8, !tbaa !115   ; 2 uses
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bs ; 4 uses
  %i.bv = add i32 %i.bj, %2
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bw ; 3 uses
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !119, !nonnull !95, !align !96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  tail call void @_ZN17algebraic_numbers7manager4swapERNS_4anumES2_(ptr noundef nonnull align 8 dereferenceable(17) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 8, !tbaa !123
  %i.cg = load i32, ptr %i.ce, align 8, !tbaa !123
  store i32 %i.cg, ptr %i.cd, align 8, !tbaa !123
  store i32 %i.cf, ptr %i.ce, align 8, !tbaa !123
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.ch = zext i32 %i.bj to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.zext53 ; 2 uses
  %i.cj = and i64 %i.ch, 63
  %i.ck = shl nuw i64 1, %i.cj                    ; 2 uses
  %i.cl = load i64, ptr %i.ci, align 8, !tbaa !139 ; 2 uses
  %i.cm = and i64 %i.ck, %i.cl
  %.not54 = icmp eq i64 %i.cm, 0
  br i1 %.not54, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !354

.critedge.loopexit:                               ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !142
  %.pre63 = load ptr, ptr %3, align 8, !tbaa !120
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader, %.lr.ph61, %bb.f
  %i.cn = phi ptr [ %.pre63, %.critedge.loopexit ], [ %i.ak, %.preheader ], [ %i.ak, %.lr.ph61 ], [ %i.ak, %bb.f ] ; 2 uses
  %i.co = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.al, %.preheader ], [ %i.al, %.lr.ph61 ], [ %i.al, %bb.f ] ; 2 uses
  %i.cp = add i32 %.02559, 1                      ; 2 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 2
  %i.cv = icmp ugt i64 %i.cu, %i.cq
  br i1 %i.cv, label %.lr.ph61, label %._crit_edge.thread, !llvm.loop !355
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z23stable_index_merge_sortIZN5nlsat9levelwise4impl29sort_root_function_partitionsEN9__gnu_cxx17__normal_iteratorIPNS2_13root_functionESt6vectorIS5_13std_allocatorIS5_EEEEEUljjE_EvPjSD_jT_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ult i32 %2, 2
  br i1 %i.a, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit, label %.preheader69

.preheader69:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  br label %.preheader68

.preheader68:                                     ; preds = %.preheader69, %bb.c
  %.03985 = phi i32 [ 1, %.preheader69 ], [ %i.d, %bb.c ] ; 2 uses
  %.06584 = phi ptr [ %0, %.preheader69 ], [ %.06683, %bb.c ] ; 8 uses
  %.06683 = phi ptr [ %1, %.preheader69 ], [ %.06584, %bb.c ] ; 9 uses
  %.06584101 = ptrtoaddr ptr %.06683 to i64
  %.06683102 = ptrtoaddr ptr %.06584 to i64
  %i.d = shl i32 %.03985, 1                       ; 3 uses
  %5 = sub i64 %.06584101, %.06683102             ; 2 uses
  %invariant.op = add i64 %5, -1
  %invariant.op129 = add i64 %5, -1
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq ptr %.06683, %0
  br i1 %.not, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit, label %bb.k

.loopexit:                                        ; preds = %.lr.ph81, %middle.block, %.preheader
  %i.e = icmp ult i32 %i.h, %2
  br i1 %i.e, label %bb.d, label %bb.c, !llvm.loop !356

bb.c:                                             ; preds = %.loopexit
  %i.f = icmp ult i32 %i.d, %2
  br i1 %i.f, label %.preheader68, label %bb.b, !llvm.loop !357

bb.d:                                             ; preds = %.preheader68, %.loopexit
  %.03882 = phi i32 [ 0, %.preheader68 ], [ %i.h, %.loopexit ] ; 7 uses
  %i.g = add i32 %.03882, %.03985                 ; 2 uses
  %.sroa.speculated46 = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.g) ; 6 uses
  %i.h = add i32 %.03882, %i.d                    ; 3 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.h) ; 4 uses
  %i.i = icmp ult i32 %.03882, %.sroa.speculated46
  %i.j = icmp ult i32 %i.g, %.sroa.speculated
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %.preheader67

.preheader67:                                     ; preds = %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit, %bb.d
  %.035.lcssa = phi i32 [ %.03882, %bb.d ], [ %.136, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ] ; 2 uses
  %.032.lcssa = phi i32 [ %.sroa.speculated46, %bb.d ], [ %.133, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %.03882, %bb.d ], [ %i.by, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ] ; 8 uses
  %i.l = icmp ult i32 %.035.lcssa, %.sroa.speculated46
  br i1 %i.l, label %.lr.ph77.preheader, label %.preheader

.lr.ph77.preheader:                               ; preds = %.preheader67
  %i.m = zext i32 %.035.lcssa to i64              ; 8 uses
  %i.n = zext i32 %.sroa.speculated46 to i64      ; 3 uses
  %i.o = sub nsw i64 %i.n, %i.m                   ; 3 uses
  %min.iters.check109 = icmp ult i64 %i.o, 20
  br i1 %min.iters.check109, label %.lr.ph77.preheader124, label %vector.scevcheck105

vector.scevcheck105:                              ; preds = %.lr.ph77.preheader
  %i.p = xor i64 %i.m, -1
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = xor i32 %.0.lcssa, -1
  %i.t = icmp ult i32 %i.s, %i.r
  %i.u = icmp ugt i64 %i.q, 4294967295
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %.lr.ph77.preheader124, label %vector.memcheck110

vector.memcheck110:                               ; preds = %vector.scevcheck105
  %i.w = zext i32 %.0.lcssa to i64
  %6 = sub nsw i64 %i.w, %i.m
  %i.x = shl nsw i64 %6, 2
  %i.y = add i64 %i.x, %invariant.op
  %diff.check111 = icmp ult i64 %i.y, 31
  br i1 %diff.check111, label %.lr.ph77.preheader124, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck110
  %n.vec113 = and i64 %i.o, -8                    ; 4 uses
  %i.z = add nsw i64 %n.vec113, %i.m
  %i.aa = trunc i64 %n.vec113 to i32
  %i.ab = add i32 %.0.lcssa, %i.aa                ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.06584, i64 %i.m
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next118, %vector.body114 ] ; 3 uses
  %i.ac = trunc i64 %index115 to i32
  %i.ad = add i32 %.0.lcssa, %i.ac
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index115 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load116 = load <4 x i32>, ptr %gep, align 4, !tbaa !123
  %wide.load117 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !123
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %wide.load116, ptr %i.ag, align 4, !tbaa !123
  store <4 x i32> %wide.load117, ptr %i.ah, align 4, !tbaa !123
  %index.next118 = add nuw i64 %index115, 8       ; 2 uses
  %i.ai = icmp eq i64 %index.next118, %n.vec113
  br i1 %i.ai, label %middle.block119, label %vector.body114, !llvm.loop !358

middle.block119:                                  ; preds = %vector.body114
  %cmp.n120 = icmp eq i64 %i.o, %n.vec113
  br i1 %cmp.n120, label %.preheader, label %.lr.ph77.preheader124

.lr.ph77.preheader124:                            ; preds = %vector.memcheck110, %vector.scevcheck105, %.lr.ph77.preheader, %middle.block119
  %indvars.iv.ph = phi i64 [ %i.m, %vector.memcheck110 ], [ %i.m, %vector.scevcheck105 ], [ %i.m, %.lr.ph77.preheader ], [ %i.z, %middle.block119 ]
  %.176.ph = phi i32 [ %.0.lcssa, %vector.memcheck110 ], [ %.0.lcssa, %vector.scevcheck105 ], [ %.0.lcssa, %.lr.ph77.preheader ], [ %i.ab, %middle.block119 ]
  br label %.lr.ph77

.lr.ph:                                           ; preds = %bb.d, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit
  %.072 = phi i32 [ %i.by, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ], [ %.03882, %bb.d ] ; 2 uses
  %.03271 = phi i32 [ %.133, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ], [ %.sroa.speculated46, %bb.d ] ; 2 uses
  %.03570 = phi i32 [ %.136, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ], [ %.03882, %bb.d ] ; 2 uses
  %i.aj = zext i32 %.03271 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !123
  %i.am = zext i32 %.03570 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !123
  %i.ap = zext i32 %i.al to i64
  %i.aq = load ptr, ptr %4, align 8, !tbaa !115   ; 2 uses
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ap ; 3 uses
  %i.as = zext i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !186
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !186
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !187
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !187
  %i.bd = icmp ult i32 %i.ba, %i.bc
  br label %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit

bb.f:                                             ; preds = %.lr.ph
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !140, !nonnull !95, !align !96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bh = tail call noundef i32 @_ZN17algebraic_numbers7manager7compareERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.bg) ; 2 uses
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = icmp eq i32 %i.bh, -1
  br label %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit

bb.h:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !186
  %i.bk = load i32, ptr %i.c, align 8, !tbaa !131
  %i.bl = tail call noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.bj, i32 noundef %i.bk) ; 2 uses
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !186
  %i.bn = load i32, ptr %i.c, align 8, !tbaa !131
  %i.bo = tail call noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.bm, i32 noundef %i.bn) ; 2 uses
  %.not23.i = icmp eq i32 %i.bl, %i.bo
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = icmp ugt i32 %i.bl, %i.bo
  br label %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit

bb.j:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.au, align 8, !tbaa !186
  %i.br = tail call noundef i32 @_ZN10polynomial7manager2idEPKNS_10polynomialE(ptr noundef %i.bq)
  %i.bs = load ptr, ptr %i.aw, align 8, !tbaa !186
  %i.bt = tail call noundef i32 @_ZN10polynomial7manager2idEPKNS_10polynomialE(ptr noundef %i.bs)
  %i.bu = icmp ult i32 %i.br, %i.bt
  br label %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit

_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.j
  %.2.i = phi i1 [ %i.bd, %bb.e ], [ %i.bi, %bb.g ], [ %i.bp, %bb.i ], [ %i.bu, %bb.j ] ; 3 uses
  %not..2.i = xor i1 %.2.i, true
  %i.bv = zext i1 %not..2.i to i32
  %.136 = add nuw i32 %.03570, %i.bv              ; 3 uses
  %i.bw = zext i1 %.2.i to i32
  %.133 = add nuw i32 %.03271, %i.bw              ; 3 uses
  %.in = select i1 %.2.i, ptr %i.ak, ptr %i.an
  %i.bx = load i32, ptr %.in, align 4, !tbaa !123
  %i.by = add i32 %.072, 1                        ; 2 uses
  %i.bz = zext i32 %.072 to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.bz
  store i32 %i.bx, ptr %i.ca, align 4, !tbaa !123
  %i.cb = icmp ult i32 %.136, %.sroa.speculated46
  %i.cc = icmp ult i32 %.133, %.sroa.speculated
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %.lr.ph, label %.preheader67, !llvm.loop !359

.preheader:                                       ; preds = %.lr.ph77, %middle.block119, %.preheader67
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader67 ], [ %i.ab, %middle.block119 ], [ %i.de, %.lr.ph77 ] ; 7 uses
  %i.ce = icmp ult i32 %.032.lcssa, %.sroa.speculated
  br i1 %i.ce, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %.preheader
  %i.cf = zext i32 %.032.lcssa to i64             ; 8 uses
  %i.cg = zext i32 %.sroa.speculated to i64       ; 3 uses
  %i.ch = sub nsw i64 %i.cg, %i.cf                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 20
  br i1 %min.iters.check, label %.lr.ph81.preheader123, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph81.preheader
  %i.ci = xor i64 %i.cf, -1
  %i.cj = add nsw i64 %i.ci, %i.cg                ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = xor i32 %.1.lcssa, -1
  %i.cm = icmp ult i32 %i.cl, %i.ck
  %i.cn = icmp ugt i64 %i.cj, 4294967295
  %i.co = or i1 %i.cm, %i.cn
  br i1 %i.co, label %.lr.ph81.preheader123, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cp = zext i32 %.1.lcssa to i64
  %7 = sub nsw i64 %i.cp, %i.cf
  %i.cq = shl nsw i64 %7, 2
  %i.cr = add i64 %i.cq, %invariant.op129
  %diff.check = icmp ult i64 %i.cr, 31
  br i1 %diff.check, label %.lr.ph81.preheader123, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, -8                      ; 4 uses
  %i.cs = add nsw i64 %n.vec, %i.cf
  %i.ct = trunc i64 %n.vec to i32
  %i.cu = add i32 %.1.lcssa, %i.ct
  %invariant.gep127 = getelementptr [4 x i8], ptr %.06584, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = trunc i64 %index to i32
  %i.cw = add i32 %.1.lcssa, %i.cv
  %gep128 = getelementptr [4 x i8], ptr %invariant.gep127, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %gep128, i64 16
  %wide.load = load <4 x i32>, ptr %gep128, align 4, !tbaa !123
  %wide.load103 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !123
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i32> %wide.load, ptr %i.cz, align 4, !tbaa !123
  store <4 x i32> %wide.load103, ptr %i.da, align 4, !tbaa !123
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !360

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph81.preheader123

.lr.ph81.preheader123:                            ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph81.preheader, %middle.block
  %indvars.iv88.ph = phi i64 [ %i.cf, %vector.memcheck ], [ %i.cf, %vector.scevcheck ], [ %i.cf, %.lr.ph81.preheader ], [ %i.cs, %middle.block ]
  %.280.ph = phi i32 [ %.1.lcssa, %vector.memcheck ], [ %.1.lcssa, %vector.scevcheck ], [ %.1.lcssa, %.lr.ph81.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph81

.lr.ph77:                                         ; preds = %.lr.ph77.preheader124, %.lr.ph77
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph77 ], [ %indvars.iv.ph, %.lr.ph77.preheader124 ] ; 2 uses
  %.176 = phi i32 [ %i.de, %.lr.ph77 ], [ %.176.ph, %.lr.ph77.preheader124 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !123
  %i.de = add i32 %.176, 1                        ; 2 uses
  %i.df = zext i32 %.176 to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.df
  store i32 %i.dd, ptr %i.dg, align 4, !tbaa !123
  %i.dh = icmp samesign ult i64 %indvars.iv.next, %i.n
  br i1 %i.dh, label %.lr.ph77, label %.preheader, !llvm.loop !361

.lr.ph81:                                         ; preds = %.lr.ph81.preheader123, %.lr.ph81
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.lr.ph81 ], [ %indvars.iv88.ph, %.lr.ph81.preheader123 ] ; 2 uses
  %.280 = phi i32 [ %i.dk, %.lr.ph81 ], [ %.280.ph, %.lr.ph81.preheader123 ] ; 2 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %indvars.iv88
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !123
  %i.dk = add i32 %.280, 1
  %i.dl = zext i32 %.280 to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.dl
  store i32 %i.dj, ptr %i.dm, align 4, !tbaa !123
  %i.dn = icmp samesign ult i64 %indvars.iv.next89, %i.cg
  br i1 %i.dn, label %.lr.ph81, label %.loopexit, !llvm.loop !362

bb.k:                                             ; preds = %bb.b
  %i.do = zext i32 %2 to i64
  %.idx = shl nuw nsw i64 %i.do, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %.06683, i64 %.idx, i1 false)
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.b, %bb.k, %bb.a
  ret void
}

declare noundef i32 @_ZN10polynomial7manager2idEPKNS_10polynomialE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z23stable_index_merge_sortIZN5nlsat9levelwise4impl29sort_root_function_partitionsEN9__gnu_cxx17__normal_iteratorIPNS2_13root_functionESt6vectorIS5_13std_allocatorIS5_EEEEEUljjE0_EvPjSD_jT_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef byval(%class.anon.62) align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ult i32 %2, 2
  br i1 %i.a, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit, label %.preheader69

.preheader69:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.preheader68

.preheader68:                                     ; preds = %.preheader69, %bb.c
  %.03985 = phi i32 [ 1, %.preheader69 ], [ %i.d, %bb.c ] ; 2 uses
  %.06584 = phi ptr [ %0, %.preheader69 ], [ %.06683, %bb.c ] ; 8 uses
  %.06683 = phi ptr [ %1, %.preheader69 ], [ %.06584, %bb.c ] ; 9 uses
  %.06584101 = ptrtoaddr ptr %.06683 to i64
  %.06683102 = ptrtoaddr ptr %.06584 to i64
  %i.d = shl i32 %.03985, 1                       ; 3 uses
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !nonnull !95, !align !96
  %i.g = load ptr, ptr %i.c, align 8, !nonnull !95, !align !370
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %4 = sub i64 %.06584101, %.06683102             ; 2 uses
  %invariant.op = add i64 %4, -1
  %invariant.op129 = add i64 %4, -1
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq ptr %.06683, %0
  br i1 %.not, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit, label %bb.k

.loopexit:                                        ; preds = %.lr.ph81, %middle.block, %.preheader
  %i.j = icmp ult i32 %i.m, %2
  br i1 %i.j, label %bb.d, label %bb.c, !llvm.loop !363

bb.c:                                             ; preds = %.loopexit
  %i.k = icmp ult i32 %i.d, %2
  br i1 %i.k, label %.preheader68, label %bb.b, !llvm.loop !364

bb.d:                                             ; preds = %.preheader68, %.loopexit
  %.03882 = phi i32 [ 0, %.preheader68 ], [ %i.m, %.loopexit ] ; 7 uses
  %i.l = add i32 %.03882, %.03985                 ; 2 uses
  %.sroa.speculated46 = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.l) ; 6 uses
  %i.m = add i32 %.03882, %i.d                    ; 3 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.m) ; 4 uses
  %i.n = icmp ult i32 %.03882, %.sroa.speculated46
  %i.o = icmp ult i32 %i.l, %.sroa.speculated
  %i.p = and i1 %i.n, %i.o
  br i1 %i.p, label %.lr.ph, label %.preheader67

.preheader67:                                     ; preds = %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit, %bb.d
  %.035.lcssa = phi i32 [ %.03882, %bb.d ], [ %.136, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ] ; 2 uses
  %.032.lcssa = phi i32 [ %.sroa.speculated46, %bb.d ], [ %.133, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %.03882, %bb.d ], [ %i.cg, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ] ; 8 uses
  %i.q = icmp ult i32 %.035.lcssa, %.sroa.speculated46
  br i1 %i.q, label %.lr.ph77.preheader, label %.preheader

.lr.ph77.preheader:                               ; preds = %.preheader67
  %i.r = zext i32 %.035.lcssa to i64              ; 8 uses
  %i.s = zext i32 %.sroa.speculated46 to i64      ; 3 uses
  %i.t = sub nsw i64 %i.s, %i.r                   ; 3 uses
  %min.iters.check109 = icmp ult i64 %i.t, 20
  br i1 %min.iters.check109, label %.lr.ph77.preheader124, label %vector.scevcheck105

vector.scevcheck105:                              ; preds = %.lr.ph77.preheader
  %i.u = xor i64 %i.r, -1
  %i.v = add nsw i64 %i.u, %i.s                   ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = xor i32 %.0.lcssa, -1
  %i.y = icmp ult i32 %i.x, %i.w
  %i.z = icmp ugt i64 %i.v, 4294967295
  %i.aa = or i1 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph77.preheader124, label %vector.memcheck110

vector.memcheck110:                               ; preds = %vector.scevcheck105
  %i.ab = zext i32 %.0.lcssa to i64
  %5 = sub nsw i64 %i.ab, %i.r
  %i.ac = shl nsw i64 %5, 2
  %i.ad = add i64 %i.ac, %invariant.op
  %diff.check111 = icmp ult i64 %i.ad, 31
  br i1 %diff.check111, label %.lr.ph77.preheader124, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck110
  %n.vec113 = and i64 %i.t, -8                    ; 4 uses
  %i.ae = add nsw i64 %n.vec113, %i.r
  %i.af = trunc i64 %n.vec113 to i32
  %i.ag = add i32 %.0.lcssa, %i.af                ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.06584, i64 %i.r
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next118, %vector.body114 ] ; 3 uses
  %i.ah = trunc i64 %index115 to i32
  %i.ai = add i32 %.0.lcssa, %i.ah
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index115 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load116 = load <4 x i32>, ptr %gep, align 4, !tbaa !123
  %wide.load117 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !123
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %wide.load116, ptr %i.al, align 4, !tbaa !123
  store <4 x i32> %wide.load117, ptr %i.am, align 4, !tbaa !123
  %index.next118 = add nuw i64 %index115, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next118, %n.vec113
  br i1 %i.an, label %middle.block119, label %vector.body114, !llvm.loop !365

middle.block119:                                  ; preds = %vector.body114
  %cmp.n120 = icmp eq i64 %i.t, %n.vec113
  br i1 %cmp.n120, label %.preheader, label %.lr.ph77.preheader124

.lr.ph77.preheader124:                            ; preds = %vector.memcheck110, %vector.scevcheck105, %.lr.ph77.preheader, %middle.block119
  %indvars.iv.ph = phi i64 [ %i.r, %vector.memcheck110 ], [ %i.r, %vector.scevcheck105 ], [ %i.r, %.lr.ph77.preheader ], [ %i.ae, %middle.block119 ]
  %.176.ph = phi i32 [ %.0.lcssa, %vector.memcheck110 ], [ %.0.lcssa, %vector.scevcheck105 ], [ %.0.lcssa, %.lr.ph77.preheader ], [ %i.ag, %middle.block119 ]
  br label %.lr.ph77

.lr.ph:                                           ; preds = %bb.d, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit
  %.072 = phi i32 [ %i.cg, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ], [ %.03882, %bb.d ] ; 2 uses
  %.03271 = phi i32 [ %.133, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ], [ %.sroa.speculated46, %bb.d ] ; 2 uses
  %.03570 = phi i32 [ %.136, %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit ], [ %.03882, %bb.d ] ; 2 uses
  %i.ao = zext i32 %.03271 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !123
  %i.ar = zext i32 %.03570 to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !123
  %i.au = load i32, ptr %i.g, align 4, !tbaa !123 ; 2 uses
  %i.av = add i32 %i.au, %i.aq
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !115 ; 2 uses
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.aw ; 3 uses
  %i.az = add i32 %i.au, %i.at
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !186
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !186
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !187
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !187
  %i.bl = icmp ult i32 %i.bi, %i.bk
  br label %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit

bb.f:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !140, !nonnull !95, !align !96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bp = tail call noundef i32 @_ZN17algebraic_numbers7manager7compareERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.bo) ; 2 uses
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = icmp eq i32 %i.bp, -1
  br label %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit

bb.h:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.bc, align 8, !tbaa !186
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !131
  %i.bt = tail call noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.br, i32 noundef %i.bs) ; 2 uses
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !186
  %i.bv = load i32, ptr %i.i, align 8, !tbaa !131
  %i.bw = tail call noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.bu, i32 noundef %i.bv) ; 2 uses
  %.not23.i = icmp eq i32 %i.bt, %i.bw
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = icmp ult i32 %i.bt, %i.bw
  br label %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit

bb.j:                                             ; preds = %bb.h
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !186
  %i.bz = tail call noundef i32 @_ZN10polynomial7manager2idEPKNS_10polynomialE(ptr noundef %i.by)
  %i.ca = load ptr, ptr %i.be, align 8, !tbaa !186
  %i.cb = tail call noundef i32 @_ZN10polynomial7manager2idEPKNS_10polynomialE(ptr noundef %i.ca)
  %i.cc = icmp ult i32 %i.bz, %i.cb
  br label %_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit

_ZN5nlsat9levelwise4impl16root_function_ltERKNS1_13root_functionES4_b.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.j
  %.2.i = phi i1 [ %i.bl, %bb.e ], [ %i.bq, %bb.g ], [ %i.bx, %bb.i ], [ %i.cc, %bb.j ] ; 3 uses
  %not..2.i = xor i1 %.2.i, true
  %i.cd = zext i1 %not..2.i to i32
  %.136 = add nuw i32 %.03570, %i.cd              ; 3 uses
  %i.ce = zext i1 %.2.i to i32
  %.133 = add nuw i32 %.03271, %i.ce              ; 3 uses
  %.in = select i1 %.2.i, ptr %i.ap, ptr %i.as
  %i.cf = load i32, ptr %.in, align 4, !tbaa !123
  %i.cg = add i32 %.072, 1                        ; 2 uses
  %i.ch = zext i32 %.072 to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.ch
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !123
  %i.cj = icmp ult i32 %.136, %.sroa.speculated46
  %i.ck = icmp ult i32 %.133, %.sroa.speculated
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.lr.ph, label %.preheader67, !llvm.loop !366

.preheader:                                       ; preds = %.lr.ph77, %middle.block119, %.preheader67
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader67 ], [ %i.ag, %middle.block119 ], [ %i.dm, %.lr.ph77 ] ; 7 uses
  %i.cm = icmp ult i32 %.032.lcssa, %.sroa.speculated
  br i1 %i.cm, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %.preheader
  %i.cn = zext i32 %.032.lcssa to i64             ; 8 uses
  %i.co = zext i32 %.sroa.speculated to i64       ; 3 uses
  %i.cp = sub nsw i64 %i.co, %i.cn                ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 20
  br i1 %min.iters.check, label %.lr.ph81.preheader123, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph81.preheader
  %i.cq = xor i64 %i.cn, -1
  %i.cr = add nsw i64 %i.cq, %i.co                ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = xor i32 %.1.lcssa, -1
  %i.cu = icmp ult i32 %i.ct, %i.cs
  %i.cv = icmp ugt i64 %i.cr, 4294967295
  %i.cw = or i1 %i.cu, %i.cv
  br i1 %i.cw, label %.lr.ph81.preheader123, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cx = zext i32 %.1.lcssa to i64
  %6 = sub nsw i64 %i.cx, %i.cn
  %i.cy = shl nsw i64 %6, 2
  %i.cz = add i64 %i.cy, %invariant.op129
  %diff.check = icmp ult i64 %i.cz, 31
  br i1 %diff.check, label %.lr.ph81.preheader123, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cp, -8                      ; 4 uses
  %i.da = add nsw i64 %n.vec, %i.cn
  %i.db = trunc i64 %n.vec to i32
  %i.dc = add i32 %.1.lcssa, %i.db
  %invariant.gep127 = getelementptr [4 x i8], ptr %.06584, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dd = trunc i64 %index to i32
  %i.de = add i32 %.1.lcssa, %i.dd
  %gep128 = getelementptr [4 x i8], ptr %invariant.gep127, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep128, i64 16
  %wide.load = load <4 x i32>, ptr %gep128, align 4, !tbaa !123
  %wide.load103 = load <4 x i32>, ptr %i.df, align 4, !tbaa !123
  %i.dg = zext i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x i32> %wide.load, ptr %i.dh, align 4, !tbaa !123
  store <4 x i32> %wide.load103, ptr %i.di, align 4, !tbaa !123
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph81.preheader123

.lr.ph81.preheader123:                            ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph81.preheader, %middle.block
  %indvars.iv88.ph = phi i64 [ %i.cn, %vector.memcheck ], [ %i.cn, %vector.scevcheck ], [ %i.cn, %.lr.ph81.preheader ], [ %i.da, %middle.block ]
  %.280.ph = phi i32 [ %.1.lcssa, %vector.memcheck ], [ %.1.lcssa, %vector.scevcheck ], [ %.1.lcssa, %.lr.ph81.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph81

.lr.ph77:                                         ; preds = %.lr.ph77.preheader124, %.lr.ph77
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph77 ], [ %indvars.iv.ph, %.lr.ph77.preheader124 ] ; 2 uses
  %.176 = phi i32 [ %i.dm, %.lr.ph77 ], [ %.176.ph, %.lr.ph77.preheader124 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !123
  %i.dm = add i32 %.176, 1                        ; 2 uses
  %i.dn = zext i32 %.176 to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.dn
  store i32 %i.dl, ptr %i.do, align 4, !tbaa !123
  %i.dp = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.dp, label %.lr.ph77, label %.preheader, !llvm.loop !368

.lr.ph81:                                         ; preds = %.lr.ph81.preheader123, %.lr.ph81
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.lr.ph81 ], [ %indvars.iv88.ph, %.lr.ph81.preheader123 ] ; 2 uses
  %.280 = phi i32 [ %i.ds, %.lr.ph81 ], [ %.280.ph, %.lr.ph81.preheader123 ] ; 2 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %indvars.iv88
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !123
  %i.ds = add i32 %.280, 1
  %i.dt = zext i32 %.280 to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.dt
  store i32 %i.dr, ptr %i.du, align 4, !tbaa !123
  %i.dv = icmp samesign ult i64 %indvars.iv.next89, %i.co
  br i1 %i.dv, label %.lr.ph81, label %.loopexit, !llvm.loop !369

bb.k:                                             ; preds = %bb.b
  %i.dw = zext i32 %2 to i64
  %.idx = shl nuw nsw i64 %i.dw, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %.06683, i64 %.idx, i1 false)
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.b, %bb.k, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN17algebraic_numbers7manager2eqERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN17algebraic_numbers7manager11is_rationalERKNS_4anumE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat9levelwise4impl25add_linear_poly_from_rootERKN17algebraic_numbers4anumEbR7obj_refIN10polynomial10polynomialENS7_7managerEE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.obj_ref, align 8             ; 6 uses
  %5 = alloca %class.rational, align 8            ; 14 uses
  %6 = alloca %class.obj_ref, align 8             ; 6 uses
  %7 = alloca %class.rational, align 8            ; 14 uses
  %8 = alloca %class.rational, align 8            ; 14 uses
  %9 = alloca %class.obj_ref, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i32 0, ptr %5, align 8, !tbaa !193
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !194
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i32 1, ptr %i.e, align 8, !tbaa !193
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !194
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140, !nonnull !95, !align !96
  invoke void @_ZN17algebraic_numbers7manager11to_rationalERKNS_4anumER8rational(ptr noundef nonnull align 8 dereferenceable(17) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94, !nonnull !95, !align !96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !131
  %i.p = invoke noundef ptr @_ZN10polynomial7manager13mk_polynomialEjj(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef %i.o, i32 noundef 1)
          to label %bb.c unwind label %bb.ad      ; 3 uses

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.noexc, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !128, !nonnull !95, !align !96
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.p)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr %3, align 8, !tbaa !113    ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !128, !nonnull !95, !align !96
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.s)
          to label %bb.f unwind label %bb.ad

bb.f:                                             ; preds = %.noexc, %bb.e
  store ptr %i.p, ptr %3, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  store i32 0, ptr %7, align 8, !tbaa !193, !alias.scope !379
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.w = load i8, ptr %i.v, align 4, !alias.scope !379
  %i.x = and i8 %i.w, -4                          ; 2 uses
  store i8 %i.x, ptr %i.v, align 4, !alias.scope !379
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !194, !alias.scope !379
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store i32 1, ptr %i.z, align 8, !tbaa !193, !alias.scope !379
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 4, !alias.scope !379
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4, !alias.scope !379
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.ad, align 8, !tbaa !194, !alias.scope !379
  %i.ae = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !201, !noalias !379 ; 2 uses
  %i.af = load i8, ptr %i.f, align 4, !noalias !379
  %i.ag = and i8 %i.af, 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !193, !noalias !379
  store i32 %i.ai, ptr %7, align 8, !tbaa !193, !alias.scope !379
  store i8 %i.x, ptr %i.v, align 4, !alias.scope !379
  br label %_ZN11mpq_managerILb1EE15get_denominatorERK3mpqR3mpz.exit.i.i

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN11mpq_managerILb1EE15get_denominatorERK3mpqR3mpz.exit.i.i unwind label %bb.ae

_ZN11mpq_managerILb1EE15get_denominatorERK3mpqR3mpz.exit.i.i: ; preds = %bb.h, %bb.g
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.i unwind label %bb.ae

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE15get_denominatorERK3mpqR3mpz.exit.i.i
  store i32 1, ptr %i.z, align 8, !tbaa !193, !alias.scope !379
  %i.aj = load i8, ptr %i.aa, align 4, !alias.scope !379
  %i.ak = and i8 %i.aj, -2
  store i8 %i.ak, ptr %i.aa, align 4, !alias.scope !379
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !128, !noalias !380, !nonnull !95, !align !96 ; 10 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !113, !noalias !380
  %i.ao = invoke noundef ptr @_ZN10polynomial7manager3mulERK8rationalPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.an)
          to label %.noexc23 unwind label %bb.ae  ; 5 uses

.noexc23:                                         ; preds = %bb.i
  store ptr %i.ao, ptr %6, align 8, !tbaa !113, !alias.scope !380
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !87, !alias.scope !380
  %.not.i.i.i = icmp eq ptr %i.ao, null           ; 2 uses
  br i1 %.not.i.i.i, label %_ZmlRK8rationalRK7obj_refIN10polynomial10polynomialENS3_7managerEE.exit, label %bb.j

bb.j:                                             ; preds = %.noexc23
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %i.ao)
end_hunk_1
