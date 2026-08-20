inline.NumInlined: 6315
inline.NumDeleted: 2384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a
bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !39
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !16
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !1004
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !75
  %.not18 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not18, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !16  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !985, !nonnull !119, !align !486
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !915
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !163
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !164
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !169 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #33
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !171
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !172
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.br = and i32 %i.be, 65536
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !39
  %.not.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !16
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !1004
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i14
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.204", align 8   ; 14 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !964  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !125    ; 3 uses
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
  store ptr %i.h, ptr %i.i, align 8, !tbaa !127
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !187

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !125
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !964
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !127
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !975

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !964
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !985, !nonnull !119, !align !486
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !916
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr %.sroa.06.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.y)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.z, align 8, !tbaa !971
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !75
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !75
  %i.ad = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !1005 ; 2 uses

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.ad, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !964 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !125   ; 5 uses
  %.not = icmp eq ptr %i.ae, %i.af
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv i64 %i.ai, 24                      ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.aj, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %4 = icmp ult i64 %i.aj, 2
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #30
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.021 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.021 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !114, !range !118, !noundef !119
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.aq = load ptr, ptr %0, align 8, !tbaa !125
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.021 ; 3 uses
  %i.as = load i64, ptr %i.am, align 8, !tbaa !75
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.at, align 8, !tbaa !75
  store i64 %i.av, ptr %i.au, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i8 1, ptr %i.aw, align 8, !tbaa !114
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.ax = or disjoint i64 %.021, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !114, !range !118, !noundef !119
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bc = load ptr, ptr %0, align 8, !tbaa !125
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ax ; 3 uses
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !75
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !75
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !75
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i8 1, ptr %i.bi, align 8, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bj = add nuw i64 %.021, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1006

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.021.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod35 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.021.epil.init ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !114, !range !118, !noundef !119
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bo = load ptr, ptr %0, align 8, !tbaa !125
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %.021.epil.init ; 3 uses
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !75
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !75
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !75
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !75
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i8 1, ptr %i.bu, align 8, !tbaa !114
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !939 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !940 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !941 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cj, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.bz, %bb.l ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i16
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !127
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #32
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i16
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.cj, %i.cb
  br i1 %.not.i.i.i.i.i17, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i16, !llvm.loop !942

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !940
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.ck = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bz, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !943
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #32
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !944 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !945
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #32
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cx = load ptr, ptr %3, align 8, !tbaa !125   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !127
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #32
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.dd = load ptr, ptr %2, align 8, !tbaa !125   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.de = load ptr, ptr %i.r, align 8, !tbaa !127
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.ad

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.ak, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.di = load ptr, ptr %2, align 8, !tbaa !125   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = load ptr, ptr %i.r, align 8, !tbaa !127
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dm) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1001, !range !118, !noundef !119
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
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1007, !nonnull !119, !align !486
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #30
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.l = load ptr, ptr %5, align 8, !tbaa !163
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !164
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !169  ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #33
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !127
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !187

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !125
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !964
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !127
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !975

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !964
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !75 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load i32, ptr %i.w, align 8, !tbaa !962  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.06.0.copyload, ptr %i.y, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !1018, !nonnull !119, !align !486
  %i.ab = load <2 x ptr>, ptr %i.u, align 8, !tbaa !84
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !915 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !451
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.af, align 8, !tbaa !947
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !440 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !399 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 48                ; 7 uses
  %i.ap = icmp ugt i64 %i.ao, 576460752303423487
  %i.aq = ptrtoint ptr %.sroa.06.0.copyload to i64
  br i1 %i.ap, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #33
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i16, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.ar = shl nuw nsw i64 %i.ao, 4
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #36
          to label %.noexc9.i unwind label %bb.e  ; 4 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  store ptr %i.as, ptr %i.ag, align 8, !tbaa !944
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !945
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.as, %.noexc9.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.noexc9.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc9.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !937
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !948
  %i.aw = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1026

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc9.i
  %.lcssa.unr = phi ptr [ poison, %.noexc9.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.as, %.noexc9.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ao, %.noexc9.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ao, 8
  br i1 %i.ay, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !937
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !948
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !937
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !948
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !937
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !948
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !937
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !948
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bg, align 8, !tbaa !937
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bh, align 8, !tbaa !948
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bi, align 8, !tbaa !937
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bj, align 8, !tbaa !948
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bk, align 8, !tbaa !937
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bl, align 8, !tbaa !948
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bm, align 8, !tbaa !937
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bn, align 8, !tbaa !948
  %i.bo = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !951

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !952
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bu = and i32 %i.x, 128
  %.not.i = icmp eq i32 %i.bu, 0
  %i.bv = and i32 %i.x, -6
  %spec.select = select i1 %.not.i, i32 %i.x, i32 %i.bv
  store i32 %spec.select, ptr %i.bt, align 8, !tbaa !936
  store i64 %1, ptr %i.br, align 8, !tbaa !957
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.aq, ptr %i.bw, align 8, !tbaa !75
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bx, align 4, !tbaa !955
  store i64 0, ptr %i.bs, align 8, !tbaa !75
  %i.by = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !1027 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.ca = load i64, ptr %i.br, align 8, !tbaa !957
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.ca)
          to label %bb.f unwind label %bb.g, !inline_history !1027

