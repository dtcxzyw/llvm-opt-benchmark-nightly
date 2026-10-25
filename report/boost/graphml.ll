Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/graphml?download=true
inline.NumInlined: 3050
inline.NumDeleted: 1013
begin_hunk_0_@_ZN5boost13property_tree10xml_parser13read_xml_nodeINS0_11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_EEEcEEvPNS0_6detail8rapidxml8xml_nodeIT0_EERT_i:bb.a
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cy:                                            ; preds = %.noexc.i.i.i200
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %.body202

bb.cz:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost13property_tree11basic_ptreeIS5_S5_St4lessIS5_EEEEC2IS5_SC_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISG_SH_EEclsr6_PCCFPISG_SH_EE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOS_ISG_SH_E.exit212
  %i.sf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost13property_tree11basic_ptreeIS5_S5_St4lessIS5_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %18) #26
  br label %.body210

.body210:                                         ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207, %bb.cz
  %.pn = phi { ptr, i32 } [ %i.sf, %bb.cz ], [ %i.qj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207 ], [ %i.qj, %bb.ct ]
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost13property_tree11basic_ptreeIS5_S5_St4lessIS5_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %19) #26
  br label %.body202

.body202:                                         ; preds = %bb.cr, %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197, %.body210
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body210 ], [ %i.se, %bb.cy ], [ %i.pu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197 ], [ %i.pu, %bb.cr ]
  call void @_ZN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #26
  br label %bb.da

bb.da:                                            ; preds = %.body202, %bb.cx
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body202 ], [ %i.sd, %bb.cx ] ; 2 uses
  %i.sg = load ptr, ptr %21, align 8, !tbaa !55   ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.ox
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.da
  %i.si = load i64, ptr %i.ox, align 8, !tbaa !54
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %bb.cw
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sc, %bb.cw ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %.pn.pn.pn, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %common.resume

.loopexit:                                        ; preds = %.lr.ph260, %.loopexit238, %bb.a, %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost13property_tree6detail8rapidxml12xml_documentIcED2Ev(ptr noundef nonnull align 8 dead_on_return(65672) dereferenceable(65672) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not5.i.i, label %_ZN5boost13property_tree6detail8rapidxml11memory_poolIcED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 65664
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i, %.lr.ph.i.i
  %i.e = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.j, %.noexc.i ] ; 4 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 0, %i.f
  %i.h = and i64 %i.g, 7
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !173  ; 3 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !174  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.k, null
  br i1 %.not4.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.k(ptr noundef nonnull %i.e)
          to label %.noexc.i unwind label %bb.e, !inline_history !6

bb.d:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #28
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.d, %bb.c
  store ptr %i.j, ptr %i.a, align 8, !tbaa !169
  %.not.i.i = icmp eq ptr %i.j, %i.b
  br i1 %.not.i.i, label %_ZN5boost13property_tree6detail8rapidxml11memory_poolIcED2Ev.exit, label %bb.b, !llvm.loop !7

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

_ZN5boost13property_tree6detail8rapidxml11memory_poolIcED2Ev.exit: ; preds = %.noexc.i, %bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !169
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #13

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIcSaIcEE19_M_range_initializeISt19istreambuf_iteratorIcSt11char_traitsIcEEEEvT_S7_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.peel.begin:
  %i.a = icmp eq i32 %4, -1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.not.i.i.i.i.peel = icmp ne ptr %1, null
  %i.d = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i.peel = select i1 %.not.i.i.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.i.i.peel, label %bb.a, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

bb.a:                                             ; preds = %.peel.begin
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !448  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !449
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, !prof !189

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel: ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !444 ; 2 uses

.noexc.peel:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel
  %i.n = icmp eq i32 %i.m, -1
  %spec.select.peel = select i1 %i.n, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel: ; preds = %bb.a
  %i.o = load i8, ptr %i.f, align 1, !tbaa !54
  %i.p = zext i8 %i.o to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, %.noexc.peel, %.peel.begin
  %.sroa.010.1.peel = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %1, %.peel.begin ], [ %spec.select.peel, %.noexc.peel ] ; 8 uses
  %.0.i.i.i.i.peel = phi i32 [ %i.p, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %2, %.peel.begin ], [ %i.m, %.noexc.peel ] ; 3 uses
  %.not.i.i2.i.i.peel = icmp ne ptr %3, null
  %or.cond.i.i3.i.i.peel = select i1 %.not.i.i2.i.i.peel, i1 %i.a, i1 false
  br i1 %or.cond.i.i3.i.i.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %i.q = icmp eq i32 %.0.i.i.i.i.peel, -1
  %i.r = xor i1 %i.a, %i.q
  br i1 %i.r, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !448
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !449
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, !prof !189

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel: ; preds = %bb.c
  %i.x = load ptr, ptr %3, align 8, !tbaa !114
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %.noexc3.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !444

