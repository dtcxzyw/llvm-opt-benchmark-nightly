Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/unordered_set_test?download=true
inline.NumInlined: 12886
inline.NumDeleted: 1971
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKSt6vectorIiSaIiEEE15AnalyzeElementsIN9__gnu_cxx17__normal_iteratorIPKiS4_EEEENS0_11MatchMatrixET_SF_PS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EEPNS_19MatchResultListenerE:bb.a
  store i64 0, ptr %i.n, align 8, !tbaa !73
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.j

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.g
  %.pre141 = load ptr, ptr %8, align 8, !tbaa !69 ; 2 uses
  %i.ae = icmp eq ptr %.pre141, %i.m
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.af = load i64, ptr %i.m, align 8, !tbaa !72
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre141, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.k

bb.h:                                             ; preds = %.noexc4.i, %.noexc.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.j:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.m
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.j
  %i.am = load i64, ptr %i.m, align 8, !tbaa !72
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.aj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !178 ; 3 uses
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !177 ; 2 uses
  %.not2794 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not2794, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit, %bb.k
  %i.aq = phi ptr [ %i.ao, %bb.k ], [ %i.bu, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %i.ar = phi ptr [ %i.ao, %bb.k ], [ %i.bt, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.050.1.lcssa = phi ptr [ %.sroa.050.0102, %bb.k ], [ %.sroa.050.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %.sroa.9.1.lcssa = phi ptr [ %.sroa.9.0103, %bb.k ], [ %.sroa.9.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0104, %bb.k ], [ %.sroa.13.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %i.as = add i64 %.024106, 1                     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.059.0105, i64 4 ; 2 uses
  %.not63 = icmp eq ptr %i.at, %3
  br i1 %.not63, label %._crit_edge108, label %bb.b, !llvm.loop !404

.lr.ph:                                           ; preds = %bb.k, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.au = phi ptr [ %i.bu, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %i.ap, %bb.k ]
  %.01998 = phi i64 [ %i.bs, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ 0, %bb.k ] ; 2 uses
  %.sroa.13.197 = phi ptr [ %.sroa.13.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.13.0104, %bb.k ] ; 5 uses
  %.sroa.9.196 = phi ptr [ %.sroa.9.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.9.0103, %bb.k ] ; 3 uses
  %.sroa.050.195 = phi ptr [ %.sroa.050.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.050.0102, %bb.k ] ; 7 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.01998 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !182
  %i.ay = icmp ne ptr %i.ax, null
  %i.az = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ay)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %.lr.ph
  br i1 %i.az, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.noexc35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.140, i32 noundef 234)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.l
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.141, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc36
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.n

bb.m:                                             ; preds = %.noexc36
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.body

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc35
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !182
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !412
  %i.be = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.059.0105, ptr noundef nonnull %7)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !405

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.n
  %i.bf = zext i1 %i.be to i8                     ; 2 uses
  %.not.i.i38 = icmp eq ptr %.sroa.9.196, %.sroa.13.197
  br i1 %.not.i.i38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  store i8 %i.bf, ptr %.sroa.9.196, align 1, !tbaa !72
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.p:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.bg = ptrtoint ptr %.sroa.13.197 to i64
  %i.bh = ptrtoint ptr %.sroa.050.195 to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 8 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775807
  br i1 %i.bj, label %bb.q, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #28
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bk = add i64 %.sroa.speculated.i.i.i.i, %i.bi ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bi
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 9223372036854775807)
  %i.bn = select i1 %i.bl, i64 9223372036854775807, i64 %i.bm ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #31
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi ; 2 uses
  store i8 %i.bf, ptr %i.bp, align 1, !tbaa !72
  %i.bq = icmp sgt i64 %i.bi, 0
  br i1 %i.bq, label %bb.r, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.r:                                             ; preds = %.noexc41
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %.sroa.050.195, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.r, %.noexc41
  %.not.i17.i.i.i = icmp eq ptr %.sroa.050.195, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.195, i64 noundef %i.bi) #29
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.o
  %.sroa.050.3 = phi ptr [ %i.bo, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.050.195, %bb.o ] ; 2 uses
  %.pn65 = phi ptr [ %i.bp, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.9.196, %bb.o ]
  %.sroa.13.3 = phi ptr [ %i.br, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.13.197, %bb.o ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn65, i64 1 ; 2 uses
  %i.bs = add i64 %.01998, 1                      ; 2 uses
  %i.bt = load ptr, ptr %i.p, align 8, !tbaa !178 ; 2 uses
  %i.bu = load ptr, ptr %i.o, align 8, !tbaa !177 ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 24
  %.not27 = icmp eq i64 %i.bs, %i.by
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !406

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i, %bb.n, %bb.l, %.lr.ph, %bb.q
  %lpad.loopexit.split-lp223 = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge108:                                   ; preds = %._crit_edge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge
  %i.bz = phi ptr [ %.pre144, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.aq, %._crit_edge ]
  %i.ca = phi ptr [ %.pre142, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.ar, %._crit_edge ]
  %.sroa.050.0.lcssa = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %.sroa.050.1.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %.sroa.13.1.lcssa, %._crit_edge ] ; 2 uses
  %.024.lcssa = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.as, %._crit_edge ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 24                ; 3 uses
  store i64 %.024.lcssa, ptr %0, align 8, !tbaa !197
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !198
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = mul i64 %i.cg, %.024.lcssa              ; 5 uses
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %.noexc.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %._crit_edge108
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #28
          to label %.noexc42 unwind label %bb.h

