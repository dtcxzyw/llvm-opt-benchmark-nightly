Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_context?download=true
inline.NumInlined: 9919
inline.NumDeleted: 2463
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3smt7context6add_eqEPNS_5enodeES2_NS_16eq_justificationE:bb.a
  %.022.i = phi ptr [ %i.eh, %.lr.ph.i ], [ %i.ed, %bb.z ] ; 4 uses
  %.01821.i = phi ptr [ %.022.i, %.lr.ph.i ], [ %.0115, %bb.z ]
  %.sroa.02.020.i = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph.i ], [ %.sroa.02.0.copyload.i, %bb.z ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.022.i, i64 80 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !891 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.022.i, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ei, align 8, !tbaa !643
  store ptr %.01821.i, ptr %i.eg, align 8, !tbaa !891
  store ptr %.sroa.02.020.i, ptr %i.ei, align 8, !tbaa !643
  %i.ej = getelementptr inbounds nuw i8, ptr %.022.i, i64 52
  store i8 0, ptr %i.ej, align 4, !tbaa !892
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %_ZN3smt7context12invert_transEPNS_5enodeE.exit, label %.lr.ph.i, !llvm.loop !15

_ZN3smt7context12invert_transEPNS_5enodeE.exit:   ; preds = %.lr.ph.i, %bb.z
  store ptr %.0116, ptr %i.ec, align 8, !tbaa !891
  store ptr %3, ptr %i.ee, align 8, !tbaa !643
  store i8 0, ptr %i.ef, align 4, !tbaa !892
  invoke void @_ZN3smt7context28remove_parents_from_cg_tableEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull %.0117)
          to label %.preheader unwind label %bb.ag

.preheader:                                       ; preds = %_ZN3smt7context12invert_transEPNS_5enodeE.exit, %.preheader
  %.0 = phi ptr [ %i.em, %.preheader ], [ %.0117, %_ZN3smt7context12invert_transEPNS_5enodeE.exit ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store ptr %.0118, ptr %i.ek, align 8, !tbaa !889
  %i.el = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !893 ; 2 uses
  %.not = icmp eq ptr %i.em, %.0117
  br i1 %.not, label %bb.aa, label %.preheader, !llvm.loop !1226

bb.aa:                                            ; preds = %.preheader
  invoke void @_ZN3smt7context30reinsert_parents_into_cg_tableEPNS_5enodeES2_S2_S2_NS_16eq_justificationE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull %.0117, ptr noundef nonnull %.0118, ptr noundef nonnull %.0115, ptr noundef nonnull %.0116, ptr %3)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 9568
  %i.eo = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.en, i64 noundef 40)
          to label %.noexc38 unwind label %bb.ag  ; 6 uses

.noexc38:                                         ; preds = %bb.ab
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3smt12add_eq_trailE, i64 16), ptr %i.eo, align 8, !tbaa !73
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %0, ptr %i.ep, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store ptr %.0117, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store ptr %.0115, ptr %.sroa.7.8..sroa_idx, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store i32 %.0.i.i37, ptr %.sroa.8.8..sroa_idx, align 8
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !768 ; 4 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.noexc38
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !644 ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.eq, i64 -8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !644
  %i.ew = icmp eq i32 %i.et, %i.ev
  br i1 %i.ew, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %.noexc38
  invoke void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %.noexc39 unwind label %bb.ag

.noexc39:                                         ; preds = %bb.ad
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !768 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !644
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc39, %bb.ac
  %i.ex = phi i32 [ %.pre2.i.i.i, %.noexc39 ], [ %i.et, %bb.ac ] ; 2 uses
  %i.ey = phi ptr [ %.pre.i.i.i, %.noexc39 ], [ %i.eq, %bb.ac ] ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4
  %i.fa = zext i32 %i.ex to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fa
  store ptr %i.eo, ptr %i.fb, align 8, !tbaa !855
  %i.fc = add i32 %i.ex, 1
  store i32 %i.fc, ptr %i.ez, align 4, !tbaa !644
  %i.fd = getelementptr inbounds nuw i8, ptr %.0116, i64 44
  %i.fe = load i16, ptr %i.fd, align 4
  %i.ff = and i16 %i.fe, 64
  %.not122 = icmp eq i16 %i.ff, 0
  br i1 %.not122, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN3smt7context31propagate_bool_enode_assignmentEPNS_5enodeES2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull %.0117, ptr noundef nonnull %.0118, ptr noundef nonnull %.0115, ptr noundef nonnull %.0116)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %.noexc29.invoke, %bb.aa, %bb.af, %bb.c, %bb.e, %bb.g, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %bb.j, %_ZN3smt7context12invert_transEPNS_5enodeE.exit, %bb.y, %_ZNK3smt5enode15get_num_parentsEv.exit, %bb.i, %bb.k, %bb.u, %_ZNK3smt7context11is_relevantEPNS_5enodeE.exit.thread, %bb.w, %_ZNK3smt7context11is_relevantEPNS_5enodeE.exit33.thread, %bb.m, %.noexc, %bb.p, %_ZlsRSoRK13mk_bounded_pp.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZlsRSoRK13mk_bounded_pp.exit19, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZlsRSoRK13mk_bounded_pp.exit22, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZlsRSoRK13mk_bounded_pp.exit24, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23, %bb.ad, %bb.ab
  %i.fg = landingpad { ptr, i32 }
          catch ptr null
  %.5 = extractvalue { ptr, i32 } %i.fg, 0
  %i.fh = tail call ptr @__cxa_begin_catch(ptr %.5) #30 ; 0 uses
  %i.fi = load ptr, ptr %i.a, align 8, !tbaa !768 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i40, label %_ZN11trail_stack6shrinkEj.exit, label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %.0117, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0118, i64 16 ; 2 uses
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !841
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !841
  store ptr %i.fm, ptr %i.fj, align 8, !tbaa !841
  store ptr %i.fl, ptr %i.fk, align 8, !tbaa !841
  %i.fn = getelementptr inbounds nuw i8, ptr %.0117, i64 32
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !890
  %i.fp = getelementptr inbounds nuw i8, ptr %.0118, i64 32 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !890
  %i.fr = add i32 %i.fq, %i.fo
  store i32 %i.fr, ptr %i.fp, align 8, !tbaa !890
  %i.fs = getelementptr inbounds nuw i8, ptr %.0118, i64 44 ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 4
  %i.fu = and i16 %i.ft, -1537
  %i.fv = or disjoint i16 %i.fu, 1024
  store i16 %i.fv, ptr %i.fs, align 4
  br label %_ZN3smt7context12set_conflictEPNS_13justificationE.exit

