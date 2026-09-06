Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/version?download=true
inline.NumInlined: 3891
inline.NumDeleted: 1510
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNSt8__detail8_ScannerIcEC2EPKcS3_NSt15regex_constants18syntax_option_typeESt6locale:bb.a

_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit: ; preds = %_ZSt15__try_use_facetIKSt5ctypeIcEEPKT_RKSt6locale.exit.i
  store ptr %i.l, ptr %i.c, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.o, align 8, !tbaa !99
  store i8 0, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.r = load i32, ptr %i.q, align 4, !tbaa !139
  %i.s = and i32 %i.r, 16
  %.not = icmp eq i32 %i.s, 0
  %.elt = select i1 %.not, i64 ptrtoint (ptr @_ZNSt8__detail8_ScannerIcE19_M_eat_escape_posixEv to i64), i64 ptrtoint (ptr @_ZNSt8__detail8_ScannerIcE18_M_eat_escape_ecmaEv to i64)
  store i64 %.elt, ptr %i.p, align 8, !tbaa !140
  %.repack5 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %.repack5, align 8, !tbaa !140
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 27, ptr %i.w, align 8, !tbaa !122
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.d:                                             ; preds = %_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !125
  switch i32 %i.y, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit:    ; preds = %bb.d, %bb.c, %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !56  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !57
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE23_M_insert_subexpr_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !141  ; 4 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !142
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !144    ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #30
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #29 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store i64 %i.b, ptr %i.u, align 8, !tbaa !128
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !144
  store ptr %i.w, ptr %i.d, align 8, !tbaa !142
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.x, ptr %i.f, align 8, !tbaa !143
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i32 8, ptr %1, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.y, align 8, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 %i.b, ptr %i.z, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !146
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !147 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !148
  %.not.i.i.i2 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i.i2, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.af = load i32, ptr %2, align 8, !tbaa !134
  %i.ag = icmp eq i32 %i.af, 11
  br i1 %i.ag, label %bb.h, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 24, i1 false)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !151
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !151
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  store ptr %i.am, ptr %i.an, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !147
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  store ptr %i.aq, ptr %i.ab, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.ar = phi ptr [ %i.aq, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !118
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %3 = sdiv exact i64 %i.av, 48                   ; 2 uses
  %i.aw = icmp ugt i64 %3, 100000
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ax = load i32, ptr %2, align 8, !tbaa !134
  %i.ay = icmp eq i32 %i.ax, 11
  br i1 %i.ay, label %bb.m, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bc = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.l, %bb.m, %bb.n
  %i.bf = load i32, ptr %1, align 8, !tbaa !134
  %i.bg = icmp eq i32 %i.bf, 11
  br i1 %i.bg, label %bb.p, label %_ZNSt8__detail6_StateIcED2Ev.exit5

bb.p:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !152 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i4, label %_ZNSt8__detail6_StateIcED2Ev.exit5, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = invoke noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit5 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit5:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.p, %bb.q
  %i.bm = add nsw i64 %3, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i64 %i.bm

bb.s:                                             ; preds = %bb.k, %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #26
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.bn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !122
  %i.d = icmp eq i32 %i.c, 19
  br i1 %i.d, label %.lr.ph, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !124
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !122
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.i, align 8, !tbaa !125
  switch i32 %i.u, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !126, !noalias !419 ; 4 uses
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !127, !noalias !419 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -24 ; 2 uses
  %.sroa.010.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !153
  %.sroa.512.0..sroa_idx = getelementptr inbounds i8, ptr %i.v, i64 -16
  %.sroa.512.0.copyload = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !tbaa !128
  %.sroa.615.0..sroa_idx = getelementptr inbounds i8, ptr %i.v, i64 -8
  %.sroa.615.0.copyload = load i64, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !128
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.j:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !129, !noalias !419
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !130, !noalias !420 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 480
  %.sroa.010.0.copyload11 = load ptr, ptr %i.ac, align 8, !tbaa !153
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ab, i64 488
  %.sroa.512.0.copyload14 = load i64, ptr %.sroa.512.0..sroa_idx13, align 8, !tbaa !128
  %.sroa.615.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ab, i64 496
  %.sroa.615.0.copyload17 = load i64, ptr %.sroa.615.0..sroa_idx16, align 8, !tbaa !128
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef 504) #27, !noalias !420
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !131, !noalias !420
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !129, !noalias !420
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !130, !noalias !420 ; 3 uses
  store ptr %i.af, ptr %i.k, align 8, !tbaa !127, !noalias !420
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 504
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !132, !noalias !420
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.i, %bb.j
  %.sroa.615.0 = phi i64 [ %.sroa.615.0.copyload17, %bb.j ], [ %.sroa.615.0.copyload, %bb.i ]
  %.sroa.512.0 = phi i64 [ %.sroa.512.0.copyload14, %bb.j ], [ %.sroa.512.0.copyload, %bb.i ]
  %.sroa.010.0 = phi ptr [ %.sroa.010.0.copyload11, %bb.j ], [ %.sroa.010.0.copyload, %bb.i ]
  %storemerge.i.i.i = phi ptr [ %i.ah, %bb.j ], [ %i.y, %bb.i ]
  store ptr %storemerge.i.i.i, ptr %i.j, align 8, !tbaa !133, !noalias !420
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !126, !noalias !421 ; 4 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !127, !noalias !421 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -24 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.al, align 8, !tbaa !153
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !128
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !128
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4

bb.l:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !129, !noalias !421
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !130, !noalias !422 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 480
  %.sroa.0.0.copyload5 = load ptr, ptr %i.ap, align 8, !tbaa !153
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ao, i64 488
  %.sroa.5.0.copyload7 = load i64, ptr %.sroa.5.0..sroa_idx6, align 8, !tbaa !128
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ao, i64 496
  %.sroa.6.0.copyload9 = load i64, ptr %.sroa.6.0..sroa_idx8, align 8, !tbaa !128
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef 504) #27, !noalias !422
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !131, !noalias !422
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  store ptr %i.ar, ptr %i.l, align 8, !tbaa !129, !noalias !422
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !130, !noalias !422 ; 3 uses
  store ptr %i.as, ptr %i.k, align 8, !tbaa !127, !noalias !422
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 504
  store ptr %i.at, ptr %i.m, align 8, !tbaa !132, !noalias !422
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4: ; preds = %bb.k, %bb.l
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload9, %bb.l ], [ %.sroa.6.0.copyload, %bb.k ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload7, %bb.l ], [ %.sroa.5.0.copyload, %bb.k ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload5, %bb.l ], [ %.sroa.0.0.copyload, %bb.k ]
  %storemerge.i.i.i3 = phi ptr [ %i.au, %bb.l ], [ %i.al, %bb.k ]
  store ptr %storemerge.i.i.i3, ptr %i.j, align 8, !tbaa !133, !noalias !422
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.aw = call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !118
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %.sroa.615.0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.aw, ptr %i.ba, align 8, !tbaa !121
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !118
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %.sroa.6.0
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.aw, ptr %i.be, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !97  ; 2 uses
  %i.bg = call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE13_M_insert_altEllb(ptr noundef nonnull align 8 dereferenceable(88) %i.bf, i64 noundef %.sroa.5.0, i64 noundef %.sroa.512.0, i1 noundef zeroext false)
  store ptr %i.bf, ptr %1, align 8, !tbaa !153
  store i64 %i.bg, ptr %i.o, align 8, !tbaa !155
  store i64 %i.aw, ptr %i.p, align 8, !tbaa !156
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !133 ; 2 uses
  %i.bi = load ptr, ptr %i.m, align 8, !tbaa !157
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !158
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !133
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bl, ptr %i.j, align 8, !tbaa !133
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.n:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.bm = load i32, ptr %i.b, align 8, !tbaa !122
  %i.bn = icmp eq i32 %i.bm, 19
  br i1 %i.bn, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, !llvm.loop !418

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !122
  %i.d = icmp eq i32 %1, %i.c                     ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !122
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !125
  switch i32 %i.m, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit:    ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret i1 %i.d
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE21_M_insert_subexpr_endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i32 9, ptr %1, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !57
  store ptr %i.d, ptr %i.b, align 8, !tbaa !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !146
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !147  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.l = load i32, ptr %2, align 8, !tbaa !134
  %i.m = icmp eq i32 %i.l, 11
  br i1 %i.m, label %bb.b, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !151
  store ptr %i.q, ptr %i.o, align 8, !tbaa !151
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  store ptr %i.s, ptr %i.t, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !147
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.x = phi ptr [ %i.w, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !118
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %3 = sdiv exact i64 %i.ab, 48                   ; 2 uses
  %i.ac = icmp ugt i64 %3, 100000
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc2 unwind label %bb.m

.noexc2:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ad = load i32, ptr %2, align 8, !tbaa !134
  %i.ae = icmp eq i32 %i.ad, 11
  br i1 %i.ae, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.al = load i32, ptr %1, align 8, !tbaa !134
  %i.am = icmp eq i32 %i.al, 11
  br i1 %i.am, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit4

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !152 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i3, label %_ZNSt8__detail6_StateIcED2Ev.exit4, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit4 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit4:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %i.as = add nsw i64 %3, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i64 %i.as

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #26
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_acceptEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 12, ptr %1, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !146
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %2 = sdiv exact i64 %i.l, 48                    ; 2 uses
  %i.m = icmp ugt i64 %2, 100000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !134
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = add nsw i64 %2, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #26
  resume { ptr, i32 } %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !130
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 504) #27
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i, !llvm.loop !1

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !136
  br label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i: ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !138
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit

_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 3 uses
  invoke void @_ZNSt11regex_errorC2ENSt15regex_constants10error_typeEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef %0, ptr noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11regex_error, ptr nonnull @_ZNSt11regex_errorD1Ev) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11regex_errorC2ENSt15regex_constants10error_typeEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt11regex_error, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !428
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt11regex_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail12_ScannerBaseC2ENSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(169) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  store i8 94, ptr %0, align 8, !tbaa !161
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.a, align 4, !tbaa !162
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 36, ptr %i.b, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 23, ptr %i.c, align 4, !tbaa !162
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 46, ptr %i.d, align 8, !tbaa !161
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !162
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 42, ptr %i.f, align 8, !tbaa !161
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.g, align 4, !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 43, ptr %i.h, align 8, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 21, ptr %i.i, align 4, !tbaa !162
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 63, ptr %i.j, align 8, !tbaa !161
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 18, ptr %i.k, align 4, !tbaa !162
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 124, ptr %i.l, align 8, !tbaa !161
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 19, ptr %i.m, align 4, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 10, ptr %i.n, align 8, !tbaa !161
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 19, ptr %i.o, align 4, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.p, align 8, !tbaa !161
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 19, ptr %i.q, align 4, !tbaa !162
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store <16 x i8> <i8 48, i8 0, i8 98, i8 8, i8 102, i8 12, i8 110, i8 10, i8 114, i8 13, i8 116, i8 9, i8 118, i8 11, i8 0, i8 0>, ptr %i.r, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store <16 x i8> <i8 34, i8 34, i8 47, i8 47, i8 92, i8 92, i8 97, i8 7, i8 98, i8 8, i8 102, i8 12, i8 110, i8 10, i8 114, i8 13>, ptr %i.s, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i8> <i8 116, i8 9, i8 118, i8 11>, ptr %i.t, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 0, ptr %i.u, align 4, !tbaa !164
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 0, ptr %i.v, align 1, !tbaa !165
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.18, ptr %i.w, align 8, !tbaa !429
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @.str.19, ptr %i.x, align 8, !tbaa !430
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @.str.20, ptr %i.y, align 8, !tbaa !431
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !463
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_atomEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !463
  br i1 %i.b, label %.preheader, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit

.preheader:                                       ; preds = %bb.b, %.preheader
  %i.c = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !463
  br i1 %i.c, label %.preheader, label %.loopexit, !llvm.loop !464

.loopexit:                                        ; preds = %.preheader, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126, !noalias !473 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127, !noalias !473 ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !158
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.d:                                             ; preds = %.loopexit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !129, !noalias !473
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !130, !noalias !474
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !158
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef 504) #27, !noalias !474
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !131, !noalias !474
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !129, !noalias !474
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !130, !noalias !474 ; 3 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !127, !noalias !474
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 504
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.r, ptr %i.s, align 8, !tbaa !132, !noalias !474
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.t, %bb.d ]
  store ptr %storemerge.i.i.i, ptr %i.d, align 8, !tbaa !133, !noalias !474
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !126, !noalias !475 ; 4 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !127, !noalias !475 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !128
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.u, i64 -8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !128
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !157
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2

bb.f:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !129, !noalias !475
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !130, !noalias !476 ; 2 uses
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ab, i64 488
  %.sroa.4.0.copyload5 = load i64, ptr %.sroa.4.0..sroa_idx4, align 8, !tbaa !128
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ab, i64 496
  %.sroa.5.0.copyload7 = load i64, ptr %.sroa.5.0..sroa_idx6, align 8, !tbaa !128
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef 504) #27, !noalias !476
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !131, !noalias !476
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !129, !noalias !476
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !130, !noalias !476 ; 3 uses
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !127, !noalias !476
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 504 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !132, !noalias !476
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2: ; preds = %bb.e, %bb.f
  %i.ai = phi ptr [ %i.af, %bb.f ], [ %.pre, %bb.e ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload7, %bb.f ], [ %.sroa.5.0.copyload, %bb.e ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload5, %bb.f ], [ %.sroa.4.0.copyload, %bb.e ]
  %storemerge.i.i.i1 = phi ptr [ %i.ah, %bb.f ], [ %i.x, %bb.e ] ; 3 uses
  store ptr %storemerge.i.i.i1, ptr %i.d, align 8, !tbaa !133, !noalias !476
  %i.aj = load ptr, ptr %1, align 8, !tbaa !181, !nonnull !51, !align !170
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !156
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !118
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.4.0, ptr %i.ap, align 8, !tbaa !121
  store i64 %.sroa.5.0, ptr %i.al, align 8, !tbaa !156
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %.not.i.i = icmp eq ptr %storemerge.i.i.i1, %i.aq
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge.i.i.i1, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !158
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.as, ptr %i.d, align 8, !tbaa !133
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

bb.h:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.k

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.aw = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.av) ; 2 uses
  store ptr %i.av, ptr %2, align 8, !tbaa !153
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !155
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !156
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !133 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !157
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -24
  %.not.i.i.i = icmp eq ptr %i.ba, %i.bd
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !158
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !133
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !133
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.j:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 10, ptr %1, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !146
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %2 = sdiv exact i64 %i.l, 48                    ; 2 uses
  %i.m = icmp ugt i64 %2, 100000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !134
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = add nsw i64 %2, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #26
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE13_M_insert_altEllb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 1, ptr %4, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !146
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.h = load i32, ptr %5, align 8, !tbaa !134
  %i.i = icmp eq i32 %i.h, 11
  br i1 %i.i, label %bb.b, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !151
  store ptr %i.m, ptr %i.k, align 8, !tbaa !151
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.t = phi ptr [ %i.s, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %6 = sdiv exact i64 %i.x, 48                    ; 2 uses
  %i.y = icmp ugt i64 %6, 100000
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc4 unwind label %bb.m

.noexc4:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.z = load i32, ptr %5, align 8, !tbaa !134
  %i.aa = icmp eq i32 %i.z, 11
  br i1 %i.aa, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.ah = load i32, ptr %4, align 8, !tbaa !134
  %i.ai = icmp eq i32 %i.ah, 11
  br i1 %i.ai, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit6

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !152 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit6, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit6 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit6:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %i.ao = add nsw i64 %6, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i64 %i.ao

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %3 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %4 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !122
  switch i32 %i.c, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8 [
    i32 22, label %bb.b
    i32 23, label %bb.k
    i32 24, label %bb.t
    i32 7, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !124
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !122
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !125
  switch i32 %i.l, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97   ; 2 uses
  %i.o = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_line_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %i.n) ; 2 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !153
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !155
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.o, ptr %i.q, align 8, !tbaa !156
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !133  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !157
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.not.i.i.i = icmp eq ptr %i.s, %i.v
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !158
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.x, ptr %i.r, align 8, !tbaa !133
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.k:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !124
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 27, ptr %i.b, align 8, !tbaa !122
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !125
  switch i32 %i.ah, label %bb.q [
    i32 0, label %bb.n
    i32 2, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !97 ; 2 uses
  %i.ak = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE18_M_insert_line_endEv(ptr noundef nonnull align 8 dereferenceable(88) %i.aj) ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !153
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !155
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !156
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !133 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !157
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -24
  %.not.i.i.i3 = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i.i3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !158
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !133
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.at, ptr %i.an, align 8, !tbaa !133
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.t:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !123
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !124
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 27, ptr %i.b, align 8, !tbaa !122
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !125
  switch i32 %i.bd, label %bb.z [
    i32 0, label %bb.w
    i32 2, label %bb.x
    i32 1, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.z
end_hunk_1
begin_hunk_2_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv:bb.a
  %i.li = load ptr, ptr %i.ko, align 8, !tbaa !188 ; 3 uses
  %i.lj = load ptr, ptr %i.kp, align 8, !tbaa !189
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 -8
  %.not.i.i49 = icmp eq ptr %i.li, %i.lk
  br i1 %.not.i.i49, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i64 %i.lh, ptr %i.li, align 8, !tbaa !128
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store ptr %i.ll, ptr %i.ko, align 8, !tbaa !188
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

bb.dp:                                            ; preds = %bb.dn
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit unwind label %bb.dr

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit:     ; preds = %bb.do, %bb.dp
  %i.lm = load i64, ptr %i.a, align 8, !tbaa !128
  %i.ln = load i64, ptr %i.kq, align 8, !tbaa !156 ; 2 uses
  %i.lo = load ptr, ptr %i.kr, align 8, !tbaa !118 ; 2 uses
  %i.lp = getelementptr inbounds nuw [48 x i8], ptr %i.lo, i64 %i.le
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i64 %i.lm, ptr %i.lq, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.lr = add nuw nsw i64 %.02087, 1              ; 2 uses
  %exitcond95.not = icmp eq i64 %i.lr, %.022
  br i1 %exitcond95.not, label %._crit_edge90, label %bb.dl, !llvm.loop !514

bb.dq:                                            ; preds = %bb.dl
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp, %bb.dm
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn = phi { ptr, i32 } [ %i.lt, %bb.dr ], [ %i.ls, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn

bb.dt:                                            ; preds = %.lr.ph92, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.lu = phi ptr [ %i.kz, %.lr.ph92 ], [ %i.mq, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ]
  %i.lv = phi ptr [ %.pre97, %.lr.ph92 ], [ %i.mr, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ] ; 3 uses
  %i.lw = phi ptr [ %i.ky, %.lr.ph92 ], [ %storemerge.i.i, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ] ; 2 uses
  %i.lx = load ptr, ptr %i.hh, align 8, !tbaa !97
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 56 ; 2 uses
  %i.lz = icmp eq ptr %i.lw, %i.lv
  br i1 %i.lz, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ma = getelementptr inbounds i8, ptr %i.lw, i64 -8 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !128
  %i.mc = load ptr, ptr %i.ly, align 8, !tbaa !118
  %i.md = getelementptr inbounds nuw [48 x i8], ptr %i.mc, i64 %i.mb
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

bb.dv:                                            ; preds = %bb.dt
  %i.me = load ptr, ptr %i.lc, align 8, !tbaa !190, !noalias !524
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 -8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !159
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 504
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !128
  %i.mj = load ptr, ptr %i.ly, align 8, !tbaa !118
  %i.mk = getelementptr inbounds nuw [48 x i8], ptr %i.mj, i64 %i.mi
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef 512) #27
  %i.ml = load ptr, ptr %i.lc, align 8, !tbaa !191
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -8 ; 2 uses
  store ptr %i.mm, ptr %i.lc, align 8, !tbaa !190
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !159 ; 4 uses
  store ptr %i.mn, ptr %i.lb, align 8, !tbaa !186
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 512
  store ptr %i.mo, ptr %i.ld, align 8, !tbaa !192
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 504
  %.pre98 = load ptr, ptr %i.kx, align 8, !tbaa !185
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit:        ; preds = %bb.du, %bb.dv
  %i.mq = phi ptr [ %i.lu, %bb.du ], [ %.pre98, %bb.dv ] ; 2 uses
  %i.mr = phi ptr [ %i.lv, %bb.du ], [ %i.mn, %bb.dv ]
  %i.ms = phi ptr [ %i.md, %bb.du ], [ %i.mk, %bb.dv ]
  %storemerge.i.i = phi ptr [ %i.ma, %bb.du ], [ %i.mp, %bb.dv ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.kw, align 8, !tbaa !188
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %i.mu = load <2 x i64>, ptr %i.mt, align 8, !tbaa !128
  %i.mv = shufflevector <2 x i64> %i.mu, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.mv, ptr %i.mt, align 8, !tbaa !128
  %i.mw = icmp eq ptr %storemerge.i.i, %i.mq
  br i1 %i.mw, label %._crit_edge93, label %bb.dt, !llvm.loop !515

._crit_edge93:                                    ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit, %._crit_edge90
  %i.mx = load ptr, ptr %8, align 8, !tbaa !193   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge93
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !194 ; 2 uses
  %i.nb = load ptr, ptr %i.my, align 8, !tbaa !191 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = icmp ult ptr %i.na, %i.nc
  br i1 %i.nd, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dw, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.nf, %.lr.ph.i.i.i.i ], [ %i.na, %bb.dw ] ; 3 uses
  %i.ne = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !159
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef 512) #27
  %i.nf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ng = icmp ult ptr %.06.i.i.i.i, %i.nb
  br i1 %i.ng, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, !llvm.loop !4

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %8, align 8, !tbaa !193
  br label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, %bb.dw
  %i.nh = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i ], [ %i.mx, %bb.dw ]
  %i.ni = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !195
  %i.nk = shl i64 %i.nj, 3
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nk) #27
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit

_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit:          ; preds = %._crit_edge93, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, %bb.dh
  %i.nl = load ptr, ptr %i.gf, align 8, !tbaa !133 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !157
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 -24
  %.not.i.i51 = icmp eq ptr %i.nl, %i.no
  br i1 %.not.i.i51, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nl, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !158
  %i.np = load ptr, ptr %i.gf, align 8, !tbaa !133
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  store ptr %i.nq, ptr %i.gf, align 8, !tbaa !133
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52

