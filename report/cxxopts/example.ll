Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cxxopts/original/example?download=true
inline.NumInlined: 9080
inline.NumDeleted: 3223
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZSt14__copy_move_a2ILb0ENSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS0_12regex_traitsIcEEEESt20back_insert_iteratorISt6vectorISA_SaISA_EEEET1_T0_SL_SK_:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !246
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #32
  br label %_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit8

_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit8: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i6, %bb.g
  ret ptr %i.a

bb.h:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %4) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.ad, %bb.h ]
  call void @_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %3) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt11__copy_moveILb0ELb0ESt20forward_iterator_tagE8__copy_mINSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS3_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS3_12regex_traitsIcEEEESt20back_insert_iteratorISt6vectorISD_SaISD_EEEEET0_T_SO_SN_(ptr nofree noundef align 8 dereferenceable(136) %0, ptr nofree noundef align 8 dereferenceable(136) %1, ptr %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = tail call noundef zeroext i1 @_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(129) %1)
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !286  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !589, !range !130, !noalias !1368, !noundef !131
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.05.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !72, !noalias !1368 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.l, align 8, !tbaa !72, !noalias !1368
  store ptr %i.d, ptr %3, align 8, !tbaa !65, !alias.scope !1368
  store i64 0, ptr %i.e, align 8, !tbaa !71, !alias.scope !1368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !1368
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.n = ptrtoint ptr %.sroa.05.0.copyload.i.i to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  store i64 %i.o, ptr %i.a, align 8, !tbaa !67, !noalias !1368
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !69, !alias.scope !1368
  %i.r = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !1368
  store i64 %i.r, ptr %i.d, align 8, !tbaa !70, !alias.scope !1368
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.g
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = load i8, ptr %.sroa.05.0.copyload.i.i, align 1, !tbaa !70
  store i8 %i.t, ptr %i.s, align 1, !tbaa !70
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %.sroa.05.0.copyload.i.i, i64 %i.o, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr %i.d, ptr %3, align 8, !tbaa !65, !alias.scope !1368
  store i64 0, ptr %i.e, align 8, !tbaa !71, !alias.scope !1368
  store i8 0, ptr %i.d, align 8, !tbaa !70, !alias.scope !1368
  br label %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEcvS9_Ev.exit

bb.g:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !1368 ; 2 uses
  store i64 %i.u, ptr %i.e, align 8, !tbaa !71, !alias.scope !1368
  %i.v = load ptr, ptr %3, align 8, !tbaa !69, !alias.scope !1368
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !1368
  br label %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEcvS9_Ev.exit

_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEcvS9_Ev.exit: ; preds = %bb.f, %bb.g
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !160  ; 6 uses
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !159
  %.not.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEcvS9_Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !65
  %i.aa = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.d
  br i1 %i.ab, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !71  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.ae, i1 false)
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !69
  %i.af = load i64, ptr %i.d, align 8, !tbaa !70
  store i64 %i.af, ptr %i.z, align 8, !tbaa !70
  %.pre = load i64, ptr %i.e, align 8, !tbaa !71
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ag = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ac, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !71
  store ptr %i.d, ptr %3, align 8, !tbaa !69
  store i64 0, ptr %i.e, align 8, !tbaa !71
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !160
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEcvS9_Ev.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit unwind label %bb.k

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit: ; preds = %bb.j
  %.pre4 = load ptr, ptr %3, align 8, !tbaa !69   ; 2 uses
  %i.ak = icmp eq ptr %.pre4, %i.d
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit
  %i.al = load i64, ptr %i.d, align 8, !tbaa !70
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %.pre4, i64 noundef %i.am) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.an = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEv(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 0 uses
  %i.ao = call noundef zeroext i1 @_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(129) %1)
  br i1 %i.ao, label %._crit_edge, label %bb.b, !llvm.loop !1365

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.d
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.k
  %i.as = load i64, ptr %i.d, align 8, !tbaa !70
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.ap

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::regex_token_iterator", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::regex_iterator", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::regex_token_iterator", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !282  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !245  ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp ugt i64 %i.h, 384307168202282325
  br i1 %i.i, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !128

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #31
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !283
  %.pre37 = load ptr, ptr %i.b, align 8, !tbaa !283
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %5 = phi ptr [ %i.c, %bb.a ], [ %.pre37, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 4 uses
  %6 = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 7 uses
  %7 = phi ptr [ null, %bb.a ], [ %4, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 8 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %6, %5       ; 2 uses
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i ], [ %7, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i ], [ %6, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, %5
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !10

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %7, %bb.c ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !559, !range !130, !noundef !131
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(129) %1, i8 0, i64 105, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.p, i8 0, i64 17, i1 false)
  %i.q = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEaSERKSD_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(129) %1)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !241  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !242
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !245  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !246
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #32
  br label %_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit

_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.ac

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.ae