_ZN3smt7context12set_conflictEPNS_13justificationE.exit: ; preds = %_ZN3smt7context16mk_justificationINS_25eq_conflict_justificationEEEPNS_13justificationERKT_.exit, %bb.q, %_ZNK11trail_stack4sizeEv.exit, %bb.ah
  store i8 %i.i, ptr %i.h, align 4, !tbaa !814
  ret void

bb.ai:                                            ; preds = %bb.ag
  %i.fw = getelementptr inbounds i8, ptr %i.fi, i64 -4
  store i32 %.0.i.i, ptr %i.fw, align 4, !tbaa !644
  br label %_ZN11trail_stack6shrinkEj.exit

_ZN11trail_stack6shrinkEj.exit:                   ; preds = %bb.ai, %bb.ag
  invoke void @__cxa_rethrow() #32
          to label %bb.am unwind label %bb.aj

bb.aj:                                            ; preds = %_ZN11trail_stack6shrinkEj.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i8 %i.i, ptr %i.h, align 4, !tbaa !814
  resume { ptr, i32 } %i.fx

bb.al:                                            ; preds = %bb.aj
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  tail call void @__clang_call_terminate(ptr %i.fz) #31
  unreachable

bb.am:                                            ; preds = %_ZN11trail_stack6shrinkEj.exit
  unreachable
}

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #1

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #1

declare void @_Z12verbose_lockv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #1

declare void @_Z14verbose_unlockv() local_unnamed_addr #1

declare void @_ZN3smt18quantifier_manager9add_eq_ehEPNS_5enodeES2_(ptr noundef nonnull align 8 dereferenceable(13), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context17merge_theory_varsEPNS_5enodeES2_NS_16eq_justificationE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !889  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !889  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp ult i32 %i.f, -256
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp ult i32 %i.i, -256
  br i1 %i.j, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.l = and i64 %i.k, 7
  %i.m = icmp eq i64 %i.l, 3
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = and i64 %i.k, -8
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(9) %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.088 = phi i32 [ %i.s, %bb.d ], [ -1, %bb.c ]  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !894
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %i.t, align 8
  br label %bb.ab

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !894
  %i.z = icmp eq ptr %i.y, null
  %.pre177 = load i32, ptr %i.t, align 8          ; 3 uses
  br i1 %i.z, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %bb.f
  %i.aa = shl i32 %.pre177, 24                    ; 4 uses
  %i.ab = ashr exact i32 %i.aa, 24                ; 8 uses
  %i.ac = load i32, ptr %i.e, align 8             ; 2 uses
  %i.ad = shl i32 %i.ac, 24                       ; 4 uses
  %i.ae = ashr exact i32 %i.ad, 24                ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !584, !nonnull !585, !align !586
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 609
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !895, !range !815, !noundef !585
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.h, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit.thread214

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp eq i32 %i.aa, -16777216
  br i1 %i.ak, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.0916.i = phi ptr [ %i.an, %bb.i ], [ %1, %bb.h ] ; 2 uses
  %i.al = tail call noundef i32 @_ZNK3smt5enode10get_th_varEi(ptr noundef nonnull align 8 dereferenceable(112) %.0916.i, i32 noundef %i.ab) ; 3 uses
  %.not12.not.i = icmp eq i32 %i.al, -1
  br i1 %.not12.not.i, label %bb.i, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0916.i, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !891 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit, label %.lr.ph.i

_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit.thread214: ; preds = %bb.g
  %i.ao = ashr i32 %.pre177, 8
  br label %bb.k

_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit: ; preds = %bb.i, %.lr.ph.i
  %.pre180 = load ptr, ptr %i.af, align 8, !tbaa !584
  %.phi.trans.insert181 = getelementptr inbounds nuw i8, ptr %.pre180, i64 609
  %.pre182 = load i8, ptr %.phi.trans.insert181, align 1, !tbaa !895, !range !815
  %i.ap = trunc nuw i8 %.pre182 to i1
  br i1 %i.ap, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit.thread, label %bb.k

_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit.thread: ; preds = %bb.h, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit
  %i.aq = phi i32 [ %i.al, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit ], [ -1, %bb.h ] ; 3 uses
  %i.ar = icmp eq i32 %i.ad, -16777216
  %.not15.i100 = icmp eq ptr %2, null
  %or.cond.i101 = or i1 %.not15.i100, %i.ar
  br i1 %or.cond.i101, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107.thread, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit.thread, %bb.j
  %.0916.i103 = phi ptr [ %i.au, %bb.j ], [ %2, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit.thread ] ; 2 uses
  %i.as = tail call noundef i32 @_ZNK3smt5enode10get_th_varEi(ptr noundef nonnull align 8 dereferenceable(112) %.0916.i103, i32 noundef %i.ae) ; 2 uses
  %.not12.not.i104 = icmp eq i32 %i.as, -1
  br i1 %.not12.not.i104, label %bb.j, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107

bb.j:                                             ; preds = %.lr.ph.i102
  %i.at = getelementptr inbounds nuw i8, ptr %.0916.i103, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !891 ; 2 uses
  %.not.i106 = icmp eq ptr %i.au, null
  br i1 %.not.i106, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107.thread, label %.lr.ph.i102

bb.k:                                             ; preds = %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit.thread214, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit
  %i.av = phi i32 [ %i.ao, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit.thread214 ], [ %i.al, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit ]
  %i.aw = load i32, ptr %i.e, align 8
  %i.ax = ashr i32 %i.aw, 8
  br label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107

_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107.thread: ; preds = %bb.j, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit.thread
  %i.ay = icmp ne i32 %i.aq, -1
  br label %bb.t

_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107: ; preds = %.lr.ph.i102, %bb.k
  %i.az = phi i32 [ %i.av, %bb.k ], [ %i.aq, %.lr.ph.i102 ] ; 4 uses
  %i.ba = phi i32 [ %i.ax, %bb.k ], [ %i.as, %.lr.ph.i102 ] ; 5 uses
  %i.bb = icmp ne i32 %i.az, -1                   ; 2 uses
  %i.bc = icmp ne i32 %i.ba, -1                   ; 2 uses
  %or.cond = and i1 %i.bb, %i.bc
  br i1 %or.cond, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107
  %i.bd = icmp eq i32 %i.ae, %i.ab
  br i1 %i.bd, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not99 = icmp eq i32 %i.ab, %.088
  br i1 %.not99, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3smt7context14push_new_th_eqEiii(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %i.ab, i32 noundef %i.az, i32 noundef %i.ba)
  br label %.loopexit

bb.o:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN3smt5enode10add_th_varEiiR6region(ptr noundef nonnull align 8 dereferenceable(112) %i.b, i32 noundef %i.ba, i32 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.be)
  %i.bf = icmp eq i32 %i.ad, -16777216
  br i1 %i.bf, label %_ZNK3smt7context10get_theoryEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8736
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !688 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZNK3smt7context10get_theoryEi.exit, label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i: ; preds = %bb.p
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !644
  %.not.i.i.i = icmp ult i32 %i.ae, %i.bk
  br i1 %.not.i.i.i, label %bb.q, label %_ZNK3smt7context10get_theoryEi.exit

bb.q:                                             ; preds = %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i
  %i.bl = zext i32 %i.ae to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bl
  %.0.i.sroa.speculate.load..i.i = load ptr, ptr %i.bm, align 8, !tbaa !796
  br label %_ZNK3smt7context10get_theoryEi.exit

_ZNK3smt7context10get_theoryEi.exit:              ; preds = %bb.o, %bb.p, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i, %bb.q
  %.0.i.i = phi ptr [ null, %bb.o ], [ %.0.i.sroa.speculate.load..i.i, %bb.q ], [ null, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i ], [ null, %bb.p ]
  tail call void @_ZN3smt7context18push_new_th_diseqsEPNS_5enodeEiPNS_6theoryE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull %i.b, i32 noundef %i.ba, ptr noundef %.0.i.i)
  %i.bn = icmp eq i32 %i.aa, -16777216
  br i1 %i.bn, label %_ZNK3smt7context10get_theoryEi.exit112, label %bb.r