bb.dz:                                            ; preds = %bb.dx
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ge, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52: ; preds = %bb.dy, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit41

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit41: ; preds = %bb.a, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit40, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit32
  %.0 = phi i1 [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit32 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit40 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_line_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 4, ptr %1, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !146
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %2 = sdiv exact i64 %i.l, 48                    ; 2 uses
  %i.m = icmp ugt i64 %2, 100000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !134
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = add nsw i64 %2, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #26
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE18_M_insert_line_endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 5, ptr %1, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !146
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %2 = sdiv exact i64 %i.l, 48                    ; 2 uses
  %i.m = icmp ugt i64 %2, 100000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !134
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = add nsw i64 %2, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #26
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_word_boundEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 6, ptr %2, align 8, !tbaa !134
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.b, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.a, ptr %i.c, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !146
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.i = load i32, ptr %3, align 8, !tbaa !134
  %i.j = icmp eq i32 %i.i, 11
  br i1 %i.j, label %bb.b, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151
  store ptr %i.n, ptr %i.l, align 8, !tbaa !151
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  store ptr %i.p, ptr %i.q, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !147
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store ptr %i.t, ptr %i.e, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.u = phi ptr [ %i.t, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %4 = sdiv exact i64 %i.y, 48                    ; 2 uses
  %i.z = icmp ugt i64 %4, 100000
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc3 unwind label %bb.m

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.aa = load i32, ptr %3, align 8, !tbaa !134
  %i.ab = icmp eq i32 %i.aa, 11
  br i1 %i.ab, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.ai = load i32, ptr %2, align 8, !tbaa !134
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit5

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !152 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.al, null
  br i1 %.not.i.i4, label %_ZNSt8__detail6_StateIcED2Ev.exit5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit5 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit5:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %i.aq = add nsw i64 %4, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #26
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE19_M_insert_lookaheadElb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 7, ptr %3, align 8, !tbaa !134
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.b, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.a, ptr %i.d, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !146
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !147  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.j = load i32, ptr %4, align 8, !tbaa !134
  %i.k = icmp eq i32 %i.j, 11
  br i1 %i.k, label %bb.b, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !151
  store ptr %i.o, ptr %i.m, align 8, !tbaa !151
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !147
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.v = phi ptr [ %i.u, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %5 = sdiv exact i64 %i.z, 48                    ; 2 uses
  %i.aa = icmp ugt i64 %5, 100000
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc4 unwind label %bb.m

.noexc4:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ab = load i32, ptr %4, align 8, !tbaa !134
  %i.ac = icmp eq i32 %i.ab, 11
  br i1 %i.ac, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.aj = load i32, ptr %3, align 8, !tbaa !134
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit6

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !152 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit6, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit6 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit6:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %i.aq = add nsw i64 %5, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #26
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.d, align 8, !tbaa !151
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.c, align 8, !tbaa !152
  %i.e = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !155
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.e, ptr %i.g, align 8, !tbaa !156
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !133  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !157
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -24
  %.not.i.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !158
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.n, ptr %i.h, align 8, !tbaa !133
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.g

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !152  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !152  ; 2 uses
  %.not.i2 = icmp eq ptr %i.u, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !182, !nonnull !51, !align !170
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = ptrtoint ptr %i.d to i64
  store i64 %i.h, ptr %2, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.f, align 8, !tbaa !151
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.e, align 8, !tbaa !152
  %i.i = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !153
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !155
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.i, ptr %i.k, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !157
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -24
  %.not.i.i.i = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !158
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !133
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %i.l, align 8, !tbaa !133
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.g

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !152  ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !152  ; 2 uses
  %.not.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !182, !nonnull !51, !align !170
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_2
begin_hunk_3_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb1EEEvv:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !182, !nonnull !51, !align !170 ; 2 uses
  %i.h = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #26
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107  ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i.i.i.i, label %bb.b, label %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit: ; preds = %bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef signext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext %i.e), !inline_history !526
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.t, align 8
  store ptr %i.g, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.s, align 8, !tbaa !151
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.r, align 8, !tbaa !152
  %i.u = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.h       ; 2 uses

bb.c:                                             ; preds = %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit
  store ptr %i.b, ptr %1, align 8, !tbaa !153
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !155
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.u, ptr %i.w, align 8, !tbaa !156
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !133  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !157
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -24
  %.not.i.i.i = icmp eq ptr %i.y, %i.ab
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !158
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !133
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !133
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.h

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.d, %bb.e
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !152 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.h:                                             ; preds = %bb.e, %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !152 ; 2 uses
  %.not.i2 = icmp eq ptr %i.ak, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_backrefEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !179
  %i.c = and i32 %i.b, 1024
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 11, ptr noundef nonnull @.str.32) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !141
  %.not8 = icmp ult i64 %1, %i.e
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.33) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !159    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !159  ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.012.015, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.h
  br i1 %i.k, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %.lr.ph

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.l, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 3, ptr %2, align 8, !tbaa !134
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.m, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %1, ptr %i.n, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !146
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !147  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.t = load i32, ptr %3, align 8, !tbaa !134
  %i.u = icmp eq i32 %i.t, 11
  br i1 %i.u, label %bb.h, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 24, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !151
  store ptr %i.y, ptr %i.w, align 8, !tbaa !151
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !147
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr %i.q, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.af = phi ptr [ %i.ae, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !118
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %4 = sdiv exact i64 %i.aj, 48                   ; 2 uses
  %i.ak = icmp ugt i64 %4, 100000
  br i1 %i.ak, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc9 unwind label %bb.t

.noexc9:                                          ; preds = %bb.k
  unreachable

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.012.015 = phi ptr [ %i.j, %bb.f ], [ %i.f, %bb.e ] ; 2 uses
  %i.al = load i64, ptr %.sroa.012.015, align 8, !tbaa !128
  %i.am = icmp eq i64 %1, %i.al
  br i1 %i.am, label %bb.l, label %bb.f

bb.l:                                             ; preds = %.lr.ph
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.34) #30
  unreachable

bb.m:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.an = load i32, ptr %3, align 8, !tbaa !134
  %i.ao = icmp eq i32 %i.an, 11
  br i1 %i.ao, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.m, %bb.n, %bb.o
  %i.av = load i32, ptr %2, align 8, !tbaa !134
  %i.aw = icmp eq i32 %i.av, 11
  br i1 %i.aw, label %bb.q, label %_ZNSt8__detail6_StateIcED2Ev.exit11

bb.q:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !152 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i10, label %_ZNSt8__detail6_StateIcED2Ev.exit11, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit11 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit11:              ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.q, %bb.r
  %i.bc = add nsw i64 %4, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i64 %i.bc

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #26
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.bd
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load i64, ptr %i.c, align 8, !tbaa !99   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %bb.e ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.e ]
  %.sroa.08.012 = phi ptr [ %i.b, %.lr.ph ], [ %i.q, %bb.e ] ; 2 uses
  %i.h = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.013, i32 %1) ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  %i.k = load i8, ptr %.sroa.08.012, align 1, !tbaa !57
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !182, !nonnull !51, !align !170
  %i.m = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext %i.k, i32 noundef %1)
  %i.n = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 %i.m) ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.35) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = extractvalue { i32, i1 } %i.n, 0         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 1 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher", align 16 ; 22 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197, !nonnull !51, !align !170
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !178
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !182, !nonnull !51, !align !170 ; 2 uses
  %i.m = lshr i16 %i.j, 8
  %i.n = trunc nuw i16 %i.m to i8
  %i.o = and i8 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 99, i1 false)
  store ptr %i.l, ptr %i.p, align 8, !tbaa !100
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 %i.o, ptr %i.q, align 16, !tbaa !220
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = load i64, ptr %i.s, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  %i.v = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.o     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.w = and i32 %i.v, 131071
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.36) #30
          to label %.noexc6 unwind label %bb.o

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.04.0.insert.ext.i = lshr i32 %i.v, 16
  %i.z = load i16, ptr %i.y, align 16, !tbaa !221
  %i.aa = trunc i32 %i.v to i16
  %i.ab = or i16 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !222
  %i.ae = trunc i32 %.sroa.04.0.insert.ext.i to i8
  %i.af = or i8 %i.ad, %i.ae
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %i.af to i32
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.ab to i32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.ag = trunc nuw i32 %.sroa.0.0.insert.insert.i.i.i to i24
  store i24 %i.ag, ptr %i.y, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !97 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.al = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #29
          to label %bb.e unwind label %bb.p       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load <2 x ptr>, ptr %1, align 16, !tbaa !223
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !223
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !224
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !tbaa !52
  store <2 x ptr> %i.au, ptr %i.ar, align 8, !tbaa !52
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !225
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 16, !tbaa !226
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !226
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !227
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bg = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !228
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !tbaa !228
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !229
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !229
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 16 dereferenceable(56) %i.y, i64 56, i1 false)
  store ptr %i.al, ptr %3, align 8, !tbaa !231
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.am, align 8, !tbaa !151
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ak, align 8, !tbaa !152
  %i.bl = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.aj, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.q       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.aj, ptr %2, align 8, !tbaa !153
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !155
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !156
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !133 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !157
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bp, %i.bs
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !158
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !133
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !133
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

end_hunk_3
begin_hunk_4_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE21_M_bracket_expressionEv:bb.a
bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !122
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !125
  switch i32 %i.m, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.a
  %i.n = icmp eq i32 %i.c, 9
  br i1 %i.n, label %bb.h, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.h:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !123
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 27, ptr %i.b, align 8, !tbaa !122
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load i32, ptr %i.v, align 8, !tbaa !125
  switch i32 %i.w, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.m:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = load i32, ptr %0, align 8, !tbaa !96     ; 2 uses
  %i.y = and i32 %i.x, 1
  %.not = icmp eq i32 %i.y, 0
  %i.z = and i32 %i.x, 8
  %.not6 = icmp eq i32 %i.z, 0                    ; 2 uses
  br i1 %.not, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.p:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.q:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.s:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, %bb.p, %bb.o, %bb.s, %bb.r
  %.0 = phi i1 [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.o ], [ false, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofreeobj noundef align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 11 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 11, ptr %3, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152  ; 3 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.f, null      ; 2 uses
  br i1 %.not.i.i.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.d, ptr %i.h, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 16, i1 false), !tbaa.struct !146
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr %i.j, align 8, !tbaa !151
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !180
  store ptr %i.f, ptr %i.k, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !147  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !146
  %i.q = load i32, ptr %4, align 8, !tbaa !134
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %bb.f, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !151
  store ptr %i.v, ptr %i.t, align 8, !tbaa !151
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 16, i1 false), !tbaa.struct !180
  store ptr %i.x, ptr %i.z, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !147
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.h:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !118
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %5 = sdiv exact i64 %i.ag, 48                   ; 2 uses
  %i.ah = icmp ugt i64 %5, 100000
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc4 unwind label %bb.q

.noexc4:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ai = load i32, ptr %4, align 8, !tbaa !134
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.k, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !152 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.al, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.j, %bb.k, %bb.l
  %i.aq = load i32, ptr %3, align 8, !tbaa !134
  %i.ar = icmp eq i32 %i.aq, 11
  br i1 %i.ar, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit7

bb.n:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !152 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.as, null
  br i1 %.not.i.i6, label %_ZNSt8__detail6_StateIcED2Ev.exit7, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit7 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit7:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.n, %bb.o
  %i.aw = add nsw i64 %5, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i64 %i.aw

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #26
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !57
  %i.b = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, !prof !262

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul) #26
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul, align 1, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul) #26
  br label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul, align 1, !tbaa !57
  %i.f = icmp ne i8 %i.a, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEE, ptr %0, align 8, !tbaa !264
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !528
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 8
  store i8 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !57
  %i.b = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, !prof !262

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul) #26
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul, align 1, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul) #26
  br label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul, align 1, !tbaa !57
  %i.f = icmp ne i8 %i.a, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEE, ptr %0, align 8, !tbaa !264
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !530
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !57
  %i.b = tail call noundef zeroext i1 @_ZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEE, ptr %0, align 8, !tbaa !264
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !532
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !262

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef signext i8 @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  store i8 %i.d, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul, align 1, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !51, !align !170
  %i.f = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #26
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.not.i.i.i, label %bb.f, label %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit: ; preds = %bb.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext %1), !inline_history !6
  %i.p = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul, align 1, !tbaa !57
  %i.q = icmp ne i8 %i.o, %i.p
  ret i1 %i.q

