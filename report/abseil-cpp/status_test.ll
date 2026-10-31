Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/status_test?download=true
inline.NumInlined: 6292
inline.NumDeleted: 1603
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEESaISD_EEE15AnalyzeElementsIN9__gnu_cxx17__normal_iteratorIPKSD_SF_EEEENS0_11MatchMatrixET_SQ_PS2_IS9_SaIS9_EEPNS_19MatchResultListenerE:bb.a
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.w, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !47
  store ptr %i.m, ptr %8, align 8, !tbaa !52
  store i64 0, ptr %i.n, align 8, !tbaa !47
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !182
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.g
  %.pre141 = load ptr, ptr %8, align 8, !tbaa !52 ; 2 uses
  %i.ae = icmp eq ptr %.pre141, %i.m
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.af = load i64, ptr %i.m, align 8, !tbaa !48
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre141, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.m
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.i
  %i.al = load i64, ptr %i.m, align 8, !tbaa !48
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.ai, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.body

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !166 ; 3 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !176 ; 2 uses
  %.not2794 = icmp eq ptr %i.an, %i.ao
  br i1 %.not2794, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit, %bb.j
  %i.ap = phi ptr [ %i.an, %bb.j ], [ %i.bt, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %i.aq = phi ptr [ %i.an, %bb.j ], [ %i.bs, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.050.1.lcssa = phi ptr [ %.sroa.050.0102, %bb.j ], [ %.sroa.050.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %.sroa.9.1.lcssa = phi ptr [ %.sroa.9.0103, %bb.j ], [ %.sroa.9.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0104, %bb.j ], [ %.sroa.13.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %i.ar = add i64 %.024106, 1                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.059.0105, i64 48 ; 2 uses
  %.not63 = icmp eq ptr %i.as, %3
  br i1 %.not63, label %._crit_edge108, label %bb.b, !llvm.loop !604

.lr.ph:                                           ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.at = phi ptr [ %i.bt, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %i.ao, %bb.j ]
  %.01998 = phi i64 [ %i.br, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ 0, %bb.j ] ; 2 uses
  %.sroa.13.197 = phi ptr [ %.sroa.13.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.13.0104, %bb.j ] ; 5 uses
  %.sroa.9.196 = phi ptr [ %.sroa.9.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.9.0103, %bb.j ] ; 3 uses
  %.sroa.050.195 = phi ptr [ %.sroa.050.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.050.0102, %bb.j ] ; 7 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.01998 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !170
  %i.ax = icmp ne ptr %i.aw, null
  %i.ay = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ax)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %.lr.ph
  br i1 %i.ay, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.133, i32 noundef 234)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.k
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.134, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc36
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.m

bb.l:                                             ; preds = %.noexc36
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc35
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !170
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !612
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.059.0105, ptr noundef nonnull %7)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !605

_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit: ; preds = %bb.m
  %i.be = zext i1 %i.bd to i8                     ; 2 uses
  %.not.i.i38 = icmp eq ptr %.sroa.9.196, %.sroa.13.197
  br i1 %.not.i.i38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit
  store i8 %i.be, ptr %.sroa.9.196, align 1, !tbaa !48
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.o:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit
  %i.bf = ptrtoint ptr %.sroa.13.197 to i64
  %i.bg = ptrtoint ptr %.sroa.050.195 to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 8 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775807
  br i1 %i.bi, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.161) #25
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
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #24
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bh ; 2 uses
  store i8 %i.be, ptr %i.bo, align 1, !tbaa !48
  %i.bp = icmp sgt i64 %i.bh, 0
  br i1 %i.bp, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.q:                                             ; preds = %.noexc41
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %.sroa.050.195, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.q, %.noexc41
  %.not.i17.i.i.i = icmp eq ptr %.sroa.050.195, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.195, i64 noundef %i.bh) #23
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
  %i.bs = load ptr, ptr %i.p, align 8, !tbaa !166 ; 2 uses
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !176 ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 24
  %.not27 = icmp eq i64 %i.br, %i.bx
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !606

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
  %i.cf = sdiv exact i64 %i.ce, 24                ; 4 uses
  store i64 %.024.lcssa, ptr %0, align 8, !tbaa !617
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !618
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = mul i64 %i.cf, %.024.lcssa              ; 5 uses
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %.noexc.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %._crit_edge108
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.160) #25
          to label %.noexc42 unwind label %bb.u

