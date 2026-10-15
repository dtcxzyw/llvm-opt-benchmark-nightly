Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/parser?download=true
inline.NumInlined: 4853
inline.NumDeleted: 1730
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z21parser_isValidComplexNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i23: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i23.lr.ph, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !312, !noalias !836 ; 4 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !312, !noalias !836 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  %.pre.i.i20 = ptrtoint ptr %i.am to i64
  %.pre2.i.i21 = ptrtoint ptr %i.al to i64
  %.pre4.i.i22 = sub i64 %.pre.i.i20, %.pre2.i.i21 ; 2 uses
  %.not = icmp eq i64 %.pre4.i.i22, 72
  %or.cond = or i1 %i.an, %.not
  %i.ao = getelementptr i8, ptr %i.al, i64 %.pre4.i.i22
  %i.ap = getelementptr i8, ptr %i.ao, i64 -72
  %i.aq = select i1 %or.cond, ptr %i.ap, ptr %i.al ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !316, !range !165, !noalias !839, !noundef !155
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i23
  %.sroa.05.0.copyload.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !211, !noalias !839 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !211, !noalias !839
  store ptr %i.aj, ptr %3, align 8, !tbaa !42, !alias.scope !839
  store i64 0, ptr %i.ak, align 8, !tbaa !41, !alias.scope !839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !839
  %i.av = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.aw = ptrtoint ptr %.sroa.05.0.copyload.i.i.i to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !44, !noalias !839
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.h
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.az, ptr %3, align 8, !tbaa !40, !alias.scope !839
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !44, !noalias !839
  store i64 %i.ba, ptr %i.aj, align 8, !tbaa !43, !alias.scope !839
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %bb.h
  %i.bb = phi ptr [ %i.az, %.noexc ], [ %i.aj, %bb.h ] ; 2 uses
  switch i64 %i.ax, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.l
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bc = load i8, ptr %.sroa.05.0.copyload.i.i.i, align 1, !tbaa !43
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !43
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %.sroa.05.0.copyload.i.i.i, i64 %i.ax, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i23
  store ptr %i.aj, ptr %3, align 8, !tbaa !42, !alias.scope !839
  store i64 0, ptr %i.ak, align 8, !tbaa !41, !alias.scope !839
  store i8 0, ptr %i.aj, align 8, !tbaa !43, !alias.scope !839
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE3strEm.exit

bb.l:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !44, !noalias !839 ; 2 uses
  store i64 %i.bd, ptr %i.ak, align 8, !tbaa !41, !alias.scope !839
  %i.be = load ptr, ptr %3, align 8, !tbaa !40, !alias.scope !839
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 0, ptr %i.bf, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !839
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE3strEm.exit

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE3strEm.exit: ; preds = %bb.l, %bb.k
  call void @_Z16removeWhiteSpaceRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bg = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.bh = tail call ptr @__errno_location() #38   ; 6 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !54 ; 2 uses
  store i32 0, ptr %i.bh, align 4, !tbaa !54
  %i.bj = call noundef double @strtod(ptr noundef %i.bg, ptr noundef nonnull %i.a) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.bl = icmp eq ptr %i.bk, %i.bg
  br i1 %i.bl, label %bb.m, label %bb.q

bb.m:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE3strEm.exit
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.214) #34
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %.critedge.i.i.i, %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.bn = load i32, ptr %i.bh, align 4, !tbaa !54
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.p, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !54
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.bp = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.aj
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

bb.q:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE3strEm.exit
  %i.br = load i32, ptr %i.bh, align 4, !tbaa !54
  switch i32 %i.br, label %bb.t [
    i32 34, label %.critedge.i.i.i
    i32 0, label %bb.s
  ]

.critedge.i.i.i:                                  ; preds = %bb.q
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.214) #34
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %.critedge.i.i.i
  unreachable