end_hunk_4
begin_hunk_5_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE13_M_make_rangeEcc:bb.a
  %i.bl = load i64, ptr %i.ad, align 8, !tbaa !57
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.am, ptr %i.bm, align 8, !tbaa !99
  store ptr %i.ad, ptr %5, align 8, !tbaa !56
  store i64 0, ptr %i.ao, align 8, !tbaa !99
  store i8 0, ptr %i.ad, align 8, !tbaa !57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 48 ; 3 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !98
  %i.bp = load ptr, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.aq
  br i1 %i.bq, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !99 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !56
  %i.bu = load i64, ptr %i.aq, align 8, !tbaa !57
  store i64 %i.bu, ptr %i.bo, align 8, !tbaa !57
  %.pre = load i64, ptr %i.bb, align 8, !tbaa !99
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i
  %i.bv = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i ], [ %i.br, %bb.l ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !99
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !56
  store i64 0, ptr %i.bb, align 8, !tbaa !99
  store i8 0, ptr %i.aq, align 8, !tbaa !57
  %i.bx = load ptr, ptr %i.bc, align 8, !tbaa !286
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  store ptr %i.by, ptr %i.bc, align 8, !tbaa !286
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.m:                                             ; preds = %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.n

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.m
  %.pre26 = load ptr, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.bz = icmp eq ptr %.pre26, %i.aq
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ca = load i64, ptr %i.aq, align 8, !tbaa !57
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %.pre26, i64 noundef %i.cb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  %i.cc = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ad
  br i1 %i.cd, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ce = load i64, ptr %i.ad, align 8, !tbaa !57
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #27
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cg = load ptr, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.as
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.ci = load i64, ptr %i.as, align 8, !tbaa !57
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.ck = load ptr, ptr %6, align 8, !tbaa !56    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.af
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = load i64, ptr %i.af, align 8, !tbaa !57
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.n:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #26
  %i.cp = load ptr, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.n
  %i.cr = load i64, ptr %i.as, align 8, !tbaa !57
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #27
  br label %.body

.body:                                            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i9
  %.pn = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i9 ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.co, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.ct = load ptr, ptr %6, align 8, !tbaa !56    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %.body
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !57
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 2, ptr %4, align 8, !tbaa !134
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %2, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.a, ptr %i.d, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !146
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !147  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.j = load i32, ptr %5, align 8, !tbaa !134
  %i.k = icmp eq i32 %i.j, 11
  br i1 %i.k, label %bb.b, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !151
  store ptr %i.o, ptr %i.m, align 8, !tbaa !151
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !147
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.v = phi ptr [ %i.u, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %6 = sdiv exact i64 %i.z, 48                    ; 2 uses
  %i.aa = icmp ugt i64 %6, 100000
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc5 unwind label %bb.m

.noexc5:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ab = load i32, ptr %5, align 8, !tbaa !134
  %i.ac = icmp eq i32 %i.ab, 11
  br i1 %i.ac, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.aj = load i32, ptr %4, align 8, !tbaa !134
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit7

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !152 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.am, null
  br i1 %.not.i.i6, label %_ZNSt8__detail6_StateIcED2Ev.exit7, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit7 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit7:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %i.aq = add nsw i64 %6, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEE8_M_cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::__detail::_StateSeq") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::map", align 8          ; 13 uses
  %3 = alloca %"class.std::stack.122", align 8    ; 19 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 19 uses
  store i32 0, ptr %i.b, align 8, !tbaa !724
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr null, ptr %i.c, align 8, !tbaa !306
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !307
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !725
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !308
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIlSaIlEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit unwind label %bb.ab

_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit:    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !188  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %.not.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit
  %i.m = load i64, ptr %i.g, align 8, !tbaa !128
  store i64 %i.m, ptr %i.i, align 8, !tbaa !128
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !188
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

bb.c:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge unwind label %bb.ac

._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !185
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit:     ; preds = %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge, %bb.b
  %i.o = phi ptr [ %.pre, %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge ], [ %i.n, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !185
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt8__detail6_StateIcED2Ev.exit55
  %i.ac = phi ptr [ %i.o, %.lr.ph ], [ %i.dz, %_ZNSt8__detail6_StateIcED2Ev.exit55 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !186, !noalias !726 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !128 ; 2 uses
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !128
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !190, !noalias !726
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !159
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 504
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !128
  store i64 %i.al, ptr %i.a, align 8, !tbaa !128
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef 512) #27
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !191
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  store ptr %i.an, ptr %i.t, align 8, !tbaa !190
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !159 ; 3 uses
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !186
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !192
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 504
  %.pre108 = load i64, ptr %i.a, align 8, !tbaa !128
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit:        ; preds = %bb.e, %bb.f
  %i.ar = phi i64 [ %i.ag, %bb.e ], [ %.pre108, %bb.f ]
  %storemerge.i.i = phi ptr [ %i.af, %bb.e ], [ %i.aq, %bb.f ]
  store ptr %storemerge.i.i, ptr %i.h, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.as = load ptr, ptr %1, align 8, !tbaa !181, !nonnull !51, !align !170 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.au, i64 %i.ar ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.av, i64 48, i1 false), !tbaa.struct !146
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !134
  %i.ax = icmp eq i32 %i.aw, 11
  br i1 %i.ax, label %bb.g, label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit

bb.g:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i32 noundef 2)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bc = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !70
  store <2 x ptr> %i.bc, ptr %i.v, align 8, !tbaa !70
  %.pre109 = load ptr, ptr %1, align 8, !tbaa !181
  br label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %i.v, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = invoke noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #28
  unreachable

_ZNSt8__detail6_StateIcEC2ERKS1_.exit:            ; preds = %bb.i, %bb.g, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.bi = phi ptr [ %.pre109, %bb.i ], [ %i.as, %bb.g ], [ %i.as, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !146
  %i.bj = load i32, ptr %4, align 8, !tbaa !134
  %i.bk = icmp eq i32 %i.bj, 11
  br i1 %i.bk, label %bb.m, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

bb.m:                                             ; preds = %_ZNSt8__detail6_StateIcEC2ERKS1_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.w, align 8, !tbaa !151
  store ptr %i.bl, ptr %i.y, align 8, !tbaa !151
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.not.i.i30 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.not.i.i30, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false), !tbaa.struct !180
  store ptr %i.bm, ptr %i.z, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %_ZNSt8__detail6_StateIcEC2ERKS1_.exit, %bb.m, %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 64 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !147 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !148
  %.not.i.i.i31 = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i31, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !146
  %i.bs = load i32, ptr %5, align 8, !tbaa !134
  %i.bt = icmp eq i32 %i.bs, 11
  br i1 %i.bt, label %bb.p, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i8 0, i64 24, i1 false)
  %i.bw = load ptr, ptr %i.y, align 8, !tbaa !151
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !151
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !152
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 16, i1 false), !tbaa.struct !180
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !152
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !147
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  store ptr %i.cb, ptr %i.bo, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.r:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %bb.r
  %.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc32, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.cc = phi ptr [ %i.cb, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %.noexc32 ]
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !118
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %6 = sdiv exact i64 %i.cg, 48                   ; 2 uses
  %i.ch = icmp ugt i64 %6, 100000
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.31) #30
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ci = add nsw i64 %6, -1
  %i.cj = load i32, ptr %5, align 8, !tbaa !134
  %i.ck = icmp eq i32 %i.cj, 11
  br i1 %i.ck, label %bb.u, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %i.z, align 8, !tbaa !152 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i34, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.t, %bb.u, %bb.v
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  store i64 %i.ci, ptr %i.cp, align 8, !tbaa !128
  %i.cq = load i32, ptr %4, align 8, !tbaa !134
  switch i32 %i.cq, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38 [
    i32 1, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
    i32 2, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
    i32 7, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  ]

_ZNKSt8__detail11_State_base10_M_has_altEv.exit:  ; preds = %bb.x, %bb.x, %bb.x
  %i.cr = load i64, ptr %i.u, align 8             ; 4 uses
  %.not89 = icmp eq i64 %i.cr, -1
  br i1 %.not89, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38, label %bb.y

bb.y:                                             ; preds = %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !306 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cs, %bb.y ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.y ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !128
  %i.cv = icmp slt i64 %i.cu, %i.cr               ; 3 uses
  %.19.i.i.i = select i1 %i.cv, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !309 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i35, label %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !722

_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cw = icmp eq ptr %.19.i.i.i, %i.b
  br i1 %i.cw, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cv, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cx = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !128
  %.not90 = icmp slt i64 %i.cr, %i.cx
  br i1 %.not90, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.y, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !188 ; 3 uses
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !189
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %.not.i.i36 = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i.i36, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread
  store i64 %i.cr, ptr %i.cy, align 8, !tbaa !128
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.db, ptr %i.h, align 8, !tbaa !188
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38

bb.aa:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38 unwind label %bb.ae

bb.ab:                                            ; preds = %bb.a
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ac:                                            ; preds = %bb.c, %bb.at, %._crit_edge104
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  br label %bb.am

bb.ae:                                            ; preds = %bb.ai, %bb.aa, %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38:   ; preds = %bb.x, %bb.z, %bb.aa, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit, %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  %i.df = load i64, ptr %i.a, align 8, !tbaa !128
  %i.dg = load i64, ptr %i.aa, align 8, !tbaa !156
  %i.dh = icmp eq i64 %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, label %bb.af, !llvm.loop !723

