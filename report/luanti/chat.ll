inline.NumInlined: 1363
inline.NumDeleted: 545
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EE:bb.a
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.qd, ptr %i.c, align 8, !tbaa !39
  %i.qe = icmp ugt i64 %i.qd, 15
  br i1 %i.qe, label %.noexc.i.i.i.i296, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i296:                                ; preds = %.noexc.i294
  %i.qf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.py, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i.i.i297 unwind label %bb.bw ; 2 uses

.noexc.i.i.i297:                                  ; preds = %.noexc.i.i.i.i296
  store ptr %i.qf, ptr %i.py, align 8, !tbaa !41
  %i.qg = load i64, ptr %i.c, align 8, !tbaa !39
  store i64 %i.qg, ptr %i.qa, align 8, !tbaa !43
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i297, %.noexc.i294
  %i.qh = phi ptr [ %i.qf, %.noexc.i.i.i297 ], [ %i.qa, %.noexc.i294 ] ; 2 uses
  switch i64 %i.qd, label %bb.bv [
    i64 1, label %bb.bu
    i64 0, label %bb.bx
  ]

bb.bu:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.qi = load i8, ptr %i.qb, align 1, !tbaa !43
  store i8 %i.qi, ptr %i.qh, align 1, !tbaa !43
  br label %bb.bx

bb.bv:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qh, ptr align 1 %i.qb, i64 %i.qd, i1 false)
  br label %bb.bx

bb.bw:                                            ; preds = %.noexc.i.i.i.i296
  %i.qj = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(120) %.016.i) #26
  br label %.body.i

bb.bx:                                            ; preds = %bb.bv, %bb.bu, %._crit_edge.i.i.i.i.i
  %i.qk = load i64, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.016.i, i64 96
  store i64 %i.qk, ptr %i.ql, align 8, !tbaa !44
  %i.qm = load ptr, ptr %i.py, align 8, !tbaa !41
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qk
  store i8 0, ptr %i.qn, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i, i64 120 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.016.i, i64 120 ; 2 uses
  %.not.i295 = icmp eq ptr %i.qo, %i.nq
  br i1 %.not.i295, label %_ZN17ChatFormattedLineC2ERKS_.exit.i, label %.lr.ph.i, !llvm.loop !97

bb.by:                                            ; preds = %.noexc.i.i358
  %i.qq = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.bt, %bb.by, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i344, %bb.bw
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.qj, %bb.bw ], [ %i.qq, %bb.by ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i344 ], [ %lpad.phi, %bb.bt ]
  %i.qr = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.qs = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  %i.qt = call ptr @__cxa_begin_catch(ptr %i.qs) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIP21ChatFormattedFragmentEvT_S2_(ptr noundef %i.nl, ptr noundef nonnull %.016.i)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %.body.i
  invoke void @__cxa_rethrow() #29
          to label %bb.cc unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.body.i
  %i.qu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body298 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qv = landingpad { ptr, i32 }
          catch ptr null
  %i.qw = extractvalue { ptr, i32 } %i.qv, 0
  call void @__clang_call_terminate(ptr %i.qw) #28
  unreachable

bb.cc:                                            ; preds = %bb.bz
  unreachable

.body298:                                         ; preds = %bb.ca
  %i.qx = load ptr, ptr %i.nb, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.qx, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.cd

bb.cd:                                            ; preds = %.body298
  %i.qy = load ptr, ptr %i.qr, align 8, !tbaa !82
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = ptrtoint ptr %i.qx to i64
  %i.rb = sub i64 %i.qz, %i.ra
  call void @_ZdlPvm(ptr noundef nonnull %i.qx, i64 noundef %i.rb) #27
  br label %.body

_ZN17ChatFormattedLineC2ERKS_.exit.i:             ; preds = %bb.bx, %.noexc193
  %.0.lcssa.i = phi ptr [ %i.nl, %.noexc193 ], [ %i.qp, %bb.bx ]
  store ptr %.0.lcssa.i, ptr %i.nm, align 8, !tbaa !81
  %i.rc = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.rd = load i8, ptr %i.az, align 8, !tbaa !78, !range !45, !noundef !98
  store i8 %i.rd, ptr %i.rc, align 8, !tbaa !78
  %i.re = load ptr, ptr %i.bv, align 8, !tbaa !47
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  store ptr %i.rf, ptr %i.bv, align 8, !tbaa !47
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE9push_backERKS0_.exit