bb.s:                                             ; preds = %bb.q
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !54
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.bs = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.aj
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.t
  %i.bu = load i64, ptr %i.aj, align 8, !tbaa !43
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.u:                                             ; preds = %.noexc.i.i.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
          catch ptr @_ZTISt16invalid_argument
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i
  %i.bx = load i64, ptr %i.aj, align 8, !tbaa !43
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.by) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bm, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ] ; 3 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 1         ; 2 uses
  %.05 = extractvalue { ptr, i32 } %.pn, 0        ; 2 uses
  %i.bz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #32
  %i.ca = icmp eq i32 %.0, %i.bz
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cb = call ptr @__cxa_begin_catch(ptr %.05) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit36 unwind label %bb.ab

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt16invalid_argument) #32
  %i.cd = icmp eq i32 %.0, %i.cc
  br i1 %i.cd, label %bb.x, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit40

bb.x:                                             ; preds = %bb.w
  %i.ce = call ptr @__cxa_begin_catch(ptr %.05) #32 ; 0 uses
  invoke void @_Z46error_attemptedToParseComplexFromInvalidStringv()
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_end_catch()
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit40 unwind label %bb.ak

bb.aa:                                            ; preds = %bb.y
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit40

bb.ab:                                            ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.y
  %i.ci = load ptr, ptr %i.ai, align 8, !tbaa !361, !noalias !840 ; 3 uses
  %i.cj = load ptr, ptr %i.ah, align 8, !tbaa !318, !noalias !840 ; 3 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cn = sdiv exact i64 %i.cm, 24
  %i.co = icmp ugt i64 %i.cn, 384307168202282325
  br i1 %i.co, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !55

.noexc.i.i.i.i.i:                                 ; preds = %bb.ac
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.ac
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #36
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !312, !noalias !840
  %.pre3.i = load ptr, ptr %i.ai, align 8, !tbaa !312, !noalias !840
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %4 = phi ptr [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pre3.i, %.noexc31 ] ; 2 uses
  %5 = phi ptr [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pre.i, %.noexc31 ] ; 2 uses
  %6 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.cp, %.noexc31 ] ; 5 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %5, %4
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %6, %bb.ad ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %5, %bb.ad ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !840
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cq, %4
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !24

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ad
  %i.cs = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEi.exit unwind label %bb.ae, !noalias !840 ; 0 uses

bb.ae:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit.i
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %6, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit40, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %i.cm) #35, !noalias !840
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit40

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEi.exit: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit.i
  %.not.i.i.i.i34 = icmp eq ptr %6, null
  br i1 %.not.i.i.i.i34, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEi.exit
  call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %i.cm) #35
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEi.exit, %bb.ag
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !375
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit36, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i23, !llvm.loop !835

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit36: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, %_ZNKSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_.exit, %bb.v
  %i.cw = phi i1 [ false, %bb.v ], [ true, %_ZNKSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_.exit ], [ true, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit ]
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !318 ; 3 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i37, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit38, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit36
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !319
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #35
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit38

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit38: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit36, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.aj

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit40: ; preds = %bb.w, %.loopexit, %.loopexit.split-lp, %bb.ae, %bb.af, %bb.aa, %bb.z, %bb.ab
  %.merged15 = phi { ptr, i32 } [ %i.ct, %bb.ae ], [ %i.cf, %bb.z ], [ %i.ch, %bb.ab ], [ %i.ct, %bb.af ], [ %i.cg, %bb.aa ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn, %bb.w ]
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !318 ; 3 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i41, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit42, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit40
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !319
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #35
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit42

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit42: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit40, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit38
  %.111 = phi i1 [ %i.cw, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit38 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit42
  %.merged = phi { ptr, i32 } [ %.merged15, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit42 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.v, %bb.e ]
  resume { ptr, i32 } %.merged

bb.ak:                                            ; preds = %bb.z
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ESA_SA_RKNS_11basic_regexIcSC_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::regex_iterator", align 8 ; 8 uses
  store ptr %1, ptr %0, align 8, !tbaa !211
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !211
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !375
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %i.c, align 8, !tbaa !376
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit unwind label %bb.e

_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit: ; preds = %bb.a
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !211
  store i64 %i.j, ptr %i.h, align 8, !tbaa !211
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !318  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !319
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #35
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !318  ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i11, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !319
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #35
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12 ], [ %i.q, %bb.e ]
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !318  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !319
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #35
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn.pn
}