bb.af:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38
  %i.di = load i64, ptr %i.ab, align 8, !tbaa !121 ; 4 uses
  %.not23 = icmp eq i64 %i.di, -1
  br i1 %.not23, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = load ptr, ptr %i.c, align 8, !tbaa !306 ; 2 uses
  %.not10.i.i.i39 = icmp eq ptr %i.dj, null
  br i1 %.not10.i.i.i39, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %bb.ag, %.lr.ph.i.i.i40
  %.012.i.i.i41 = phi ptr [ %.1.i.i.i46, %.lr.ph.i.i.i40 ], [ %i.dj, %bb.ag ] ; 4 uses
  %.0811.i.i.i42 = phi ptr [ %.19.i.i.i43, %.lr.ph.i.i.i40 ], [ %i.b, %bb.ag ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i41, i64 32
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !128
  %i.dm = icmp slt i64 %i.dl, %i.di               ; 3 uses
  %.19.i.i.i43 = select i1 %i.dm, ptr %.0811.i.i.i42, ptr %.012.i.i.i41 ; 2 uses
  %.1.in.v.i.i.i44 = select i1 %i.dm, i64 24, i64 16
  %.1.in.i.i.i45 = getelementptr inbounds nuw i8, ptr %.012.i.i.i41, i64 %.1.in.v.i.i.i44
  %.1.i.i.i46 = load ptr, ptr %.1.in.i.i.i45, align 8, !tbaa !309 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %.1.i.i.i46, null
  br i1 %.not.i.i.i47, label %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48, label %.lr.ph.i.i.i40, !llvm.loop !722

_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48: ; preds = %.lr.ph.i.i.i40
  %i.dn = icmp eq ptr %.19.i.i.i43, %i.b
  br i1 %i.dn, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48
  %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dm, ptr %.0811.i.i.i42, ptr %.012.i.i.i41
  %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.do = load i64, ptr %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !128
  %.not91 = icmp slt i64 %i.di, %i.do
  br i1 %.not91, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48, %bb.ag, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !188 ; 3 uses
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !189
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %.not.i.i51 = icmp eq ptr %i.dp, %i.dr
  br i1 %.not.i.i51, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread
  store i64 %i.di, ptr %i.dp, align 8, !tbaa !128
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.ds, ptr %i.h, align 8, !tbaa !188
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53

bb.ai:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53 unwind label %bb.ae

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53:   ; preds = %bb.ah, %bb.ai, %bb.af, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50, %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38
  %i.dt = load i32, ptr %4, align 8, !tbaa !134
  %i.du = icmp eq i32 %i.dt, 11
  br i1 %i.du, label %bb.aj, label %_ZNSt8__detail6_StateIcED2Ev.exit55

bb.aj:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53
  %i.dv = load ptr, ptr %i.v, align 8, !tbaa !152 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i54, label %_ZNSt8__detail6_StateIcED2Ev.exit55, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = invoke noundef zeroext i1 %i.dv(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit55 unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #28
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit55:              ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dz = load ptr, ptr %i.h, align 8, !tbaa !185 ; 2 uses
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !185
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %._crit_edge, label %bb.d

end_hunk_5
begin_hunk_6_@_ZNSt8__detail17__regex_algo_implIPKcSaINSt7__cxx119sub_matchIS2_EEEcNS3_12regex_traitsIcEEEEbT_S9_RNS3_13match_resultsIS9_T0_EERKNS3_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !141
  %i.f = add i64 %i.e, 3
  %i.g = and i64 %i.f, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %7, i8 0, i64 17, i1 false)
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(17) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.h = load i32, ptr %3, align 8, !tbaa !76
  %i.i = and i32 %i.h, 1024
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %5, 1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !313 ; 5 uses
  br i1 %i.j, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.l = load i8, ptr %i.k, align 8, !tbaa !196, !range !50, !noundef !51
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EEC2ES2_S2_RSt6vectorIS5_S6_ERKNS3_11basic_regexIcS8_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %8, ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4)
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !333
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !334
  br i1 %6, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %8, i8 noundef zeroext 0)
          to label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.f, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.r = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %8, i8 noundef zeroext 1)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  br i1 %i.r, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !335  ; 2 uses
  %i.u = and i32 %i.t, 64
  %.not.i65 = icmp eq i32 %i.u, 0
  br i1 %.not.i65, label %bb.j, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.j:                                             ; preds = %bb.i
  %i.v = or i32 %i.t, 128
  store i32 %i.v, ptr %i.s, align 8, !tbaa !336
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.noexc66, %bb.j
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !333  ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !337
  %.not3.not.i.not.not = icmp ne ptr %i.x, %i.y   ; 3 uses
  br i1 %.not3.not.i.not.not, label %bb.l, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !333
  store ptr %i.z, ptr %i.p, align 8, !tbaa !334
  %i.aa = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %8, i8 noundef zeroext 1)
          to label %.noexc66 unwind label %.loopexit

.noexc66:                                         ; preds = %bb.l
  br i1 %i.aa, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.k, !llvm.loop !734

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit: ; preds = %.noexc66, %bb.k, %bb.i, %.noexc, %bb.f
  %.062.in = phi i1 [ %i.q, %bb.f ], [ false, %bb.i ], [ true, %.noexc ], [ %.not3.not.i.not.not, %bb.k ], [ %.not3.not.i.not.not, %.noexc66 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !338 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !339 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !340 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ap, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i ], [ %i.af, %bb.n ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !61
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #27
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !22

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.n
  %i.aq = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.af, %bb.n ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !341
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #27
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i: ; preds = %bb.p, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !342 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !343
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #27
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.q, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.bd = load ptr, ptr %8, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !61
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #27
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br i1 %.062.in, label %bb.aa, label %bb.af

bb.s:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %9, i8 0, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %0, ptr %i.bj, align 8, !tbaa !346
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %1, ptr %i.bk, align 8, !tbaa !347
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %3, ptr %i.bl, align 8, !tbaa !348
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %.pre, ptr %i.bm, align 8, !tbaa !153
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %2, ptr %i.bn, align 8, !tbaa !349
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !147 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !118 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 48                ; 7 uses
  %10 = icmp ugt i64 %i.bw, 576460752303423487
  br i1 %10, label %.noexc.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

.noexc.i:                                         ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #30
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i67 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i.i.i.i67, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.bx = shl nuw nsw i64 %i.bw, 4
  %i.by = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #29 ; 4 uses
  store ptr %i.by, ptr %i.bo, align 8, !tbaa !342
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !343
  %xtraiter = and i64 %i.bw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.by, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bw, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !351
  %i.cb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.cb, align 8, !tbaa !352
  %i.cc = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !735

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.by, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.bw, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ce = icmp ult i64 %i.bw, 8
  br i1 %i.ce, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !351
  %i.cf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.cf, align 8, !tbaa !352
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.cg, align 8, !tbaa !351
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ch, align 8, !tbaa !352
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ci, align 8, !tbaa !351
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.cj, align 8, !tbaa !352
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.ck, align 8, !tbaa !351
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.cl, align 8, !tbaa !352
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.cm, align 8, !tbaa !351
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.cn, align 8, !tbaa !352
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.co, align 8, !tbaa !351
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.cp, align 8, !tbaa !352
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.cq, align 8, !tbaa !351
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.cr, align 8, !tbaa !352
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.cs, align 8, !tbaa !351
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.ct, align 8, !tbaa !352
  %i.cu = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !23

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cv, %.lr.ph.i.i.i.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cw, align 8, !tbaa !353
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !115
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !738
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.db = and i32 %4, 128
  %.not.i69 = icmp eq i32 %i.db, 0
  %i.dc = and i32 %4, -6
  %spec.select = select i1 %.not.i69, i32 %4, i32 %i.dc
  store i32 %spec.select, ptr %i.da, align 8, !tbaa !336
  br i1 %6, label %bb.t, label %bb.v

common.resume:                                    ; preds = %bb.g, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.g ], [ %i.dk, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %.loopexit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %0, ptr %i.dd, align 8, !tbaa !354
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 116 ; 2 uses
  store i8 0, ptr %i.de, align 4, !tbaa !355
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 104
  store ptr null, ptr %i.df, align 8, !tbaa !223
  %i.dg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %9, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc70 unwind label %bb.u   ; 0 uses

.noexc70:                                         ; preds = %bb.t
  %i.dh = load i64, ptr %i.cx, align 8, !tbaa !356
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %9, i8 noundef zeroext 0, i64 noundef %i.dh)
          to label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE8_M_matchEv.exit unwind label %bb.u

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE8_M_matchEv.exit: ; preds = %.noexc70
  %i.di = load i8, ptr %i.de, align 4, !tbaa !355, !range !50, !noundef !51
  %i.dj = trunc nuw i8 %i.di to i1
  br label %bb.w

bb.u:                                             ; preds = %.noexc70, %bb.t, %bb.v
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %common.resume

bb.v:                                             ; preds = %.loopexit.i
  %i.dl = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %9)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE8_M_matchEv.exit, %bb.v
  %.1.in = phi i1 [ %i.dj, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE8_M_matchEv.exit ], [ %i.dl, %bb.v ]
  %i.dm = load ptr, ptr %i.bo, align 8, !tbaa !342 ; 3 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i72, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i73, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !343
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #27
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i73

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i73:  ; preds = %bb.x, %bb.w
  %i.ds = load ptr, ptr %9, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i1.i74 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i1.i74, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i73
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !61
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %.1.in, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  %i.dy = load ptr, ptr %2, align 8, !tbaa !357   ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !357 ; 3 uses
  %i.eb = icmp eq ptr %i.dy, %i.ea
  br i1 %i.eb, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ac, %bb.aa
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.dy to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr i8, ptr %i.dy, i64 %i.ee  ; 10 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -48    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ef, i64 -24    ; 2 uses
  br i1 %6, label %bb.ad, label %bb.ae

.lr.ph:                                           ; preds = %bb.aa, %bb.ac
  %.sroa.076.081 = phi ptr [ %i.em, %bb.ac ], [ %i.dy, %bb.aa ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.076.081, i64 16
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !360, !range !50, !noundef !51
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.076.081, i64 8
  store ptr %1, ptr %i.el, align 8, !tbaa !361
  store ptr %1, ptr %.sroa.076.081, align 8, !tbaa !362
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.076.081, i64 24 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ea
  br i1 %i.en, label %._crit_edge, label %.lr.ph

bb.ad:                                            ; preds = %._crit_edge
  %i.eo = getelementptr i8, ptr %i.ef, i64 -32
  store i8 0, ptr %i.eo, align 8, !tbaa !360
  store ptr %0, ptr %i.eg, align 8, !tbaa !362
  %i.ep = getelementptr i8, ptr %i.ef, i64 -40
  store ptr %0, ptr %i.ep, align 8, !tbaa !361
  %i.eq = getelementptr i8, ptr %i.ef, i64 -8
  store i8 0, ptr %i.eq, align 8, !tbaa !360
  store ptr %1, ptr %i.eh, align 8, !tbaa !362
  %i.er = getelementptr i8, ptr %i.ef, i64 -16
  store ptr %1, ptr %i.er, align 8, !tbaa !361
  br label %bb.ag

bb.ae:                                            ; preds = %._crit_edge
  store ptr %0, ptr %i.eg, align 8, !tbaa !362
  %i.es = load ptr, ptr %i.dy, align 8, !tbaa !362 ; 2 uses
  %i.et = getelementptr i8, ptr %i.ef, i64 -40
  store ptr %i.es, ptr %i.et, align 8, !tbaa !361
  %i.eu = icmp ne ptr %0, %i.es
  %i.ev = getelementptr i8, ptr %i.ef, i64 -32
  %i.ew = zext i1 %i.eu to i8
  store i8 %i.ew, ptr %i.ev, align 8, !tbaa !360
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !361 ; 2 uses
  store ptr %i.ey, ptr %i.eh, align 8, !tbaa !362
  %i.ez = getelementptr i8, ptr %i.ef, i64 -16
  store ptr %1, ptr %i.ez, align 8, !tbaa !361
  %i.fa = icmp ne ptr %i.ey, %1
  %i.fb = getelementptr i8, ptr %i.ef, i64 -8
  %i.fc = zext i1 %i.fa to i8
  store i8 %i.fc, ptr %i.fb, align 8, !tbaa !360
  br label %bb.ag

bb.af:                                            ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  call void @_ZNSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE25_M_establish_failed_matchES2_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.a
  %.063 = phi i1 [ false, %bb.a ], [ true, %bb.ad ], [ true, %bb.ae ], [ false, %bb.af ]
  ret i1 %.063
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EEC2ES2_S2_RSt6vectorIS5_S6_ERKNS3_11basic_regexIcS8_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !333
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.b, align 8, !tbaa !337
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %i.c, align 8, !tbaa !348
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !313  ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.g, align 8, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !147  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !118  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 48                  ; 7 uses
  %6 = icmp ugt i64 %i.p, 576460752303423487
  br i1 %6, label %bb.b, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #30
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #29
          to label %.noexc12 unwind label %bb.d   ; 4 uses

.noexc12:                                         ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i
  store ptr %i.r, ptr %i.h, align 8, !tbaa !342
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.s, ptr %i.t, align 8, !tbaa !343
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc12, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.prol ], [ %i.r, %.noexc12 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.noexc12 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc12 ]
  store ptr null, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !351
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !352
  %i.v = add i64 %.01012.i.i.i.i.i.prol, -1       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !739

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc12
  %.lcssa.unr = phi ptr [ poison, %.noexc12 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.r, %.noexc12 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.p, %.noexc12 ], [ %i.v, %.lr.ph.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %i.p, 8
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i, align 8, !tbaa !351
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !352
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store ptr null, ptr %i.z, align 8, !tbaa !351
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i32 0, ptr %i.aa, align 8, !tbaa !352
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ab, align 8, !tbaa !351
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i32 0, ptr %i.ac, align 8, !tbaa !352
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store ptr null, ptr %i.ad, align 8, !tbaa !351
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i32 0, ptr %i.ae, align 8, !tbaa !352
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store ptr null, ptr %i.af, align 8, !tbaa !351
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i32 0, ptr %i.ag, align 8, !tbaa !352
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store ptr null, ptr %i.ah, align 8, !tbaa !351
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i32 0, ptr %i.ai, align 8, !tbaa !352
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store ptr null, ptr %i.aj, align 8, !tbaa !351
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i32 0, ptr %i.ak, align 8, !tbaa !352
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store ptr null, ptr %i.al, align 8, !tbaa !351
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i32 0, ptr %i.am, align 8, !tbaa !352
  %i.an = add i64 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !23

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !353
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !115
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !147
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 48                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i8 0, i64 24, i1 false)
  %i.az = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #29
          to label %bb.c unwind label %.body      ; 2 uses

