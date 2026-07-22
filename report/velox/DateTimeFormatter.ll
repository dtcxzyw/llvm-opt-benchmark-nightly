inline.NumInlined: 2688
inline.NumDeleted: 1028
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEv:bb.a
  %i.ag = shl nuw nsw i64 %i.s, 5
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #31
          to label %.noexc45 unwind label %bb.g   ; 4 uses

.noexc45:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.w, %i.ad
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc45, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ah, %.noexc45 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.w, %.noexc45 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ai, ptr %.012.i.i.i.i, align 8, !tbaa !44, !alias.scope !335, !noalias !338
  %i.aj = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !7, !alias.scope !338, !noalias !335 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !48, !alias.scope !338, !noalias !335 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false), !alias.scope !340
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.aj, ptr %.012.i.i.i.i, align 8, !tbaa !7, !alias.scope !335, !noalias !338
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !13, !alias.scope !338, !noalias !335
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !13, !alias.scope !335, !noalias !338
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !48, !alias.scope !338, !noalias !335
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ar = phi i64 [ %i.an, %bb.e ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !48, !alias.scope !335, !noalias !338
  store ptr %i.ak, ptr %.0911.i.i.i.i, align 8, !tbaa !7, !alias.scope !338, !noalias !335
  store i64 0, ptr %i.as, align 8, !tbaa !48, !alias.scope !338, !noalias !335
  store i8 0, ptr %i.ak, align 8, !tbaa !13, !alias.scope !338, !noalias !335
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.ad
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !341

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc45
  %.not.i8.i = icmp eq ptr %i.w, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !331
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ay) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.ah, ptr %0, align 8, !tbaa !333
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store ptr %i.az, ptr %i.ac, align 8, !tbaa !334
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.s
  store ptr %i.ba, ptr %i.u, align 8, !tbaa !331
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !342
  %.pre110 = load ptr, ptr %i.d, align 8, !tbaa !342
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.d
  %i.bb = phi ptr [ %.pre110, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.e, %bb.d ] ; 2 uses
  %i.bc = phi ptr [ %.pre, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.f, %bb.d ] ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.bb
  br i1 %i.bd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !343 ; 2 uses
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !343 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.k

bb.g:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, %bb.c, %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.09.083 = phi ptr [ %i.bc, %.lr.ph ], [ %i.bo, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #2
  %i.bk = call { i64, ptr } @_ZNK8facebook5velox4tzdb9time_zone6__nameEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.09.083) #2 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  store i64 %i.bl, ptr %1, align 8
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  store ptr %i.bm, ptr %i.be, align 8
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #2
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.09.083, i64 8 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bb
  br i1 %i.bp, label %._crit_edge, label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #2
  br label %bb.av

._crit_edge87:                                    ; preds = %bb.l, %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 24), align 8, !tbaa !344
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 32), align 8, !tbaa !346
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 40), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 56), align 8, !tbaa !347
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 64), i8 0, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !334
  %i.bt = load ptr, ptr %0, align 8, !tbaa !333   ; 2 uses
  %.not96 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not96, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EvT_SI_T0_.exit", label %.lr.ph90

.lr.ph90:                                         ; preds = %._crit_edge87
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph86, %bb.l
  %.sroa.05.084 = phi ptr [ %i.bf, %.lr.ph86 ], [ %i.cc, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  %i.by = load ptr, ptr %.sroa.05.084, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.05.084, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !48
  store i64 %i.ca, ptr %2, align 8
  store ptr %i.by, ptr %i.bi, align 8
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.084, i64 64 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bg
  br i1 %i.cd, label %._crit_edge87, label %bb.k

bb.m:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  br label %bb.av

._crit_edge91:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.pre111 = load ptr, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, align 8, !tbaa !193 ; 6 uses
  %.pre112 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 8), align 8, !tbaa !193 ; 6 uses
  %i.cf = icmp eq ptr %.pre111, %.pre112
  br i1 %i.cf, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EvT_SI_T0_.exit", label %bb.n