.noexc42:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %.noexc4.i

.noexc4.i:                                        ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #24
          to label %.noexc43 unwind label %bb.u   ; 4 uses

.noexc43:                                         ; preds = %.noexc4.i
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !178
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !179
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %i.ci, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %.noexc43, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cn = phi ptr [ %i.ck, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.cp, align 8, !tbaa !619
  %.not118 = icmp eq i64 %.024.lcssa, 0
  br i1 %.not118, label %._crit_edge121, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.s
  %.pre145 = load ptr, ptr %i.cb, align 8, !tbaa !166 ; 6 uses
  %.pre146 = load ptr, ptr %i.ca, align 8, !tbaa !176 ; 3 uses
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
  %.018120 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.dz, %._crit_edge116 ] ; 3 uses
  %.sroa.048.0119 = phi ptr [ %.sroa.050.0.lcssa, %.preheader.lr.ph ], [ %.sroa.048.1.lcssa, %._crit_edge116 ] ; 7 uses
  %.not25112 = icmp eq ptr %i.cv, %.pre146
  br i1 %.not25112, label %._crit_edge116, label %iter.check.a

iter.check.a:                                     ; preds = %.preheader
  %.sroa.048.0119213 = ptrtoaddr ptr %.sroa.048.0119 to i64
  %9 = mul i64 %i.cf, %.018120
  %i.cw = add i64 %9, %i.co
  %10 = mul i64 %.018120, %i.cf
  %11 = getelementptr i8, ptr %i.cn, i64 %10      ; 7 uses
  %i.cx = sub i64 %.sroa.048.0119213, %i.cw
  %diff.check = icmp ugt i64 %i.cx, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check.a
  br i1 %min.iters.check214, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cy = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.048.0119, i64 %index ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !48
  %wide.load215 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !48
  %i.da = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.db = icmp ne <16 x i8> %wide.load215, zeroinitializer
  %i.dc = zext <16 x i1> %i.da to <16 x i8>
  %i.dd = zext <16 x i1> %i.db to <16 x i8>
  %i.de = getelementptr i8, ptr %11, i64 %index   ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store <16 x i8> %i.dc, ptr %i.de, align 1, !tbaa !48
  store <16 x i8> %i.dd, ptr %i.df, align 1, !tbaa !48
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !607

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge116, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !622

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dh = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec216 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index217 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next220, %vec.epilog.vector.body ] ; 3 uses
  %next.gep218 = getelementptr i8, ptr %.sroa.048.0119, i64 %index217
  %wide.load219 = load <4 x i8>, ptr %next.gep218, align 1, !tbaa !48
  %i.di = icmp ne <4 x i8> %wide.load219, zeroinitializer
  %i.dj = zext <4 x i1> %i.di to <4 x i8>
  %i.dk = getelementptr i8, ptr %11, i64 %index217
  store <4 x i8> %i.dj, ptr %i.dk, align 1, !tbaa !48
  %index.next220 = add nuw i64 %index217, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next220, %n.vec216
  br i1 %i.dl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !608

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n221, label %._crit_edge116, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check.a, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0114.ph = phi i64 [ 0, %iter.check.a ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec216, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.048.1113.ph = phi ptr [ %.sroa.048.0119, %iter.check.a ], [ %i.cy, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0114.prol = phi i64 [ %i.dr, %vec.epilog.scalar.ph.prol ], [ %.0114.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.048.1113.prol = phi ptr [ %i.dm, %vec.epilog.scalar.ph.prol ], [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.048.1113.prol, i64 1 ; 3 uses
  %i.dn = load i8, ptr %.sroa.048.1113.prol, align 1, !tbaa !48
  %i.do = icmp ne i8 %i.dn, 0
  %i.dp = zext i1 %i.do to i8
  %i.dq = getelementptr i8, ptr %11, i64 %.0114.prol
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !48
  %i.dr = add i64 %.0114.prol, 1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !609

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dm, %vec.epilog.scalar.ph.prol ]
  %.0114.unr = phi i64 [ %.0114.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dr, %vec.epilog.scalar.ph.prol ]
  %.sroa.048.1113.unr = phi ptr [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dm, %vec.epilog.scalar.ph.prol ]
  %i.ds = sub nsw i64 %.0114.ph, %i.ct
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %._crit_edge116, label %vec.epilog.scalar.ph

._crit_edge121:                                   ; preds = %._crit_edge116, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not.i.i.i = icmp eq ptr %.sroa.050.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge121
  %i.du = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.dv = ptrtoint ptr %.sroa.050.0.lcssa to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0.lcssa, i64 noundef %i.dw) #23
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
  br i1 %.not, label %._crit_edge121, label %.preheader, !llvm.loop !610

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0114 = phi i64 [ %i.ex, %vec.epilog.scalar.ph ], [ %.0114.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.048.1113 = phi ptr [ %i.er, %vec.epilog.scalar.ph ], [ %.sroa.048.1113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 1
  %i.eb = load i8, ptr %.sroa.048.1113, align 1, !tbaa !48
  %i.ec = icmp ne i8 %i.eb, 0
  %i.ed = zext i1 %i.ec to i8
  %i.ee = getelementptr i8, ptr %11, i64 %.0114
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !48
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 2
  %i.eg = load i8, ptr %i.ea, align 1, !tbaa !48
  %i.eh = icmp ne i8 %i.eg, 0
  %i.ei = zext i1 %i.eh to i8
  %i.ej = getelementptr i8, ptr %11, i64 %.0114
  %i.ek = getelementptr i8, ptr %i.ej, i64 1
  store i8 %i.ei, ptr %i.ek, align 1, !tbaa !48
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 3
  %i.em = load i8, ptr %i.ef, align 1, !tbaa !48
  %i.en = icmp ne i8 %i.em, 0
  %i.eo = zext i1 %i.en to i8
  %i.ep = getelementptr i8, ptr %11, i64 %.0114
  %i.eq = getelementptr i8, ptr %i.ep, i64 2
  store i8 %i.eo, ptr %i.eq, align 1, !tbaa !48
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 4 ; 2 uses
  %i.es = load i8, ptr %i.el, align 1, !tbaa !48
  %i.et = icmp ne i8 %i.es, 0
  %i.eu = zext i1 %i.et to i8
  %i.ev = getelementptr i8, ptr %11, i64 %.0114
  %i.ew = getelementptr i8, ptr %i.ev, i64 3
  store i8 %i.eu, ptr %i.ew, align 1, !tbaa !48
  %i.ex = add i64 %.0114, 4                       ; 2 uses
  %.not25.3 = icmp eq i64 %i.ex, %i.ct
  br i1 %.not25.3, label %._crit_edge116, label %vec.epilog.scalar.ph, !llvm.loop !611

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.u, %bb.l
  %.sroa.050.2 = phi ptr [ %.sroa.050.195, %bb.l ], [ %.sroa.050.0102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.050.0.lcssa, %bb.u ], [ %.sroa.050.195, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.197, %bb.l ], [ %.sroa.13.0104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.13.0.lcssa, %bb.u ], [ %.sroa.13.197, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn28 = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.dx, %bb.u ], [ %lpad.loopexit.split-lp223, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not.i.i.i45 = icmp eq ptr %.sroa.050.2, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIcSaIcEED2Ev.exit46, label %bb.v

bb.v:                                             ; preds = %.body
  %i.ey = ptrtoint ptr %.sroa.13.2 to i64
  %i.ez = ptrtoint ptr %.sroa.050.2 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.2, i64 noundef %i.fa) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit46

_ZNSt6vectorIcSaIcEED2Ev.exit46:                  ; preds = %.body, %bb.v
  resume { ptr, i32 } %.pn28
}

declare noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !181    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !52 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !48
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !14

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !181
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !183
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEEES7_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal7PrintToINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEEvRKSt4pairIT_T0_EPSo(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE5PrintERKSC_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE5PrintERKSC_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !45, !alias.scope !630
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !47, !alias.scope !630
  store i8 0, ptr %i.b, align 8, !tbaa !48, !alias.scope !630
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50, !noalias !630 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !630 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE5PrintERKSC_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51, !noalias !630 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !52, !alias.scope !630 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !48, !alias.scope !630
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #23
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE5PrintERKSC_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !31
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !31
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !48
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #21
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !31
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !181    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

end_hunk_0