.body:                                            ; preds = %.loopexit
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.aq) #26
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !342 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, label %bb.e

bb.c:                                             ; preds = %.loopexit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ay, i1 false)
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !338
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.as, ptr %i.bd, align 8, !tbaa !740
  %i.be = and i32 %5, 128
  %.not = icmp eq i32 %i.be, 0
  %i.bf = and i32 %5, -6
  %spec.select = select i1 %.not, i32 %5, i32 %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %spec.select, ptr %i.bg, align 8, !tbaa !336
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i, %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %.body
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !343
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bb to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bm) #27
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit:      ; preds = %bb.e, %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.d ], [ %i.ba, %.body ], [ %i.ba, %bb.e ]
  %i.bn = load ptr, ptr %0, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !61
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #27
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !338  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !339  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !340  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #27
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !341
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !342  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !343
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit:      ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit, %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit
end_hunk_6
begin_hunk_7_@_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_:bb.a
  %.09.i.i.i.i.unr = phi ptr [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %i.ah, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.af, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %i.ag, %.lr.ph.i.i.i.i12.prol ]
  %i.ai = sub i64 %i.z, %1
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.an = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !745

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12, %.lr.ph.i.i.i.i12.prol.loopexit
  %.lcssa30 = phi ptr [ %.lcssa30.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i.i12 ]
  store ptr %.lcssa30, ptr %i.v, align 8, !tbaa !365
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.ap = icmp eq i64 %1, 0
  br i1 %i.ap, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 24              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load <2 x ptr>, ptr %2, align 8, !tbaa !223 ; 9 uses
  %.pre8.i.i.i.i17 = load i8, ptr %i.ar, align 8, !tbaa !360, !range !50 ; 9 uses
  %i.at = add nsw i64 %.idx.i.i, -24              ; 2 uses
  %i.au = udiv i64 %i.at, 24
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i14, %.prol.preheader
  %.06.i.i.i.i18.prol = phi ptr [ %i.ax, %.prol.preheader ], [ %i.c, %.lr.ph.i.i.i.i14 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i14 ]
  store <2 x ptr> %i.as, ptr %.06.i.i.i.i18.prol, align 8, !tbaa !223
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18.prol, i64 16
  store i8 %.pre8.i.i.i.i17, ptr %i.aw, align 8, !tbaa !360
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !747

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i18.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.ax, %.prol.preheader ]
  %i.ay = icmp ult i64 %i.at, 168
  br i1 %i.ay, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new

.lr.ph.i.i.i.i14.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new
  %.06.i.i.i.i18 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i14.new ], [ %.06.i.i.i.i18.unr, %.prol.loopexit ] ; 17 uses
  store <2 x ptr> %i.as, ptr %.06.i.i.i.i18, align 8, !tbaa !223
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 16
  store i8 %.pre8.i.i.i.i17, ptr %i.az, align 8, !tbaa !360
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 24
  store <2 x ptr> %i.as, ptr %i.ba, align 8, !tbaa !223
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 40
  store i8 %.pre8.i.i.i.i17, ptr %i.bb, align 8, !tbaa !360
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 48
  store <2 x ptr> %i.as, ptr %i.bc, align 8, !tbaa !223
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 64
  store i8 %.pre8.i.i.i.i17, ptr %i.bd, align 8, !tbaa !360
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 72
  store <2 x ptr> %i.as, ptr %i.be, align 8, !tbaa !223
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 88
  store i8 %.pre8.i.i.i.i17, ptr %i.bf, align 8, !tbaa !360
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 96
  store <2 x ptr> %i.as, ptr %i.bg, align 8, !tbaa !223
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 112
  store i8 %.pre8.i.i.i.i17, ptr %i.bh, align 8, !tbaa !360
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 120
  store <2 x ptr> %i.as, ptr %i.bi, align 8, !tbaa !223
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 136
  store i8 %.pre8.i.i.i.i17, ptr %i.bj, align 8, !tbaa !360
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 144
  store <2 x ptr> %i.as, ptr %i.bk, align 8, !tbaa !223
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 160
  store i8 %.pre8.i.i.i.i17, ptr %i.bl, align 8, !tbaa !360
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 168
  store <2 x ptr> %i.as, ptr %i.bm, align 8, !tbaa !223
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 184
  store i8 %.pre8.i.i.i.i17, ptr %i.bn, align 8, !tbaa !360
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 192 ; 2 uses
  %.not.i.i.i.i19.7 = icmp eq ptr %i.bo, %i.aq
  br i1 %.not.i.i.i.i19.7, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new, !llvm.loop !24

_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new, %bb.h
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.aq, %.lr.ph.i.i.i.i14.new ], [ %i.aq, %.prol.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.w, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !365
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !339    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !340  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !22

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !341
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #27
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::vector.156", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !366  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !367, !nonnull !51, !align !170 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !340  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !341
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.h, align 8, !tbaa !369
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !365  ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = sdiv exact i64 %i.q, 24
  %i.r = icmp ugt i64 %3, 384307168202282325
  br i1 %i.r, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !69

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #29
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.t = phi ptr [ null, %bb.b ], [ %i.s, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.t, ptr %i.k, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !365
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !61
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !357  ; 2 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !357  ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEJRlRKS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.x, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.y
  br i1 %i.ac, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEJRlRKS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !25

_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEJRlRKS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !365
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !340
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !340
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit

bb.e:                                             ; preds = %bb.a
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE17_M_realloc_insertIJRlRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit: ; preds = %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEJRlRKS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = icmp eq i8 %1, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit
  %.012 = phi i8 [ 0, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit ], [ %.1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit ] ; 3 uses
  store i8 0, ptr %i.af, align 4, !tbaa !370
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !748 ; 7 uses
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !748 ; 4 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !371, !nonnull !51, !align !170 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !147 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !118 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %.lr.ph.preheader, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 48
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !749
  call void @llvm.memset.p0.i64(ptr align 1 %i.bb, i8 0, i64 %i.ba, i1 false), !tbaa !372
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.ao, ptr %2, align 8, !tbaa !339
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !340
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !341 ; 2 uses
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !341
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i
  br i1 %i.al, label %bb.k, label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.sroa.019.025 = phi ptr [ %i.bn, %bb.i ], [ %i.ao, %.lr.ph.preheader ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.019.025, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.019.025, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !61
  %i.bg = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.bh = load ptr, ptr %0, align 8, !tbaa !60    ; 3 uses
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !61
  store <2 x ptr> %i.bg, ptr %0, align 8, !tbaa !357
  store ptr %i.bf, ptr %i.ak, align 8, !tbaa !61
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %bb.h, %.lr.ph
  %i.bm = load i64, ptr %.sroa.019.025, align 8, !tbaa !369
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bm)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.019.025, i64 32 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ap
  br i1 %i.bo, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.bp

bb.k:                                             ; preds = %._crit_edge
  %i.bq = load i8, ptr %i.af, align 4, !tbaa !370, !range !50, !noundef !51
  %i.br = or i8 %i.bq, %.012
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.1 = phi i8 [ %i.br, %bb.k ], [ %.012, %._crit_edge ] ; 2 uses
  %i.bs = load ptr, ptr %i.am, align 8, !tbaa !334 ; 2 uses
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !337
  %.not = icmp eq ptr %i.bs, %i.bt                ; 2 uses
  br i1 %.not, label %.lr.ph.i.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store ptr %i.bu, ptr %i.am, align 8, !tbaa !334
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.m, %bb.l
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cc, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i ], [ %i.ao, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !61
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #27
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cc, %i.ap
  br i1 %.not.i.i.i14, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i
  %i.cd = ptrtoint ptr %i.bc to i64
  %i.ce = ptrtoint ptr %i.ao to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.cf) #27
  br label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.not, label %bb.p, label %bb.f

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit, %bb.f
  %.2 = phi i8 [ %.012, %bb.f ], [ %.1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit ]
  %i.cg = icmp eq i8 %1, 0
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = load i8, ptr %i.af, align 4, !tbaa !370, !range !50, !noundef !51
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3 = phi i8 [ %i.ch, %bb.q ], [ %.2, %bb.p ]
end_hunk_7
begin_hunk_8_@_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl:bb.a

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !373, !nonnull !51, !align !170
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !313
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !179
  %i.bu = and i32 %i.bt, 2064
  %i.bv = icmp eq i32 %i.bu, 2064
  br i1 %i.bv, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

bb.p:                                             ; preds = %bb.l
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !373, !nonnull !51, !align !170
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !313
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !179
  %i.cb = and i32 %i.ca, 2064
  %i.cc = icmp eq i32 %i.cb, 2064
  br i1 %i.cc, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_M_at_beginEv.exit: ; preds = %bb.o, %bb.p
  %i.cd = getelementptr inbounds i8, ptr %i.bj, i64 -1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !57
  %i.cf = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.ce)
  br i1 %i.cf, label %tailrecurse.backedge, label %common.ret

bb.q:                                             ; preds = %.lr.ph
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !334 ; 2 uses
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !337
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %.split, label %bb.r

.split:                                           ; preds = %bb.q
  %i.cj = load i32, ptr %i.j, align 8, !tbaa !335
  %i.ck = and i32 %i.cj, 2
  %.not.i29 = icmp eq i32 %i.ck, 0
  br i1 %.not.i29, label %tailrecurse.backedge, label %common.ret

bb.r:                                             ; preds = %bb.q
  %i.cl = load ptr, ptr %i.i, align 8, !tbaa !373, !nonnull !51, !align !170
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !313
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !179
  %i.cq = and i32 %i.cp, 2064
  %i.cr = icmp eq i32 %i.cq, 2064
  br i1 %i.cr, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.r
  %i.cs = load i8, ptr %i.cg, align 1, !tbaa !57
  %i.ct = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cs)
  br i1 %i.ct, label %tailrecurse.backedge, label %common.ret