bb.n:                                             ; preds = %._crit_edge91
  %i.cg = ptrtoint ptr %.pre112 to i64
  %i.ch = ptrtoint ptr %.pre111 to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = ashr exact i64 %i.ci, 5
  %i.ck = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = shl nuw nsw i64 %i.ck, 1
  %i.cm = xor i64 %i.cl, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_T0_T1_"(ptr %.pre111, ptr %.pre112, i64 noundef %i.cm)
  %i.cn = icmp sgt i64 %i.ci, 512
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %.pre111, i64 512 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_T0_"(ptr %.pre111, ptr nonnull %i.co)
  %i.cp = icmp eq ptr %i.co, %.pre112
  br i1 %i.cp, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EvT_SI_T0_.exit", label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i46
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i46 ], [ %i.co, %bb.o ] ; 2 uses
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.06.i.i.i.i)
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 32 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %.pre112
  br i1 %i.cr, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EvT_SI_T0_.exit", label %.lr.ph.i.i.i.i46, !llvm.loop !348

bb.p:                                             ; preds = %bb.n
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_T0_"(ptr %.pre111, ptr %.pre112)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EvT_SI_T0_.exit"

bb.q:                                             ; preds = %.lr.ph90, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.cs = phi ptr [ %i.bt, %.lr.ph90 ], [ %i.gd, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ]
  %.03688 = phi i64 [ 0, %.lr.ph90 ], [ %i.gb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %.03688 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !48 ; 10 uses
  %.not = icmp eq i64 %i.cv, 0
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.q
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !7  ; 2 uses
  %i.cx = call ptr @memchr(ptr noundef %i.cw, i32 noundef 47, i64 noundef %i.cv) #2 ; 2 uses
  %.not.i = icmp eq ptr %i.cx, null
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 4 uses
  %i.db = icmp eq i64 %i.da, -1
  %or.cond = or i1 %.not.i, %i.db
  br i1 %or.cond, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 8), align 8, !tbaa !334 ; 7 uses
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 16), align 8, !tbaa !331
  %.not.i47 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i47, label %bb.w, label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread: ; preds = %bb.q
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 8), align 8, !tbaa !334 ; 5 uses
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 16), align 8, !tbaa !331
  %.not.i4713 = icmp eq ptr %i.de, %i.df
  br i1 %.not.i4713, label %bb.w, label %._crit_edge.i.i.i.i.thread

._crit_edge.i.i.i.i.thread:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !44
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 3 uses
  store ptr %i.dh, ptr %i.dc, align 8, !tbaa !44
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !7  ; 2 uses
  %i.dj = icmp ugt i64 %i.cv, 15
  br i1 %i.dj, label %bb.s, label %._crit_edge.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.dk = icmp slt i64 %i.cv, 0
  br i1 %i.dk, label %.noexc.i.i.i, label %bb.t

.noexc.i.i.i:                                     ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #30
          to label %.noexc48 unwind label %.loopexit.split-lp26

.noexc48:                                         ; preds = %.noexc.i.i.i
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.dl = add nuw i64 %i.cv, 1                    ; 2 uses
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !41

.noexc6.i.i.i:                                    ; preds = %bb.t
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc49 unwind label %.loopexit.split-lp26

.noexc49:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.t
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #31
          to label %.noexc50 unwind label %.loopexit25 ; 2 uses

.noexc50:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.dn, ptr %i.dc, align 8, !tbaa !7
  store i64 %i.cv, ptr %i.dh, align 8, !tbaa !13
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc50, %bb.r
  %i.do = phi ptr [ %i.dn, %.noexc50 ], [ %i.dh, %bb.r ] ; 4 uses
  %cond = icmp eq i64 %i.cv, 1
  br i1 %cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !13
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !13
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %i.di, i64 %i.cv, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %._crit_edge.i.i.i.i.thread, %bb.v, %bb.u
  %i.dq = phi ptr [ %i.dg, %._crit_edge.i.i.i.i.thread ], [ %i.do, %bb.v ], [ %i.do, %bb.u ]
  %i.dr = phi ptr [ %i.de, %._crit_edge.i.i.i.i.thread ], [ %i.dc, %bb.v ], [ %i.dc, %bb.u ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i64 %i.cv, ptr %i.ds, align 8, !tbaa !48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.cv
  store i8 0, ptr %i.dt, align 1, !tbaa !13
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 8), align 8, !tbaa !334
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store ptr %i.dv, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 8), align 8, !tbaa !334
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread
  %i.dw = phi ptr [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread ]
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, ptr %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit25