declare void @_Z46error_attemptedToParseComplexFromInvalidStringv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !312  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  %.pre.i = ptrtoint ptr %i.d to i64
  %.pre2.i = ptrtoint ptr %i.b to i64
  %.pre4.i = sub i64 %.pre.i, %.pre2.i            ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i: ; preds = %bb.a
  %.not = icmp eq i64 %.pre4.i, 72
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !316, !range !165, !noundef !155
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  br i1 %.not, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread55, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit: ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 %.pre4.i ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -56
  %i.k = load i8, ptr %i.j, align 8, !tbaa !316, !range !165, !noundef !155
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53, label %bb.j

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread55: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i
  br i1 %i.h, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20._ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i39_crit_edge, label %bb.j

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i
  br i1 %i.h, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20, label %bb.j

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit
  %i.m = getelementptr i8, ptr %i.i, i64 -64
  %i.n = getelementptr i8, ptr %i.i, i64 -72
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread
end_hunk_0
begin_hunk_1_@_Z34isPauliStrSumCoeffWithinQcompRangeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i29: ; preds = %_ZNKSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_.exit.preheader, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !312, !noalias !890 ; 4 uses
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !312, !noalias !890 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  %.pre.i.i26 = ptrtoint ptr %i.at to i64
  %.pre2.i.i27 = ptrtoint ptr %i.as to i64
  %.pre4.i.i28 = sub i64 %.pre.i.i26, %.pre2.i.i27 ; 2 uses
  %.not = icmp eq i64 %.pre4.i.i28, 72
  %or.cond = or i1 %i.au, %.not
  %i.av = getelementptr i8, ptr %i.as, i64 %.pre4.i.i28
  %i.aw = getelementptr i8, ptr %i.av, i64 -72
  %i.ax = select i1 %or.cond, ptr %i.aw, ptr %i.as ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !316, !range !165, !noalias !893, !noundef !155
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i29
  %.sroa.05.0.copyload.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !211, !noalias !893 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !211, !noalias !893
  store ptr %i.ah, ptr %5, align 8, !tbaa !42, !alias.scope !893
  store i64 0, ptr %i.ai, align 8, !tbaa !41, !alias.scope !893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !893
  %i.bc = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.bd = ptrtoint ptr %.sroa.05.0.copyload.i.i.i to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 4 uses
  store i64 %i.be, ptr %i.c, align 8, !tbaa !44, !noalias !893
  %i.bf = icmp ugt i64 %i.be, 15
  br i1 %i.bf, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.j
  %i.bg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc30 unwind label %bb.ac  ; 2 uses

.noexc30:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.bg, ptr %5, align 8, !tbaa !40, !alias.scope !893
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !44, !noalias !893
  store i64 %i.bh, ptr %i.ah, align 8, !tbaa !43, !alias.scope !893
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc30, %bb.j
  %i.bi = phi ptr [ %i.bg, %.noexc30 ], [ %i.ah, %bb.j ] ; 2 uses
  switch i64 %i.be, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.n
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bj = load i8, ptr %.sroa.05.0.copyload.i.i.i, align 1, !tbaa !43
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !43
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %.sroa.05.0.copyload.i.i.i, i64 %i.be, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i29
  store ptr %i.ah, ptr %5, align 8, !tbaa !42, !alias.scope !893
  store i64 0, ptr %i.ai, align 8, !tbaa !41, !alias.scope !893
  store i8 0, ptr %i.ah, align 8, !tbaa !43, !alias.scope !893
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE3strEm.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i.i
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !44, !noalias !893 ; 2 uses
  store i64 %i.bk, ptr %i.ai, align 8, !tbaa !41, !alias.scope !893
  %i.bl = load ptr, ptr %5, align 8, !tbaa !40, !alias.scope !893
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 0, ptr %i.bm, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !893
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE3strEm.exit

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE3strEm.exit: ; preds = %bb.n, %bb.m
  call void @_Z16removeWhiteSpaceRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
  store ptr %i.aj, ptr %6, align 8, !tbaa !42
  %i.bn = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.bo = load i64, ptr %i.ai, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !44
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i32, label %._crit_edge.i.i31

