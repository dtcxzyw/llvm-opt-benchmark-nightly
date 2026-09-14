Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/BytecodeBuilder?download=true
inline.NumInlined: 2648
inline.NumDeleted: 1082
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK4Luau15BytecodeBuilder17dumpSourceRemarksB5cxx11Ev:bb.a
  %i.k = icmp ugt i64 %i.j, 230584300921369395
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !229

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #33
          to label %_ZNSt15__new_allocatorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge unwind label %bb.j

_ZNSt15__new_allocatorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge: ; preds = %_ZNSt15__new_allocatorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !270
  %.pre82 = load ptr, ptr %i.d, align 8, !tbaa !270
  br label %.noexc41

.noexc41:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge, %bb.a
  %i.m = phi ptr [ %i.e, %bb.a ], [ %.pre82, %_ZNSt15__new_allocatorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge ]
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge ]
  %.pr.i = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge ] ; 20 uses
  store ptr %.pr.i, ptr %2, align 8, !tbaa !191
  %i.o = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !193
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEPS9_ET0_T_SI_SH_(ptr %i.n, ptr %i.m, ptr noundef %.pr.i)
          to label %bb.e unwind label %bb.c       ; 11 uses

bb.c:                                             ; preds = %.noexc41
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.i) #34
  br label %.body

bb.e:                                             ; preds = %.noexc41
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.q, ptr %i.s, align 8, !tbaa !192
  %.not.i.i = icmp eq ptr %.pr.i, %i.q            ; 2 uses
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %.pr.i to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = xor i64 %i.y, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_less_iterEEvT_SH_T0_T1_(ptr %.pr.i, ptr %i.q, i64 noundef %i.z)
          to label %.noexc43 unwind label %.loopexit.split-lp56

.noexc43:                                         ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.v, 640
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc43
  %i.ab = getelementptr inbounds nuw i8, ptr %.pr.i, i64 640 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %.pr.i, ptr nonnull %i.ab)
          to label %.noexc44 unwind label %.loopexit.split-lp56

.noexc44:                                         ; preds = %bb.g
  %.not4.i.i.i.i = icmp eq ptr %i.ab, %i.q
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc44, %.noexc45
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.ac, %.noexc45 ], [ %i.ab, %.noexc44 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i)
          to label %.noexc45 unwind label %.loopexit55

.noexc45:                                         ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.ac, %i.q
  br i1 %.not.i.i.i.i42, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !369