bb.i:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !266
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !241 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %i.ar = icmp ult i64 %i.ai, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !281
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ai
  %i.at = load i32, ptr %i.as, align 4, !tbaa !127 ; 2 uses
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = ptrtoint ptr %5 to i64
  %i.aw = ptrtoint ptr %6 to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = sdiv exact i64 %i.ax, 24
  %i.az = icmp ult i64 %i.ay, 4
  %i.ba = getelementptr i8, ptr %6, i64 %i.ax
  %.v.i.i = select i1 %i.az, i64 -72, i64 -48
  %i.bb = getelementptr i8, ptr %i.ba, i64 %.v.i.i
  br label %_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEE16_M_current_matchEv.exit

bb.l:                                             ; preds = %bb.j
  %i.bc = sext i32 %i.at to i64                   ; 2 uses
  %.pre.i.i = ptrtoint ptr %5 to i64
  %.pre2.i.i = ptrtoint ptr %6 to i64
  %.pre4.i.i = sub i64 %.pre.i.i, %.pre2.i.i      ; 2 uses
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i: ; preds = %bb.l
  %i.bd = sdiv exact i64 %.pre4.i.i, 24
  %i.be = add nsw i64 %i.bd, -3
  %i.bf = icmp ugt i64 %i.be, %i.bc
  br i1 %i.bf, label %bb.m, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.bc
  br label %_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEE16_M_current_matchEv.exit

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i, %bb.l
  %i.bh = getelementptr i8, ptr %6, i64 %.pre4.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 -72
  br label %_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEE16_M_current_matchEv.exit

_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEE16_M_current_matchEv.exit: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i, %bb.m, %bb.k
  %.0.i = phi ptr [ %i.bb, %bb.k ], [ %i.bg, %bb.m ], [ %i.bi, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.0.i, ptr %i.bj, align 8, !tbaa !286
  br label %bb.ac

bb.n:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.o:                                             ; preds = %bb.i
  store i64 0, ptr %i.ag, align 8, !tbaa !281
  %i.bl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.p unwind label %bb.n       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.bn = call noundef zeroext i1 @_ZNKSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2) #30
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i9, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !246
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #32
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.bn, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit
  %i.bu = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.bv = load ptr, ptr %i.aj, align 8, !tbaa !241
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !127 ; 2 uses
  %i.by = icmp eq i32 %i.bx, -1
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !283 ; 6 uses
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !282
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = sdiv exact i64 %i.cd, 24
  %i.cf = icmp ult i64 %i.ce, 4
  %i.cg = getelementptr i8, ptr %i.bz, i64 %i.cd
  %.v.i.i16 = select i1 %i.cf, i64 -72, i64 -48
  %i.ch = getelementptr i8, ptr %i.cg, i64 %.v.i.i16
  br label %_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEE16_M_current_matchEv.exit17

bb.t:                                             ; preds = %bb.r
  %i.ci = sext i32 %i.bx to i64                   ; 2 uses
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !283 ; 2 uses
  %i.ck = icmp eq ptr %i.bz, %i.cj
  %.pre.i.i10 = ptrtoint ptr %i.cj to i64
  %.pre2.i.i11 = ptrtoint ptr %i.bz to i64
  %.pre4.i.i12 = sub i64 %.pre.i.i10, %.pre2.i.i11 ; 2 uses
  br i1 %i.ck, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i14, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i13

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i13: ; preds = %bb.t
  %i.cl = sdiv exact i64 %.pre4.i.i12, 24
  %i.cm = add nsw i64 %i.cl, -3
  %i.cn = icmp ugt i64 %i.cm, %i.ci
  br i1 %i.cn, label %bb.u, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i14

bb.u:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i13
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.ci
  br label %_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEE16_M_current_matchEv.exit17

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i14: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i13, %bb.t
  %i.cp = getelementptr i8, ptr %i.bz, i64 %.pre4.i.i12
  %i.cq = getelementptr i8, ptr %i.cp, i64 -72
  br label %_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEE16_M_current_matchEv.exit17

_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEE16_M_current_matchEv.exit17: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i14, %bb.u, %bb.s
  %.0.i15 = phi ptr [ %i.ch, %bb.s ], [ %i.co, %bb.u ], [ %i.cq, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i14 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.0.i15, ptr %i.cr, align 8, !tbaa !286
  br label %bb.ac

bb.v:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !285, !range !130, !noundef !131
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cv = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i to i64
  %i.cw = ptrtoint ptr %7 to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 2 uses
  %i.cy = sdiv exact i64 %i.cx, 24
  %i.cz = icmp ult i64 %i.cy, 4
  %i.da = getelementptr i8, ptr %7, i64 %i.cx
  %.v.i = select i1 %i.cz, i64 -72, i64 -24
  %i.db = getelementptr i8, ptr %i.da, i64 %.v.i  ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !589, !range !130, !noundef !131
  %i.de = trunc nuw i8 %i.dd to i1
  %.sroa.01.0.copyload.i = load ptr, ptr %i.db, align 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.df, align 8 ; 2 uses
  %.not36 = icmp ne ptr %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i
  %.not.not = select i1 %i.de, i1 %.not36, i1 false
  br i1 %.not.not, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  %i.dg = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.dh = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  store i8 1, ptr %i.m, align 8, !tbaa !559
  store i64 %i.dh, ptr %i.l, align 8, !tbaa !72
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !72
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.l, ptr %i.dj, align 8, !tbaa !286
  br label %bb.ad

bb.x:                                             ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(129) %3, i8 0, i64 105, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.dk, i8 0, i64 17, i1 false)
  %i.dl = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEaSERKSD_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(129) %3)
          to label %bb.y unwind label %bb.ab      ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !241 ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i21, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !242
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i21