bb.r:                                             ; preds = %_ZNK3smt7context10get_theoryEi.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8736
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !688 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZNK3smt7context10get_theoryEi.exit112, label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i108

_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i108: ; preds = %bb.r
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !644
  %.not.i.i.i109 = icmp ult i32 %i.ab, %i.bs
  br i1 %.not.i.i.i109, label %bb.s, label %_ZNK3smt7context10get_theoryEi.exit112

bb.s:                                             ; preds = %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i108
  %i.bt = zext i32 %i.ab to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bt
  %.0.i.sroa.speculate.load..i.i111 = load ptr, ptr %i.bu, align 8, !tbaa !796
  br label %_ZNK3smt7context10get_theoryEi.exit112

_ZNK3smt7context10get_theoryEi.exit112:           ; preds = %_ZNK3smt7context10get_theoryEi.exit, %bb.r, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i108, %bb.s
  %.0.i.i110 = phi ptr [ null, %_ZNK3smt7context10get_theoryEi.exit ], [ %.0.i.sroa.speculate.load..i.i111, %bb.s ], [ null, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i108 ], [ null, %bb.r ]
  tail call void @_ZN3smt7context18push_new_th_diseqsEPNS_5enodeEiPNS_6theoryE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull %i.d, i32 noundef %i.az, ptr noundef %.0.i.i110)
  br label %.loopexit

bb.t:                                             ; preds = %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107.thread, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107
  %i.bv = phi i32 [ %i.aq, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107.thread ], [ %i.az, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107 ] ; 2 uses
  %i.bw = phi i1 [ false, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107.thread ], [ %i.bc, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107 ]
  %i.bx = phi i1 [ %i.ay, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107.thread ], [ %i.bb, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107 ]
  %i.by = phi i32 [ -1, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107.thread ], [ %i.ba, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit107 ] ; 3 uses
  %i.bz = icmp eq i32 %i.by, -1
  %or.cond3 = and i1 %i.bx, %i.bz
  br i1 %or.cond3, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ca = icmp eq i32 %i.aa, -16777216
  br i1 %i.ca, label %_ZNK3smt7context10get_theoryEi.exit117, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8736
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !688 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZNK3smt7context10get_theoryEi.exit117, label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i113

_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i113: ; preds = %bb.v
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !644
  %.not.i.i.i114 = icmp ult i32 %i.ab, %i.cf
  br i1 %.not.i.i.i114, label %bb.w, label %_ZNK3smt7context10get_theoryEi.exit117

bb.w:                                             ; preds = %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i113
  %i.cg = zext i32 %i.ab to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cg
  %.0.i.sroa.speculate.load..i.i116 = load ptr, ptr %i.ch, align 8, !tbaa !796
  br label %_ZNK3smt7context10get_theoryEi.exit117

_ZNK3smt7context10get_theoryEi.exit117:           ; preds = %bb.u, %bb.v, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i113, %bb.w
  %.0.i.i115 = phi ptr [ null, %bb.u ], [ %.0.i.sroa.speculate.load..i.i116, %bb.w ], [ null, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i113 ], [ null, %bb.v ]
  tail call void @_ZN3smt7context18push_new_th_diseqsEPNS_5enodeEiPNS_6theoryE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull %i.d, i32 noundef %i.bv, ptr noundef %.0.i.i115)
  br label %.loopexit

bb.x:                                             ; preds = %bb.t
  %i.ci = icmp eq i32 %i.bv, -1
  %or.cond5 = and i1 %i.ci, %i.bw
  br i1 %or.cond5, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %4 = load i32, ptr %i.t, align 8
  %i.cj = shl i32 %i.by, 8
  %i.ck = and i32 %4, 255
  %i.cl = or disjoint i32 %i.ck, %i.cj
  store i32 %i.cl, ptr %i.t, align 8
  %5 = trunc i32 %i.ac to i8
  store i8 %5, ptr %i.t, align 8
  %i.cm = icmp eq i32 %i.ad, -16777216
  br i1 %i.cm, label %_ZNK3smt7context10get_theoryEi.exit122, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8736
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !688 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZNK3smt7context10get_theoryEi.exit122, label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i118

_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i118: ; preds = %bb.z
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !644
  %.not.i.i.i119 = icmp ult i32 %i.ae, %i.cr
  br i1 %.not.i.i.i119, label %bb.aa, label %_ZNK3smt7context10get_theoryEi.exit122

bb.aa:                                            ; preds = %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i118
  %i.cs = zext i32 %i.ae to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cs
  %.0.i.sroa.speculate.load..i.i121 = load ptr, ptr %i.ct, align 8, !tbaa !796
  br label %_ZNK3smt7context10get_theoryEi.exit122