.loopexit25:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.w
  %lpad.loopexit27 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp26:                             ; preds = %.noexc.i.i.i, %.noexc6.i.i.i
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.x:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %5 = load i64, ptr %i.cu, align 8, !tbaa !48, !noalias !349
  store ptr %i.bu, ptr %3, align 8, !tbaa !44, !alias.scope !349
  %6 = load ptr, ptr %i.ct, align 8, !tbaa !7, !noalias !349 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %5) ; 8 uses
  %i.dx = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.dx, label %bb.y, label %._crit_edge.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.dy = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.dy, label %.noexc10.i.i, label %bb.z

.noexc10.i.i:                                     ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #30
          to label %.noexc52 unwind label %.loopexit.split-lp

.noexc52:                                         ; preds = %.noexc10.i.i
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.dz = add nuw i64 %spec.select.i.i.i, 1       ; 2 uses
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !41

.noexc11.i.i:                                     ; preds = %bb.z
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.z
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #31
          to label %.noexc54 unwind label %.loopexit ; 2 uses

.noexc54:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.eb, ptr %3, align 8, !tbaa !7, !alias.scope !349
  store i64 %spec.select.i.i.i, ptr %i.bu, align 8, !tbaa !13, !alias.scope !349
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc54, %bb.x
  %i.ec = phi ptr [ %i.eb, %.noexc54 ], [ %i.bu, %bb.x ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  %i.ed = load i8, ptr %6, align 1, !tbaa !13
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !13
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr align 1 %6, i64 %spec.select.i.i.i, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.i
  store i64 %spec.select.i.i.i, ptr %i.bv, align 8, !tbaa !48, !alias.scope !349
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %spec.select.i.i.i
  store i8 0, ptr %i.ee, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #2
  %i.ef = add nuw i64 %i.da, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.eg = load i64, ptr %i.cu, align 8, !tbaa !48, !noalias !352 ; 3 uses
  %.not14 = icmp ult i64 %i.da, %i.eg
  br i1 %.not14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.179, i64 noundef %i.ef, i64 noundef %i.eg) #30
          to label %.noexc60 unwind label %.loopexit.split-lp16

.noexc60:                                         ; preds = %bb.ad
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.ac
  store ptr %i.bw, ptr %4, align 8, !tbaa !44, !alias.scope !352
  %i.eh = load ptr, ptr %i.ct, align 8, !tbaa !7, !noalias !352
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef ; 2 uses
  %i.ej = sub nuw i64 %i.eg, %i.ef                ; 8 uses
  %i.ek = icmp ugt i64 %i.ej, 15
  br i1 %i.ek, label %bb.ae, label %._crit_edge.i.i.i56

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.el = icmp slt i64 %i.ej, 0
  br i1 %i.el, label %.noexc10.i.i59, label %bb.af

.noexc10.i.i59:                                   ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #30
          to label %.noexc61 unwind label %.loopexit.split-lp16

.noexc61:                                         ; preds = %.noexc10.i.i59
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.em = add nuw i64 %i.ej, 1                    ; 2 uses
  %i.en = icmp slt i64 %i.em, 0
  br i1 %i.en, label %.noexc11.i.i58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i57, !prof !41

.noexc11.i.i58:                                   ; preds = %bb.af
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc62 unwind label %.loopexit.split-lp16

.noexc62:                                         ; preds = %.noexc11.i.i58
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i57: ; preds = %bb.af
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #31
          to label %.noexc63 unwind label %.loopexit15 ; 2 uses

.noexc63:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i57
  store ptr %i.eo, ptr %4, align 8, !tbaa !7, !alias.scope !352
  store i64 %i.ej, ptr %i.bw, align 8, !tbaa !13, !alias.scope !352
  br label %._crit_edge.i.i.i56