bb.s:                                             ; preds = %.lr.ph
  %i.cu = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0), !inline_history !754
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !57, !range !50, !noundef !51
  %i.cx = zext i1 %i.cu to i8
  %.not.i = icmp eq i8 %i.cw, %i.cx
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.t:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !57
  %i.da = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %i.cz), !inline_history !755
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !57, !range !50, !noundef !51
  %i.dd = zext i1 %i.da to i8
  %.not.i24 = icmp eq i8 %i.dc, %i.dd
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge

bb.u:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE15_M_handle_matchENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3852)
  br label %common.ret

bb.v:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE17_M_handle_backrefENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3852)
  br label %common.ret

bb.w:                                             ; preds = %.lr.ph
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !334 ; 2 uses
  %i.df = load ptr, ptr %i.k, align 8, !tbaa !333
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dh = load i32, ptr %i.j, align 8, !tbaa !335
  %i.di = and i32 %i.dh, 32
  %.not.i25 = icmp eq i32 %i.di, 0
  br i1 %.not.i25, label %bb.y, label %common.ret

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dj = icmp eq i8 %1, 1
  br i1 %i.dj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !337
  %i.dl = icmp eq ptr %i.de, %i.dk
  br i1 %i.dl, label %bb.aa, label %common.ret

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dm = load i8, ptr %i.m, align 4, !tbaa !370, !range !50, !noundef !51
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %common.ret, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.m, align 4, !tbaa !370
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !367, !nonnull !51, !align !170
  %i.dq = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(141) %0) ; 0 uses
  br label %common.ret

bb.ac:                                            ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !179
  %i.dt = and i32 %i.ds, 16
  %.not.i88 = icmp eq i32 %i.dt, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !57
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.dv), !inline_history !756
  %i.dw = load i8, ptr %i.m, align 4, !tbaa !370, !range !50, !noundef !51 ; 2 uses
  br i1 %.not.i88, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !121 ; 2 uses
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !338
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.dz ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !372, !range !50, !noundef !51
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %common.ret, label %.lr.ph.backedge

bb.ae:                                            ; preds = %bb.ac
  store i8 0, ptr %i.m, align 4, !tbaa !370
  %i.ee = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !121
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ef), !inline_history !756
  %i.eg = load i8, ptr %i.m, align 4, !tbaa !370, !range !50, !noundef !51
  %i.eh = or i8 %i.eg, %i.dw
  store i8 %i.eh, ptr %i.m, align 4, !tbaa !370
  br label %common.ret
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE17_M_realloc_insertIJRlRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !340  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !339    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #30
  unreachable

_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !128
  store i64 %i.r, ptr %i.q, align 8, !tbaa !369
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !365  ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !60     ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i.i, label %.noexc27.thread, label %bb.c

.noexc27.thread:                                  ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr null, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !61
  br label %.loopexit

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit
  %4 = sdiv exact i64 %i.y, 24
  %i.ac = icmp ugt i64 %4, 384307168202282325
  br i1 %i.ac, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !69

.noexc.i.i.i.i:                                   ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #29
          to label %.noexc27 unwind label %bb.f   ; 4 uses

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !365
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !61
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ad, %.noexc27 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %i.v, %.noexc27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.u
  br i1 %i.aj, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc27.thread
  %i.ak = phi ptr [ %i.z, %.noexc27.thread ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %.noexc27.thread ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !365
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.al = load i64, ptr %.0911.i.i.i, align 8, !tbaa !369, !alias.scope !765, !noalias !764
  store i64 %i.al, ptr %.012.i.i.i, align 8, !tbaa !369, !alias.scope !764, !noalias !765
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !357, !alias.scope !765, !noalias !764
  store <2 x ptr> %i.ao, ptr %i.am, align 8, !tbaa !357, !alias.scope !764, !noalias !765
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !61, !alias.scope !765, !noalias !764
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !61, !alias.scope !764, !noalias !765
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false), !alias.scope !765, !noalias !764
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !760

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.at, %.lr.ph.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bd, %.lr.ph.i.i.i29 ], [ %i.au, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 4 uses
  %.0911.i.i.i31 = phi ptr [ %i.bc, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.av = load i64, ptr %.0911.i.i.i31, align 8, !tbaa !369, !alias.scope !767, !noalias !766
  store i64 %i.av, ptr %.012.i.i.i30, align 8, !tbaa !369, !alias.scope !766, !noalias !767
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !357, !alias.scope !767, !noalias !766
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !357, !alias.scope !766, !noalias !767
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !61, !alias.scope !767, !noalias !766
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !61, !alias.scope !766, !noalias !767
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false), !alias.scope !767, !noalias !766
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !760

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.au, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.bd, %.lr.ph.i.i.i29 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !341
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #27
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !339
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !340
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !341
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  %i.bm = tail call ptr @__cxa_begin_catch(ptr %i.bl) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #27
  invoke void @__cxa_rethrow() #30
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.bj

bb.h:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #28
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE15_M_handle_matchENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !371, !nonnull !51, !align !170
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %2 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !334  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !337
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.i, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.m, ptr %i.b, align 1, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !152
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit:     ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !151
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.s, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !121  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.u, ptr %i.a, align 8, !tbaa !128
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !340  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !341
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.u, ptr %i.w, align 8, !tbaa !369
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !365 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !60    ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = sdiv exact i64 %i.af, 24
  %i.ag = icmp ugt i64 %3, 384307168202282325
  br i1 %i.ag, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !69

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.ai = phi ptr [ null, %bb.e ], [ %i.ah, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !365
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !61
  %i.am = load ptr, ptr %0, align 8, !tbaa !357   ; 2 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !357 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEJRlRKS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.g ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.am, %bb.g ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.an
  br i1 %i.ar, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEJRlRKS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !25

_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEJRlRKS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !365
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !340
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr %i.at, ptr %i.v, align 8, !tbaa !340
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit

bb.h:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE17_M_realloc_insertIJRlRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit: ; preds = %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEJRlRKS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE17_M_handle_backrefENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_Backref_matcher", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !371, !nonnull !51, !align !170
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57
  %i.h = load ptr, ptr %0, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.g ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !360, !range !50, !noundef !51
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !334  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !337  ; 2 uses
  %.not23 = icmp eq ptr %i.n, %i.p
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !362 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre28 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !361 ; 2 uses
  br i1 %.not23, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.025 = phi ptr [ %i.ab, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %.01924 = phi ptr [ %i.aa, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.not21 = icmp eq ptr %.025, %.pre28
  br i1 %.not21, label %.critedge, label %bb.c

.critedge:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %.019.lcssa = phi ptr [ %i.n, %bb.b ], [ %i.aa, %bb.c ], [ %.01924, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !373, !nonnull !51, !align !170 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !76
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !313
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = and i8 %i.t, 1
  store i8 %i.x, ptr %3, align 8, !tbaa !375
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !100
  %i.z = call noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIPKcNSt7__cxx1112regex_traitsIcEEE8_M_applyES2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %.pre, ptr noundef %.pre28, ptr noundef %i.n, ptr noundef %.019.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.z, label %bb.d, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.01924, i64 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.025, i64 1
  %.not = icmp eq ptr %i.aa, %i.p
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !769

bb.d:                                             ; preds = %.critedge
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !334 ; 2 uses
  %.not22 = icmp eq ptr %.019.lcssa, %i.ac
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.019.lcssa, ptr %i.m, align 8, !tbaa !334
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !121
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ae)
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !334
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !121
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ag)
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_rep_once_moreENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !371, !nonnull !51, !align !170
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !342
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %2 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !352  ; 4 uses
  %i.k = icmp ne i32 %i.j, 0
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.h, align 8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !334 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload.pre, %.pre
  %or.cond = select i1 %i.k, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  store ptr %.pre, ptr %i.h, align 8, !tbaa !351
  store i32 1, ptr %i.i, align 8, !tbaa !352
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !57
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.m)
  store ptr %.sroa.0.0.copyload.pre, ptr %i.h, align 8, !tbaa !351
  br label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %i.j, 2
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %i.j, 1
  store i32 %i.o, ptr %i.i, align 8, !tbaa !352
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !57
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.q)
  %i.r = load i32, ptr %i.i, align 8, !tbaa !352
  %i.s = add nsw i32 %i.r, -1
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.c
  %.sink = phi i32 [ %i.s, %bb.c ], [ %i.j, %._crit_edge ]
  store i32 %.sink, ptr %i.i, align 8, !tbaa !352
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373, !nonnull !51, !align !170
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !313
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #26
  %i.f = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #26
end_hunk_8
begin_hunk_9_@_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a
  %i.e = icmp eq ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !335
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !337
  %i.k = icmp eq ptr %i.b, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !335
  %i.n = and i32 %i.m, 8
  %.not6 = icmp eq i32 %i.n, 0
  br i1 %.not6, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load i32, ptr %i.o, align 8, !tbaa !335
  %i.q = and i32 %i.p, 128
  %.not8 = icmp eq i32 %i.q, 0
  br i1 %.not8, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !57    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !373, !nonnull !51, !align !170
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !313
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.y = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.z = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #26
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !105
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107 ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i.i.i, label %bb.h, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.y to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !176
  %i.ah = zext i8 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !178
  %i.ak = and i16 %i.aj, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not4.i.i, label %bb.i, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !277
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !57
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !770
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !334 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !337
  %.not9 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not9, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !57  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !373, !nonnull !51, !align !170
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !313
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #26
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !101
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !105
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !107 ; 7 uses
  %.not.not.i.i.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i10, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !176
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !178
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i13, label %bb.o, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.br = and i32 %i.be, 65536
  %.not.i.i14 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !277
  %.not.i.i.i15 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !57
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !770
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.r, %bb.q
  %.0.i.i.i17 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i17
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18
  %.04 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.146", align 8   ; 14 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !365  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !60     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !61
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit

bb.b:                                             ; preds = %bb.a
  %4 = sdiv exact i64 %i.f, 24
  %i.j = icmp ugt i64 %4, 384307168202282325
  br i1 %i.j, label %.noexc.i.i, label %bb.c, !prof !69

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !365
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !61
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.b
  br i1 %i.q, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.n, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.l, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !334
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !337
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !373, !nonnull !51, !align !170
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !335
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EEC2ES2_S2_RSt6vectorIS5_S6_ERKNS3_11basic_regexIcS8_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr noundef %i.u, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 noundef %i.aa)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.ab, align 8, !tbaa !366
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !333
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !334
  %i.af = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !771 ; 2 uses

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.af, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !365 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !60    ; 5 uses
  %.not = icmp eq ptr %i.ag, %i.ah
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = sdiv exact i64 %i.ak, 24                ; 3 uses
  %xtraiter = and i64 %i.al, 1
  %i.am = icmp eq i64 %i.ak, 24
  br i1 %i.am, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.al, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #26
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.017 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bg, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.017 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !360, !range !50, !noundef !51
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.at = load ptr, ptr %0, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.017 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !223
  store <2 x ptr> %i.av, ptr %i.au, align 8, !tbaa !223
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i8 1, ptr %i.aw, align 8, !tbaa !360
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.g
  %i.ax = or disjoint i64 %.017, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !360, !range !50, !noundef !51
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bc = load ptr, ptr %0, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ax ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !223
  store <2 x ptr> %i.be, ptr %i.bd, align 8, !tbaa !223
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i8 1, ptr %i.bf, align 8, !tbaa !360
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bg = add nuw i64 %.017, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !772

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.017.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod31 = trunc i64 %i.al to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.017.epil.init ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !360, !range !50, !noundef !51
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bl = load ptr, ptr %0, align 8, !tbaa !60
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.017.epil.init ; 2 uses
  %i.bn = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !223
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !223
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i8 1, ptr %i.bo, align 8, !tbaa !360
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !338 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.br) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !339 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !340 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i13