_ZNK3smt7context10get_theoryEi.exit122:           ; preds = %bb.y, %bb.z, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i118, %bb.aa
  %.0.i.i120 = phi ptr [ null, %bb.y ], [ %.0.i.sroa.speculate.load..i.i121, %bb.aa ], [ null, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i118 ], [ null, %bb.z ]
  tail call void @_ZN3smt7context18push_new_th_diseqsEPNS_5enodeEiPNS_6theoryE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull %i.b, i32 noundef %i.by, ptr noundef %.0.i.i120)
  br label %.loopexit

bb.ab:                                            ; preds = %._crit_edge, %bb.f
  %i.cu = phi i32 [ %.pre, %._crit_edge ], [ %.pre177, %bb.f ]
  %i.cv = icmp ugt i32 %i.cu, -257
  br i1 %i.cv, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8864 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8736
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %select.unfold
  %.087169 = phi ptr [ %i.t, %.lr.ph ], [ %i.er, %select.unfold ] ; 2 uses
  %i.cz = load i32, ptr %.087169, align 8         ; 2 uses
  %i.da = shl i32 %i.cz, 24                       ; 4 uses
  %i.db = ashr exact i32 %i.da, 24                ; 7 uses
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !584, !nonnull !585, !align !586
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 609
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !895, !range !815, !noundef !585
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.ad, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130.thread215

bb.ad:                                            ; preds = %bb.ac
  %i.dg = icmp eq i32 %i.da, -16777216
  br i1 %i.dg, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130.thread, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %bb.ad, %bb.ae
  %.0916.i126 = phi ptr [ %i.dj, %bb.ae ], [ %1, %bb.ad ] ; 2 uses
  %i.dh = tail call noundef i32 @_ZNK3smt5enode10get_th_varEi(ptr noundef nonnull align 8 dereferenceable(112) %.0916.i126, i32 noundef %i.db) ; 3 uses
  %.not12.not.i127 = icmp eq i32 %i.dh, -1
  br i1 %.not12.not.i127, label %bb.ae, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130

bb.ae:                                            ; preds = %.lr.ph.i125
  %i.di = getelementptr inbounds nuw i8, ptr %.0916.i126, i64 80
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !891 ; 2 uses
  %.not.i129 = icmp eq ptr %i.dj, null
  br i1 %.not.i129, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130, label %.lr.ph.i125

_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130.thread215: ; preds = %bb.ac
  %i.dk = ashr i32 %i.cz, 8
  br label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138

_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130: ; preds = %bb.ae, %.lr.ph.i125
  %.pre178 = load ptr, ptr %i.cw, align 8, !tbaa !584
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre178, i64 609
  %.pre179 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !895, !range !815
  %i.dl = trunc nuw i8 %.pre179 to i1
  br i1 %i.dl, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130.thread, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138

_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130.thread: ; preds = %bb.ad, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130
  %i.dm = phi i32 [ %i.dh, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130 ], [ -1, %bb.ad ] ; 3 uses
  %i.dn = icmp eq i32 %i.da, -16777216
  br i1 %i.dn, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130.thread, %bb.af
  %.0916.i134 = phi ptr [ %i.dq, %bb.af ], [ %2, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130.thread ] ; 2 uses
  %i.do = tail call noundef i32 @_ZNK3smt5enode10get_th_varEi(ptr noundef nonnull align 8 dereferenceable(112) %.0916.i134, i32 noundef %i.db) ; 2 uses
  %.not12.not.i135 = icmp eq i32 %i.do, -1
  br i1 %.not12.not.i135, label %bb.af, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread160

bb.af:                                            ; preds = %.lr.ph.i133
  %i.dp = getelementptr inbounds nuw i8, ptr %.0916.i134, i64 80
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !891 ; 2 uses
  %.not.i137 = icmp eq ptr %i.dq, null
  br i1 %.not.i137, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread, label %.lr.ph.i133

_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138: ; preds = %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130.thread215, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130
  %i.dr = phi i32 [ %i.dk, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130.thread215 ], [ %i.dh, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130 ] ; 2 uses
  %i.ds = tail call noundef i32 @_ZNK3smt5enode10get_th_varEi(ptr noundef nonnull align 8 dereferenceable(112) %i.d, i32 noundef %i.db) ; 2 uses
  %.not97 = icmp eq i32 %i.ds, -1
  br i1 %.not97, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread160

_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread160: ; preds = %.lr.ph.i133, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138
  %i.dt = phi i32 [ %i.dr, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138 ], [ %i.dm, %.lr.ph.i133 ]
  %i.du = phi i32 [ %i.ds, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138 ], [ %i.do, %.lr.ph.i133 ]
  %.not98 = icmp eq i32 %i.db, %.088
  br i1 %.not98, label %select.unfold, label %bb.ag

bb.ag:                                            ; preds = %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread160
  %i.dv = load ptr, ptr %i.cx, align 8, !tbaa !790 ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !644 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 -8
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !644
  %i.eb = icmp eq i32 %i.dy, %i.ea
  br i1 %i.eb, label %bb.ai, label %_ZN3smt7context14push_new_th_eqEiii.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  tail call void @_ZN6vectorIN3smt7context9new_th_eqELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
  %.pre.i.i = load ptr, ptr %i.cx, align 8, !tbaa !790 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !644
  br label %_ZN3smt7context14push_new_th_eqEiii.exit

_ZN3smt7context14push_new_th_eqEiii.exit:         ; preds = %bb.ah, %bb.ai
  %i.ec = phi i32 [ %.pre2.i.i, %bb.ai ], [ %i.dy, %bb.ah ] ; 2 uses
  %i.ed = phi ptr [ %.pre.i.i, %bb.ai ], [ %i.dv, %bb.ah ] ; 2 uses
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.ed, i64 %i.ee ; 3 uses
  store i32 %i.db, ptr %i.ef, align 4, !tbaa !644
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 %i.dt, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !644
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %i.du, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !644
  %i.eg = getelementptr inbounds i8, ptr %i.ed, i64 -4
  %i.eh = add i32 %i.ec, 1
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !644
  br label %select.unfold

_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread: ; preds = %bb.af, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130.thread, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138
  %i.ei = phi i32 [ %i.dr, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138 ], [ %i.dm, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit130.thread ], [ %i.dm, %bb.af ]
  %i.ej = icmp eq i32 %i.da, -16777216
  br i1 %i.ej, label %_ZNK3smt7context10get_theoryEi.exit143, label %bb.aj

bb.aj:                                            ; preds = %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread
  %i.ek = load ptr, ptr %i.cy, align 8, !tbaa !688 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZNK3smt7context10get_theoryEi.exit143, label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i139

