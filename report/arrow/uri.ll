inline.NumInlined: 924
inline.NumDeleted: 458
begin_hunk_0_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRPKcRA1_SB_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !114
  store ptr %.0.lcssa.i.i.i40, ptr %i.a, align 8, !tbaa !107
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !110
  ret void

bb.h:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #24
  invoke void @__cxa_rethrow() #22
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.cb

bb.k:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #26
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRPKcRA1_S8_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISD_SE_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #22
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !17

.noexc11.i:                                       ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #23 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !16
  store i64 %i.d, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.b ] ; 3 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.a, align 1, !tbaa !14
  store i8 %i.k, ptr %i.j, align 1, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.a, i64 %i.d, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !7
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25 ; 8 uses
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.h, label %._crit_edge.i.i9

bb.h:                                             ; preds = %bb.g
  %i.r = icmp slt i64 %i.p, 0
  br i1 %i.r, label %.noexc.i12, label %bb.i

.noexc.i12:                                       ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %.noexc.i12
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw i64 %i.p, 1                      ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %.noexc11.i11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i10, !prof !17

.noexc11.i11:                                     ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.noexc14 unwind label %bb.m

.noexc14:                                         ; preds = %.noexc11.i11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i10: ; preds = %bb.i
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #23
          to label %.noexc15 unwind label %bb.m   ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i10
  store ptr %i.u, ptr %i.n, align 8, !tbaa !16
  store i64 %i.p, ptr %i.o, align 8, !tbaa !14
  br label %._crit_edge.i.i9

._crit_edge.i.i9:                                 ; preds = %.noexc15, %bb.g
  %i.v = phi ptr [ %i.u, %.noexc15 ], [ %i.o, %bb.g ] ; 3 uses
  switch i64 %i.p, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i9
  %i.w = load i8, ptr %2, align 1, !tbaa !14
  store i8 %i.w, ptr %i.v, align 1, !tbaa !14
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %2, i64 %i.p, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.p, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  store i8 0, ptr %i.y, align 1, !tbaa !14
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i10, %.noexc11.i11, %.noexc.i12
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !123    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #22
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %3

3:                                                ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %4 = shl nuw nsw i64 %i.l, 5
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %3
  %6 = phi ptr [ %5, %3 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %i.n ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %8, ptr %7, align 8, !tbaa !7
  %9 = load ptr, ptr %2, align 8, !tbaa !16       ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !11     ; 8 uses
  %12 = icmp ugt i64 %11, 15
  br i1 %12, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = icmp slt i64 %11, 0
  br i1 %i.o, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i64 %11, 1                       ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !17

.noexc6.i.i:                                      ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.noexc26 unwind label %bb.l

.noexc26:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23
          to label %.noexc27 unwind label %bb.l   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.r, ptr %7, align 8, !tbaa !16
  store i64 %11, ptr %8, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc27, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.s = phi ptr [ %i.r, %.noexc27 ], [ %8, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  switch i64 %11, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %9, align 1, !tbaa !14
  store i8 %i.t, ptr %i.s, align 1, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %9, i64 %11, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %11, ptr %i.u, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %11
  store i8 0, ptr %i.v, align 1, !tbaa !14
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %6, %bb.g ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.g ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !217, !noalias !220
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !16, !alias.scope !220, !noalias !217 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11, !alias.scope !220, !noalias !217 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !222
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !16, !alias.scope !217, !noalias !220
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !14, !alias.scope !220, !noalias !217
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !14, !alias.scope !217, !noalias !220
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !11, !alias.scope !220, !noalias !217
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.h
  %i.af = phi i64 [ %i.ab, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !11, !alias.scope !217, !noalias !220
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !16, !alias.scope !220, !noalias !217
  store i64 0, ptr %i.ag, align 8, !tbaa !11, !alias.scope !220, !noalias !217
  store i8 0, ptr %i.y, align 8, !tbaa !14, !alias.scope !220, !noalias !217
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !223

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %6, %bb.g ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i31 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i30, align 8, !tbaa !7, !alias.scope !224, !noalias !227
  %i.am = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !16, !alias.scope !227, !noalias !224 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i29
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11, !alias.scope !227, !noalias !224 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !229
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.am, ptr %.012.i.i.i30, align 8, !tbaa !16, !alias.scope !224, !noalias !227
  %i.at = load i64, ptr %i.an, align 8, !tbaa !14, !alias.scope !227, !noalias !224
  store i64 %i.at, ptr %i.al, align 8, !tbaa !14, !alias.scope !224, !noalias !227
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !11, !alias.scope !227, !noalias !224
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32, %bb.i
  %i.au = phi i64 [ %i.aq, %bb.i ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !11, !alias.scope !224, !noalias !227
  store ptr %i.an, ptr %.0911.i.i.i31, align 8, !tbaa !16, !alias.scope !227, !noalias !224
  store i64 0, ptr %i.av, align 8, !tbaa !11, !alias.scope !227, !noalias !224
  store i8 0, ptr %i.an, align 8, !tbaa !14, !alias.scope !227, !noalias !224
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !223

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !185
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, %bb.j
  store ptr %6, ptr %0, align 8, !tbaa !123
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !124
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !185
  ret void

bb.k:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = tail call ptr @__cxa_begin_catch(ptr %i.bg) #25 ; 0 uses
  %13 = shl nuw nsw i64 %i.l, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %13) #24
  invoke void @__cxa_rethrow() #22
          to label %bb.o unwind label %bb.k

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.be

bb.n:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #26
  unreachable

bb.o:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #23 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #24
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !16
  store i64 %.0, ptr %i.d, align 8, !tbaa !14
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !11
  store i8 0, ptr %i.c, align 1, !tbaa !14
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  store i8 %i.s, ptr %i.q, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !11
  %i.u = load ptr, ptr %0, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230, !nonnull !48, !align !240
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(29) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(29) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !230, !nonnull !48, !align !240
  %i.f = load ptr, ptr %2, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !230, !nonnull !48, !align !240
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #25
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.m, %bb.c ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn9
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

declare void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 3 uses
end_hunk_0