.noexc3.peel:                                     ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.split.peel, label %.thr_comm.peel

.split.peel:                                      ; preds = %.noexc3.peel
  %.not.peel = icmp eq i32 %.0.i.i.i.i.peel, -1
  br i1 %.not.peel, label %.loopexit, label %bb.d

.thr_comm.peel:                                   ; preds = %.noexc3.peel, %bb.c
  %i.ac = icmp eq i32 %.0.i.i.i.i.peel, -1
  br i1 %i.ac, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.thr_comm.peel, %.split.peel, %bb.b
  %.sroa.0.114.peel = phi ptr [ %3, %.thr_comm.peel ], [ %3, %bb.b ], [ null, %.split.peel ]
  %.not.i.i.peel = icmp ne ptr %.sroa.010.1.peel, null
  %or.cond.i.i.peel = select i1 %.not.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.peel, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.010.1.peel, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !448 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.1.peel, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !449
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, !prof !189

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel: ; preds = %bb.e
  %i.ai = load ptr, ptr %.sroa.010.1.peel, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.010.1.peel)
          to label %.noexc4.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !445 ; 2 uses

.noexc4.peel:                                     ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel
  %i.am = icmp eq i32 %i.al, -1
  %spec.select16.peel = select i1 %i.am, ptr null, ptr %.sroa.010.1.peel
  br label %bb.f

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel: ; preds = %bb.e
  %i.an = load i8, ptr %i.ae, align 1, !tbaa !54
  %i.ao = zext i8 %i.an to i32
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, %.noexc4.peel, %bb.d
  %.sroa.010.2.peel = phi ptr [ %.sroa.010.1.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel ], [ %.sroa.010.1.peel, %bb.d ], [ %spec.select16.peel, %.noexc4.peel ] ; 5 uses
  %.0.i.i.peel = phi i32 [ %i.ao, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel ], [ %2, %bb.d ], [ %i.al, %.noexc4.peel ]
  %i.ap = trunc i32 %.0.i.i.peel to i8            ; 2 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !157 ; 3 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !158
  %.not.i.peel = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.peel, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !54
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %i.b, align 8, !tbaa !157
  br label %_ZNSt6vectorIcSaIcEE12emplace_backIJcEEERcDpOT_.exit.peel

bb.h:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %0, align 8, !tbaa !155   ; 4 uses
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 7 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775807
  br i1 %i.ay, label %.loopexit23, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.peel

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.peel: ; preds = %bb.h
  %.sroa.speculated.i.i.i.peel = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.az = add i64 %.sroa.speculated.i.i.i.peel, %i.ax ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ax
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 9223372036854775807)
  %i.bc = select i1 %i.ba, i64 9223372036854775807, i64 %i.bb ; 3 uses
  %.not.i.i.i.peel = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.peel)
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #27
          to label %.noexc6.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc6.peel:                                     ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.peel
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax ; 2 uses
  store i8 %i.ap, ptr %i.be, align 1, !tbaa !54
  %i.bf = icmp sgt i64 %i.ax, 0
  br i1 %i.bf, label %bb.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.peel

bb.i:                                             ; preds = %.noexc6.peel
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.au, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.peel

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.peel: ; preds = %bb.i, %.noexc6.peel
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %.not.i17.i.i.peel = icmp eq ptr %i.au, null
  br i1 %.not.i17.i.i.peel, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.peel, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.peel
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !158
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bj) #28
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.peel

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.peel: ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.peel
  store ptr %i.bd, ptr %0, align 8, !tbaa !155
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !157
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store ptr %i.bk, ptr %i.c, align 8, !tbaa !158
  br label %_ZNSt6vectorIcSaIcEE12emplace_backIJcEEERcDpOT_.exit.peel