_ZNSt6vectorIiSaIiEED2Ev.exit.i21:                ; preds = %bb.z, %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i22, label %_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit23, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i21
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !246
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #32
  br label %_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit23

_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit23: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i21, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEE16_M_current_matchEv.exit, %_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit23, %_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEE16_M_current_matchEv.exit17, %_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit
  %.not.i.i.i.i24 = icmp eq ptr %7, null
  br i1 %.not.i.i.i.i24, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit25, label %bb.ad

bb.ad:                                            ; preds = %.thread, %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %i.g) #32
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit25

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit25: ; preds = %bb.ac, %bb.ad
  ret ptr %0

bb.ae:                                            ; preds = %bb.ab, %bb.n, %bb.h
  %.pn6.pn = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.bk, %bb.n ], [ %i.ea, %bb.ab ]
  %.not.i.i.i.i26 = icmp eq ptr %7, null
  br i1 %.not.i.i.i.i26, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit27, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %i.g) #32
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit27

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit27: ; preds = %bb.ae, %bb.af
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(129) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.thread12

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !286
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i8, ptr %i.g, align 8, !tbaa !559, !range !130, !noundef !131
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %.thread

.thread12:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i8, ptr %i.j, align 8, !tbaa !559, !range !130, !noundef !131
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %.thread11

bb.d:                                             ; preds = %.thread12, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = load i8, ptr %i.m, align 8, !tbaa !559, !range !130, !noundef !131
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit.i.i, label %_ZNSt7__cxx11eqIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKNS_9sub_matchIT_EESF_.exit.thread

_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit.i.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !72   ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72   ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !72   ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.w) ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not.i.i.i, label %select.unfold.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit.i.i
  %.not.not.i6.i.i = icmp eq ptr %i.y, %i.z
  %.sroa.0.1.i2.i.i = select i1 %.not.not.i6.i.i, ptr null, ptr %i.z
  %.not.not.i.i.i = icmp eq ptr %i.s, %i.t
  %spec.select = select i1 %.not.not.i.i.i, ptr null, ptr %i.t
  %bcmp.i = tail call i32 @bcmp(ptr %spec.select, ptr %.sroa.0.1.i2.i.i, i64 %.sroa.speculated.i.i.i)
  %.not14.i.i.i = icmp eq i32 %bcmp.i, 0
  %i.ad = icmp eq i64 %i.w, %i.ac
  %or.cond = and i1 %i.ad, %.not14.i.i.i
  br i1 %or.cond, label %.thread, label %_ZNSt7__cxx11eqIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKNS_9sub_matchIT_EESF_.exit.thread

select.unfold.i.i.i:                              ; preds = %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit.i.i
  %.old = icmp eq i64 %i.w, %i.ac
  br i1 %.old, label %.thread, label %_ZNSt7__cxx11eqIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKNS_9sub_matchIT_EESF_.exit.thread

_ZNSt7__cxx11eqIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKNS_9sub_matchIT_EESF_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %select.unfold.i.i.i, %bb.d
  br label %.thread

.thread11:                                        ; preds = %.thread12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !286
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ai = load i8, ptr %i.ah, align 8, !range !130
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond17 = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond17, label %.thread, label %bb.e

bb.e:                                             ; preds = %.thread11
  %i.ak = tail call noundef zeroext i1 @_ZNKSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #30
  br i1 %i.ak, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.am = load i64, ptr %i.al, align 8, !tbaa !281
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !281
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = tail call noundef zeroext i1 @_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %.thread

.thread:                                          ; preds = %select.unfold.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt7__cxx11eqIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKNS_9sub_matchIT_EESF_.exit.thread, %bb.c, %bb.e, %bb.f, %bb.g, %.thread11, %bb.b
  %.0 = phi i1 [ false, %_ZNSt7__cxx11eqIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKNS_9sub_matchIT_EESF_.exit.thread ], [ true, %bb.b ], [ true, %select.unfold.i.i.i ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ false, %.thread11 ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.e ], [ %i.as, %bb.g ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !241    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !266
  %i.i = load ptr, ptr %1, align 8, !tbaa !241    ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.f, %i.l
  br i1 %i.m, label %bb.b, label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_EbT_S8_T0_.exit

bb.b:                                             ; preds = %bb.a
  %.not.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.not.i.i.i.i, label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_EbT_S8_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.c, ptr %i.i, i64 %i.f)
  %.not9.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_EbT_S8_T0_.exit

_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_EbT_S8_T0_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.n = phi i1 [ false, %bb.a ], [ %.not9.i.i.i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !158    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !65
  %i.s = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !71   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !69
  %i.z = load i64, ptr %i.t, align 8, !tbaa !70
  store i64 %i.z, ptr %i.r, align 8, !tbaa !70
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !71
  store ptr %i.t, ptr %2, align 8, !tbaa !69
end_hunk_0