bb.ce:                                            ; preds = %bb.bn
  invoke void @_ZNSt6vectorI17ChatFormattedLineSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.nb, ptr noundef nonnull align 8 dereferenceable(25) %5)
          to label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE9push_backERKS0_.exit unwind label %.loopexit415

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZN17ChatFormattedLineC2ERKS_.exit.i, %bb.ce
  %i.rg = add i32 %.1572, 1
  %i.rh = load ptr, ptr %5, align 8, !tbaa !94    ; 3 uses
  %i.ri = load ptr, ptr %i.bc, align 8, !tbaa !81 ; 2 uses
  %.not.i.i197 = icmp eq ptr %i.ri, %i.rh
  br i1 %.not.i.i197, label %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE9push_backERKS0_.exit, %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.sc, %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i.i ], [ %i.rh, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE9push_backERKS0_.exit ] ; 7 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !41 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104 ; 2 uses
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.rn = load i64, ptr %i.rl, align 8, !tbaa !43
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.ro) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !69 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.rr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !70
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = ptrtoint ptr %i.rq to i64
  %i.rv = sub i64 %i.rt, %i.ru
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef %i.rv) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.rw = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !71 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ry = icmp eq ptr %i.rw, %i.rx
  br i1 %i.ry, label %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i.i
  %i.rz = load i64, ptr %i.rx, align 8, !tbaa !43
  %i.sa = shl i64 %i.rz, 2
  %i.sb = add i64 %i.sa, 4
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.sb) #27
  br label %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i.i

_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.sc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i.i198 = icmp eq ptr %i.sc, %i.ri
  br i1 %.not.i.i.i.i198, label %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !99

_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i.i
  store ptr %i.rh, ptr %i.bc, align 8, !tbaa !81
  br label %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE5clearEv.exit

_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE5clearEv.exit: ; preds = %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE9push_backERKS0_.exit, %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i.i
  store i8 0, ptr %i.az, align 8, !tbaa !78
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE5clearEv.exit
  %.3107 = phi i32 [ %.0123, %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE5clearEv.exit ], [ %i.mz, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i.i ] ; 2 uses
  %.2 = phi i32 [ %i.rg, %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE5clearEv.exit ], [ %.1572, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i.i ] ; 2 uses
  %i.sd = load ptr, ptr %4, align 8, !tbaa !80    ; 3 uses
  %i.se = load ptr, ptr %i.ba, align 8, !tbaa !80
  %i.sf = icmp eq ptr %i.sd, %i.se
  br i1 %i.sf, label %._crit_edge, label %.lr.ph, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.cg, %bb.y
  %i.sg = phi ptr [ %i.cr, %bb.y ], [ %i.sd, %bb.cg ]
  %.1105.lcssa = phi i32 [ %.0104, %bb.y ], [ %.3107, %bb.cg ] ; 3 uses
  %.1.lcssa = phi i32 [ %.091, %bb.y ], [ %.2, %bb.cg ] ; 2 uses
  %i.sh = load i64, ptr %i.bb, align 8, !tbaa !72
  %i.si = icmp ugt i64 %i.sh, %i.co
  br i1 %i.si, label %bb.ch, label %bb.x, !llvm.loop !101

bb.ch:                                            ; preds = %._crit_edge
  %i.sj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK14EnrichedString9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.bx)
          to label %bb.ci unwind label %bb.cm     ; 6 uses