bb.f:                                             ; preds = %.noexc
  %i.cb = load i8, ptr %i.bx, align 4, !tbaa !955, !range !118, !noundef !119
  %i.cc = trunc nuw i8 %i.cb to i1                ; 2 uses
  br i1 %i.cc, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !964 ; 2 uses
  %i.ce = load ptr, ptr %2, align 8, !tbaa !125   ; 5 uses
  %.not = icmp eq ptr %i.cd, %i.ce
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv i64 %i.ch, 24                      ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ci, i64 1) ; 3 uses
  %xtraiter37 = and i64 %umax, 1
  %4 = icmp ult i64 %i.ci, 2
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #30
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dh, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.024 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !114, !range !118, !noundef !119
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.co = load ptr, ptr %0, align 8, !tbaa !125
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.024 ; 3 uses
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !75
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !75
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !75
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !75
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i8 1, ptr %i.cu, align 8, !tbaa !114
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cv = or disjoint i64 %.024, 1                ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !114, !range !118, !noundef !119
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.da = load ptr, ptr %0, align 8, !tbaa !125
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cv ; 3 uses
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !75
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !75
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !75
  store i64 %i.df, ptr %i.de, align 8, !tbaa !75
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i8 1, ptr %i.dg, align 8, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.dh = add nuw i64 %.024, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1028

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod39)
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.024.epil.init ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !114, !range !118, !noundef !119
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dm = load ptr, ptr %0, align 8, !tbaa !125
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %.024.epil.init ; 3 uses
  %i.do = load i64, ptr %i.di, align 8, !tbaa !75
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !75
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !75
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i8 1, ptr %i.ds, align 8, !tbaa !114
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.dt = load ptr, ptr %i.ag, align 8, !tbaa !944 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !945
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #32
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.l, %.loopexit
  %i.dz = load ptr, ptr %3, align 8, !tbaa !125   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !127
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #32
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ef = load ptr, ptr %2, align 8, !tbaa !125   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.eg = load ptr, ptr %i.r, align 8, !tbaa !127
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ej) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.cc

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.g ], [ %i.bz, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ek = load ptr, ptr %2, align 8, !tbaa !125   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %.body
  %i.el = load ptr, ptr %i.r, align 8, !tbaa !127
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.eo) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5boost10filesystem6detail28directory_iterator_incrementERNS0_18directory_iteratorEPNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6fibers4numa4nodeC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<unsigned int, unsigned int, std::_Identity<unsigned int>, std::less<unsigned int>>::_Alloc_node", align 8 ; 4 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !129
  store i32 %i.a, ptr %0, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.f, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt3setIjSt4lessIjESaIjEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.b, ptr %2, align 8, !tbaa !181
  %i.j = call noundef ptr @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIjESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.l, %.noexc.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !183  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !184

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.j, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !185  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !186

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.f, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !57
  store i64 %i.p, ptr %i.g, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  store ptr %i.j, ptr %i.d, align 8, !tbaa !76
  br label %_ZNSt3setIjSt4lessIjESaIjEEC2ERKS3_.exit

_ZNSt3setIjSt4lessIjESaIjEEC2ERKS3_.exit:         ; preds = %bb.a, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !176  ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !174  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.e

bb.e:                                             ; preds = %_ZNSt3setIjSt4lessIjESaIjEEC2ERKS3_.exit
  %i.y = icmp ugt i64 %i.x, 9223372036854775804
  br i1 %i.y, label %.noexc.i.i5, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !187

.noexc.i.i5:                                      ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i5
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #36
          to label %.noexc6 unwind label %bb.j

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %_ZNSt3setIjSt4lessIjESaIjEEC2ERKS3_.exit
  %i.aa = phi ptr [ null, %_ZNSt3setIjSt4lessIjESaIjEEC2ERKS3_.exit ], [ %i.z, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !174
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !176
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !175
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !140 ; 3 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !140
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 4
  br i1 %i.aj, label %bb.f, label %bb.g, !prof !188

bb.f:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aa, ptr align 4 %i.ae, i64 %i.ai, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %.noexc6
  %i.ak = icmp eq i64 %i.ai, 4
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !74
  store i32 %i.al, ptr %i.aa, align 4, !tbaa !74
  br label %bb.i

end_hunk_1
begin_hunk_2_@_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED0Ev:bb.a
  br label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.o) #30, !inline_history !1129
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1124 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 acq_rel, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #30, !inline_history !1127
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.n = atomicrmw sub ptr %i.m, i32 1 acq_rel, align 4
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.d, label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #30, !inline_history !1128
  br label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.s) #30, !inline_history !1129
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED0Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1124 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 acq_rel, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED0Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #30, !inline_history !1148
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.n = atomicrmw sub ptr %i.m, i32 1 acq_rel, align 4
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.d, label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED0Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #30, !inline_history !1149
  br label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED0Ev.exit