_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i139: ; preds = %bb.aj
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !644
  %.not.i.i.i140 = icmp ult i32 %i.db, %i.en
  br i1 %.not.i.i.i140, label %bb.ak, label %_ZNK3smt7context10get_theoryEi.exit143

bb.ak:                                            ; preds = %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i139
  %i.eo = zext i32 %i.db to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.eo
  %.0.i.sroa.speculate.load..i.i142 = load ptr, ptr %i.ep, align 8, !tbaa !796
  br label %_ZNK3smt7context10get_theoryEi.exit143

_ZNK3smt7context10get_theoryEi.exit143:           ; preds = %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread, %bb.aj, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i139, %bb.ak
  %.0.i.i141 = phi ptr [ null, %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread ], [ %.0.i.sroa.speculate.load..i.i142, %bb.ak ], [ null, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i139 ], [ null, %bb.aj ]
  tail call void @_ZN3smt7context18push_new_th_diseqsEPNS_5enodeEiPNS_6theoryE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull %i.d, i32 noundef %i.ei, ptr noundef %.0.i.i141)
  br label %select.unfold

select.unfold:                                    ; preds = %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit138.thread160, %_ZN3smt7context14push_new_th_eqEiii.exit, %_ZNK3smt7context10get_theoryEi.exit143
  %i.eq = getelementptr inbounds nuw i8, ptr %.087169, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !894 ; 2 uses
  %.not = icmp eq ptr %i.er, null
  br i1 %.not, label %select.unfold._crit_edge, label %bb.ac, !llvm.loop !1228

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.ab
  %i.es = load i32, ptr %i.e, align 8
  %i.et = icmp ugt i32 %i.es, -257
  br i1 %i.et, label %.loopexit, label %.lr.ph171

.lr.ph171:                                        ; preds = %select.unfold._crit_edge
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.not15.i144 = icmp eq ptr %2, null
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8736
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph171, %select.unfold162
  %.0170 = phi ptr [ %i.e, %.lr.ph171 ], [ %i.fu, %select.unfold162 ] ; 2 uses
  %i.ex = load i32, ptr %.0170, align 8           ; 2 uses
  %i.ey = shl i32 %i.ex, 24                       ; 3 uses
  %i.ez = ashr exact i32 %i.ey, 24                ; 5 uses
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !584, !nonnull !585, !align !586
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 609
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !895, !range !815, !noundef !585
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fe = icmp eq i32 %i.ey, -16777216
  %or.cond.i145 = or i1 %.not15.i144, %i.fe
  br i1 %or.cond.i145, label %_ZN3smt7context15get_closest_varEPNS_5enodeEi.exit151, label %.lr.ph.i146

end_hunk_0
begin_hunk_1_@_ZN3smt7context36propagate_bool_enode_assignment_coreEPNS_5enodeES2_:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3smt13justificationD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context11undo_add_eqEPNS_5enodeES2_j(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !889  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !890
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !890
  %i.h = sub i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 8, !tbaa !890
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.j = load i16, ptr %i.i, align 4
  %i.k = and i16 %i.j, -1537
  %i.l = or disjoint i16 %i.k, 1024
  store i16 %i.l, ptr %i.i, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !841
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !841
  store ptr %i.p, ptr %i.m, align 8, !tbaa !841
  store ptr %i.o, ptr %i.n, align 8, !tbaa !841
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !793  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN3smt5enode11end_parentsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !644
  %i.v = zext i32 %i.u to i64
  br label %_ZN3smt5enode11end_parentsEv.exit

_ZN3smt5enode11end_parentsEv.exit:                ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi i64 [ %i.v, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0.i.i.i
  %i.x = zext i32 %3 to i64                       ; 2 uses
  %.not124 = icmp samesign eq i64 %.0.i.i.i, %i.x
  br i1 %.not124, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3smt5enode11end_parentsEv.exit
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8848 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8776 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.0125 = phi ptr [ %i.y, %.lr.ph ], [ %i.bj, %bb.k ] ; 2 uses
  %i.ab = load ptr, ptr %.0125, align 8, !tbaa !841 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i16, ptr %i.ac, align 4            ; 3 uses
  %i.ae = and i16 %i.ad, 256
  %.not119 = icmp eq i16 %i.ae, 0
  br i1 %.not119, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = and i16 %i.ad, 16
  %.not120 = icmp eq i16 %i.af, 0
  br i1 %.not120, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ag = and i16 %i.ad, 8
  %.not.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZNK3smt7context14get_generationEPNS_5enodeE.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !850 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 65535
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZNK3smt5enode12get_num_argsEv.exit.i.i.i, label %_ZNK3smt7context14get_generationEPNS_5enodeE.exit

_ZNK3smt5enode12get_num_argsEv.exit.i.i.i:        ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !904
  %.not.i.i.i.not = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.not, label %_ZNK3smt7context14get_generationEPNS_5enodeE.exit, label %_ZNK3smt5enode13uses_cg_tableEv.exit.thread8.i.i

_ZNK3smt5enode13uses_cg_tableEv.exit.thread8.i.i: ; preds = %_ZNK3smt5enode12get_num_argsEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !896
  %i.aq = icmp eq ptr %i.ap, %i.ab
  br i1 %i.aq, label %_ZNK3smt7context14get_generationEPNS_5enodeE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK3smt5enode13uses_cg_tableEv.exit.thread8.i.i
  %i.ar = tail call noundef ptr @_ZNK3smt8cg_table4findEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull %i.ab)
  br label %_ZNK3smt7context14get_generationEPNS_5enodeE.exit

_ZNK3smt7context14get_generationEPNS_5enodeE.exit: ; preds = %bb.e, %bb.f, %_ZNK3smt5enode12get_num_argsEv.exit.i.i.i, %_ZNK3smt5enode13uses_cg_tableEv.exit.thread8.i.i, %bb.g
  %.0.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.ar, %bb.g ], [ %i.ab, %_ZNK3smt5enode13uses_cg_tableEv.exit.thread8.i.i ], [ %i.ab, %bb.e ], [ %i.ab, %_ZNK3smt5enode12get_num_argsEv.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !897
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !792 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK3smt7context14get_generationEPNS_5enodeE.exit
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !644 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !644
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.i, label %_ZN6vectorISt4pairIPN3smt5enodeEjELb1EjE9push_backEOS4_.exit

bb.i:                                             ; preds = %bb.h, %_ZNK3smt7context14get_generationEPNS_5enodeE.exit
  tail call void @_ZN6vectorISt4pairIPN3smt5enodeEjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !792 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !644
  br label %_ZN6vectorISt4pairIPN3smt5enodeEjELb1EjE9push_backEOS4_.exit

_ZN6vectorISt4pairIPN3smt5enodeEjELb1EjE9push_backEOS4_.exit: ; preds = %bb.h, %bb.i
  %i.bb = phi i32 [ %.pre2.i, %bb.i ], [ %i.ax, %bb.h ]
  %i.bc = phi ptr [ %.pre.i, %bb.i ], [ %i.au, %bb.h ]
  %i.bd = zext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  store ptr %i.ab, ptr %i.be, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %i.at, ptr %.sroa.4109.0..sroa_idx, align 8
  %i.bf = load ptr, ptr %i.z, align 8, !tbaa !792
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !644
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !644
  br label %bb.j

bb.j:                                             ; preds = %_ZN6vectorISt4pairIPN3smt5enodeEjELb1EjE9push_backEOS4_.exit, %bb.d
  tail call void @_ZN3smt8cg_table5eraseEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull %i.ab)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %.0125, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.w
  br i1 %.not, label %.preheader.preheader, label %bb.c, !llvm.loop !1236