bb.ci:                                            ; preds = %bb.ch
  %i.sk = sub i32 %2, %.1105.lcssa
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE9push_backERKS0_.exit250
  %.0112596 = phi i64 [ -1, %bb.ci ], [ %.2114, %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE9push_backERKS0_.exit250 ]
  %.1116595 = phi i32 [ %.0115.ph, %bb.ci ], [ %i.abb, %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE9push_backERKS0_.exit250 ] ; 7 uses
  %.0401593 = phi i32 [ %i.sk, %bb.ci ], [ %i.abc, %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE9push_backERKS0_.exit250 ]
  %.0401.fr = freeze i32 %.0401593                ; 4 uses
  %i.sl = load i64, ptr %i.bb, align 8, !tbaa !72
  %i.sm = zext i32 %.1116595 to i64               ; 4 uses
  %i.sn = trunc i64 %i.sl to i32
  %i.so = sub i32 %i.sn, %.1116595                ; 5 uses
  %i.sp = load i8, ptr %i.by, align 8, !tbaa !33, !range !45, !noundef !98
  %i.sq = trunc nuw i8 %i.sp to i1
  br i1 %i.sq, label %bb.ck, label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  %i.sr = call noundef i64 @_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4findEPKwmm(ptr noundef nonnull align 8 dereferenceable(32) %i.sj, ptr noundef nonnull @.str.6, i64 noundef %i.sm, i64 noundef 8) #26 ; 2 uses
  %i.ss = icmp eq i64 %i.sr, -1
  br i1 %i.ss, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.st = call noundef i64 @_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4findEPKwmm(ptr noundef nonnull align 8 dereferenceable(32) %i.sj, ptr noundef nonnull @.str.7, i64 noundef %i.sm, i64 noundef 7) #26
  br label %bb.co

bb.cm:                                            ; preds = %bb.ch
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cn:                                            ; preds = %.noexc.i.i318, %bb.es, %_ZN14EnrichedStringD2Ev.exit236
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.co:                                            ; preds = %bb.cl, %bb.ck
  %.1113 = phi i64 [ %i.st, %bb.cl ], [ %i.sr, %bb.ck ] ; 2 uses
  %.not129 = icmp eq i64 %.1113, -1
  %i.sw = sub i64 %.1113, %i.sm
  %spec.select149 = select i1 %.not129, i64 -1, i64 %i.sw
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cj
  %.2114 = phi i64 [ %.0112596, %bb.cj ], [ %spec.select149, %bb.co ] ; 5 uses
  %invariant.umin = call i32 @llvm.umin.i32(i32 %i.so, i32 %.0401.fr) ; 3 uses
  %.not597 = icmp eq i32 %invariant.umin, 0
  br i1 %.not597, label %._crit_edge578, label %.lr.ph577.preheader

.lr.ph577.preheader:                              ; preds = %bb.cp
  %wide.trip.count = zext i32 %invariant.umin to i64
  br label %.lr.ph577

.lr.ph577:                                        ; preds = %.lr.ph577.preheader, %.lr.ph577
  %indvars.iv = phi i64 [ 0, %.lr.ph577.preheader ], [ %indvars.iv.next, %.lr.ph577 ] ; 2 uses
  %.0109575 = phi i32 [ 0, %.lr.ph577.preheader ], [ %spec.select150, %.lr.ph577 ]
  %16 = trunc nuw i64 %indvars.iv to i32          ; 2 uses
  %17 = add i32 %.1116595, %16
  %18 = zext i32 %17 to i64
  %19 = load ptr, ptr %i.sj, align 8, !tbaa !71
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %18
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !76
  %i.sz = call i32 @iswspace(i32 noundef %i.sy) #26
  %.not141 = icmp eq i32 %i.sz, 0
  %spec.select150 = select i1 %.not141, i32 %.0109575, i32 %16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge578, label %.lr.ph577, !llvm.loop !102

._crit_edge578:                                   ; preds = %.lr.ph577, %bb.cp
  %.0109.lcssa = phi i32 [ 0, %bb.cp ], [ %spec.select150, %.lr.ph577 ]
  %i.ta = zext i32 %.0401.fr to i64
  %.not130 = icmp ult i64 %.2114, %i.ta
  br i1 %.not130, label %bb.cq, label %bb.df

bb.cq:                                            ; preds = %._crit_edge578
  %i.tb = icmp eq i64 %.2114, 0
  br i1 %i.tb, label %bb.cr, label %bb.de

bb.cr:                                            ; preds = %bb.cq
  %i.tc = load atomic i8, ptr @_ZGVZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE11delim_charsB5cxx11 acquire, align 8
  %i.td = icmp eq i8 %i.tc, 0
  br i1 %i.td, label %bb.cs, label %bb.cv, !prof !103

bb.cs:                                            ; preds = %bb.cr
  %i.te = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE11delim_charsB5cxx11) #26
  %.not131 = icmp eq i32 %i.te, 0
  br i1 %.not131, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE11delim_charsB5cxx11, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.cu unwind label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.tf = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev, ptr nonnull @_ZZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE11delim_charsB5cxx11, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE11delim_charsB5cxx11) #26
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs, %bb.cr
  %i.tg = icmp ugt i32 %i.so, 6
  br i1 %i.tg, label %.lr.ph585.preheader, label %.critedge3