_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED0Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.s) #30, !inline_history !1150
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 288) #32, !inline_history !1151
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail15sp_counted_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail18sp_counted_impl_pdIPNS_2io18basic_altstringbufIcSt11char_traitsIcESaIcEEENS2_22basic_oaltstringstreamIcS5_S6_E5No_OpEED0Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail18sp_counted_impl_pdIPNS_2io18basic_altstringbufIcSt11char_traitsIcESaIcEEENS2_22basic_oaltstringstreamIcS5_S6_E5No_OpEE7disposeEv(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail15sp_counted_base7destroyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail18sp_counted_impl_pdIPNS_2io18basic_altstringbufIcSt11char_traitsIcESaIcEEENS2_22basic_oaltstringstreamIcS5_S6_E5No_OpEE11get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEE5No_OpE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNKSt9type_infoeqERKS_.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread4, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(68) @_ZTSN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEE5No_OpE) #30
  %.fr = freeze i32 %i.f
  %i.g = icmp eq i32 %.fr, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %spec.select = select i1 %i.g, ptr %i.h, ptr null
  br label %_ZNKSt9type_infoeqERKS_.exit.thread4

_ZNKSt9type_infoeqERKS_.exit.thread4:             ; preds = %_ZNKSt9type_infoeqERKS_.exit, %bb.b, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.i = phi ptr [ null, %bb.b ], [ %spec.select, %_ZNKSt9type_infoeqERKS_.exit ], [ %i.d, %_ZNKSt9type_infoeqERKS_.exit.thread ]
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail18sp_counted_impl_pdIPNS_2io18basic_altstringbufIcSt11char_traitsIcESaIcEEENS2_22basic_oaltstringstreamIcS5_S6_E5No_OpEE17get_local_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
_ZNKSt9type_infoeqERKS_.exit.thread:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail18sp_counted_impl_pdIPNS_2io18basic_altstringbufIcSt11char_traitsIcESaIcEEENS2_22basic_oaltstringstreamIcS5_S6_E5No_OpEE19get_untyped_deleterEv(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost2io6detail13call_put_headIcSt11char_traitsIcEjEEvRSt13basic_ostreamIT_T0_EPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #3 comdat {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost2io6detail13call_put_lastIcSt11char_traitsIcEjEEvRSt13basic_ostreamIT_T0_EPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #3 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !74
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.b) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.boost::io::too_few_args", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !222    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv i64 %i.g, 136                       ; 3 uses
  %i.i = icmp eq ptr %i.c, %i.d
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !8
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.n, ptr %i.a, align 8, !tbaa !12
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !14
  %i.q = load i64, ptr %i.a, align 8, !tbaa !12
  store i64 %i.q, ptr %i.k, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.r = phi ptr [ %i.p, %.noexc.i ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !16
  store i8 %i.s, ptr %i.r, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.t = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !17
  %i.v = load ptr, ptr %0, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1107 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1060 ; 2 uses
  %i.ab = icmp slt i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !196
  %i.ae = and i8 %i.ad, 2
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.af = sext i32 %i.y to i64
  %i.ag = sext i32 %i.aa to i64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost2io12too_few_argsE, i64 16), ptr %2, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !1152
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !1154
  invoke void @_ZN5boost15throw_exceptionINS_2io12too_few_argsEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %2) #33
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.al, align 8, !tbaa !17
  store i8 0, ptr %i.ak, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !17 ; 2 uses
  %xtraiter = and i64 %i.h, 1
  %.off = add i64 %i.g, -136
  %3 = icmp ult i64 %.off, 136
  br i1 %3, label %.lr.ph.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.new
  %.015.i = phi i64 [ 0, %.new ], [ %i.bl, %bb.m ] ; 3 uses
  %.01314.i = phi i64 [ %i.an, %.new ], [ %i.bk, %bb.m ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.m ]
  %i.ao = getelementptr inbounds nuw [136 x i8], ptr %i.d, i64 %.015.i ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !17
  %i.ar = add i64 %i.aq, %.01314.i                ; 2 uses
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !1046
  %i.at = icmp eq i32 %i.as, -2
  br i1 %i.at, label %bb.k, label %.lr.ph.i.1