.preheader.preheader:                             ; preds = %bb.k, %_ZN3smt5enode11end_parentsEv.exit
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.082 = phi ptr [ %i.bm, %.preheader ], [ %1, %.preheader.preheader ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.082, i64 8
  store ptr %1, ptr %i.bk, align 8, !tbaa !889
  %i.bl = getelementptr inbounds nuw i8, ptr %.082, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !893 ; 2 uses
  %.not89 = icmp eq ptr %i.bm, %1
  br i1 %.not89, label %bb.l, label %.preheader, !llvm.loop !1237

bb.l:                                             ; preds = %.preheader
  %i.bn = load ptr, ptr %i.q, align 8, !tbaa !793 ; 2 uses
  %.not.i94 = icmp eq ptr %i.bn, null
  br i1 %.not.i94, label %_ZN6vectorIPN3smt5enodeELb0EjE6shrinkEj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4
  store i32 %3, ptr %i.bo, align 4, !tbaa !644
  br label %_ZN6vectorIPN3smt5enodeELb0EjE6shrinkEj.exit

_ZN6vectorIPN3smt5enodeELb0EjE6shrinkEj.exit:     ; preds = %bb.l, %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !793 ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %._crit_edge, label %_ZNK3smt5enode7parents3endEv.exit

_ZNK3smt5enode7parents3endEv.exit:                ; preds = %_ZN6vectorIPN3smt5enodeELb0EjE6shrinkEj.exit
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !644 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %.not90126 = icmp eq i32 %i.bt, 0
  br i1 %.not90126, label %._crit_edge, label %.lr.ph129

.lr.ph129:                                        ; preds = %_ZNK3smt5enode7parents3endEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8848
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8776
  br label %bb.o

._crit_edge:                                      ; preds = %bb.u, %_ZN6vectorIPN3smt5enodeELb0EjE6shrinkEj.exit, %_ZNK3smt5enode7parents3endEv.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8848
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !792 ; 2 uses
  %.not.i95 = icmp eq ptr %i.ca, null
  br i1 %.not.i95, label %_ZN6vectorISt4pairIPN3smt5enodeEjELb1EjE5resetEv.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4
  store i32 0, ptr %i.cb, align 4, !tbaa !644
  br label %_ZN6vectorISt4pairIPN3smt5enodeEjELb1EjE5resetEv.exit

_ZN6vectorISt4pairIPN3smt5enodeEjELb1EjE5resetEv.exit: ; preds = %._crit_edge, %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !894
  %i.cf = icmp eq ptr %i.ce, null
  %i.cg = load i32, ptr %i.cc, align 8            ; 5 uses
  br i1 %i.cf, label %bb.v, label %bb.x

bb.o:                                             ; preds = %.lr.ph129, %bb.u
  %.078128 = phi ptr [ %i.bq, %.lr.ph129 ], [ %i.dr, %bb.u ] ; 2 uses
  %.079127 = phi i32 [ 0, %.lr.ph129 ], [ %.7, %bb.u ] ; 9 uses
  %i.ch = load ptr, ptr %.078128, align 8, !tbaa !841 ; 11 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 44 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 4            ; 2 uses
  %i.ck = and i16 %i.cj, 256
  %.not121 = icmp eq i16 %i.ck, 0
  br i1 %.not121, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !896 ; 3 uses
  %i.cn = and i16 %i.cj, 16
  %.not.i96 = icmp eq i16 %i.cn, 0
  br i1 %.not.i96, label %_ZNK3smt5enode10is_true_eqEv.exit.thread, label %_ZNK3smt5enode10is_true_eqEv.exit

_ZNK3smt5enode10is_true_eqEv.exit:                ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !841
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !889
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 120
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !841
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !889
  %i.cw = icmp eq ptr %i.cr, %i.cv
  br i1 %i.cw, label %bb.u, label %_ZNK3smt5enode10is_true_eqEv.exit.thread.thread

_ZNK3smt5enode10is_true_eqEv.exit.thread:         ; preds = %bb.p
  %i.cx = icmp eq ptr %i.ch, %i.cm
  br i1 %i.cx, label %bb.r, label %bb.q

_ZNK3smt5enode10is_true_eqEv.exit.thread.thread:  ; preds = %_ZNK3smt5enode10is_true_eqEv.exit
  %i.cy = icmp eq ptr %i.ch, %i.cm
  br i1 %i.cy, label %.thread150, label %bb.q

bb.q:                                             ; preds = %_ZNK3smt5enode10is_true_eqEv.exit.thread.thread, %_ZNK3smt5enode10is_true_eqEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.cz = call noundef zeroext i1 @_ZN3smt9congruentEPNS_5enodeES1_Rb(ptr noundef nonnull %i.ch, ptr noundef %i.cm, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.cz, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.q
  %i.da = load i16, ptr %i.ci, align 4
  %i.db = and i16 %i.da, 16
  %.not122 = icmp eq i16 %i.db, 0
  %.mux118 = select i1 %.not122, i32 100000, i32 0
  br label %.thread150

bb.r:                                             ; preds = %_ZNK3smt5enode10is_true_eqEv.exit.thread
  %i.dc = load ptr, ptr %i.bx, align 8, !tbaa !792 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.critedge, label %_ZNK6vectorISt4pairIPN3smt5enodeEjELb1EjE4sizeEv.exit

_ZNK6vectorISt4pairIPN3smt5enodeEjELb1EjE4sizeEv.exit: ; preds = %bb.r
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !644
  %i.dg = icmp ult i32 %.079127, %i.df
  br i1 %i.dg, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK6vectorISt4pairIPN3smt5enodeEjELb1EjE4sizeEv.exit
  %i.dh = zext i32 %.079127 to i64
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dh ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1239
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !1240
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.s, %_ZNK6vectorISt4pairIPN3smt5enodeEjELb1EjE4sizeEv.exit
  %.0115 = phi i32 [ %i.dl, %bb.s ], [ undef, %_ZNK6vectorISt4pairIPN3smt5enodeEjELb1EjE4sizeEv.exit ], [ undef, %bb.r ]
  %.0114 = phi ptr [ %i.dj, %bb.s ], [ null, %_ZNK6vectorISt4pairIPN3smt5enodeEjELb1EjE4sizeEv.exit ], [ null, %bb.r ]
  %i.dm = icmp eq ptr %.0114, %i.ch
  %i.dn = add i32 %.079127, 1
  br i1 %i.dm, label %.thread150, label %bb.u

.thread150:                                       ; preds = %_ZNK3smt5enode10is_true_eqEv.exit.thread.thread, %.thread, %.critedge
  %.281 = phi i32 [ %.079127, %.thread ], [ %i.dn, %.critedge ], [ %.079127, %_ZNK3smt5enode10is_true_eqEv.exit.thread.thread ] ; 2 uses
  %.1 = phi i32 [ %.mux118, %.thread ], [ %.0115, %.critedge ], [ 0, %_ZNK3smt5enode10is_true_eqEv.exit.thread.thread ]
  %i.do = call { ptr, i8 } @_ZN3smt8cg_table6insertEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull %i.ch)
  %.fca.0.extract = extractvalue { ptr, i8 } %i.do, 0 ; 2 uses
  store ptr %.fca.0.extract, ptr %i.cl, align 8, !tbaa !896
  %i.dp = icmp eq ptr %.fca.0.extract, %i.ch
  br i1 %i.dp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread150
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 36
  store i32 %.1, ptr %i.dq, align 4, !tbaa !897
  br label %bb.u

bb.u:                                             ; preds = %.thread150, %bb.t, %.critedge, %bb.q, %_ZNK3smt5enode10is_true_eqEv.exit, %bb.o
  %.7 = phi i32 [ %.079127, %bb.o ], [ %.079127, %bb.q ], [ %.079127, %_ZNK3smt5enode10is_true_eqEv.exit ], [ %.079127, %.critedge ], [ %.281, %bb.t ], [ %.281, %.thread150 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.078128, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.dr, %i.bw
  br i1 %.not90, label %._crit_edge, label %bb.o

bb.v:                                             ; preds = %_ZN6vectorISt4pairIPN3smt5enodeEjELb1EjE5resetEv.exit
  %i.ds = ashr i32 %i.cg, 8                       ; 2 uses
  %.not91 = icmp eq i32 %i.ds, -1
  br i1 %.not91, label %_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_.exit, label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i: ; preds = %bb.v
  %i.dt = shl i32 %i.cg, 24
  %i.du = ashr exact i32 %i.dt, 24                ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8736
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !688, !nonnull !585, !noundef !585 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !644
  %.not.i.i.i98 = icmp ult i32 %i.du, %i.dy
  call void @llvm.assume(i1 %.not.i.i.i98)
  %i.dz = zext i32 %i.du to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dz
  %.0.i.sroa.speculate.load..i.i = load ptr, ptr %i.ea, align 8, !tbaa !796
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i.i, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !793
  %i.ed = zext i32 %i.ds to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !841
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !889
  %.not92 = icmp eq ptr %i.eh, %i.c
  br i1 %.not92, label %_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i
  %4 = or i32 %i.cg, -256
  store i32 %4, ptr %i.cc, align 8
  store i8 -1, ptr %i.cc, align 8
  br label %_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_.exit

bb.x:                                             ; preds = %_ZN6vectorISt4pairIPN3smt5enodeEjELb1EjE5resetEv.exit
  %i.ei = icmp ugt i32 %i.cg, -257
  br i1 %i.ei, label %select.unfold._crit_edge.thread.i, label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph.i

_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph.i: ; preds = %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8736 ; 2 uses
  %.pre28.i = load ptr, ptr %i.ej, align 8, !tbaa !688
  br label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.i: ; preds = %select.unfold.i, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph.i
  %i.ek = phi ptr [ %.pre28.i, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph.i ], [ %i.fb, %select.unfold.i ] ; 4 uses
  %.027.i = phi ptr [ %i.cc, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph.i ], [ %.1.i, %select.unfold.i ] ; 5 uses
  %.02026.i = phi ptr [ null, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph.i ], [ %.2.i, %select.unfold.i ] ; 3 uses
  %i.el = load i32, ptr %.027.i, align 8          ; 2 uses
  %i.em = ashr i32 %i.el, 8
  %i.en = shl i32 %i.el, 24
  %i.eo = ashr exact i32 %i.en, 24                ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !644
  %.not.i.i.i.i100 = icmp ult i32 %i.eo, %i.eq
  call void @llvm.assume(i1 %.not.i.i.i.i100)
  %i.er = zext i32 %i.eo to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.er
  %.0.i.sroa.speculate.load..i.i.i = load ptr, ptr %i.es, align 8, !tbaa !796
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i.i.i, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !793
  %i.ev = zext i32 %i.em to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !841
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !889
  %.not24.i = icmp eq ptr %i.ez, %i.c
  br i1 %.not24.i, label %bb.y, label %select.unfold.i

bb.y:                                             ; preds = %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.i
  %.not25.i = icmp eq ptr %.02026.i, null
  br i1 %.not25.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fa = getelementptr inbounds nuw i8, ptr %.02026.i, i64 8
  store ptr %.027.i, ptr %i.fa, align 8, !tbaa !894
  br label %select.unfold.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %.027.i, i64 16, i1 false), !tbaa.struct !906
  %.pre.i102 = load ptr, ptr %i.ej, align 8, !tbaa !688
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.aa, %bb.z, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.i
  %i.fb = phi ptr [ %i.ek, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.i ], [ %i.ek, %bb.z ], [ %.pre.i102, %bb.aa ]
  %.2.i = phi ptr [ %.02026.i, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.i ], [ %.027.i, %bb.z ], [ %i.cc, %bb.aa ] ; 3 uses
  %.1.in.i = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !894 ; 2 uses
  %.not.i101 = icmp eq ptr %.1.i, null
  br i1 %.not.i101, label %select.unfold._crit_edge.i, label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.i, !llvm.loop !18

select.unfold._crit_edge.i:                       ; preds = %select.unfold.i
  %.not23.i = icmp eq ptr %.2.i, null
  br i1 %.not23.i, label %select.unfold._crit_edge.i.select.unfold._crit_edge.thread.i_crit_edge, label %bb.ab

select.unfold._crit_edge.i.select.unfold._crit_edge.thread.i_crit_edge: ; preds = %select.unfold._crit_edge.i
  %.pre = load i32, ptr %i.cc, align 8
  br label %select.unfold._crit_edge.thread.i

bb.ab:                                            ; preds = %select.unfold._crit_edge.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  store ptr null, ptr %i.fc, align 8, !tbaa !894
  br label %_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_.exit

select.unfold._crit_edge.thread.i:                ; preds = %select.unfold._crit_edge.i.select.unfold._crit_edge.thread.i_crit_edge, %bb.x
  %i.fd = phi i32 [ %.pre, %select.unfold._crit_edge.i.select.unfold._crit_edge.thread.i_crit_edge ], [ %i.cg, %bb.x ]
  %i.fe = or i32 %i.fd, -256
  store i32 %i.fe, ptr %i.cc, align 8
  store ptr null, ptr %i.cd, align 8, !tbaa !894
  br label %_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_.exit

_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_.exit: ; preds = %select.unfold._crit_edge.thread.i, %bb.ab, %bb.v, %bb.w, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr null, ptr %i.ff, align 8, !tbaa !891
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 3, ptr %i.fg, align 8, !tbaa !643
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i8 0, ptr %i.fh, align 4, !tbaa !892
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !891 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.02.0.copyload.i = load ptr, ptr %i.fk, align 8, !tbaa !643
  store ptr null, ptr %i.fi, align 8, !tbaa !891
  store i64 3, ptr %i.fk, align 8, !tbaa !643
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i8 0, ptr %i.fl, align 4, !tbaa !892
  %.not19.i = icmp eq ptr %i.fj, null
  br i1 %.not19.i, label %_ZN3smt7context12invert_transEPNS_5enodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_.exit, %.lr.ph.i
  %.022.i = phi ptr [ %i.fn, %.lr.ph.i ], [ %i.fj, %_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_.exit ] ; 4 uses
  %.01821.i = phi ptr [ %.022.i, %.lr.ph.i ], [ %1, %_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_.exit ]
  %.sroa.02.020.i = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph.i ], [ %.sroa.02.0.copyload.i, %_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_.exit ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.022.i, i64 80 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !891 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.022.i, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.fo, align 8, !tbaa !643
  store ptr %.01821.i, ptr %i.fm, align 8, !tbaa !891
  store ptr %.sroa.02.020.i, ptr %i.fo, align 8, !tbaa !643
  %i.fp = getelementptr inbounds nuw i8, ptr %.022.i, i64 52
  store i8 0, ptr %i.fp, align 4, !tbaa !892
  %.not.i103 = icmp eq ptr %i.fn, null
  br i1 %.not.i103, label %_ZN3smt7context12invert_transEPNS_5enodeE.exit, label %.lr.ph.i, !llvm.loop !15

_ZN3smt7context12invert_transEPNS_5enodeE.exit:   ; preds = %.lr.ph.i, %_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN3smt7context19restore_theory_varsEPNS_5enodeES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ugt i32 %i.b, -257
  br i1 %i.c, label %select.unfold._crit_edge.thread, label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph

_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8736 ; 2 uses
  %.pre28 = load ptr, ptr %i.d, align 8, !tbaa !688
  br label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i: ; preds = %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph, %select.unfold
  %i.e = phi ptr [ %.pre28, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph ], [ %i.v, %select.unfold ] ; 4 uses
  %.027 = phi ptr [ %i.a, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph ], [ %.1, %select.unfold ] ; 5 uses
  %.02026 = phi ptr [ null, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i.lr.ph ], [ %.2, %select.unfold ] ; 3 uses
  %i.f = load i32, ptr %.027, align 8             ; 2 uses
  %i.g = ashr i32 %i.f, 8
  %i.h = shl i32 %i.f, 24
  %i.i = ashr exact i32 %i.h, 24                  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !644
  %.not.i.i.i = icmp ult i32 %i.i, %i.k
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.l = zext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.l
  %.0.i.sroa.speculate.load..i.i = load ptr, ptr %i.m, align 8, !tbaa !796
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !793
  %i.p = zext i32 %i.g to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !841
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !889
  %.not24 = icmp eq ptr %i.t, %1
  br i1 %.not24, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i
  %.not25 = icmp eq ptr %.02026, null
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.02026, i64 8
  store ptr %.027, ptr %i.u, align 8, !tbaa !894
  br label %select.unfold

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.027, i64 16, i1 false), !tbaa.struct !906
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !688
  br label %select.unfold