.lr.ph585.preheader:                              ; preds = %bb.cv
  %i.th = load ptr, ptr %i.sj, align 8, !tbaa !71
  %i.ti = add i32 %.1116595, 6
  %i.tj = zext i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.tj
  %i.tl = zext i32 %i.so to i64
  br label %.lr.ph585

.lr.ph585:                                        ; preds = %.lr.ph585.preheader, %bb.cx
  %indvars.iv660 = phi i64 [ 6, %.lr.ph585.preheader ], [ %indvars.iv.next661, %bb.cx ] ; 3 uses
  %.0108583.in = phi ptr [ %i.tk, %.lr.ph585.preheader ], [ %i.tt, %bb.cx ]
  %.0108583 = load i32, ptr %.0108583.in, align 4, !tbaa !76 ; 2 uses
  %i.tm = call i32 @iswspace(i32 noundef %.0108583) #26
  %.not132 = icmp eq i32 %i.tm, 0
  br i1 %.not132, label %bb.cw, label %.critedge3.loopexit.split.loop.exit

bb.cw:                                            ; preds = %.lr.ph585
  %i.tn = call noundef i64 @_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4findEwm(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE11delim_charsB5cxx11, i32 noundef signext %.0108583, i64 noundef 0) #26
  %i.to = icmp eq i64 %i.tn, -1
  br i1 %i.to, label %bb.cx, label %.critedge3.loopexit.split.loop.exit920

bb.cx:                                            ; preds = %bb.cw
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 3 uses
  %i.tp = trunc nuw i64 %indvars.iv.next661 to i32
  %i.tq = add i32 %.1116595, %i.tp
  %i.tr = zext i32 %i.tq to i64
  %i.ts = load ptr, ptr %i.sj, align 8, !tbaa !71
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.tr
  %exitcond663.not = icmp eq i64 %indvars.iv.next661, %i.tl
  br i1 %exitcond663.not, label %.critedge3, label %.lr.ph585, !llvm.loop !104

bb.cy:                                            ; preds = %bb.ct
  %i.tu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE11delim_charsB5cxx11) #26
  br label %.body

.critedge3.loopexit.split.loop.exit:              ; preds = %.lr.ph585
  %i.tv = trunc nuw i64 %indvars.iv660 to i32
  br label %.critedge3

.critedge3.loopexit.split.loop.exit920:           ; preds = %bb.cw
  %i.tw = trunc nuw i64 %indvars.iv660 to i32
  br label %.critedge3

.critedge3:                                       ; preds = %bb.cx, %.critedge3.loopexit.split.loop.exit, %.critedge3.loopexit.split.loop.exit920, %bb.cv
  %.1399.lcssa = phi i32 [ 6, %bb.cv ], [ %i.tw, %.critedge3.loopexit.split.loop.exit920 ], [ %i.tv, %.critedge3.loopexit.split.loop.exit ], [ %i.so, %bb.cx ] ; 2 uses
  %i.tx = load atomic i8, ptr @_ZGVZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE13tailing_charsB5cxx11 acquire, align 8
  %i.ty = icmp eq i8 %i.tx, 0
  br i1 %i.ty, label %bb.cz, label %bb.dc, !prof !103

bb.cz:                                            ; preds = %.critedge3
  %i.tz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE13tailing_charsB5cxx11) #26
  %.not133 = icmp eq i32 %i.tz, 0
  br i1 %.not133, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE13tailing_charsB5cxx11, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ua = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev, ptr nonnull @_ZZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE13tailing_charsB5cxx11, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE13tailing_charsB5cxx11) #26
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cz, %.critedge3
  %i.ub = add i32 %.1116595, -1
  %i.uc = add i32 %i.ub, %.1399.lcssa
  %i.ud = zext i32 %i.uc to i64
  %i.ue = load ptr, ptr %i.sj, align 8, !tbaa !71
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.ud
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !76
  %i.uh = call noundef i64 @_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4findEwm(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE13tailing_charsB5cxx11, i32 noundef signext %i.ug, i64 noundef 0) #26
  %.not134 = icmp ne i64 %i.uh, -1
  %i.ui = sext i1 %.not134 to i32
  %spec.select407 = add i32 %.1399.lcssa, %i.ui   ; 3 uses
  %i.uj = add i32 %spec.select407, -1
  %.not135 = icmp uge i32 %spec.select407, %.0401.fr
  br label %bb.df