bb.k:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1069
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.av)
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.k, %.lr.ph.i
  %.1.i = phi i64 [ %.sroa.speculated.i, %bb.k ], [ %i.ar, %.lr.ph.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.ay = add i64 %i.ax, %.1.i
  %i.az = getelementptr inbounds nuw [136 x i8], ptr %i.d, i64 %.015.i ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 152
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !17
  %i.bd = add i64 %i.bc, %i.ay                    ; 2 uses
  %i.be = load i32, ptr %i.ba, align 8, !tbaa !1046
  %i.bf = icmp eq i32 %i.be, -2
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1069
  %.sroa.speculated.i.1 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.bh)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.1
  %.1.i.1 = phi i64 [ %.sroa.speculated.i.1, %bb.l ], [ %i.bd, %.lr.ph.i.1 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 184
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !17
  %i.bk = add i64 %i.bj, %.1.i.1                  ; 3 uses
  %i.bl = add nuw i64 %.015.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1155

_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.unr-lcssa, %bb.j
  %.015.i.epil.init = phi i64 [ 0, %bb.j ], [ %i.bl, %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.unr-lcssa ]
  %.01314.i.epil.init = phi i64 [ %i.an, %bb.j ], [ %i.bk, %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.bm = getelementptr inbounds nuw [136 x i8], ptr %i.d, i64 %.015.i.epil.init ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !17
  %i.bp = add i64 %i.bo, %.01314.i.epil.init      ; 2 uses
  %i.bq = load i32, ptr %i.bm, align 8, !tbaa !1046
  %i.br = icmp eq i32 %i.bq, -2
  br i1 %i.br, label %bb.n, label %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.epilog-lcssa

bb.n:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !1069
  %.sroa.speculated.i.epil = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.bt)
  br label %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.epilog-lcssa

_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.epilog-lcssa: ; preds = %bb.n, %.lr.ph.i.epil.preheader
  %.1.i.epil = phi i64 [ %.sroa.speculated.i.epil, %bb.n ], [ %i.bp, %.lr.ph.i.epil.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !17
  %i.bw = add i64 %i.bv, %.1.i.epil
  br label %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit

_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit: ; preds = %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.unr-lcssa, %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.epilog-lcssa
  %.lcssa = phi i64 [ %i.bk, %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.unr-lcssa ], [ %i.bw, %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit.epilog-lcssa ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.lcssa)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit
  %i.bx = load i64, ptr %i.am, align 8, !tbaa !17 ; 2 uses
  %i.by = load i64, ptr %i.al, align 8, !tbaa !17
  %i.bz = sub i64 4611686018427387903, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.190) #33
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !14
  %i.cd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cc, i64 noundef %i.bx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader unwind label %bb.s ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !223
  %i.cf = load ptr, ptr %1, align 8, !tbaa !222   ; 2 uses
  %.not29 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not29, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit27
  %i.cg = phi ptr [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit27 ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader ]
  %.028 = phi i64 [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit27 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [136 x i8], ptr %i.cg, i64 %.028 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !17 ; 2 uses
  %i.ck = load i64, ptr %i.al, align 8, !tbaa !17
  %i.cl = sub i64 4611686018427387903, %i.ck
  %i.cm = icmp ult i64 %i.cl, %i.cj
  br i1 %i.cm, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i19

.invoke:                                          ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.190) #33
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i19: ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !14
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.co, i64 noundef %i.cj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit22 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i19
  %i.cq = load i32, ptr %i.ch, align 8, !tbaa !1046
  %i.cr = icmp eq i32 %i.cq, -2
  %.pre30 = load i64, ptr %i.al, align 8, !tbaa !17 ; 5 uses
  br i1 %i.cr, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit22
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !1069 ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, %.pre30
  br i1 %i.cu, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.r:                                             ; preds = %bb.q
  %i.cv = sub nuw i64 %i.ct, %.pre30
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !1045
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre30, i64 noundef 0, i64 noundef %i.cv, i8 noundef signext %i.cx)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit_crit_edge unwind label %.loopexit ; 0 uses

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit_crit_edge: ; preds = %bb.r
  %.pre = load i64, ptr %i.al, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.p, %_ZNK5boost12basic_formatIcSt11char_traitsIcESaIcEE4sizeEv.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i19, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i24
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit_crit_edge, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit22
  %i.da = phi i64 [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit_crit_edge ], [ %.pre30, %bb.q ], [ %.pre30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit22 ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !17 ; 2 uses
  %i.dd = sub i64 4611686018427387903, %i.da
  %i.de = icmp ult i64 %i.dd, %i.dc
  br i1 %i.de, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !14
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dg, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit27 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i24
  %i.di = add nuw i64 %.028, 1                    ; 2 uses
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !223
  %i.dk = load ptr, ptr %1, align 8, !tbaa !222   ; 2 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = sdiv exact i64 %i.dn, 136
  %i.dp = icmp ult i64 %i.di, %i.do
end_hunk_2