.noexc42:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %.noexc4.i

.noexc4.i:                                        ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #31
          to label %.noexc43 unwind label %bb.h   ; 4 uses

.noexc43:                                         ; preds = %.noexc4.i
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !191
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !192
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cl, i8 0, i64 %i.cj, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %.noexc43, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.co = phi ptr [ %i.cl, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.cp = ptrtoaddr ptr %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.cq, align 8, !tbaa !199
  %.not118 = icmp eq i64 %.024.lcssa, 0
  br i1 %.not118, label %._crit_edge121, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.t
  %.pre145 = load ptr, ptr %i.cc, align 8, !tbaa !178 ; 6 uses
  %.pre146 = load ptr, ptr %i.cb, align 8, !tbaa !177 ; 3 uses
  %i.cr = ptrtoint ptr %.pre145 to i64
  %i.cs = ptrtoint ptr %.pre146 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.cu, 4
  %min.iters.check214 = icmp ult i64 %i.cu, 32
  %i.cv = and i64 %i.cu, 28
  %n.vec = and i64 %i.cu, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cv, 0
  %n.vec216 = and i64 %i.cu, -4                   ; 4 uses
  %cmp.n221 = icmp eq i64 %i.cu, %n.vec216
  %xtraiter = and i64 %i.cu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge116
  %i.cw = phi ptr [ %.pre145, %.preheader.lr.ph ], [ %i.dy, %._crit_edge116 ]
  %.018120 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.dz, %._crit_edge116 ] ; 2 uses
  %.sroa.048.0119 = phi ptr [ %.sroa.050.0.lcssa, %.preheader.lr.ph ], [ %.sroa.048.1.lcssa, %._crit_edge116 ] ; 8 uses
  %.sroa.048.0119214 = ptrtoaddr ptr %.sroa.048.0119 to i64
  %.not25112 = icmp eq ptr %i.cw, %.pre146
  br i1 %.not25112, label %._crit_edge116, label %iter.check

iter.check:                                       ; preds = %.preheader
  %9 = mul i64 %.018120, %i.cg                    ; 2 uses
  %10 = getelementptr i8, ptr %i.co, i64 %9       ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %iter.check.a