.noexc.i32:                                       ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE3strEm.exit
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc33 unwind label %bb.ad  ; 2 uses

.noexc33:                                         ; preds = %.noexc.i32
  store ptr %i.bq, ptr %6, align 8, !tbaa !40
  %i.br = load i64, ptr %i.b, align 8, !tbaa !44
  store i64 %i.br, ptr %i.aj, align 8, !tbaa !43
  br label %._crit_edge.i.i31

._crit_edge.i.i31:                                ; preds = %.noexc33, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE3strEm.exit
  %i.bs = phi ptr [ %i.bq, %.noexc33 ], [ %i.aj, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE3strEm.exit ] ; 2 uses
  switch i64 %i.bo, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i31
  %i.bt = load i8, ptr %i.bn, align 1, !tbaa !43
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !43
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bn, i64 %i.bo, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i31
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  store i64 %i.bu, ptr %i.ak, align 8, !tbaa !41
  %i.bv = load ptr, ptr %6, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store i8 0, ptr %i.bw, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @_Z16removeWhiteSpaceRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.bx = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.by = tail call ptr @__errno_location() #38   ; 6 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !54 ; 2 uses
  store i32 0, ptr %i.by, align 4, !tbaa !54
  %i.ca = call noundef double @strtod(ptr noundef %i.bx, ptr noundef nonnull %i.a) ; 0 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.cc = icmp eq ptr %i.cb, %i.bx
  br i1 %i.cc, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.214) #34
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %.critedge.i.i.i, %bb.r
  %i.cd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.ce = load i32, ptr %i.by, align 4, !tbaa !54
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.u, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !54
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.cg = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.aj
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

bb.v:                                             ; preds = %bb.q
  %i.ci = load i32, ptr %i.by, align 4, !tbaa !54
  switch i32 %i.ci, label %.critedge [
    i32 34, label %.critedge.i.i.i
    i32 0, label %bb.x
  ]

.critedge.i.i.i:                                  ; preds = %bb.v
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.214) #34
          to label %bb.w unwind label %bb.t

bb.w:                                             ; preds = %.critedge.i.i.i
  unreachable

bb.x:                                             ; preds = %bb.v
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !54
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.cj = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.aj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %.critedge
  %i.cl = load i64, ptr %i.aj, align 8, !tbaa !43
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.cn = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ah
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.cp = load i64, ptr %i.ah, align 8, !tbaa !43
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.cr = load ptr, ptr %i.ag, align 8, !tbaa !361, !noalias !894 ; 3 uses
  %i.cs = load ptr, ptr %i.af, align 8, !tbaa !318, !noalias !894 ; 3 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.cw = sdiv exact i64 %i.cv, 24
  %i.cx = icmp ugt i64 %i.cw, 384307168202282325
  br i1 %i.cx, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !55

.noexc.i.i.i.i.i:                                 ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #36
          to label %.noexc42 unwind label %.loopexit

.noexc42:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !312, !noalias !894
  %.pre3.i = load ptr, ptr %i.ag, align 8, !tbaa !312, !noalias !894
  br label %bb.z

bb.z:                                             ; preds = %.noexc42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %7 = phi ptr [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %.pre3.i, %.noexc42 ] ; 2 uses
  %8 = phi ptr [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %.pre.i, %.noexc42 ] ; 2 uses
  %9 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.cy, %.noexc42 ] ; 5 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %8, %7
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i ], [ %9, %bb.z ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %8, %bb.z ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !894
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %7
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !24

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.z
  %i.db = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEi.exit unwind label %bb.aa, !noalias !894 ; 0 uses

bb.aa:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit.i
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %9, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %9, i64 noundef %i.cv) #35, !noalias !894
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66