bb.dd:                                            ; preds = %bb.da
  %i.uk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EEE13tailing_charsB5cxx11) #26
  br label %.body

bb.de:                                            ; preds = %bb.cq
  %i.ul = trunc nuw i64 %.2114 to i32             ; 2 uses
  %i.um = add i32 %i.ul, -1
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge578, %bb.dc, %bb.de
  %.3 = phi i32 [ %spec.select407, %bb.dc ], [ %i.ul, %bb.de ], [ %invariant.umin, %._crit_edge578 ] ; 2 uses
  %.5122 = phi i1 [ %.not135, %bb.dc ], [ false, %bb.de ], [ true, %._crit_edge578 ] ; 2 uses
  %.2111 = phi i32 [ %i.uj, %bb.dc ], [ %i.um, %bb.de ], [ %.0109.lcssa, %._crit_edge578 ] ; 2 uses
  %.not136 = icmp ne i32 %.2111, 0
  %i.un = icmp ult i32 %.3, %i.so
  %or.cond153 = select i1 %.not136, i1 %i.un, i1 false
  %i.uo = add i32 %.2111, 1
  %spec.select408 = select i1 %or.cond153, i32 %i.uo, i32 %.3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.up = zext i32 %spec.select408 to i64
  invoke void @_ZNK14EnrichedString6substrEmm(ptr dead_on_unwind nonnull writable sret(%class.EnrichedString) align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %i.bx, i64 noundef %i.sm, i64 noundef %i.up)
          to label %bb.dg unwind label %bb.ed

bb.dg:                                            ; preds = %bb.df
  %i.uq = load ptr, ptr %6, align 8, !tbaa !71    ; 8 uses
  %i.ur = icmp eq ptr %i.uq, %i.be
  %i.us = load ptr, ptr %12, align 8, !tbaa !71   ; 7 uses
  %i.ut = icmp eq ptr %i.us, %i.bz                ; 2 uses
  br i1 %i.ur, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i210, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i199

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i210: ; preds = %bb.dg
  br i1 %i.ut, label %bb.dh, label %.thread.i.i211

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i199: ; preds = %bb.dg
  br i1 %i.ut, label %bb.dh, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i200

bb.dh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i199, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i210
  %i.uu = load i64, ptr %i.ca, align 8, !tbaa !72 ; 4 uses
  %i.uv = icmp ult i64 %i.uu, 4
  call void @llvm.assume(i1 %i.uv)
  switch i64 %i.uu, label %bb.dj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i205
    i64 1, label %bb.di
  ]

bb.di:                                            ; preds = %bb.dh
  %i.uw = load i32, ptr %i.us, align 4, !tbaa !76
  store i32 %i.uw, ptr %i.uq, align 4, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i205

bb.dj:                                            ; preds = %bb.dh
  %i.ux = call ptr @wmemcpy(ptr noundef %i.uq, ptr noundef %i.us, i64 noundef %i.uu) #26 ; 0 uses
  %.pre.i.i207 = load i64, ptr %i.ca, align 8, !tbaa !72
  %.pre30.i.i208 = load ptr, ptr %6, align 8, !tbaa !71
  %.pre31.pre.i.i209 = load ptr, ptr %12, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i205

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i205: ; preds = %bb.dj, %bb.di, %bb.dh
  %.pre31.i.i206 = phi ptr [ %i.us, %bb.dh ], [ %.pre31.pre.i.i209, %bb.dj ], [ %i.us, %bb.di ]
  %i.uy = phi ptr [ %i.uq, %bb.dh ], [ %.pre30.i.i208, %bb.dj ], [ %i.uq, %bb.di ]
  %i.uz = phi i64 [ %i.uu, %bb.dh ], [ %.pre.i.i207, %bb.dj ], [ 1, %bb.di ] ; 2 uses
  store i64 %i.uz, ptr %i.bh, align 8, !tbaa !72
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.uz
  store i32 0, ptr %i.va, align 4, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit.i202