iter.check.a:                                     ; preds = %iter.check
  %i.cx = add i64 %9, %i.cp
  %i.cy = sub i64 %.sroa.048.0119214, %i.cx
  %diff.check = icmp ugt i64 %i.cy, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check.a
  br i1 %min.iters.check214, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.048.0119, i64 %index ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !72
  %wide.load215 = load <16 x i8>, ptr %i.da, align 1, !tbaa !72
  %i.db = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.dc = icmp ne <16 x i8> %wide.load215, zeroinitializer
  %i.dd = zext <16 x i1> %i.db to <16 x i8>
  %i.de = zext <16 x i1> %i.dc to <16 x i8>
  %i.df = getelementptr i8, ptr %10, i64 %index   ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  store <16 x i8> %i.dd, ptr %i.df, align 1, !tbaa !72
  store <16 x i8> %i.de, ptr %i.dg, align 1, !tbaa !72
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge116, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !202

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.di = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec216 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index217 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next220, %vec.epilog.vector.body ] ; 3 uses
  %next.gep218 = getelementptr i8, ptr %.sroa.048.0119, i64 %index217
  %wide.load219 = load <4 x i8>, ptr %next.gep218, align 1, !tbaa !72
  %i.dj = icmp ne <4 x i8> %wide.load219, zeroinitializer
  %i.dk = zext <4 x i1> %i.dj to <4 x i8>
  %i.dl = getelementptr i8, ptr %10, i64 %index217
  store <4 x i8> %i.dk, ptr %i.dl, align 1, !tbaa !72
  %index.next220 = add nuw i64 %index217, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next220, %n.vec216
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !408

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n221, label %._crit_edge116, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %iter.check.a, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0114.ph = phi i64 [ 0, %iter.check ], [ 0, %iter.check.a ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec216, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.048.1113.ph = phi ptr [ %.sroa.048.0119, %iter.check ], [ %.sroa.048.0119, %iter.check.a ], [ %i.cz, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0114.prol = phi i64 [ %i.ds, %vec.epilog.scalar.ph.prol ], [ %.0114.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.048.1113.prol = phi ptr [ %i.dn, %vec.epilog.scalar.ph.prol ], [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.048.1113.prol, i64 1 ; 3 uses
  %i.do = load i8, ptr %.sroa.048.1113.prol, align 1, !tbaa !72
  %i.dp = icmp ne i8 %i.do, 0
  %i.dq = zext i1 %i.dp to i8
  %i.dr = getelementptr i8, ptr %10, i64 %.0114.prol
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !72
  %i.ds = add i64 %.0114.prol, 1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !409

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dn, %vec.epilog.scalar.ph.prol ]
  %.0114.unr = phi i64 [ %.0114.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ds, %vec.epilog.scalar.ph.prol ]
  %.sroa.048.1113.unr = phi ptr [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dn, %vec.epilog.scalar.ph.prol ]
  %i.dt = sub nsw i64 %.0114.ph, %i.cu
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %._crit_edge116, label %vec.epilog.scalar.ph

._crit_edge121:                                   ; preds = %._crit_edge116, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not.i.i.i = icmp eq ptr %.sroa.050.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge121
  %i.dv = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.dw = ptrtoint ptr %.sroa.050.0.lcssa to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0.lcssa, i64 noundef %i.dx) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge121, %bb.u
  ret void

._crit_edge116:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.dy = phi ptr [ %.pre146, %.preheader ], [ %.pre145, %middle.block ], [ %.pre145, %vec.epilog.middle.block ], [ %.pre145, %vec.epilog.scalar.ph ], [ %.pre145, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.048.1.lcssa = phi ptr [ %.sroa.048.0119, %.preheader ], [ %i.cz, %middle.block ], [ %i.di, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.er, %vec.epilog.scalar.ph ]
  %i.dz = add nuw i64 %.018120, 1                 ; 2 uses
  %.not = icmp eq i64 %i.dz, %.024.lcssa
  br i1 %.not, label %._crit_edge121, label %.preheader, !llvm.loop !410

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0114 = phi i64 [ %i.ex, %vec.epilog.scalar.ph ], [ %.0114.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.048.1113 = phi ptr [ %i.er, %vec.epilog.scalar.ph ], [ %.sroa.048.1113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 1
  %i.eb = load i8, ptr %.sroa.048.1113, align 1, !tbaa !72
  %i.ec = icmp ne i8 %i.eb, 0
  %i.ed = zext i1 %i.ec to i8
  %i.ee = getelementptr i8, ptr %10, i64 %.0114
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !72
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 2
  %i.eg = load i8, ptr %i.ea, align 1, !tbaa !72
  %i.eh = icmp ne i8 %i.eg, 0
  %i.ei = zext i1 %i.eh to i8
  %i.ej = getelementptr i8, ptr %10, i64 %.0114
  %i.ek = getelementptr i8, ptr %i.ej, i64 1
  store i8 %i.ei, ptr %i.ek, align 1, !tbaa !72
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 3
  %i.em = load i8, ptr %i.ef, align 1, !tbaa !72
  %i.en = icmp ne i8 %i.em, 0
  %i.eo = zext i1 %i.en to i8
  %i.ep = getelementptr i8, ptr %10, i64 %.0114
  %i.eq = getelementptr i8, ptr %i.ep, i64 2
  store i8 %i.eo, ptr %i.eq, align 1, !tbaa !72
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 4 ; 2 uses
  %i.es = load i8, ptr %i.el, align 1, !tbaa !72
  %i.et = icmp ne i8 %i.es, 0
  %i.eu = zext i1 %i.et to i8
  %i.ev = getelementptr i8, ptr %10, i64 %.0114
  %i.ew = getelementptr i8, ptr %i.ev, i64 3
  store i8 %i.eu, ptr %i.ew, align 1, !tbaa !72
  %i.ex = add i64 %.0114, 4                       ; 2 uses
  %.not25.3 = icmp eq i64 %i.ex, %i.cu
  br i1 %.not25.3, label %._crit_edge116, label %vec.epilog.scalar.ph, !llvm.loop !411

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.m
  %.sroa.050.2 = phi ptr [ %.sroa.050.195, %bb.m ], [ %.sroa.050.0102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.050.0.lcssa, %bb.h ], [ %.sroa.050.195, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.197, %bb.m ], [ %.sroa.13.0104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.13.0.lcssa, %bb.h ], [ %.sroa.13.197, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn28 = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ah, %bb.h ], [ %lpad.loopexit.split-lp223, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not.i.i.i45 = icmp eq ptr %.sroa.050.2, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIcSaIcEED2Ev.exit46, label %bb.v

bb.v:                                             ; preds = %.body
  %i.ey = ptrtoint ptr %.sroa.13.2 to i64
  %i.ez = ptrtoint ptr %.sroa.050.2 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.2, i64 noundef %i.fa) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit46

_ZNSt6vectorIcSaIcEED2Ev.exit46:                  ; preds = %.body, %bb.v
  resume { ptr, i32 } %.pn28
}

declare noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !100
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.b)
          to label %_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !70, !alias.scope !419
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !73, !alias.scope !419
  store i8 0, ptr %i.d, align 8, !tbaa !72, !alias.scope !419
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166, !noalias !419 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !419 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !167, !noalias !419 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !69, !alias.scope !419 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !tbaa !72, !alias.scope !419
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !90
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !90
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !72
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #26
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !90
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !90
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !170
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing19MatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !69 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !72
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !3

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24DummyMatchResultListenerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !80     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #28
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
end_hunk_0
begin_hunk_1_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE15AnalyzeElementsIN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEENS0_11MatchMatrixET_SL_PSA_PNS_19MatchResultListenerE:bb.a
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.w, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !73
  store ptr %i.m, ptr %8, align 8, !tbaa !69
  store i64 0, ptr %i.n, align 8, !tbaa !73
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.g
  %.pre141 = load ptr, ptr %8, align 8, !tbaa !69 ; 2 uses
  %i.ae = icmp eq ptr %.pre141, %i.m
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.af = load i64, ptr %i.m, align 8, !tbaa !72
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre141, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.m
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.i
  %i.al = load i64, ptr %i.m, align 8, !tbaa !72
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.ai, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !230 ; 3 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !229 ; 2 uses
  %.not2794 = icmp eq ptr %i.an, %i.ao
  br i1 %.not2794, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit, %bb.j
  %i.ap = phi ptr [ %i.an, %bb.j ], [ %i.bt, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %i.aq = phi ptr [ %i.an, %bb.j ], [ %i.bs, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.050.1.lcssa = phi ptr [ %.sroa.050.0102, %bb.j ], [ %.sroa.050.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %.sroa.9.1.lcssa = phi ptr [ %.sroa.9.0103, %bb.j ], [ %.sroa.9.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0104, %bb.j ], [ %.sroa.13.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %i.ar = add i64 %.024106, 1                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.059.0105, i64 32 ; 2 uses
  %.not63 = icmp eq ptr %i.as, %3
  br i1 %.not63, label %._crit_edge108, label %bb.b, !llvm.loop !501

.lr.ph:                                           ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.at = phi ptr [ %i.bt, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %i.ao, %bb.j ]
  %.01998 = phi i64 [ %i.br, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ 0, %bb.j ] ; 2 uses
  %.sroa.13.197 = phi ptr [ %.sroa.13.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.13.0104, %bb.j ] ; 5 uses
  %.sroa.9.196 = phi ptr [ %.sroa.9.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.9.0103, %bb.j ] ; 3 uses
  %.sroa.050.195 = phi ptr [ %.sroa.050.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.050.0102, %bb.j ] ; 7 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.01998 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !234
  %i.ax = icmp ne ptr %i.aw, null
  %i.ay = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ax)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %.lr.ph
  br i1 %i.ay, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.140, i32 noundef 234)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.k
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.141, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc36
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.m

bb.l:                                             ; preds = %.noexc36
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc35
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !234
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !509
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.059.0105, ptr noundef nonnull %7)
          to label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !502

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit: ; preds = %bb.m
  %i.be = zext i1 %i.bd to i8                     ; 2 uses
  %.not.i.i38 = icmp eq ptr %.sroa.9.196, %.sroa.13.197
  br i1 %.not.i.i38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  store i8 %i.be, ptr %.sroa.9.196, align 1, !tbaa !72
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.o:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  %i.bf = ptrtoint ptr %.sroa.13.197 to i64
  %i.bg = ptrtoint ptr %.sroa.050.195 to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 8 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775807
  br i1 %i.bi, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #28
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bj = add i64 %.sroa.speculated.i.i.i.i, %i.bh ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bh
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 9223372036854775807)
  %i.bm = select i1 %i.bk, i64 9223372036854775807, i64 %i.bl ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #31
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bh ; 2 uses
  store i8 %i.be, ptr %i.bo, align 1, !tbaa !72
  %i.bp = icmp sgt i64 %i.bh, 0
  br i1 %i.bp, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.q:                                             ; preds = %.noexc41
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %.sroa.050.195, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.q, %.noexc41
  %.not.i17.i.i.i = icmp eq ptr %.sroa.050.195, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.195, i64 noundef %i.bh) #29
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.n
  %.sroa.050.3 = phi ptr [ %i.bn, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.050.195, %bb.n ] ; 2 uses
  %.pn65 = phi ptr [ %i.bo, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.9.196, %bb.n ]
  %.sroa.13.3 = phi ptr [ %i.bq, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.13.197, %bb.n ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn65, i64 1 ; 2 uses
  %i.br = add i64 %.01998, 1                      ; 2 uses
  %i.bs = load ptr, ptr %i.p, align 8, !tbaa !230 ; 2 uses
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !229 ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 24
  %.not27 = icmp eq i64 %i.br, %i.bx
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !503

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i, %bb.m, %bb.k, %.lr.ph, %bb.p
  %lpad.loopexit.split-lp223 = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge108:                                   ; preds = %._crit_edge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge
  %i.by = phi ptr [ %.pre144, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.ap, %._crit_edge ]
  %i.bz = phi ptr [ %.pre142, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.aq, %._crit_edge ]
  %.sroa.050.0.lcssa = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %.sroa.050.1.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %.sroa.13.1.lcssa, %._crit_edge ] ; 2 uses
  %.024.lcssa = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.ar, %._crit_edge ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 24                ; 3 uses
  store i64 %.024.lcssa, ptr %0, align 8, !tbaa !197
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !198
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = mul i64 %i.cf, %.024.lcssa              ; 5 uses
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %.noexc.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %._crit_edge108
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #28
          to label %.noexc42 unwind label %bb.u

.noexc42:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %.noexc4.i

.noexc4.i:                                        ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #31
          to label %.noexc43 unwind label %bb.u   ; 4 uses

.noexc43:                                         ; preds = %.noexc4.i
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !191
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !192
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %i.ci, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %.noexc43, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cn = phi ptr [ %i.ck, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.cp, align 8, !tbaa !199
  %.not118 = icmp eq i64 %.024.lcssa, 0
  br i1 %.not118, label %._crit_edge121, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.s
  %.pre145 = load ptr, ptr %i.cb, align 8, !tbaa !230 ; 6 uses
  %.pre146 = load ptr, ptr %i.ca, align 8, !tbaa !229 ; 3 uses
  %i.cq = ptrtoint ptr %.pre145 to i64
  %i.cr = ptrtoint ptr %.pre146 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.ct, 4
  %min.iters.check214 = icmp ult i64 %i.ct, 32
  %i.cu = and i64 %i.ct, 28
  %n.vec = and i64 %i.ct, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  %n.vec216 = and i64 %i.ct, -4                   ; 4 uses
  %cmp.n221 = icmp eq i64 %i.ct, %n.vec216
  %xtraiter = and i64 %i.ct, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge116
  %i.cv = phi ptr [ %.pre145, %.preheader.lr.ph ], [ %i.dy, %._crit_edge116 ]
  %.018120 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.dz, %._crit_edge116 ] ; 2 uses
  %.sroa.048.0119 = phi ptr [ %.sroa.050.0.lcssa, %.preheader.lr.ph ], [ %.sroa.048.1.lcssa, %._crit_edge116 ] ; 8 uses
  %.sroa.048.0119214 = ptrtoaddr ptr %.sroa.048.0119 to i64
  %.not25112 = icmp eq ptr %i.cv, %.pre146
  br i1 %.not25112, label %._crit_edge116, label %iter.check

iter.check:                                       ; preds = %.preheader
  %9 = mul i64 %.018120, %i.cf                    ; 2 uses
  %10 = getelementptr i8, ptr %i.cn, i64 %9       ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %iter.check.a

iter.check.a:                                     ; preds = %iter.check
  %i.cw = add i64 %9, %i.co
  %i.cx = sub i64 %.sroa.048.0119214, %i.cw
  %diff.check = icmp ugt i64 %i.cx, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check.a
  br i1 %min.iters.check214, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cy = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.048.0119, i64 %index ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !72
  %wide.load215 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !72
  %i.da = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.db = icmp ne <16 x i8> %wide.load215, zeroinitializer
  %i.dc = zext <16 x i1> %i.da to <16 x i8>
  %i.dd = zext <16 x i1> %i.db to <16 x i8>
  %i.de = getelementptr i8, ptr %10, i64 %index   ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store <16 x i8> %i.dc, ptr %i.de, align 1, !tbaa !72
  store <16 x i8> %i.dd, ptr %i.df, align 1, !tbaa !72
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !504

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge116, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !202

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dh = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec216 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index217 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next220, %vec.epilog.vector.body ] ; 3 uses
  %next.gep218 = getelementptr i8, ptr %.sroa.048.0119, i64 %index217
  %wide.load219 = load <4 x i8>, ptr %next.gep218, align 1, !tbaa !72
  %i.di = icmp ne <4 x i8> %wide.load219, zeroinitializer
  %i.dj = zext <4 x i1> %i.di to <4 x i8>
  %i.dk = getelementptr i8, ptr %10, i64 %index217
  store <4 x i8> %i.dj, ptr %i.dk, align 1, !tbaa !72
  %index.next220 = add nuw i64 %index217, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next220, %n.vec216
  br i1 %i.dl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !505

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n221, label %._crit_edge116, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %iter.check.a, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0114.ph = phi i64 [ 0, %iter.check ], [ 0, %iter.check.a ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec216, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.048.1113.ph = phi ptr [ %.sroa.048.0119, %iter.check ], [ %.sroa.048.0119, %iter.check.a ], [ %i.cy, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0114.prol = phi i64 [ %i.dr, %vec.epilog.scalar.ph.prol ], [ %.0114.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.048.1113.prol = phi ptr [ %i.dm, %vec.epilog.scalar.ph.prol ], [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.048.1113.prol, i64 1 ; 3 uses
  %i.dn = load i8, ptr %.sroa.048.1113.prol, align 1, !tbaa !72
  %i.do = icmp ne i8 %i.dn, 0
  %i.dp = zext i1 %i.do to i8
  %i.dq = getelementptr i8, ptr %10, i64 %.0114.prol
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !72
  %i.dr = add i64 %.0114.prol, 1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !506

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dm, %vec.epilog.scalar.ph.prol ]
  %.0114.unr = phi i64 [ %.0114.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dr, %vec.epilog.scalar.ph.prol ]
  %.sroa.048.1113.unr = phi ptr [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dm, %vec.epilog.scalar.ph.prol ]
  %i.ds = sub nsw i64 %.0114.ph, %i.ct
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %._crit_edge116, label %vec.epilog.scalar.ph

._crit_edge121:                                   ; preds = %._crit_edge116, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not.i.i.i = icmp eq ptr %.sroa.050.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge121
  %i.du = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.dv = ptrtoint ptr %.sroa.050.0.lcssa to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0.lcssa, i64 noundef %i.dw) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge121, %bb.t
  ret void

bb.u:                                             ; preds = %.noexc4.i, %.noexc.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge116:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.dy = phi ptr [ %.pre146, %.preheader ], [ %.pre145, %middle.block ], [ %.pre145, %vec.epilog.middle.block ], [ %.pre145, %vec.epilog.scalar.ph ], [ %.pre145, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.048.1.lcssa = phi ptr [ %.sroa.048.0119, %.preheader ], [ %i.cy, %middle.block ], [ %i.dh, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.er, %vec.epilog.scalar.ph ]
  %i.dz = add nuw i64 %.018120, 1                 ; 2 uses
  %.not = icmp eq i64 %i.dz, %.024.lcssa
  br i1 %.not, label %._crit_edge121, label %.preheader, !llvm.loop !507

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0114 = phi i64 [ %i.ex, %vec.epilog.scalar.ph ], [ %.0114.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.048.1113 = phi ptr [ %i.er, %vec.epilog.scalar.ph ], [ %.sroa.048.1113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 1
  %i.eb = load i8, ptr %.sroa.048.1113, align 1, !tbaa !72
  %i.ec = icmp ne i8 %i.eb, 0
  %i.ed = zext i1 %i.ec to i8
  %i.ee = getelementptr i8, ptr %10, i64 %.0114
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !72
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 2
  %i.eg = load i8, ptr %i.ea, align 1, !tbaa !72
  %i.eh = icmp ne i8 %i.eg, 0
  %i.ei = zext i1 %i.eh to i8
  %i.ej = getelementptr i8, ptr %10, i64 %.0114
  %i.ek = getelementptr i8, ptr %i.ej, i64 1
  store i8 %i.ei, ptr %i.ek, align 1, !tbaa !72
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 3
  %i.em = load i8, ptr %i.ef, align 1, !tbaa !72
  %i.en = icmp ne i8 %i.em, 0
  %i.eo = zext i1 %i.en to i8
  %i.ep = getelementptr i8, ptr %10, i64 %.0114
  %i.eq = getelementptr i8, ptr %i.ep, i64 2
  store i8 %i.eo, ptr %i.eq, align 1, !tbaa !72
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 4 ; 2 uses
  %i.es = load i8, ptr %i.el, align 1, !tbaa !72
  %i.et = icmp ne i8 %i.es, 0
  %i.eu = zext i1 %i.et to i8
  %i.ev = getelementptr i8, ptr %10, i64 %.0114
  %i.ew = getelementptr i8, ptr %i.ev, i64 3
  store i8 %i.eu, ptr %i.ew, align 1, !tbaa !72
  %i.ex = add i64 %.0114, 4                       ; 2 uses
  %.not25.3 = icmp eq i64 %i.ex, %i.ct
  br i1 %.not25.3, label %._crit_edge116, label %vec.epilog.scalar.ph, !llvm.loop !508

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.u, %bb.l
  %.sroa.050.2 = phi ptr [ %.sroa.050.195, %bb.l ], [ %.sroa.050.0102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.050.0.lcssa, %bb.u ], [ %.sroa.050.195, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.197, %bb.l ], [ %.sroa.13.0104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.13.0.lcssa, %bb.u ], [ %.sroa.13.197, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn28 = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.dx, %bb.u ], [ %lpad.loopexit.split-lp223, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not.i.i.i45 = icmp eq ptr %.sroa.050.2, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIcSaIcEED2Ev.exit46, label %bb.v

bb.v:                                             ; preds = %.body
  %i.ey = ptrtoint ptr %.sroa.13.2 to i64
  %i.ez = ptrtoint ptr %.sroa.050.2 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.2, i64 noundef %i.fa) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit46

_ZNSt6vectorIcSaIcEED2Ev.exit46:                  ; preds = %.body, %bb.v
  resume { ptr, i32 } %.pn28
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  invoke void @_ZN7testing8internal13PrintStringToESt17basic_string_viewIcSt11char_traitsIcEEPSo(i64 %i.d, ptr %i.b, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !70, !alias.scope !516
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !73, !alias.scope !516
  store i8 0, ptr %i.e, align 8, !tbaa !72, !alias.scope !516
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !166, !noalias !516 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !noalias !516 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !167, !noalias !516 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !69, !alias.scope !516 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !tbaa !72, !alias.scope !516
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #29
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !90
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !90
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !69 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !72
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !90
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #26
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !90
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !90
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !170
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ar) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.e:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.r, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN7testing8internal13PrintStringToESt17basic_string_viewIcSt11char_traitsIcEEPSo(i64, ptr, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing7MatcherIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE, i64 16), ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !224
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !217
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !224
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !72
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEED2Ev.exit unwind label %bb.d, !inline_history !14

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #25, !inline_history !225
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.140, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.141, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
end_hunk_1