bb.h:                                             ; preds = %.noexc43
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %.pr.i, ptr %i.q)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit unwind label %.loopexit.split-lp56

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit: ; preds = %.noexc45, %bb.h, %bb.e, %.noexc44
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !195
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !194 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not, label %._crit_edge, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %i.ah = ptrtoint ptr %i.q to i64
  %i.ai = ptrtoint ptr %.pr.i to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 40
  %i.al = ptrtoint ptr %i.q to i64
  %i.am = ptrtoint ptr %.pr.i to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 40                ; 3 uses
  %i.ap = ptrtoint ptr %i.q to i64
  %i.aq = ptrtoint ptr %.pr.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 40
  br label %.lr.ph79

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %bb.s, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.az, %_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !170 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !155
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #34
  br label %_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.az, %i.q
  br i1 %.not.i.i.i47, label %_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, %._crit_edge
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.i) #34
  br label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit55:                                      ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp56:                             ; preds = %bb.f, %bb.g, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.s
  %i.bb = phi ptr [ %.pre86, %bb.s ], [ %i.ag, %.lr.ph79.preheader ]
  %.03378 = phi i64 [ %i.cq, %bb.s ], [ 0, %.lr.ph79.preheader ] ; 3 uses
  %.03477 = phi i64 [ %.1.lcssa, %bb.s ], [ 0, %.lr.ph79.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.03378 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !154 ; 4 uses
  %.not80 = icmp eq i64 %i.be, 0
  br i1 %.not80, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph79
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !170
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %.critedge2
  %.060 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %.critedge2 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.060
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !155
  switch i8 %i.bh, label %.critedge.loopexit [
    i8 32, label %.critedge2
    i8 9, label %.critedge2
  ]

.critedge2:                                       ; preds = %bb.k, %bb.k
  %i.bi = add nuw i64 %.060, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.be
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.k, !llvm.loop !370

.critedge.loopexit:                               ; preds = %bb.k, %.critedge2
  %.0.lcssa.ph = phi i64 [ %i.be, %.critedge2 ], [ %.060, %bb.k ]
  %i.bj = trunc i64 %.0.lcssa.ph to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph79
  %.0.lcssa = phi i32 [ 0, %.lr.ph79 ], [ %i.bj, %.critedge.loopexit ]
  %i.bk = icmp ult i64 %.03477, %i.ak
  br i1 %i.bk, label %.lr.ph73, label %.critedge4

.lr.ph73:                                         ; preds = %.critedge
  %i.bl = trunc i64 %.03378 to i32
  %i.bm = add i32 %i.bl, 1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph73, %.critedge6
  %.172 = phi i64 [ %.03477, %.lr.ph73 ], [ %.2.lcssa, %.critedge6 ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %.pr.i, i64 %.172 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !269
  %i.bp = icmp eq i32 %i.bo, %i.bm
  br i1 %i.bp, label %bb.m, label %.critedge4.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bc, align 8, !tbaa !170
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !170
  invoke void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.146, i32 noundef %.0.lcssa, ptr noundef %i.bq, ptr noundef %i.bs)
          to label %_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.preheader unwind label %.loopexit

_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.preheader: ; preds = %bb.m
  %.263 = add nuw i64 %.172, 1                    ; 3 uses
  %i.bt = icmp ult i64 %.263, %i.ao
  br i1 %i.bt, label %.lr.ph66.preheader, label %.critedge6

.lr.ph66.preheader:                               ; preds = %_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.preheader
  %.pre83 = load i32, ptr %i.bn, align 8, !tbaa !269
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.backedge
  %.265 = phi i64 [ %.2, %_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.backedge ], [ %.263, %.lr.ph66.preheader ] ; 6 uses
  %.2.in64 = phi i64 [ %.265, %_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.backedge ], [ %.172, %.lr.ph66.preheader ]
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %.pr.i, i64 %.265 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !269
  %i.bw = icmp eq i32 %i.bv, %.pre83
  br i1 %i.bw, label %bb.n, label %.critedge6

bb.n:                                             ; preds = %.lr.ph66
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %.pr.i, i64 %.2.in64 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !154 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !154
  %i.ce = icmp eq i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.o, label %.critedge6

bb.o:                                             ; preds = %bb.n
  %i.cf = icmp eq i64 %i.cb, 0
  br i1 %i.cf, label %_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.backedge, label %.split

.split:                                           ; preds = %bb.o
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !170
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !170
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ch, ptr %i.cg, i64 %i.cb)
  %i.ci = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ci, label %_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.backedge, label %.critedge6

_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.backedge: ; preds = %.split, %bb.o
  %.2 = add nuw i64 %.265, 1                      ; 2 uses
  %exitcond81.not = icmp eq i64 %.2, %i.ao
  br i1 %exitcond81.not, label %.critedge6, label %.lr.ph66, !llvm.loop !371

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.p
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.critedge6:                                       ; preds = %_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.backedge, %.split, %.lr.ph66, %bb.n, %_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.preheader
  %.2.lcssa = phi i64 [ %.263, %_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.preheader ], [ %.265, %bb.n ], [ %.265, %.lr.ph66 ], [ %.265, %.split ], [ %i.ao, %_ZSteqIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESB_.exit.backedge ] ; 3 uses
  %i.cj = icmp ult i64 %.2.lcssa, %i.as
  br i1 %i.cj, label %bb.l, label %.critedge4.loopexit, !llvm.loop !372