bb.ac:                                            ; preds = %.noexc.i.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.ad:                                            ; preds = %.noexc.i32
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
          catch ptr @_ZTISt16invalid_argument
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i
  %i.df = load i64, ptr %i.aj, align 8, !tbaa !43
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.dg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.de, %bb.ad ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.cd, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ] ; 3 uses
  %.06 = extractvalue { ptr, i32 } %.pn, 1        ; 2 uses
  %.07 = extractvalue { ptr, i32 } %.pn, 0        ; 2 uses
  %i.dh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #32
  %i.di = icmp eq i32 %.06, %i.dh
  br i1 %i.di, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.dj = call ptr @__cxa_begin_catch(ptr %.07) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.ai

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.dk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt16invalid_argument) #32
  %i.dl = icmp eq i32 %.06, %i.dk
  br i1 %i.dl, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.dm = call ptr @__cxa_begin_catch(ptr %.07) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.aj:                                            ; preds = %bb.ae, %bb.ag
  %i.dp = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.ah
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.aj
  %i.dr = load i64, ptr %i.ah, align 8, !tbaa !43
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit56

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEi.exit: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit.i
  %.not.i.i.i.i51 = icmp eq ptr %9, null
  br i1 %.not.i.i.i.i51, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEi.exit
  call void @_ZdlPvm(ptr noundef nonnull %9, i64 noundef %i.cv) #35
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEi.exit, %bb.ak
  %.pr = load ptr, ptr %i.ac, align 8, !tbaa !375
  %i.dt = icmp eq ptr %.pr, null
  br i1 %i.dt, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit56, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i29, !llvm.loop !889

bb.al:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  %.merged22 = phi { ptr, i32 } [ %i.do, %bb.ai ], [ %i.dn, %bb.ah ], [ %.pn, %bb.af ] ; 2 uses
  %i.du = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ah
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.al
  %i.dw = load i64, ptr %i.ah, align 8, !tbaa !43
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.ac
  %.merged21 = phi { ptr, i32 } [ %i.dd, %bb.ac ], [ %.merged22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %.merged22, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit56: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.216 = phi i1 [ false, %bb.f ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ true, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !318 ; 3 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i57, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit58, label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit56
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !319
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #35
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit58

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit58: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit56, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ef = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.g
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit58
  %i.eh = load i64, ptr %i.g, align 8, !tbaa !43
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.ej = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.e
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.el = load i64, ptr %i.e, align 8, !tbaa !43
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i1 %.216

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66: ; preds = %.loopexit, %.loopexit.split-lp, %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.merged19 = phi { ptr, i32 } [ %i.dc, %bb.aa ], [ %.merged21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.dc, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.en = load ptr, ptr %i.af, align 8, !tbaa !318 ; 3 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i67, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit68, label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !319
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #35
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit68

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit68: ; preds = %bb.an, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66, %bb.i
  %.merged18 = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %.merged19, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66 ], [ %.merged19, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit68, %bb.g
  %.merged = phi { ptr, i32 } [ %.merged18, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit68 ], [ %i.al, %bb.g ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.am, %bb.h ]
  %i.et = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.g
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.ev = load i64, ptr %i.g, align 8, !tbaa !43
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.ex = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.e
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.ez = load i64, ptr %i.e, align 8, !tbaa !43
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define void @_Z30assertStringIsValidPauliStrSumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::match_results", align 8 ; 8 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 24)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i64 0, ptr %i.i, align 8, !tbaa !41
  store i8 0, ptr %i.h, align 8, !tbaa !43
  %i.j = load ptr, ptr %3, align 8, !tbaa !53
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !382  ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i172, label %._crit_edge, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %bb.a
  invoke void @_ZSt16__throw_bad_castv() #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.ae = phi ptr [ %i.o, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph ], [ %i.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ] ; 5 uses
  %.021175 = phi i64 [ 0, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ] ; 4 uses
  %.022174 = phi i1 [ false, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph ], [ %.123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ] ; 2 uses
  %.024173 = phi i32 [ 0, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph ], [ %.226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !277
  %.not.i1.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i1.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
end_hunk_1
