inline.NumInlined: 651
inline.NumDeleted: 356
begin_hunk_0_@_ZN8facebook5velox9functions17SIMDJsonExtractor8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store ptr %i.u, ptr %i.h, align 8, !tbaa !65
  br label %_ZNSt6vectorIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EE5clearEv.exit

_ZNSt6vectorIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.i, %_ZNRSt8optionalIN8facebook5velox9functions17JsonPathTokenizer5TokenEE5valueEv.exit
  %i.ac = load i8, ptr %i.g, align 8, !tbaa !57, !range !60, !noundef !61
  %i.ad = trunc nuw i8 %i.ac to i1
  store i8 0, ptr %i.g, align 8, !tbaa !57
  br i1 %i.ad, label %bb.j, label %_ZNSt14_Optional_baseIN8facebook5velox9functions17JsonPathTokenizer5TokenELb0ELb0EED2Ev.exit9

bb.j:                                             ; preds = %_ZNSt6vectorIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EE5clearEv.exit
  %i.ae = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.i
  br i1 %i.af, label %_ZNSt14_Optional_baseIN8facebook5velox9functions17JsonPathTokenizer5TokenELb0ELb0EED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i7: ; preds = %bb.j
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !31
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #22
  br label %_ZNSt14_Optional_baseIN8facebook5velox9functions17JsonPathTokenizer5TokenELb0ELb0EED2Ev.exit9

_ZNSt14_Optional_baseIN8facebook5velox9functions17JsonPathTokenizer5TokenELb0ELb0EED2Ev.exit9: ; preds = %bb.j, %_ZNSt6vectorIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EE5clearEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  br i1 %i.l, label %bb.e, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZNSt14_Optional_baseIN8facebook5velox9functions17JsonPathTokenizer5TokenELb0ELb0EED2Ev.exit9, %bb.e
  %.2.ph = xor i1 %i.j, true
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.c
  %.2 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ %.2.ph, %.loopexit.loopexit ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZN8facebook5velox9functions17JsonPathTokenizer5resetESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(25), i64, ptr) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK8facebook5velox9functions17JsonPathTokenizer7hasNextEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #8

declare void @_ZN8facebook5velox9functions17JsonPathTokenizer7getNextEv(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt6vectorIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EE12emplace_backIJRS4_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !20
  %i.f = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !28

.noexc6.i.i.i:                                    ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #21 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !29
  store i64 %i.h, ptr %i.e, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.b
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt12construct_atIN8facebook5velox9functions17JsonPathTokenizer5TokenEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %i.f, align 1, !tbaa !31
  store i8 %i.o, ptr %i.n, align 1, !tbaa !31
  br label %_ZSt12construct_atIN8facebook5velox9functions17JsonPathTokenizer5TokenEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZSt12construct_atIN8facebook5velox9functions17JsonPathTokenizer5TokenEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atIN8facebook5velox9functions17JsonPathTokenizer5TokenEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.q, align 1, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !68
  store i32 %i.t, ptr %i.r, align 8, !tbaa !68
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !65
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZSt12construct_atIN8facebook5velox9functions17JsonPathTokenizer5TokenEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %i.w = phi ptr [ %.pre, %bb.g ], [ %i.v, %_ZSt12construct_atIN8facebook5velox9functions17JsonPathTokenizer5TokenEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -40
  ret ptr %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN8facebook5velox9functions13extractObjectERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !72, !noalias !76 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 11 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79, !noalias !76 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81, !noalias !76 ; 3 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !82, !noalias !76 ; 2 uses
  %i.i = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !76
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !31, !noalias !76
  %.not.i33 = icmp eq i8 %i.l, 123
  br i1 %.not.i33, label %._crit_edge, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre395 = load i32, ptr %i.a, align 8, !tbaa !83, !noalias !76
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !84, !noalias !76 ; 3 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !83, !noalias !76
  %i.p = icmp eq i32 %i.n, %i.o
  tail call void @llvm.assume(i1 %i.p), !noalias !76
  %i.q = icmp sgt i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.q), !noalias !76
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !82, !noalias !76 ; 2 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !76
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !31, !noalias !76
  %.not8.i = icmp eq i8 %i.v, 123
  br i1 %.not8.i, label %bb.d, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.c, align 8, !tbaa !79, !noalias !76
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.x = phi ptr [ %i.r, %bb.d ], [ %i.h, %._crit_edge ]
  %i.y = phi i32 [ %i.n, %bb.d ], [ %.pre395, %._crit_edge ] ; 3 uses
  %i.z = phi ptr [ %i.w, %bb.d ], [ %i.d, %._crit_edge ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = icmp eq ptr %i.z, %i.aa
  tail call void @llvm.assume(i1 %i.ab), !noalias !76
  %i.ac = icmp sgt i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.ac), !noalias !76
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !3, !noalias !76
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !31, !noalias !76
  %i.ah = icmp eq i8 %i.ag, 125
  br i1 %i.ah, label %bb.f, label %.lr.ph387

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !79, !noalias !76
  %i.ak = add nsw i32 %i.y, -1
  %or.cond.i = icmp ne i32 %i.y, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i), !noalias !76
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !84, !noalias !76
  br label %.lr.ph387

