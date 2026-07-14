inline.NumInlined: 1342
inline.NumDeleted: 553
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5arrow16KeyValueMetadata12sorted_pairsB5cxx11Ev:bb.a
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRKS6_SC_EEERS7_DpOT_.exit unwind label %bb.j

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRKS6_SC_EEERS7_DpOT_.exit: ; preds = %bb.i, %.noexc
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.014.017, i64 8 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.j
  br i1 %i.ag, label %._crit_edge.loopexit, label %bb.g

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !83    ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIlSaIlEED2Ev.exit13, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !81
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #27
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit13

_ZNSt6vectorIlSaIlEED2Ev.exit13:                  ; preds = %bb.k, %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit13, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit13 ], [ %i.u, %bb.e ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 144115188075855871
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.d = load ptr, ptr %0, align 8, !tbaa !109    ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 6
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit, label %bb.g

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 6
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.012.i.i.i, align 8, !tbaa !25, !alias.scope !110, !noalias !113
  %i.q = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !28, !alias.scope !113, !noalias !110 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30, !alias.scope !113, !noalias !110 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false), !alias.scope !115
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %.012.i.i.i, align 8, !tbaa !28, !alias.scope !110, !noalias !113
  %i.x = load i64, ptr %i.r, align 8, !tbaa !32, !alias.scope !113, !noalias !110
  store i64 %i.x, ptr %i.p, align 8, !tbaa !32, !alias.scope !110, !noalias !113
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !30, !alias.scope !113, !noalias !110
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.y = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !30, !alias.scope !110, !noalias !113
  store ptr %i.r, ptr %.0911.i.i.i, align 8, !tbaa !28, !alias.scope !113, !noalias !110
  store i64 0, ptr %i.z, align 8, !tbaa !30, !alias.scope !113, !noalias !110
  store i8 0, ptr %i.r, align 8, !tbaa !32, !alias.scope !113, !noalias !110
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !25, !alias.scope !110, !noalias !113
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !28, !alias.scope !113, !noalias !110 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !30, !alias.scope !113, !noalias !110 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !115
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !28, !alias.scope !110, !noalias !113
  %i.al = load i64, ptr %i.af, align 8, !tbaa !32, !alias.scope !113, !noalias !110
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !32, !alias.scope !110, !noalias !113
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !30, !alias.scope !113, !noalias !110
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.e
  %i.am = phi i64 [ %i.ai, %bb.e ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !30, !alias.scope !110, !noalias !113
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !28, !alias.scope !113, !noalias !110
  store i64 0, ptr %i.an, align 8, !tbaa !30, !alias.scope !113, !noalias !110
  store i8 0, ptr %i.af, align 8, !tbaa !32, !alias.scope !113, !noalias !110
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %.not.i.i.i = icmp eq ptr %i.ap, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !116

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !109
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit
  %i.ar = phi ptr [ %.pre, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ar, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #27
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !109
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.aw, ptr %i.j, align 8, !tbaa !105
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %1
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !108
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_EEESt6vectorIlSaIlEERKSA_IT_SaISD_EEOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %thread-pre-split.thread, label %.noexc11

thread-pre-split.thread:                          ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISF_EEES5_RKS3_IT_SaISI_EEOT0_EUlllE_EvSI_SI_SN_.exit

.noexc11:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = ashr exact i64 %i.f, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #25 ; 14 uses
  %3 = ptrtoint ptr %i.k to i64
  store ptr %i.k, ptr %0, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !81
  store i64 0, ptr %i.k, align 8, !tbaa !82
  %i.n = getelementptr i8, ptr %i.k, i64 8        ; 3 uses
  %i.o = add nsw i64 %i.g, -1                     ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.preheader, label %thread-pre-split

thread-pre-split:                                 ; preds = %.noexc11
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.o, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.noexc11, %thread-pre-split
  %.sink = phi ptr [ %i.q, %thread-pre-split ], [ %i.n, %.noexc11 ] ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.r, align 8, !tbaa !79
  %.0.i.i.i.i.i2324 = ptrtoint ptr %.sink to i64
  %4 = add i64 %.0.i.i.i.i.i2324, -8
  %i.s = sub i64 %4, %3                           ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.u, 4611686018427387900      ; 4 uses
  %i.v = shl i64 %n.vec, 3
  %i.w = getelementptr i8, ptr %i.k, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.x = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !82
  store <2 x i64> %step.add, ptr %i.y, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader27

.lr.ph.i.preheader27:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader27, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader27 ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader27 ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !82
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %.sink
  br i1 %i.ab, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !120

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.ac = ptrtoint ptr %.sink to i64
  %i.ad = ptrtoint ptr %i.k to i64                ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = xor i64 %i.ah, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISH_EEES5_RKS3_IT_SaISK_EEOT0_EUlllE_EEEvSK_SK_SP_T1_(ptr nonnull %i.k, ptr %.sink, i64 noundef %i.ai, ptr nonnull %2, ptr nonnull %1)
          to label %.noexc12 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit

.noexc12:                                         ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.aj = icmp sgt i64 %i.ae, 128
  br i1 %i.aj, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.noexc12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISH_EEES5_RKS3_IT_SaISK_EEOT0_EUlllE_EEEvSK_SK_SP_(ptr nonnull %i.k, ptr nonnull %i.ak, ptr nonnull %2, ptr nonnull %1)
          to label %.noexc13 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit

.noexc13:                                         ; preds = %bb.b
  %i.al = icmp eq ptr %i.ak, %.sink
  br i1 %i.al, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISF_EEES5_RKS3_IT_SaISI_EEOT0_EUlllE_EvSI_SI_SN_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc13
  %i.am = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISH_EEES5_RKS3_IT_SaISK_EEOT0_EUlllE_EEEvSK_SP_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.09.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.bb, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISH_EEES5_RKS3_IT_SaISK_EEOT0_EUlllE_EEEvSK_SP_.exit.i.i.i.i ] ; 3 uses
  %i.an = load i64, ptr %.sroa.0.09.i.i.i.i, align 8, !tbaa !82 ; 2 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.05.0.i.i.i.i.i = phi ptr [ %.sroa.0.09.i.i.i.i, %bb.c ], [ %.sroa.0.0.i.i.i.i.i, %bb.e ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i.i.i, i64 -8 ; 2 uses
  %i.aq = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !82 ; 2 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !30 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !30 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %i.as) ; 2 uses
  %i.av = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !28
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !28
  %i.ay = tail call i32 @memcmp(ptr noundef %i.ax, ptr noundef %i.aw, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_EEESt6vectorIlSaIlEERKSD_IT_SaISG_EEOT0_EUlllE_EclIlNS_17__normal_iteratorIPlSF_EEEEbRSG_SL_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.az = sub i64 %i.as, %i.au
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.az, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_EEESt6vectorIlSaIlEERKSD_IT_SaISG_EEOT0_EUlllE_EclIlNS_17__normal_iteratorIPlSF_EEEEbRSG_SL_.exit.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_EEESt6vectorIlSaIlEERKSD_IT_SaISG_EEOT0_EUlllE_EclIlNS_17__normal_iteratorIPlSF_EEEEbRSG_SL_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ay, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ]
  %i.ba = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ba, label %bb.e, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISH_EEES5_RKS3_IT_SaISK_EEOT0_EUlllE_EEEvSK_SP_.exit.i.i.i.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_EEESt6vectorIlSaIlEERKSD_IT_SaISG_EEOT0_EUlllE_EclIlNS_17__normal_iteratorIPlSF_EEEEbRSG_SL_.exit.i.i.i.i.i
  store i64 %i.aq, ptr %.sroa.05.0.i.i.i.i.i, align 8, !tbaa !82
  br label %bb.d, !llvm.loop !121

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISH_EEES5_RKS3_IT_SaISK_EEOT0_EUlllE_EEEvSK_SP_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_EEESt6vectorIlSaIlEERKSD_IT_SaISG_EEOT0_EUlllE_EclIlNS_17__normal_iteratorIPlSF_EEEEbRSG_SL_.exit.i.i.i.i.i
  store i64 %i.an, ptr %.sroa.05.0.i.i.i.i.i, align 8, !tbaa !82
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i, i64 8 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %.sink
  br i1 %i.bc, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISF_EEES5_RKS3_IT_SaISI_EEOT0_EUlllE_EvSI_SI_SN_.exit, label %bb.c, !llvm.loop !122

bb.f:                                             ; preds = %.noexc12
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISH_EEES5_RKS3_IT_SaISK_EEOT0_EUlllE_EEEvSK_SK_SP_(ptr nonnull %i.k, ptr %.sink, ptr nonnull %2, ptr nonnull %1)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISF_EEES5_RKS3_IT_SaISI_EEOT0_EUlllE_EvSI_SI_SN_.exit unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISF_EEES5_RKS3_IT_SaISI_EEOT0_EUlllE_EvSI_SI_SN_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISH_EEES5_RKS3_IT_SaISK_EEOT0_EUlllE_EEEvSK_SP_.exit.i.i.i.i, %thread-pre-split.thread, %.noexc13, %bb.f
  ret void

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.f, %bb.b, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !81
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.bh) #27
  resume { ptr, i32 } %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !32
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !28 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !32
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !123

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow16KeyValueMetadata4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