.lr.ph.i.i.i.i.i13:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cd, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i ], [ %i.bt, %bb.l ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i13
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !61
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #27
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i13
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, %i.bv
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i13, !llvm.loop !22

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.ce = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bt, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !341
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #27
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !342 ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i14, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !343
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #27
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.cr = load ptr, ptr %3, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !61
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #27
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.cx = load ptr, ptr %2, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit
  %i.cy = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.db) #27
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %i.af

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %i.an, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.dc = load ptr, ptr %2, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit16, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #27
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit16

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit16: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIPKcNSt7__cxx1112regex_traitsIcEEE8_M_applyES2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !375, !range !50, !noundef !51
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !775, !nonnull !51, !align !170
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #26
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #26
  %i.l = load ptr, ptr %5, align 8, !tbaa !101
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107  ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ptrtoint ptr %4 to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  %.not.i12 = icmp eq i64 %i.s, %i.v
  br i1 %.not.i12, label %bb.g, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %.not10.i.i = icmp eq ptr %1, %2
  br i1 %.not10.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %3, %bb.g ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %1, %bb.g ] ; 2 uses
  %i.w = load i8, ptr %.0811.i.i, align 1, !tbaa !57
  %i.x = load i8, ptr %.012.i.i, align 1, !tbaa !57
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.w), !inline_history !773
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef signext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.x), !inline_history !773
  %i.ag = icmp eq i8 %i.ab, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  %.not.i.i = icmp ne ptr %i.ah, %2
  %or.cond.not = select i1 %i.ag, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, !llvm.loop !774

bb.h:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.aj

_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit:           ; preds = %.lr.ph.i.i, %bb.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ %.not9.i.i.i.i.i, %bb.d ], [ false, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ], [ true, %bb.g ], [ %i.ag, %.lr.ph.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !365  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !60     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = load ptr, ptr %0, align 8, !tbaa !60     ; 8 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %2 = sdiv exact i64 %i.f, 24
  %i.n = icmp ugt i64 %2, 384307168202282325
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i, !prof !69

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 4 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -24
  %i.r = sub i64 %i.q, %i.e
  %.fr.i = freeze i64 %i.r                        ; 2 uses
  %i.s = urem i64 %.fr.i, 24
  %i.t = add i64 %.fr.i, 24
  %i.u = sub i64 %i.t, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.u, i1 false)
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8, !tbaa !61
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !365  ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.f, 0
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ab = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.ac = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !223
  store <2 x ptr> %i.ac, ptr %.0811.i.i.i.i.i, align 8, !tbaa !223
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !360, !range !50, !noundef !51
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.ae, ptr %i.af, align 8, !tbaa !360
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ai = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aj = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, !llvm.loop !776

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z ; 2 uses
  %i.al = icmp sgt i64 %i.z, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.am = udiv exact i64 %i.z, 24
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i27 ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  %i.an = load <2 x ptr>, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !223
  store <2 x ptr> %i.an, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !223
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !360, !range !50, !noundef !51
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  store i8 %i.ap, ptr %i.aq, align 8, !tbaa !360
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.at = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, !llvm.loop !777

_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i27, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.x, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !778

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !60
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.ax = phi ptr [ %i.o, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !365
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge283, %bb.a
  %.tr38 = phi i64 [ %2, %bb.a ], [ %.tr38.be284, %tailrecurse.backedge283 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !376, !nonnull !51, !align !170 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr38 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !134
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.r
    i32 6, label %bb.t
    i32 7, label %bb.u
    i32 11, label %bb.v
    i32 3, label %bb.z
    i32 12, label %bb.aa
    i32 1, label %bb.ai
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !57, !range !50, !noundef !51
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr38 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !352  ; 4 uses
  %i.v = icmp ne i32 %i.u, 0
  %.sroa.030.0.copyload.pre = load ptr, ptr %i.s, align 8 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !354 ; 2 uses
  %.not.i26 = icmp eq ptr %.sroa.030.0.copyload.pre, %.pre
  %or.cond = select i1 %i.v, i1 %.not.i26, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %.pre, ptr %i.s, align 8, !tbaa !351
  store i32 1, ptr %i.t, align 8, !tbaa !352
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !57
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.x), !inline_history !779
  store ptr %.sroa.030.0.copyload.pre, ptr %i.s, align 8, !tbaa !351
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.u, 2
  br i1 %i.y, label %bb.f, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.u, 1
  store i32 %i.z, ptr %i.t, align 8, !tbaa !352
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !57
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ab), !inline_history !779
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !352
  %i.ad = add nsw i32 %i.ac, -1
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split: ; preds = %bb.f, %bb.d
  %.sink = phi i32 [ %i.u, %bb.d ], [ %i.ad, %bb.f ]
  store i32 %.sink, ptr %i.t, align 8, !tbaa !352
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit
end_hunk_9
begin_hunk_10_@_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_word_boundaryEv:bb.a
  %i.e = icmp eq ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i32, ptr %i.f, align 8, !tbaa !364
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !347
  %i.k = icmp eq ptr %i.b, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !364
  %i.n = and i32 %i.m, 8
  %.not6 = icmp eq i32 %i.n, 0
  br i1 %.not6, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i32, ptr %i.o, align 8, !tbaa !364
  %i.q = and i32 %i.p, 128
  %.not8 = icmp eq i32 %i.q, 0
  br i1 %.not8, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !57    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !377, !nonnull !51, !align !170
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !313
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.y = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.z = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #26
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !105
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107 ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i.i.i, label %bb.h, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.y to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !176
  %i.ah = zext i8 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !178
  %i.ak = and i16 %i.aj, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not4.i.i, label %bb.i, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !277
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !57
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !789
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !354 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !347
  %.not9 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not9, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !57  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !377, !nonnull !51, !align !170
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !313
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #26
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !101
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !105
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !107 ; 7 uses
  %.not.not.i.i.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i10, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !176
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !178
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i13, label %bb.o, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.br = and i32 %i.be, 65536
  %.not.i.i14 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !277
  %.not.i.i.i15 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !57
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !789
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.r, %bb.q
  %.0.i.i.i17 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i17
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18
  %.04 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.146", align 8   ; 15 uses
  %3 = alloca %"class.std::__detail::_Executor.161", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !365  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !60     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !61
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit

bb.b:                                             ; preds = %bb.a
  %4 = sdiv exact i64 %i.f, 24
  %i.j = icmp ugt i64 %4, 384307168202282325
  br i1 %i.j, label %.noexc.i.i, label %bb.c, !prof !69

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !365
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !61
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.b
  br i1 %i.q, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.n, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.l, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !354  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !364  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.u, ptr %i.z, align 8, !tbaa !346
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !377, !nonnull !51, !align !170
  %i.ac = load <2 x ptr>, ptr %i.v, align 8, !tbaa !70
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !313 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !153
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ag, align 8, !tbaa !349
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !147 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !118 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48                ; 7 uses
  %5 = icmp ugt i64 %i.ap, 576460752303423487
  br i1 %5, label %bb.d, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #30
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #29
          to label %.noexc10.i unwind label %bb.e ; 4 uses

.noexc10.i:                                       ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i
  store ptr %i.ar, ptr %i.ah, align 8, !tbaa !342
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.as, ptr %i.at, align 8, !tbaa !343
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc10.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ar, %.noexc10.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ap, %.noexc10.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc10.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !351
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.au, align 8, !tbaa !352
  %i.av = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !790

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc10.i
  %.lcssa.unr = phi ptr [ poison, %.noexc10.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.ar, %.noexc10.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ap, %.noexc10.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ax = icmp ult i64 %i.ap, 8
  br i1 %i.ax, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !351
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.ay, align 8, !tbaa !352
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.az, align 8, !tbaa !351
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ba, align 8, !tbaa !352
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bb, align 8, !tbaa !351
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bc, align 8, !tbaa !352
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.bd, align 8, !tbaa !351
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.be, align 8, !tbaa !352
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bf, align 8, !tbaa !351
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bg, align 8, !tbaa !352
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bh, align 8, !tbaa !351
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bi, align 8, !tbaa !352
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bj, align 8, !tbaa !351
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bk, align 8, !tbaa !352
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bl, align 8, !tbaa !351
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bm, align 8, !tbaa !352
  %i.bn = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !23

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bo, %.lr.ph.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bp, align 8, !tbaa !353
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bs = and i32 %i.y, 128
  %.not.i = icmp eq i32 %i.bs, 0
  %i.bt = and i32 %i.y, -6
  %spec.select = select i1 %.not.i, i32 %i.y, i32 %i.bt
  store i32 %spec.select, ptr %i.br, align 8, !tbaa !336
  store i64 %1, ptr %i.bq, align 8, !tbaa !356
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.u, ptr %i.bu, align 8, !tbaa !354
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bv, align 4, !tbaa !355
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr null, ptr %i.bw, align 8, !tbaa !223
  %i.bx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !791 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i, %bb.d
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.bz = load i64, ptr %i.bq, align 8, !tbaa !356
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.bz)
          to label %bb.f unwind label %bb.g, !inline_history !791

bb.f:                                             ; preds = %.noexc
  %i.ca = load i8, ptr %i.bv, align 4, !tbaa !355, !range !50, !noundef !51
  %i.cb = trunc nuw i8 %i.ca to i1                ; 2 uses
  br i1 %i.cb, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cc = load ptr, ptr %i.s, align 8, !tbaa !365 ; 2 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !60    ; 5 uses
  %.not = icmp eq ptr %i.cc, %i.cd
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = sdiv exact i64 %i.cg, 24                ; 3 uses
  %xtraiter33 = and i64 %i.ch, 1
  %i.ci = icmp eq i64 %i.cg, 24
  br i1 %i.ci, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ch, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #26
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.db, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.020 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !360, !range !50, !noundef !51
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.co = load ptr, ptr %0, align 8, !tbaa !60
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.020 ; 2 uses
  %i.cq = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !223
  store <2 x ptr> %i.cq, ptr %i.cp, align 8, !tbaa !223
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i8 1, ptr %i.cr, align 8, !tbaa !360
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.h
  %i.cs = or disjoint i64 %.020, 1                ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !360, !range !50, !noundef !51
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.cx = load ptr, ptr %0, align 8, !tbaa !60
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.cs ; 2 uses
  %i.cz = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !223
  store <2 x ptr> %i.cz, ptr %i.cy, align 8, !tbaa !223
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i8 1, ptr %i.da, align 8, !tbaa !360
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.db = add nuw i64 %.020, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !792

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.db, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod35 = trunc i64 %i.ch to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.020.epil.init ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !360, !range !50, !noundef !51
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dg = load ptr, ptr %0, align 8, !tbaa !60
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %.020.epil.init ; 2 uses
  %i.di = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !223
  store <2 x ptr> %i.di, ptr %i.dh, align 8, !tbaa !223
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i8 1, ptr %i.dj, align 8, !tbaa !360
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.dk = load ptr, ptr %i.ah, align 8, !tbaa !342 ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i14, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !343
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #27
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.l, %.loopexit
  %i.dq = load ptr, ptr %3, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !61
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #27
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.dw = load ptr, ptr %2, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.n

end_hunk_10