.lr.ph387:                                        ; preds = %bb.f, %bb.e
  %.sroa.4165.0.copyload = load i32, ptr %i.a, align 8, !tbaa !3 ; 16 uses
  %.sroa.6167.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !88 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.an = add nuw nsw i32 %.sroa.4165.0.copyload, 1 ; 2 uses
  %or.cond.i42 = icmp samesign ult i32 %.sroa.4165.0.copyload, 2147483646
  %i.ao = icmp ne i32 %.sroa.4165.0.copyload, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = add nsw i32 %.sroa.4165.0.copyload, -1  ; 2 uses
  %.pre396 = load i32, ptr %i.al, align 4, !tbaa !84 ; 2 uses
  %i.at = icmp sgt i32 %.sroa.4165.0.copyload, 0
  %.not376431 = icmp slt i32 %.pre396, %.sroa.4165.0.copyload
  br i1 %.not376431, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit, label %.lr.ph432

.lr.ph432:                                        ; preds = %.lr.ph387, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit
  %i.au = phi i32 [ %i.ee, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit ], [ %.pre396, %.lr.ph387 ]
  %i.av = load i32, ptr %i.am, align 8, !tbaa !89, !noalias !90 ; 2 uses
  %.not.i36 = icmp eq i32 %i.av, 0
  br i1 %.not.i36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph432
  store ptr null, ptr %i.ap, align 8, !tbaa !93, !noalias !90
  store i32 0, ptr %i.al, align 4, !tbaa !84, !noalias !90
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit

bb.h:                                             ; preds = %.lr.ph432
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !94, !noalias !95 ; 4 uses
  %i.ax = icmp ugt ptr %i.aw, %.sroa.6167.0.copyload
  tail call void @llvm.assume(i1 %i.ax), !noalias !95
  %i.ay = icmp eq i32 %i.au, %.sroa.4165.0.copyload
  tail call void @llvm.assume(i1 %i.ay), !noalias !95
  tail call void @llvm.assume(i1 %i.at), !noalias !95
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !82, !noalias !95 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 3 uses
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !79, !noalias !95
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !3, !noalias !95
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !31, !noalias !95
  %.not.i38 = icmp eq i8 %i.be, 34
  br i1 %.not.i38, label %.critedge.i, label %bb.i

.critedge.i:                                      ; preds = %bb.h
  %i.bf = icmp ugt ptr %i.ba, %.sroa.6167.0.copyload
  tail call void @llvm.assume(i1 %i.bf), !noalias !95
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !79, !noalias !95
  %i.bh = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !95
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !31, !noalias !95
  %.not.i39 = icmp eq i8 %i.bk, 58
  br i1 %.not.i39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge.i, %bb.h
  store i32 3, ptr %i.am, align 8, !tbaa !89, !noalias !95
  store ptr null, ptr %i.ap, align 8, !tbaa !93
  store i32 0, ptr %i.al, align 4, !tbaa !84
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit

bb.j:                                             ; preds = %.critedge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  tail call void @llvm.assume(i1 %or.cond.i42), !noalias !95
  store i32 %i.an, ptr %i.al, align 4, !tbaa !84, !noalias !95
  %i.bm = icmp ugt ptr %i.bg, %.sroa.6167.0.copyload
  tail call void @llvm.assume(i1 %i.bm), !noalias !98
  tail call void @llvm.assume(i1 %i.ao), !noalias !98
  %i.bn = load ptr, ptr %i.ap, align 8, !tbaa !93, !noalias !103
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !106, !noalias !108 ; 2 uses
  %i.bq = load ptr, ptr %i.aq, align 8, !tbaa !111, !noalias !108
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !54, !noalias !108
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !108
  %i.bu = tail call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull %i.bl, ptr noundef %i.bq, i1 noundef zeroext false) #2, !noalias !108, !inline_history !112 ; 4 uses
  %.not.i44 = icmp eq ptr %i.bu, null
  br i1 %.not.i44, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.aq, align 8, !tbaa !111, !noalias !108 ; 3 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 2 uses
  store ptr %i.bu, ptr %i.aq, align 8, !tbaa !111, !noalias !108
  %i.bz = load ptr, ptr %1, align 8, !tbaa !29
  %i.ca = load i64, ptr %i.ar, align 8, !tbaa !32
  %i.cb = icmp eq i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cc = icmp eq ptr %i.bu, %i.bv
  br i1 %i.cc, label %bb.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.l
  %bcmp.i = tail call i32 @bcmp(ptr %i.bv, ptr %i.bz, i64 %i.by)
  %i.cd = icmp eq i32 %bcmp.i, 0
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.b, ptr %2, align 8, !tbaa !113
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !3
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bg, ptr %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !tbaa !88
  store i8 1, ptr %i.ce, align 8, !tbaa !114
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.k
  %i.cf = load i32, ptr %i.al, align 4, !tbaa !84 ; 11 uses
  %.not377 = icmp slt i32 %i.cf, %.sroa.4165.0.copyload
  br i1 %.not377, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !94  ; 5 uses
  %i.ch = icmp ugt ptr %i.cg, %.sroa.6167.0.copyload
  tail call void @llvm.assume(i1 %i.ch)
  %.not.i46 = icmp sgt i32 %i.cf, %.sroa.4165.0.copyload
  %.pre397 = load ptr, ptr %i.b, align 8, !tbaa !82 ; 4 uses
  br i1 %.not.i46, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 10 uses
  store ptr %i.ci, ptr %i.c, align 8, !tbaa !79
  %i.cj = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre397, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !31
  switch i8 %i.cm, label %bb.t [
    i8 91, label %bb.u
    i8 123, label %bb.u
    i8 58, label %bb.u
    i8 44, label %bb.u
    i8 93, label %bb.q
    i8 125, label %bb.q
    i8 34, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.cn = add nsw i32 %i.cf, -1                   ; 4 uses
  store i32 %i.cn, ptr %i.al, align 4, !tbaa !84
  %.not6.i = icmp sgt i32 %i.cn, %.sroa.4165.0.copyload
  br i1 %.not6.i, label %bb.u, label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.co = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre397, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !31
  %i.cs = icmp eq i8 %i.cr, 58
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr %i.ct, ptr %i.c, align 8, !tbaa !79
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.p
  %i.cu = add nsw i32 %i.cf, -1                   ; 4 uses
  store i32 %i.cu, ptr %i.al, align 4, !tbaa !84
  %.not7.i = icmp sgt i32 %i.cu, %.sroa.4165.0.copyload
  br i1 %.not7.i, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.t, %bb.s, %bb.q
  %i.cv = phi ptr [ %i.ci, %bb.p ], [ %i.ci, %bb.p ], [ %i.ci, %bb.p ], [ %i.ci, %bb.p ], [ %i.ci, %bb.t ], [ %i.ct, %bb.s ], [ %i.ci, %bb.q ] ; 2 uses
  %i.cw = phi i32 [ %i.cf, %bb.p ], [ %i.cf, %bb.p ], [ %i.cf, %bb.p ], [ %i.cf, %bb.p ], [ %i.cu, %bb.t ], [ %i.cf, %bb.s ], [ %i.cn, %bb.q ] ; 2 uses
  %i.cx = load ptr, ptr %i.ap, align 8, !tbaa !93
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !106 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !116
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dd = zext i32 %i.db to i64                   ; 2 uses
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !88
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dd
  %i.dg = icmp ult ptr %i.cv, %i.df
  br i1 %i.dg, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit

.lr.ph:                                           ; preds = %bb.u, %bb.x
  %i.dh = phi i32 [ %i.dq, %bb.x ], [ %i.cw, %bb.u ] ; 3 uses
  %i.di = phi ptr [ %i.dj, %bb.x ], [ %i.cv, %bb.u ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 4 uses
  store ptr %i.dj, ptr %i.c, align 8, !tbaa !79
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre397, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !31
  switch i8 %i.dn, label %bb.x [
    i8 91, label %bb.v
    i8 123, label %bb.v
    i8 93, label %bb.w
    i8 125, label %bb.w
  ]

bb.v:                                             ; preds = %.lr.ph, %.lr.ph
  %i.do = add nuw nsw i32 %i.dh, 1                ; 2 uses
  store i32 %i.do, ptr %i.al, align 4, !tbaa !84
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph, %.lr.ph
  %i.dp = add nsw i32 %i.dh, -1                   ; 4 uses
  store i32 %i.dp, ptr %i.al, align 4, !tbaa !84
  %.not8.i48 = icmp sgt i32 %i.dp, %.sroa.4165.0.copyload
  br i1 %.not8.i48, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.lr.ph, %bb.w, %bb.v
  %i.dq = phi i32 [ %i.dh, %.lr.ph ], [ %i.dp, %bb.w ], [ %i.do, %bb.v ] ; 2 uses
  %i.dr = load ptr, ptr %i.dc, align 8, !tbaa !88
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dd
  %i.dt = icmp ult ptr %i.dj, %i.ds
  br i1 %i.dt, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit, !llvm.loop !124

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit: ; preds = %bb.x, %bb.u
  %i.du = phi i32 [ %i.cw, %bb.u ], [ %i.dq, %bb.x ]
  store i32 3, ptr %i.am, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

.loopexit:                                        ; preds = %bb.w, %bb.o, %bb.q, %bb.t
  %i.dv = phi i32 [ %i.cu, %bb.t ], [ %i.cf, %bb.o ], [ %i.cn, %bb.q ], [ %i.dp, %bb.w ]
  %i.dw = phi ptr [ %i.ci, %bb.t ], [ %i.cg, %bb.o ], [ %i.ci, %bb.q ], [ %i.dj, %bb.w ] ; 3 uses
  %i.dx = icmp ugt ptr %i.dw, %.sroa.6167.0.copyload
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp eq i32 %i.dv, %.sroa.4165.0.copyload
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !79
  %i.ea = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre397, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !31
  switch i8 %i.ed, label %bb.z [
    i8 125, label %bb.y
    i8 44, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit
  ]

bb.y:                                             ; preds = %.loopexit
  store i32 %i.as, ptr %i.al, align 4, !tbaa !84
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

bb.z:                                             ; preds = %.loopexit
  store i32 3, ptr %i.am, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit: ; preds = %bb.z, %bb.y, %.loopexit, %bb.n, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit
  %i.ee = phi i32 [ %.sroa.4165.0.copyload, %bb.z ], [ %i.as, %bb.y ], [ %.sroa.4165.0.copyload, %.loopexit ], [ %i.cf, %bb.n ], [ %i.du, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit ] ; 2 uses
  %.not376 = icmp slt i32 %i.ee, %.sroa.4165.0.copyload
  br i1 %.not376, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit, label %.lr.ph432

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit, %bb.j, %.lr.ph387, %bb.c, %bb.b, %bb.m, %bb.i, %bb.g
  %.6 = phi i32 [ 17, %bb.b ], [ 0, %bb.m ], [ 3, %bb.i ], [ %i.av, %bb.g ], [ 17, %bb.c ], [ 0, %.lr.ph387 ], [ 5, %bb.j ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit ]
  ret i32 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 18) i32 @_ZN8facebook5velox9functions12extractArrayERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Range", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !72, !noalias !125 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79, !noalias !125 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81, !noalias !125 ; 3 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !82, !noalias !125 ; 2 uses
  %i.i = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !125
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !31, !noalias !125
  %.not.i.i21 = icmp eq i8 %i.l, 91
  br i1 %.not.i.i21, label %._crit_edge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre468 = load i32, ptr %i.a, align 8, !tbaa !83, !noalias !125
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !84, !noalias !125 ; 3 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !83, !noalias !125
  %i.p = icmp eq i32 %i.n, %i.o
  tail call void @llvm.assume(i1 %i.p), !noalias !125
  %i.q = icmp sgt i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.q), !noalias !125
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !82, !noalias !125 ; 2 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !125
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !31, !noalias !125
  %.not8.i.i = icmp eq i8 %i.v, 91
  br i1 %.not8.i.i, label %bb.d, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.c, align 8, !tbaa !79, !noalias !125
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.x = phi ptr [ %i.h, %._crit_edge ], [ %i.r, %bb.d ]
  %i.y = phi i32 [ %.pre468, %._crit_edge ], [ %i.n, %bb.d ] ; 2 uses
  %i.z = phi ptr [ %i.d, %._crit_edge ], [ %i.w, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = icmp eq ptr %i.z, %i.aa
  tail call void @llvm.assume(i1 %i.ab), !noalias !125
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ad = icmp sgt i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.ad), !noalias !125
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !3, !noalias !125
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !31, !noalias !125
  %i.ai = icmp eq i8 %i.ah, 93
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !79, !noalias !125
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ -1, %bb.f ], [ 1, %bb.e ]
  %i.ak = add nsw i32 %i.y, %.sink
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !84, !noalias !125
  %.sroa.4239.0.copyload = load i32, ptr %i.a, align 8, !tbaa !3, !noalias !125 ; 25 uses
  %.sroa.6241.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !88, !noalias !125 ; 7 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.al, ptr %3, align 8, !noalias !128
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !128
  %i.aq = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %3) #2, !noalias !128 ; 2 uses
  %i.ar = and i64 %i.aq, 255
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.h, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, !prof !131