select.unfold:                                    ; preds = %bb.c, %bb.d, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i
  %i.v = phi ptr [ %i.e, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i ], [ %i.e, %bb.c ], [ %.pre, %bb.d ]
  %.2 = phi ptr [ %.02026, %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i ], [ %.027, %bb.c ], [ %i.a, %bb.d ] ; 3 uses
  %.1.in = getelementptr inbounds nuw i8, ptr %.027, i64 8
  %.1 = load ptr, ptr %.1.in, align 8, !tbaa !894 ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %select.unfold._crit_edge, label %_ZNK6vectorIPN3smt6theoryELb0EjE4sizeEv.exit.i.i.i, !llvm.loop !18

select.unfold._crit_edge:                         ; preds = %select.unfold
  %.not23 = icmp eq ptr %.2, null
  br i1 %.not23, label %select.unfold._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %select.unfold._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %.2, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !894
  br label %bb.f

select.unfold._crit_edge.thread:                  ; preds = %bb.a, %select.unfold._crit_edge
  %i.x = load i32, ptr %i.a, align 8
  %i.y = or i32 %i.x, -256
  store i32 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.z, align 8, !tbaa !894
  br label %bb.f

bb.f:                                             ; preds = %select.unfold._crit_edge.thread, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context26undo_merge_cgc_generationsEPNS_5enodeEjS2_j(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN3smt7context14set_generationEPNS_5enodeEj(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %1, i32 noundef %2)
end_hunk_1