_ZNSt6vectorIcSaIcEE12emplace_backIJcEEERcDpOT_.exit.peel: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.peel, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.010.2.peel, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !448 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.2.peel, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !449
  %i.bp = icmp ult ptr %i.bm, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.k, !prof !189

bb.k:                                             ; preds = %_ZNSt6vectorIcSaIcEE12emplace_backIJcEEERcDpOT_.exit.peel
  %i.bq = load ptr, ptr %.sroa.010.2.peel, align 8, !tbaa !114
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.010.2.peel)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !446 ; 0 uses

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEE12emplace_backIJcEEERcDpOT_.exit.peel
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !448
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader: ; preds = %bb.l, %bb.k
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader
  %.sroa.010.0 = phi ptr [ %.sroa.010.2.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.010.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 6 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.114.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.0.114, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !448
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !449
  %i.bz = icmp ult ptr %i.bw, %i.by
  br i1 %i.bz, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !189

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel
  %i.ca = load ptr, ptr %.sroa.010.0, align 8, !tbaa !114
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.010.0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !444 ; 2 uses

.noexc:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i
  %i.ce = icmp eq i32 %i.cd, -1
  %spec.select = select i1 %i.ce, ptr null, ptr %.sroa.010.0
  %i.cf = icmp eq i32 %i.cd, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, %.noexc
  %.sroa.010.1 = phi ptr [ %spec.select, %.noexc ], [ %.sroa.010.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ] ; 7 uses
  %.0.i.i.i.i = phi i1 [ %i.cf, %.noexc ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ] ; 3 uses
  %.not.i.i2.i.i = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.a, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !448
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !449
  %i.ck = icmp ult ptr %i.ch, %i.cj
  br i1 %i.ck, label %.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !189

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.m
  %i.cl = load ptr, ptr %.sroa.0.0, align 8, !tbaa !114
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef i32 %i.cn(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0)
          to label %.noexc3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !444

.noexc3:                                          ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %.split, label %.thr_comm

.split:                                           ; preds = %.noexc3
  br i1 %.0.i.i.i.i, label %.loopexit, label %bb.o

.thr_comm:                                        ; preds = %bb.m, %.noexc3
  br i1 %.0.i.i.i.i, label %bb.o, label %.loopexit

bb.n:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.cq = xor i1 %i.a, %.0.i.i.i.i
  br i1 %i.cq, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.split, %.thr_comm, %bb.n
  %.sroa.0.114 = phi ptr [ %.sroa.0.0, %.thr_comm ], [ %.sroa.0.0, %bb.n ], [ null, %.split ]
  %.not.i.i.not = icmp eq ptr %.sroa.010.1, null
  br i1 %.not.i.i.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.010.1, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !448 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.1, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !449
  %i.cv = icmp ult ptr %i.cs, %i.cu
  br i1 %i.cv, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !189

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.p
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !54
  br label %bb.q

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.p
  %i.cx = load ptr, ptr %.sroa.010.1, align 8, !tbaa !114
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef i32 %i.cz(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.010.1)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !445 ; 2 uses

.noexc4:                                          ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i
  %i.db = icmp eq i32 %i.da, -1
  %spec.select16 = select i1 %i.db, ptr null, ptr %.sroa.010.1
  %i.dc = trunc i32 %i.da to i8
  br label %bb.q

bb.q:                                             ; preds = %.noexc4, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, %bb.o
  %.sroa.010.2 = phi ptr [ %.sroa.010.1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ null, %bb.o ], [ %spec.select16, %.noexc4 ] ; 5 uses
  %.0.i.i = phi i8 [ %i.cw, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ -1, %bb.o ], [ %i.dc, %.noexc4 ] ; 2 uses
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !157 ; 3 uses
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !158
  %.not.i = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 %.0.i.i, ptr %i.dd, align 1, !tbaa !54
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store ptr %i.dg, ptr %i.b, align 8, !tbaa !157
  br label %_ZNSt6vectorIcSaIcEE12emplace_backIJcEEERcDpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %0, align 8, !tbaa !155   ; 4 uses
  %i.di = ptrtoint ptr %i.dd to i64
  %i.dj = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 7 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775807
  br i1 %i.dl, label %.loopexit23, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

.loopexit23:                                      ; preds = %bb.s, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #29
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