.thread.i.i211:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i210
  store ptr %i.us, ptr %6, align 8, !tbaa !71
  %i.vb = load <2 x i64>, ptr %i.ca, align 8, !tbaa !43
  store <2 x i64> %i.vb, ptr %i.bh, align 8, !tbaa !43
  br label %bb.dl

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i200: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i199
  %i.vc = load i64, ptr %i.be, align 8, !tbaa !43
  store ptr %i.us, ptr %6, align 8, !tbaa !71
end_hunk_0
begin_hunk_1_@_ZNK10ChatBuffer7getLineEj:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw [168 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10ChatBuffer4stepEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0, float noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load float, ptr %.sroa.05.09, align 8, !tbaa !54
  %i.f = fadd nsz float %1, %i.e
  store float %i.f, ptr %.sroa.05.09, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 168 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10ChatBuffer14scrollAbsoluteEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) initializes((40, 44)) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !66   ; 3 uses
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  %.not.i = icmp slt i32 %i.k, %i.i
  %or.cond.i = or i1 %i.l, %.not.i
  %i.m = sub nsw i32 %i.i, %i.k                   ; 2 uses
  %.0.i = select i1 %or.cond.i, i32 0, i32 %i.m
  %.0.i7 = select i1 %i.l, i32 0, i32 %i.m
  %spec.select = tail call i32 @llvm.smax.i32(i32 %1, i32 %.0.i)
  %storemerge6 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %.0.i7)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %storemerge6, ptr %i.n, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ChatBuffer11deleteByAgeEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 168
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %.06 = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.j = getelementptr inbounds nuw [168 x i8], ptr %i.d, i64 %i.i
  %i.k = load float, ptr %i.j, align 8, !tbaa !54
  %i.l = fcmp nsz ogt float %i.k, %1
  br i1 %i.l, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.m = add i32 %.06, 1                          ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = icmp ugt i64 %i.h, %i.n
  br i1 %i.o, label %.lr.ph, label %.critedge, !llvm.loop !113

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %bb.b ], [ %.06, %.lr.ph ]
  tail call void @_ZN10ChatBuffer12deleteOldestEj(ptr noundef nonnull align 8 dereferenceable(113) %0, i32 noundef %.0.lcssa)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK10ChatBuffer7getRowsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !66
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ChatBuffer8reformatEjj(ptr noundef nonnull align 8 dereferenceable(113) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = icmp eq i32 %2, 0
  %or.cond = or i1 %i.a, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.e, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %.05.i.i.i.i) #26
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !48

_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !47
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.c, align 8, !tbaa !68
  %.not = icmp eq i32 %1, %i.k                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %.not29 = icmp eq i32 %2, %i.m
  %or.cond32 = select i1 %.not, i1 %.not29, i1 false
  br i1 %or.cond32, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !67   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 3 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !46   ; 9 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 5
  %i.x = icmp eq i32 %i.m, 0
  %i.y = trunc i64 %i.w to i32
  %i.z = sub nsw i32 %i.y, %i.m
  %.0.i = select i1 %i.x, i32 0, i32 %i.z
  %i.aa = icmp ne i32 %i.o, %.0.i                 ; 2 uses
  %i.ab = icmp sgt i32 %i.o, 0
  %or.cond49 = and i1 %i.aa, %i.ab
  br i1 %or.cond49, label %.lr.ph.preheader, label %.loopexit41

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ac = icmp ult i32 %i.o, 4
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.02342 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.3, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !78, !range !45, !noundef !98
  %i.ag = zext nneg i8 %i.af to i32
  %spec.select = add i32 %.02342, %i.ag
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !78, !range !45, !noundef !98
  %i.ak = zext nneg i8 %i.aj to i32
  %spec.select.1 = add i32 %spec.select, %i.ak
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load i8, ptr %i.am, align 8, !tbaa !78, !range !45, !noundef !98
  %i.ao = zext nneg i8 %i.an to i32
  %spec.select.2 = add i32 %spec.select.1, %i.ao
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !78, !range !45, !noundef !98
  %i.as = zext nneg i8 %i.ar to i32
  %spec.select.3 = add i32 %spec.select.2, %i.as  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit41.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !114