.critedge4.loopexit:                              ; preds = %.critedge6, %bb.l
  %.1.lcssa.ph = phi i64 [ %.172, %bb.l ], [ %.2.lcssa, %.critedge6 ]
  %.pre84 = load i64, ptr %i.bd, align 8, !tbaa !154
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge
  %i.ck = phi i64 [ %i.be, %.critedge ], [ %.pre84, %.critedge4.loopexit ] ; 2 uses
  %.1.lcssa = phi i64 [ %.03477, %.critedge ], [ %.1.lcssa.ph, %.critedge4.loopexit ]
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !154
  %i.cm = sub i64 4611686018427387903, %i.cl
  %i.cn = icmp ult i64 %i.cm, %i.ck
  br i1 %i.cn, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.p:                                             ; preds = %.critedge4
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %.critedge4
  %i.co = load ptr, ptr %i.bc, align 8, !tbaa !170
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.co, i64 noundef %i.ck)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cq = add nuw i64 %.03378, 1                  ; 3 uses
  %i.cr = load ptr, ptr %i.ae, align 8, !tbaa !195
  %i.cs = load ptr, ptr %i.ad, align 8, !tbaa !194
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 5
  %i.cx = icmp ult i64 %i.cq, %i.cw
  br i1 %i.cx, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !154 ; 4 uses
  %i.cz = add i64 %i.cy, 1                        ; 3 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !170   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.a
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.q
  %i.dc = icmp ult i64 %i.cy, 16
  tail call void @llvm.assume(i1 %i.dc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !155
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.de = phi i64 [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.df = icmp ugt i64 %i.cz, %i.de
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cy, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit

.noexc51:                                         ; preds = %bb.r
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !170
  br label %bb.s

bb.s:                                             ; preds = %.noexc51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.dg = phi ptr [ %.pre.i.i, %.noexc51 ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  store i8 10, ptr %i.dh, align 1, !tbaa !155
  store i64 %i.cz, ptr %i.b, align 8, !tbaa !154
  %i.di = load ptr, ptr %0, align 8, !tbaa !170
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cz
  store i8 0, ptr %i.dj, align 1, !tbaa !155
  %.pre85 = load ptr, ptr %i.ae, align 8, !tbaa !195
  %.pre86 = load ptr, ptr %i.ad, align 8, !tbaa !194 ; 2 uses
  %.pre87 = ptrtoint ptr %.pre85 to i64
  %.pre88 = ptrtoint ptr %.pre86 to i64
  %.pre90 = sub i64 %.pre87, %.pre88
  %.pre92 = ashr exact i64 %.pre90, 5
  %i.dk = icmp ult i64 %i.cq, %.pre92
  br i1 %i.dk, label %.lr.ph79, label %._crit_edge, !llvm.loop !373

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit55, %.loopexit.split-lp56
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp56 ], [ %lpad.loopexit57, %.loopexit55 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit52, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp53, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #35
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.c, %.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.ba, %bb.j ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.dl = load ptr, ptr %0, align 8, !tbaa !170   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.a
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !155
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Luau15BytecodeBuilder12dumpTypeInfoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !154
  store i8 0, ptr %i.a, align 8, !tbaa !155
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %.not34 = icmp eq ptr %i.e, %i.f
  br i1 %.not34, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.a, %bb.i
  %i.g = phi ptr [ %i.ae, %bb.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %i.af, %bb.i ], [ %i.e, %bb.a ]
  %.02330 = phi i64 [ %i.ag, %bb.i ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [168 x i8], ptr %i.g, i64 %.02330 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.l = load i64, ptr %i.k, align 8, !tbaa !154
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph32
  invoke void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.147, i64 noundef %.02330)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !155   ; 3 uses
  %i.q = zext i8 %i.p to i32
  %.not35 = icmp eq i8 %i.p, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i8 %i.p to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.c
  invoke void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.149)
          to label %._crit_edge._crit_edge unwind label %bb.j

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !169
  %.pre36 = load ptr, ptr %i.c, align 8, !tbaa !168
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.s = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ad, %bb.h ]
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !155   ; 2 uses
  %.not = icmp sgt i8 %i.w, -1
  %i.x = select i1 %.not, ptr @.str.102, ptr @.str.134
  %i.y = and i8 %i.w, 127                         ; 2 uses
  %i.z = icmp samesign ult i8 %i.y, 16
  br i1 %i.z, label %switch.lookup, label %_ZN4LuauL17getBaseTypeStringEh.exit

switch.lookup:                                    ; preds = %.lr.ph
  %i.aa = zext nneg i8 %i.y to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4Luau15BytecodeBuilder12dumpTypeInfoB5cxx11Ev, i64 %i.aa
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4LuauL17getBaseTypeStringEh.exit

_ZN4LuauL17getBaseTypeStringEh.exit:              ; preds = %.lr.ph, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %.lr.ph ]
  invoke void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.148, ptr noundef %.0.i, ptr noundef nonnull %i.x)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN4LuauL17getBaseTypeStringEh.exit
  %i.ab = add nuw nsw i32 %i.s, 1
  %.not26 = icmp eq i32 %i.ab, %i.q
  br i1 %.not26, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.26)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4LuauL17getBaseTypeStringEh.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.k
end_hunk_0