bb.h:                                             ; preds = %bb.g
  %.sroa.53.0.extract.shift.i.i = and i64 %i.aq, -4294967296 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !111, !noalias !132 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !111, !noalias !132 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.01115.i.i.i.i.i = phi ptr [ %i.at, %bb.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.au = load i8, ptr %.01115.i.i.i.i.i, align 1, !tbaa !31
  %i.av = sext i8 %i.au to i32
  %i.aw = call i32 @isspace(i32 noundef %i.av) #23
  %.not12.not.i.i.not.i.i.i.not = icmp ne i32 %i.aw, 0 ; 3 uses
  br i1 %.not12.not.i.i.not.i.i.i.not, label %bb.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %i.ax = phi i1 [ true, %bb.h ], [ %.not12.not.i.i.not.i.i.i.not, %.lr.ph.i.i.i.i.i ], [ %.not12.not.i.i.not.i.i.i.not, %bb.i ]
  %.sroa.3.0.insert.insert.i.i.i.i = phi i64 [ %.sroa.53.0.extract.shift.i.i, %bb.h ], [ %.sroa.53.0.extract.shift.i.i, %bb.i ], [ 2560, %.lr.ph.i.i.i.i.i ] ; 3 uses
  br i1 %i.ax, label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit
  %i.ay = icmp slt i64 %.sroa.3.0.insert.insert.i.i.i.i, 0
  br i1 %i.ay, label %.preheader, label %bb.y

.preheader:                                       ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24, label %.lr.ph454

.lr.ph454:                                        ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bc = add nsw i32 %.sroa.4239.0.copyload, 1   ; 5 uses
  %i.bd = icmp sgt i32 %.sroa.4239.0.copyload, 0  ; 2 uses
  %or.cond.i4.i50 = icmp samesign ult i32 %.sroa.4239.0.copyload, 2147483646
  %i.be = add nsw i32 %.sroa.4239.0.copyload, -1  ; 3 uses
  %or.cond.i.i51 = icmp ult i32 %i.be, 2147483646
  %.promoted = load i32, ptr %i.az, align 4, !tbaa !84 ; 2 uses
  %.not448533 = icmp slt i32 %.promoted, %.sroa.4239.0.copyload
  br i1 %.not448533, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24, label %.lr.ph535.preheader

.lr.ph535.preheader:                              ; preds = %.lr.ph454
  %.promoted558 = load i32, ptr %i.ba, align 8, !tbaa !89
  br label %.lr.ph535

._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30
  %i.bf = shl i64 %i.di, 32
  br label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24

_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24: ; preds = %.lr.ph454, %._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge, %.preheader
  %.0380.lcssa = phi i64 [ 0, %.preheader ], [ %i.bf, %._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge ], [ 0, %.lr.ph454 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !89
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %bb.w, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

.lr.ph535:                                        ; preds = %.lr.ph535.preheader, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30
  %i.bi = phi i32 [ %i.dg, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30 ], [ %.promoted558, %.lr.ph535.preheader ] ; 4 uses
  %.0380453534 = phi i64 [ %i.di, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30 ], [ 0, %.lr.ph535.preheader ]
  %i.bj = phi i32 [ %i.dh, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30 ], [ %.promoted, %.lr.ph535.preheader ]
  %.not.i32 = icmp eq i32 %i.bi, 0
  br i1 %.not.i32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph535
  store ptr null, ptr %i.bb, align 8, !tbaa !93, !noalias !137
  store i32 0, ptr %i.az, align 4, !tbaa !84, !noalias !137
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

bb.k:                                             ; preds = %.lr.ph535
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !94, !noalias !140 ; 4 uses
  %i.bl = icmp ugt ptr %i.bk, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.bl), !noalias !140
  %i.bm = icmp eq i32 %i.bj, %i.bc
  call void @llvm.assume(i1 %i.bm), !noalias !140
  call void @llvm.assume(i1 %i.bd), !noalias !140
  %.pre469 = load ptr, ptr %i.b, align 8, !tbaa !82 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 8 uses
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !79
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre469, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  switch i8 %i.br, label %bb.o [
    i8 91, label %bb.p
    i8 123, label %bb.p
    i8 58, label %bb.p
    i8 44, label %bb.p
    i8 93, label %bb.l
    i8 125, label %bb.l
    i8 34, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  store i32 %.sroa.4239.0.copyload, ptr %i.az, align 4, !tbaa !84
  br label %.loopexit452

bb.m:                                             ; preds = %bb.k
  %i.bs = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre469, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !31
  %i.bw = icmp eq i8 %i.bv, 58
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !79
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.k
  store i32 %.sroa.4239.0.copyload, ptr %i.az, align 4, !tbaa !84
  br label %.loopexit452

bb.p:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.n
  %i.by = phi ptr [ %i.bn, %bb.k ], [ %i.bn, %bb.k ], [ %i.bn, %bb.k ], [ %i.bn, %bb.k ], [ %i.bx, %bb.n ] ; 2 uses
  %i.bz = load ptr, ptr %i.bb, align 8, !tbaa !93
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !106 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !116
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.cf = zext i32 %i.cd to i64                   ; 2 uses
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !88
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = icmp ult ptr %i.by, %i.ch
  br i1 %i.ci, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i

.lr.ph:                                           ; preds = %bb.p, %bb.s
  %i.cj = phi i32 [ %i.cs, %bb.s ], [ %i.bc, %bb.p ] ; 3 uses
  %i.ck = phi ptr [ %i.cl, %bb.s ], [ %i.by, %bb.p ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 4 uses
  store ptr %i.cl, ptr %i.c, align 8, !tbaa !79
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.pre469, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !31
  switch i8 %i.cp, label %bb.s [
    i8 91, label %bb.q
    i8 123, label %bb.q
    i8 93, label %bb.r
    i8 125, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph, %.lr.ph
  %i.cq = add nsw i32 %i.cj, 1                    ; 2 uses
  store i32 %i.cq, ptr %i.az, align 4, !tbaa !84
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph, %.lr.ph
  %i.cr = add nsw i32 %i.cj, -1                   ; 4 uses
  store i32 %i.cr, ptr %i.az, align 4, !tbaa !84
  %.not8.i.i38 = icmp sgt i32 %i.cr, %.sroa.4239.0.copyload
  br i1 %.not8.i.i38, label %bb.s, label %.loopexit452.loopexit

bb.s:                                             ; preds = %.lr.ph, %bb.r, %bb.q
  %i.cs = phi i32 [ %i.cj, %.lr.ph ], [ %i.cr, %bb.r ], [ %i.cq, %bb.q ] ; 2 uses
  %i.ct = load ptr, ptr %i.ce, align 8, !tbaa !88
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cf
  %i.cv = icmp ult ptr %i.cl, %i.cu
  br i1 %i.cv, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i, !llvm.loop !124

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i: ; preds = %bb.s, %bb.p
  %i.cw = phi i32 [ %i.bc, %bb.p ], [ %i.cs, %bb.s ]
  store i32 3, ptr %i.ba, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

.loopexit452.loopexit:                            ; preds = %bb.r
  %i.cx = icmp eq i32 %i.cr, %.sroa.4239.0.copyload
  br label %.loopexit452

.loopexit452:                                     ; preds = %.loopexit452.loopexit, %bb.o, %bb.l
  %i.cy = phi ptr [ %i.bn, %bb.o ], [ %i.bn, %bb.l ], [ %i.cl, %.loopexit452.loopexit ] ; 3 uses
  %i.cz = phi i1 [ true, %bb.o ], [ true, %bb.l ], [ %i.cx, %.loopexit452.loopexit ]
  %i.da = icmp ugt ptr %i.cy, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.da)
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.assume(i1 %i.bd)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store ptr %i.db, ptr %i.c, align 8, !tbaa !79
  %i.dc = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.pre469, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !31
  switch i8 %i.df, label %bb.v [
    i8 93, label %bb.t
    i8 44, label %bb.u
  ]

bb.t:                                             ; preds = %.loopexit452
  call void @llvm.assume(i1 %or.cond.i.i51)
  store i32 %i.be, ptr %i.az, align 4, !tbaa !84
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

bb.u:                                             ; preds = %.loopexit452
  call void @llvm.assume(i1 %or.cond.i4.i50)
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !84
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

bb.v:                                             ; preds = %.loopexit452
  store i32 3, ptr %i.ba, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30: ; preds = %bb.j, %bb.v, %bb.u, %bb.t, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i
  %i.dg = phi i32 [ 3, %bb.v ], [ %i.bi, %bb.u ], [ %i.bi, %bb.t ], [ %i.bi, %bb.j ], [ 3, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i ]
  %i.dh = phi i32 [ %.sroa.4239.0.copyload, %bb.v ], [ %i.bc, %bb.u ], [ %i.be, %bb.t ], [ 0, %bb.j ], [ %i.cw, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i ] ; 2 uses
  %i.di = add i64 %.0380453534, 1                 ; 2 uses
  %.not448 = icmp slt i32 %i.dh, %.sroa.4239.0.copyload
  br i1 %.not448, label %._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge, label %.lr.ph535

bb.w:                                             ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  store i32 %.sroa.4239.0.copyload, ptr %i.dj, align 4, !tbaa !84
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.6241.0.copyload, i64 4 ; 2 uses
  store ptr %i.dk, ptr %i.c, align 8, !tbaa !79
  %i.dl = icmp sgt i32 %.sroa.4239.0.copyload, 0
  call void @llvm.assume(i1 %i.dl)
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.dn = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !31
  %i.dr = icmp eq i8 %i.dq, 93
  br i1 %i.dr, label %bb.x, label %.thread505

bb.x:                                             ; preds = %bb.w
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.6241.0.copyload, i64 8
  store ptr %i.ds, ptr %i.c, align 8, !tbaa !79
  br label %.thread505

.thread505:                                       ; preds = %bb.w, %bb.x
  %.sink539 = phi i32 [ -1, %bb.x ], [ 1, %bb.w ]
  %i.dt = add nsw i32 %.sroa.4239.0.copyload, %.sink539
  store i32 %i.dt, ptr %i.dj, align 4, !tbaa !84
  %.sroa.686.0.extract.shift524 = add i64 %.sroa.3.0.insert.insert.i.i.i.i, %.0380.lcssa
  %i.du = ashr i64 %.sroa.686.0.extract.shift524, 32
  br label %.lr.ph460

bb.y:                                             ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit
  %i.dv = lshr i64 %.sroa.3.0.insert.insert.i.i.i.i, 32
  %.not450 = icmp eq ptr %i.b, null
  br i1 %.not450, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.lr.ph460

.lr.ph460:                                        ; preds = %.thread505, %bb.y
  %i.dw = phi i64 [ %i.du, %.thread505 ], [ %i.dv, %bb.y ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 8 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ea = add nsw i32 %.sroa.4239.0.copyload, 1   ; 6 uses
  %i.eb = icmp sgt i32 %.sroa.4239.0.copyload, 0  ; 2 uses
  %or.cond.i4.i48 = icmp samesign ult i32 %.sroa.4239.0.copyload, 2147483646
  %i.ec = add nsw i32 %.sroa.4239.0.copyload, -1  ; 3 uses
  %or.cond.i.i49 = icmp ult i32 %i.ec, 2147483646
  %.promoted462 = load i32, ptr %i.dx, align 4, !tbaa !84 ; 2 uses
  %.not451536 = icmp slt i32 %.promoted462, %.sroa.4239.0.copyload
  br i1 %.not451536, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.lr.ph538.preheader

.lr.ph538.preheader:                              ; preds = %.lr.ph460
  %.promoted559 = load i32, ptr %i.dy, align 8, !tbaa !89
  br label %.lr.ph538

.lr.ph538:                                        ; preds = %.lr.ph538.preheader, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit
  %i.ed = phi i32 [ %i.gf, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %.promoted559, %.lr.ph538.preheader ] ; 4 uses
  %.06.i459537 = phi i64 [ %i.gh, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ 0, %.lr.ph538.preheader ] ; 3 uses
  %i.ee = phi i32 [ %i.gg, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %.promoted462, %.lr.ph538.preheader ]
  %.not.i33 = icmp eq i32 %i.ed, 0
  br i1 %.not.i33, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit: ; preds = %.lr.ph538
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !94, !noalias !143 ; 2 uses
  %i.eg = icmp ugt ptr %i.ef, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.eg), !noalias !143
  %i.eh = icmp eq i32 %i.ee, %i.ea
  call void @llvm.assume(i1 %i.eh), !noalias !143
  call void @llvm.assume(i1 %i.eb), !noalias !143
  %i.ei = icmp eq i64 %.06.i459537, %i.dw
  br i1 %i.ei, label %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit, label %bb.z

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread: ; preds = %.lr.ph538
  store ptr null, ptr %i.dz, align 8, !tbaa !93, !noalias !148
  store i32 0, ptr %i.dx, align 4, !tbaa !84, !noalias !148
  %i.ej = icmp eq i64 %.06.i459537, %i.dw
  br i1 %i.ej, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.z:                                             ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !94  ; 4 uses
  %i.el = icmp ugt ptr %i.ek, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.el)
  %.pre470 = load ptr, ptr %i.b, align 8, !tbaa !82 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 8 uses
  store ptr %i.em, ptr %i.c, align 8, !tbaa !79
  %i.en = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %.pre470, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !31
  switch i8 %i.eq, label %bb.ad [
    i8 91, label %bb.ae
    i8 123, label %bb.ae
    i8 58, label %bb.ae
    i8 44, label %bb.ae
    i8 93, label %bb.aa
    i8 125, label %bb.aa
    i8 34, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  store i32 %.sroa.4239.0.copyload, ptr %i.dx, align 4, !tbaa !84
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.er = load i32, ptr %i.em, align 4, !tbaa !3
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %.pre470, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !31
  %i.ev = icmp eq i8 %i.eu, 58
  br i1 %i.ev, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.c, align 8, !tbaa !79
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.z
  store i32 %.sroa.4239.0.copyload, ptr %i.dx, align 4, !tbaa !84
  br label %.loopexit

bb.ae:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.ac
  %i.ex = phi ptr [ %i.em, %bb.z ], [ %i.em, %bb.z ], [ %i.em, %bb.z ], [ %i.em, %bb.z ], [ %i.ew, %bb.ac ] ; 2 uses
  %i.ey = load ptr, ptr %i.dz, align 8, !tbaa !93
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !106 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !116
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fe = zext i32 %i.fc to i64                   ; 2 uses
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !88
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fe
  %i.fh = icmp ult ptr %i.ex, %i.fg
  br i1 %i.fh, label %.lr.ph458, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41

.lr.ph458:                                        ; preds = %bb.ae, %bb.ah
  %i.fi = phi i32 [ %i.fr, %bb.ah ], [ %i.ea, %bb.ae ] ; 3 uses
  %i.fj = phi ptr [ %i.fk, %bb.ah ], [ %i.ex, %bb.ae ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 4 uses
  store ptr %i.fk, ptr %i.c, align 8, !tbaa !79
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre470, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !31
  switch i8 %i.fo, label %bb.ah [
    i8 91, label %bb.af
    i8 123, label %bb.af
    i8 93, label %bb.ag
    i8 125, label %bb.ag
  ]

bb.af:                                            ; preds = %.lr.ph458, %.lr.ph458
  %i.fp = add nsw i32 %i.fi, 1                    ; 2 uses
  store i32 %i.fp, ptr %i.dx, align 4, !tbaa !84
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph458, %.lr.ph458
  %i.fq = add nsw i32 %i.fi, -1                   ; 4 uses
  store i32 %i.fq, ptr %i.dx, align 4, !tbaa !84
  %.not8.i.i45 = icmp sgt i32 %i.fq, %.sroa.4239.0.copyload
  br i1 %.not8.i.i45, label %bb.ah, label %.loopexit.loopexit

bb.ah:                                            ; preds = %.lr.ph458, %bb.ag, %bb.af
  %i.fr = phi i32 [ %i.fi, %.lr.ph458 ], [ %i.fq, %bb.ag ], [ %i.fp, %bb.af ] ; 2 uses
  %i.fs = load ptr, ptr %i.fd, align 8, !tbaa !88
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fe
  %i.fu = icmp ult ptr %i.fk, %i.ft
  br i1 %i.fu, label %.lr.ph458, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41, !llvm.loop !124

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41: ; preds = %bb.ah, %bb.ae
  %i.fv = phi i32 [ %i.ea, %bb.ae ], [ %i.fr, %bb.ah ]
  store i32 3, ptr %i.dy, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

.loopexit.loopexit:                               ; preds = %bb.ag
  %i.fw = icmp eq i32 %i.fq, %.sroa.4239.0.copyload
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ad, %bb.aa
  %i.fx = phi ptr [ %i.em, %bb.ad ], [ %i.em, %bb.aa ], [ %i.fk, %.loopexit.loopexit ] ; 3 uses
  %i.fy = phi i1 [ true, %bb.ad ], [ true, %bb.aa ], [ %i.fw, %.loopexit.loopexit ]
  %i.fz = icmp ugt ptr %i.fx, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.fz)
  call void @llvm.assume(i1 %i.fy)
  call void @llvm.assume(i1 %i.eb)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store ptr %i.ga, ptr %i.c, align 8, !tbaa !79
  %i.gb = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.pre470, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !31
  switch i8 %i.ge, label %bb.ak [
    i8 93, label %bb.ai
    i8 44, label %bb.aj
  ]

bb.ai:                                            ; preds = %.loopexit
  call void @llvm.assume(i1 %or.cond.i.i49)
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !84
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.aj:                                            ; preds = %.loopexit
  call void @llvm.assume(i1 %or.cond.i4.i48)
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !84
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.ak:                                            ; preds = %.loopexit
  store i32 3, ptr %i.dy, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread, %bb.ak, %bb.aj, %bb.ai, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41
  %i.gf = phi i32 [ 3, %bb.ak ], [ %i.ed, %bb.aj ], [ %i.ed, %bb.ai ], [ 3, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41 ], [ %i.ed, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread ]
  %i.gg = phi i32 [ %.sroa.4239.0.copyload, %bb.ak ], [ %i.ea, %bb.aj ], [ %i.ec, %bb.ai ], [ %i.fv, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41 ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread ] ; 2 uses
  %i.gh = add i64 %.06.i459537, 1
  %.not451 = icmp slt i32 %i.gg, %.sroa.4239.0.copyload
  br i1 %.not451, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.lr.ph538

_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.b, ptr %2, align 8, !tbaa !113
  %.sroa.0.sroa.7.0..sroa_idx225 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ea, ptr %.sroa.0.sroa.7.0..sroa_idx225, align 8, !tbaa !3
  %.sroa.0.sroa.8.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %.sroa.0.sroa.8.0..sroa_idx231, align 4
  %.sroa.0.sroa.9.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ef, ptr %.sroa.0.sroa.9.0..sroa_idx237, align 8, !tbaa !88
  store i8 1, ptr %i.gi, align 8, !tbaa !114
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread, %.lr.ph460, %bb.b, %bb.c, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, %bb.y, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit
  %.4 = phi i32 [ 0, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread ], [ 17, %bb.c ], [ 0, %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit ], [ 0, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit ], [ 0, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24 ], [ 0, %bb.y ], [ 17, %bb.b ], [ 0, %.lr.ph460 ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
end_hunk_0