.loopexit41.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit41, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit41.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit41.loopexit.unr-lcssa ]
  %.02342.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.3, %.loopexit41.loopexit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.02342.epil = phi i32 [ %.02342.epil.init, %.lr.ph.epil.preheader ], [ %spec.select.epil, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i8, ptr %i.au, align 8, !tbaa !78, !range !45, !noundef !98
  %i.aw = zext nneg i8 %i.av to i32
  %spec.select.epil = add i32 %.02342.epil, %i.aw ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit41, label %.lr.ph.epil, !llvm.loop !115

.loopexit41:                                      ; preds = %.loopexit41.loopexit.unr-lcssa, %.lr.ph.epil, %bb.d
  %.225 = phi i32 [ 0, %bb.d ], [ %spec.select.3, %.loopexit41.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil ]
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.loopexit41
  %.not.i.i33 = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i33, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38, label %.lr.ph.i.i.i.i34

.lr.ph.i.i.i.i34:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i34
  %.05.i.i.i.i35 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i34 ], [ %i.s, %bb.e ] ; 2 uses
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %.05.i.i.i.i35) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i35, i64 32 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.ax, %i.r
  br i1 %.not.i.i.i.i36, label %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i37, label %.lr.ph.i.i.i.i34, !llvm.loop !48

_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i37: ; preds = %.lr.ph.i.i.i.i34
  store ptr %i.s, ptr %i.q, align 8, !tbaa !47
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38: ; preds = %bb.e, %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i37
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !51 ; 2 uses
  %.not50 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not50, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38, %bb.g
  %i.bc = phi ptr [ %i.br, %bb.g ], [ %i.bb, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38 ]
  %i.bd = phi i64 [ %i.bp, %bb.g ], [ 0, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38 ]
  %.045 = phi i32 [ %i.bo, %bb.g ], [ 0, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38 ] ; 2 uses
  %.02244 = phi i32 [ %.1, %bb.g ], [ 0, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38 ]
  %i.be = icmp eq i32 %.045, %.225
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph46
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = lshr exact i64 %i.bj, 5
  %i.bl = trunc i64 %i.bk to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph46
  %.1 = phi i32 [ %i.bl, %bb.f ], [ %.02244, %.lr.ph46 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [168 x i8], ptr %i.bc, i64 %i.bd
  %i.bn = tail call noundef i32 @_ZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.bm, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.p) ; 0 uses
  %i.bo = add i32 %.045, 1                        ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !51 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 168
  %i.bw = icmp ugt i64 %i.bv, %i.bp
  br i1 %i.bw, label %.lr.ph46, label %.loopexit, !llvm.loop !117

.loopexit:                                        ; preds = %bb.g, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38, %.loopexit41
  %.2 = phi i32 [ 0, %.loopexit41 ], [ 0, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38 ], [ %.1, %bb.g ]
  store i32 %1, ptr %i.c, align 8, !tbaa !68
  store i32 %2, ptr %i.l, align 4, !tbaa !66
  %i.bx = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 5
  %i.cd = trunc i64 %i.cc to i32                  ; 3 uses
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ce = sub nsw i32 %i.cd, %2
  store i32 %i.ce, ptr %i.n, align 8, !tbaa !67
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit

bb.i:                                             ; preds = %.loopexit
  %.not.i.i39 = icmp slt i32 %2, %i.cd
  %i.cf = sub nsw i32 %i.cd, %2                   ; 2 uses
  %.0.i.i40 = select i1 %.not.i.i39, i32 0, i32 %i.cf
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.2, i32 %.0.i.i40)
  %storemerge6.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.cf)
  store i32 %storemerge6.i, ptr %i.n, align 8, !tbaa !67
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.b, %bb.h, %bb.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10ChatBuffer12scrollBottomEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) initializes((40, 44)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !66   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = trunc i64 %i.h to i32
  %i.m = sub nsw i32 %i.l, %i.j
  %.0.i = select i1 %i.k, i32 0, i32 %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0.i, ptr %i.n, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(25) ptr @_ZNK10ChatBuffer16getFormattedLineEj(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(113) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  %i.c = add nsw i32 %i.b, %1                     ; 3 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 5
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp slt i32 %i.c, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.c to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.o
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10ChatBuffer6scrollEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  %i.c = add nsw i32 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 5
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !66   ; 3 uses
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %.not.i.i = icmp slt i32 %i.n, %i.l
  %or.cond.i.i = or i1 %i.o, %.not.i.i
  %i.p = sub nsw i32 %i.l, %i.n                   ; 2 uses
  %.0.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.p
  %.0.i7.i = select i1 %i.o, i32 0, i32 %i.p
end_hunk_1