._crit_edge.i.i.i56:                              ; preds = %.noexc63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ep = phi ptr [ %i.eo, %.noexc63 ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.ej, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i56
  %i.eq = load i8, ptr %i.ei, align 1, !tbaa !13
  store i8 %i.eq, ptr %i.ep, align 1, !tbaa !13
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i.i56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ep, ptr nonnull align 1 %i.ei, i64 %i.ej, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i.i56
  store i64 %i.ej, ptr %i.bx, align 8, !tbaa !48, !alias.scope !352
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ej
  store i8 0, ptr %i.er, align 1, !tbaa !13
  %i.es = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEESaISC_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions12_GLOBAL__N_117parseTimezoneNameEPKcS4_RNS2_4DateEE20timeZoneNameMappings, i64 24), ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEEixERSE_.exit unwind label %.loopexit20 ; 3 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEEixERSE_.exit: ; preds = %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !334 ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !331
  %.not.i66 = icmp eq ptr %i.eu, %i.ew
  br i1 %.not.i66, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEEixERSE_.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 3 uses
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !44
  %i.ey = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.ez = load i64, ptr %i.bx, align 8, !tbaa !48 ; 8 uses
  %i.fa = icmp ugt i64 %i.ez, 15
  br i1 %i.fa, label %bb.ak, label %._crit_edge.i.i.i.i67

bb.ak:                                            ; preds = %bb.aj
  %i.fb = icmp slt i64 %i.ez, 0
  br i1 %i.fb, label %.noexc.i.i.i71, label %bb.al

.noexc.i.i.i71:                                   ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #30
          to label %.noexc72 unwind label %.loopexit.split-lp21

.noexc72:                                         ; preds = %.noexc.i.i.i71
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.fc = add nuw i64 %i.ez, 1                    ; 2 uses
  %i.fd = icmp slt i64 %i.fc, 0
  br i1 %i.fd, label %.noexc6.i.i.i70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i69, !prof !41

.noexc6.i.i.i70:                                  ; preds = %bb.al
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc73 unwind label %.loopexit.split-lp21

.noexc73:                                         ; preds = %.noexc6.i.i.i70
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i69: ; preds = %bb.al
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #31
          to label %.noexc74 unwind label %.loopexit20 ; 2 uses

.noexc74:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i69
  store ptr %i.fe, ptr %i.eu, align 8, !tbaa !7
  store i64 %i.ez, ptr %i.ex, align 8, !tbaa !13
  br label %._crit_edge.i.i.i.i67

._crit_edge.i.i.i.i67:                            ; preds = %.noexc74, %bb.aj
  %i.ff = phi ptr [ %i.fe, %.noexc74 ], [ %i.ex, %bb.aj ] ; 3 uses
  switch i64 %i.ez, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i68
  ]

bb.am:                                            ; preds = %._crit_edge.i.i.i.i67
  %i.fg = load i8, ptr %i.ey, align 1, !tbaa !13
  store i8 %i.fg, ptr %i.ff, align 1, !tbaa !13
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i68

bb.an:                                            ; preds = %._crit_edge.i.i.i.i67
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ff, ptr align 1 %i.ey, i64 %i.ez, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i68

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i68: ; preds = %bb.an, %bb.am, %._crit_edge.i.i.i.i67
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 %i.ez, ptr %i.fh, align 8, !tbaa !48
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ez
  store i8 0, ptr %i.fi, align 1, !tbaa !13
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !334
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store ptr %i.fk, ptr %i.et, align 8, !tbaa !334
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit76

bb.ao:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEEixERSE_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit76 unwind label %.loopexit20

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit76: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i68, %bb.ao
  %i.fl = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.bw
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit76
  %i.fn = load i64, ptr %i.bw, align 8, !tbaa !13
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  %i.fp = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.bu
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fr = load i64, ptr %i.bu, align 8, !tbaa !13
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

.loopexit.split-lp:                               ; preds = %.noexc10.i.i, %.noexc11.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

.loopexit15:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i57
  %lpad.loopexit17 = landingpad { ptr, i32 }
end_hunk_0
