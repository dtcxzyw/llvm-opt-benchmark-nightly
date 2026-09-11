Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow6Router11validate_bpESt6vectorIPNS_9BlueprintESaIS3_EERNS_6detail18middleware_indicesE:bb.a

bb.r:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.j
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.r
  %i.cc = load i64, ptr %i.j, align 8, !tbaa !165
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.q
  %.pn44 = phi { ptr, i32 } [ %i.by, %bb.q ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.bz, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.ce = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.h
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.cg = load i64, ptr %i.h, align 8, !tbaa !165
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.p
  %.pn44.pn = phi { ptr, i32 } [ %i.bx, %bb.p ], [ %.pn44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.g
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.an, %bb.g ]
  %i.ci = load ptr, ptr %3, align 8, !tbaa !1137  ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EED2Ev.exit63, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !1138
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cm) #41
  br label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EED2Ev.exit63

_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EED2Ev.exit63: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EED2Ev.exit70

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86: ; preds = %bb.c, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 176 ; 2 uses
  %i.co = load ptr, ptr %i.m, align 8, !tbaa !283
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !283
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 184 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !283
  %i.cs = load ptr, ptr %2, align 8, !tbaa !283   ; 2 uses
  %i.ct = ptrtoint ptr %i.co to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  call void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEvNS4_IPiS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.cw, ptr %i.cp, ptr %i.cr)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1135 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1135 ; 2 uses
  %.not8899 = icmp eq ptr %i.cy, %i.da
  br i1 %.not8899, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %bb.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1132 ; 2 uses
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !322 ; 4 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i.i.i.i, label %.thread140, label %bb.u

.thread140:                                       ; preds = %._crit_edge102
  %i.di = getelementptr inbounds i8, ptr null, i64 %i.dh ; 2 uses
  store i64 0, ptr %6, align 8
  store ptr %i.di, ptr %i.o, align 8, !tbaa !323
  br label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EEC2ERKS4_.exit

bb.u:                                             ; preds = %._crit_edge102
  %i.dj = icmp ugt i64 %i.dh, 9223372036854775800
  br i1 %i.dj, label %.noexc.i.i64, label %bb.v, !prof !316

.noexc.i.i64:                                     ; preds = %bb.u
  call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.dk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #43 ; 5 uses
  store ptr %i.dk, ptr %6, align 8, !tbaa !322
  store ptr %i.dk, ptr %i.n, align 8, !tbaa !1132
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dh ; 4 uses
  store ptr %i.dl, ptr %i.o, align 8, !tbaa !323
  %i.dm = icmp samesign ugt i64 %i.dh, 8
  br i1 %i.dm, label %bb.w, label %bb.x, !prof !1133

bb.w:                                             ; preds = %bb.v
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %i.de, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EEC2ERKS4_.exit

bb.x:                                             ; preds = %bb.v
  %i.dn = icmp eq i64 %i.dh, 8
  br i1 %i.dn, label %bb.y, label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EEC2ERKS4_.exit

bb.y:                                             ; preds = %bb.x
  %i.do = load ptr, ptr %i.de, align 8, !tbaa !1065
  store ptr %i.do, ptr %i.dk, align 8, !tbaa !1065
  br label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EEC2ERKS4_.exit

_ZNSt6vectorIPN4crow9BlueprintESaIS2_EEC2ERKS4_.exit: ; preds = %.thread140, %bb.w, %bb.x, %bb.y
  %i.dp = phi ptr [ %i.dl, %bb.w ], [ %i.dl, %bb.x ], [ %i.dl, %bb.y ], [ %i.di, %.thread140 ]
  store ptr %i.dp, ptr %i.n, align 8, !tbaa !1132
  invoke void @_ZN4crow6Router11validate_bpESt6vectorIPNS_9BlueprintESaIS3_EERNS_6detail18middleware_indicesE(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ac unwind label %bb.ai

.lr.ph101:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86, %bb.ab
  %.sroa.079.0100 = phi ptr [ %i.el, %bb.ab ], [ %i.cy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86 ] ; 7 uses
  %i.dq = load ptr, ptr %.sroa.079.0100, align 8, !tbaa !273 ; 4 uses
  %.not89.a = icmp eq ptr %i.dq, null
  br i1 %.not89.a, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph101
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 112
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !255, !range !274, !noundef !275
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 120 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !2710 ; 3 uses
  %.not.i = icmp eq ptr %i.dv, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZN4crow8BaseRule7upgradeEv.exit

_ZN4crow8BaseRule7upgradeEv.exit:                 ; preds = %bb.aa
  store ptr null, ptr %i.du, align 8, !tbaa !273, !noalias !2710
  %i.dw = load ptr, ptr %.sroa.079.0100, align 8, !tbaa !273 ; 3 uses
  store ptr %i.dv, ptr %.sroa.079.0100, align 8, !tbaa !273
  %.not.i.i.i.i65 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i65, label %_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN4crow8BaseRuleEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4crow8BaseRuleEEclEPS1_.exit.i.i.i.i: ; preds = %_ZN4crow8BaseRule7upgradeEv.exit
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !257
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(152) %i.dw) #40, !inline_history !111
  %.pre108 = load ptr, ptr %.sroa.079.0100, align 8, !tbaa !273
  br label %_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.aa, %_ZNKSt14default_deleteIN4crow8BaseRuleEEclEPS1_.exit.i.i.i.i, %_ZN4crow8BaseRule7upgradeEv.exit
  %i.ea = phi ptr [ %i.dq, %bb.aa ], [ %.pre108, %_ZNKSt14default_deleteIN4crow8BaseRuleEEclEPS1_.exit.i.i.i.i ], [ %i.dv, %_ZN4crow8BaseRule7upgradeEv.exit ] ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !257
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(152) %i.ea)
  %i.ee = load ptr, ptr %.sroa.079.0100, align 8, !tbaa !273
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 128 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !283
  %i.eh = load ptr, ptr %2, align 8, !tbaa !283
  %i.ei = load ptr, ptr %i.m, align 8, !tbaa !283
  call void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEvNS4_IPiS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr %i.eg, ptr %i.eh, ptr %i.ei)
  %i.ej = load ptr, ptr %.sroa.079.0100, align 8, !tbaa !273 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i64 %i.r, ptr %i.c, align 8, !tbaa !162
  call void @_ZN4crow6Router24internal_add_rule_objectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8BaseRuleERKmRSt6vectorIPNS_9BlueprintESaISF_EE(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull %i.ej, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EEaSEOS4_.exit, %bb.z, %.lr.ph101
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.079.0100, i64 8 ; 2 uses
  %.not88 = icmp eq ptr %i.el, %i.da
  br i1 %.not88, label %._crit_edge102, label %.lr.ph101

bb.ac:                                            ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EEC2ERKS4_.exit
  %i.em = load ptr, ptr %6, align 8, !tbaa !322   ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !323
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #41
  br label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit: ; preds = %bb.ac, %bb.ad
  %i.er = load ptr, ptr %i.m, align 8, !tbaa !242 ; 2 uses
  %i.es = load ptr, ptr %2, align 8, !tbaa !240   ; 2 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 2                 ; 3 uses
  %i.ex = load ptr, ptr %i.cq, align 8, !tbaa !242
  %i.ey = load ptr, ptr %i.cn, align 8, !tbaa !240
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 2                 ; 3 uses
  %i.fd = sub nsw i64 %i.ew, %i.fc                ; 2 uses
  %i.fe = icmp ugt i64 %i.fc, %i.ew
  br i1 %i.fe, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit
  %i.ff = sub nsw i64 0, %i.fc
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ff)
  br label %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit

bb.af:                                            ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit
  %7 = icmp ult i64 %i.fd, %i.ew
  br i1 %7, label %bb.ag, label %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit

bb.ag:                                            ; preds = %bb.af
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.fd ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.er, %i.fg
  br i1 %.not.i.i.i72, label %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.ag
  store ptr %i.fg, ptr %i.m, align 8, !tbaa !242
  br label %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit

_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit: ; preds = %bb.ae, %bb.af, %bb.ag, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  store i8 1, ptr %i.u, align 8, !tbaa !2707
  %.pre109 = load ptr, ptr %i.d, align 8, !tbaa !1132
  %.pre110 = load ptr, ptr %1, align 8, !tbaa !322
  br label %bb.ah

bb.ah:                                            ; preds = %bb.b, %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit
  %i.fh = phi ptr [ %i.p, %bb.b ], [ %.pre110, %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit ] ; 2 uses
  %i.fi = phi ptr [ %i.q, %bb.b ], [ %.pre109, %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit ] ; 2 uses
  %i.fj = add i32 %.041103, 1                     ; 2 uses
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = ptrtoint ptr %i.fh to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 3
  %i.fp = icmp ugt i64 %i.fo, %i.fk
  br i1 %i.fp, label %bb.b, label %._crit_edge106, !llvm.loop !2705

bb.ai:                                            ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EEC2ERKS4_.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %6, align 8, !tbaa !322   ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i73, label %_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EED2Ev.exit70, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fs = load ptr, ptr %i.o, align 8, !tbaa !323
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fr to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fv) #41
  br label %_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EED2Ev.exit70

_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EED2Ev.exit70: ; preds = %bb.aj, %bb.ai, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EED2Ev.exit63
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EED2Ev.exit63 ], [ %i.fq, %bb.aj ], [ %i.fq, %bb.ai ]
  resume { ptr, i32 } %.pn44.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !166
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1135
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1135
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1063 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1063 ; 2 uses
  %.not26 = icmp eq ptr %i.j, %i.l
  br i1 %.not26, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.021.027 = phi ptr [ %i.n, %.lr.ph ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.021.027, align 8, !tbaa !1065
  tail call void @_ZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.021.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.l
  br i1 %.not, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, label %.lr.ph

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2713 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1138
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.p, align 1, !tbaa !1139
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.s, ptr %i.o, align 8, !tbaa !2713
  br label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %2, align 8, !tbaa !1137   ; 4 uses
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 8 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775807
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
  unreachable

_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.y = add i64 %.sroa.speculated.i.i.i, %i.w    ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 9223372036854775807)
  %i.ab = select i1 %i.z, i64 9223372036854775807, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #43 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.w ; 2 uses
  store i8 1, ptr %i.ad, align 1, !tbaa !1139
  %i.ae = icmp sgt i64 %i.w, 0
  br i1 %i.ae, label %bb.h, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.t, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.w) #41
  br label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ac, ptr %2, align 8, !tbaa !1137
  store ptr %i.af, ptr %i.o, align 8, !tbaa !2713
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !1138
  br label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %.lr.ph, %bb.c, %bb.b, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1135 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1135 ; 2 uses
  %.not2536 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not2536, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN4crow8BaseRule14foreach_methodIZNS_6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS6_EEEUljE_EEvT_.exit, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  ret void

bb.j:                                             ; preds = %.lr.ph38, %_ZN4crow8BaseRule14foreach_methodIZNS_6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS6_EEEUljE_EEvT_.exit
  %.sroa.016.037 = phi ptr [ %i.ai, %.lr.ph38 ], [ %i.cp, %_ZN4crow8BaseRule14foreach_methodIZNS_6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS6_EEEUljE_EEvT_.exit ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.016.037, align 8, !tbaa !273
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  br label %bb.k

bb.k:                                             ; preds = %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit, %bb.j
  %.07.i = phi i64 [ 1, %bb.j ], [ %i.co, %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit ] ; 2 uses
  %.056.i = phi i64 [ 0, %bb.j ], [ %i.cn, %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit ] ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !254
  %i.aq = and i64 %i.ap, %.07.i
  %.not.i15 = icmp eq i64 %i.aq, 0
  br i1 %.not.i15, label %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = trunc i64 %.056.i to i8                 ; 9 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !179   ; 7 uses
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !179 ; 6 uses
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 10 uses
  %i.ax = ashr i64 %i.aw, 2                       ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l
  %i.az = and i64 %i.aw, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.as, i64 %i.az ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i ], [ %i.bm, %bb.q ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %i.bl, %bb.q ] ; 9 uses
  %i.ba = load i8, ptr %.sroa.032.051.i.i.i.i, align 1, !tbaa !1139
  %i.bb = icmp eq i8 %i.ba, %i.ar
  br i1 %i.bb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !1139
  %i.be = icmp eq i8 %i.bd, %i.ar
  br i1 %i.be, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE:bb.a
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, ptr %i.mx, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.da

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ct
  %.pre1117 = load ptr, ptr %14, align 8, !tbaa !164 ; 2 uses
  %i.nk = icmp eq ptr %.pre1117, %i.cx
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.nl = load i64, ptr %i.cx, align 8, !tbaa !165
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %.pre1117, i64 noundef %i.nm) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0469.0943, i64 8
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !527 ; 3 uses
  %.not216 = icmp eq i64 %i.no, -1
  br i1 %.not216, label %_ZNSt6vectorImSaImEE9push_backERKm.exit311, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.np = load ptr, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471 ; 4 uses
  %i.nq = load ptr, ptr %spec.store.select27.sroa.sel557.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1407
  %.not.i302 = icmp eq ptr %i.np, %i.nq
  br i1 %.not.i302, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i64 %i.no, ptr %i.np, align 8, !tbaa !162
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  store ptr %i.nr, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit311

bb.cw:                                            ; preds = %bb.cu
  %i.ns = load ptr, ptr %spec.store.select27, align 8, !tbaa !1406 ; 4 uses
  %i.nt = ptrtoint ptr %i.np to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu                    ; 6 uses
  %i.nw = icmp eq i64 %i.nv, 9223372036854775800
  br i1 %i.nw, label %bb.cx, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i303

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
          to label %.noexc309 unwind label %.loopexit.split-lp683

.noexc309:                                        ; preds = %bb.cx
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i303: ; preds = %bb.cw
  %i.nx = ashr exact i64 %i.nv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i304 = call i64 @llvm.umax.i64(i64 %i.nx, i64 1)
  %i.ny = add nsw i64 %.sroa.speculated.i.i.i304, %i.nx ; 2 uses
  %i.nz = icmp ult i64 %i.ny, %i.nx
  %i.oa = call i64 @llvm.umin.i64(i64 %i.ny, i64 1152921504606846975)
  %i.ob = select i1 %i.nz, i64 1152921504606846975, i64 %i.oa ; 3 uses
  %.not.i.i.i305 = icmp ne i64 %i.ob, 0
  call void @llvm.assume(i1 %.not.i.i.i305)
  %i.oc = shl nuw nsw i64 %i.ob, 3
  %i.od = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oc) #43
          to label %.noexc310 unwind label %.loopexit682 ; 4 uses

.noexc310:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i303
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 %i.nv ; 2 uses
  store i64 %i.no, ptr %i.oe, align 8, !tbaa !162
  %i.of = icmp sgt i64 %i.nv, 0
  br i1 %i.of, label %bb.cy, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i306

bb.cy:                                            ; preds = %.noexc310
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.od, ptr align 8 %i.ns, i64 %i.nv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i306

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i306: ; preds = %bb.cy, %.noexc310
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %.not.i17.i.i307 = icmp eq ptr %i.ns, null
  br i1 %.not.i17.i.i307, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i308, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i306
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef %i.nv) #41
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i308

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i308: ; preds = %bb.cz, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i306
  store ptr %i.od, ptr %spec.store.select27, align 8, !tbaa !1406
  store ptr %i.og, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %i.ob
  store ptr %i.oh, ptr %spec.store.select27.sroa.sel557.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1407
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit311

.loopexit677:                                     ; preds = %.noexc10.i.i
  %lpad.loopexit679 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

.loopexit.split-lp678:                            ; preds = %bb.cn
  %lpad.loopexit.split-lp680 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.da:                                            ; preds = %bb.ct
  %i.oi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oj = load ptr, ptr %14, align 8, !tbaa !164  ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.cx
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %bb.da
  %i.ol = load i64, ptr %i.cx, align 8, !tbaa !165
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.om) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %bb.da, %.loopexit677, %.loopexit.split-lp678, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  %.pn214 = phi { ptr, i32 } [ %i.oi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312 ], [ %lpad.loopexit.split-lp680, %.loopexit.split-lp678 ], [ %lpad.loopexit679, %.loopexit677 ], [ %i.oi, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

.loopexit682:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i303
  %lpad.loopexit684 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

.loopexit.split-lp683:                            ; preds = %bb.cx
  %lpad.loopexit.split-lp685 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

_ZNSt6vectorImSaImEE9push_backERKm.exit311:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i308, %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  invoke void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %15, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0469.0943, i64 noundef %.0.lcssa, ptr noundef nonnull %spec.store.select, ptr noundef nonnull %spec.store.select27)
          to label %bb.db unwind label %bb.df

bb.db:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit311
  %i.on = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !1469
  %i.oo = load ptr, ptr %i.da, align 8, !tbaa !1407
  %.not.i.i.i.i.i.i315 = icmp eq ptr %.sroa.0.0940, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i315, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i316, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.op = ptrtoint ptr %.sroa.34.0942 to i64
  %i.oq = ptrtoint ptr %.sroa.0.0940 to i64
  %i.or = sub i64 %i.op, %i.oq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0940, i64 noundef %i.or) #41
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i316

_ZNSt6vectorImSaImEEaSEOS1_.exit.i316:            ; preds = %bb.dc, %bb.db
  %i.os = load i64, ptr %i.db, align 8, !tbaa !1465 ; 2 uses
  %i.ot = add i64 %.0653.fr945, -1
  %i.ou = add i64 %i.os, -1
  %or.cond665.not = icmp ult i64 %i.ou, %i.ot
  br i1 %or.cond665.not, label %bb.dd, label %_ZZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEEENKUlRNS_21routing_handle_resultEE_clESJ_.exit319

bb.dd:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i316
  %i.ov = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4crow14routing_paramsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(96) %i.dc) #40 ; 0 uses
  br label %_ZZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEEENKUlRNS_21routing_handle_resultEE_clESJ_.exit319

_ZZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEEENKUlRNS_21routing_handle_resultEE_clESJ_.exit319: ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i316, %bb.dd
  %.8 = phi i64 [ %.0653.fr945, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i316 ], [ %i.os, %bb.dd ]
  %i.ow = load ptr, ptr %spec.store.select.sroa.sel.sroa.sel589.v.sroa.sel.v.sroa.sel, align 8, !tbaa !570 ; 2 uses
  %i.ox = getelementptr inbounds i8, ptr %i.ow, i64 -32 ; 2 uses
  store ptr %i.ox, ptr %spec.store.select.sroa.sel.sroa.sel589.v.sroa.sel.v.sroa.sel, align 8, !tbaa !570
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !164 ; 2 uses
  %i.oz = getelementptr inbounds i8, ptr %i.ow, i64 -16 ; 2 uses
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320: ; preds = %_ZZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEEENKUlRNS_21routing_handle_resultEE_clESJ_.exit319
  %i.pb = load i64, ptr %i.oz, align 8, !tbaa !165
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pc) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit: ; preds = %_ZZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEEENKUlRNS_21routing_handle_resultEE_clESJ_.exit319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320
  %i.pd = load ptr, ptr %spec.store.select27, align 8, !tbaa !1469
  %i.pe = load ptr, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1469 ; 2 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  %i.pg = getelementptr inbounds i8, ptr %i.pe, i64 -8
  store ptr %i.pg, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471
  br label %bb.dg

bb.df:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit311
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

bb.dg:                                            ; preds = %bb.de, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %15) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread

bb.dh:                                            ; preds = %bb.u
  %i.pi = load i64, ptr %i.h, align 8, !tbaa !166 ; 5 uses
  %.not207 = icmp eq i64 %i.pi, %4
  br i1 %.not207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %i.pj = sub i64 %i.pi, %4                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3260)
  %i.pk = icmp ugt i64 %4, %i.pi
  br i1 %i.pk, label %bb.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i321

bb.dj:                                            ; preds = %bb.di
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.273, i64 noundef %4, i64 noundef %i.pi) #39
          to label %.noexc325 unwind label %.loopexit.split-lp

.noexc325:                                        ; preds = %bb.dj
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i321: ; preds = %bb.di
  store ptr %i.cr, ptr %16, align 8, !tbaa !160, !alias.scope !3260
  %i.pl = load ptr, ptr %2, align 8, !tbaa !164, !noalias !3260
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !3260
  store i64 %i.pj, ptr %i.a, align 8, !tbaa !162, !noalias !3260
  %i.pn = icmp ugt i64 %i.pj, 15
  br i1 %i.pn, label %.noexc10.i.i324, label %._crit_edge.i.i.i323

.noexc10.i.i324:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i321
  %i.po = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc326 unwind label %.loopexit ; 2 uses

.noexc326:                                        ; preds = %.noexc10.i.i324
  store ptr %i.po, ptr %16, align 8, !tbaa !164, !alias.scope !3260
  %i.pp = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3260
  store i64 %i.pp, ptr %i.cr, align 8, !tbaa !165, !alias.scope !3260
  br label %._crit_edge.i.i.i323

._crit_edge.i.i.i323:                             ; preds = %.noexc326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i321
  %i.pq = phi ptr [ %i.po, %.noexc326 ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i321 ] ; 2 uses
  switch i64 %i.pj, label %bb.dl [
    i64 1, label %bb.dk
    i64 0, label %bb.dm
  ]

bb.dk:                                            ; preds = %._crit_edge.i.i.i323
  %i.pr = load i8, ptr %i.pm, align 1, !tbaa !165
  store i8 %i.pr, ptr %i.pq, align 1, !tbaa !165
  br label %bb.dm

bb.dl:                                            ; preds = %._crit_edge.i.i.i323
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pq, ptr align 1 %i.pm, i64 %i.pj, i1 false)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %._crit_edge.i.i.i323
  %i.ps = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3260 ; 2 uses
  store i64 %i.ps, ptr %i.cs, align 8, !tbaa !166, !alias.scope !3260
  %i.pt = load ptr, ptr %16, align 8, !tbaa !164, !alias.scope !3260
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.ps
  store i8 0, ptr %i.pu, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !3260
  %i.pv = load ptr, ptr %spec.store.select.sroa.sel.sroa.sel589.v.sroa.sel.v.sroa.sel, align 8, !tbaa !570 ; 6 uses
  %i.pw = load ptr, ptr %spec.store.select.sroa.sel.sroa.sel586.v.sroa.sel.v.sroa.sel, align 8, !tbaa !571
  %.not.i.i328 = icmp eq ptr %i.pv, %i.pw
  br i1 %.not.i.i328, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 3 uses
  store ptr %i.px, ptr %i.pv, align 8, !tbaa !160
  %i.py = load ptr, ptr %16, align 8, !tbaa !164  ; 2 uses
  %i.pz = icmp eq ptr %i.py, %i.cr
  br i1 %i.pz, label %bb.do, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329

bb.do:                                            ; preds = %bb.dn
  %i.qa = load i64, ptr %i.cs, align 8, !tbaa !166 ; 3 uses
  %i.qb = icmp ult i64 %i.qa, 16
  call void @llvm.assume(i1 %i.qb)
  %i.qc = add nuw nsw i64 %i.qa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.px, ptr noundef nonnull align 8 dereferenceable(1) %i.cr, i64 %i.qc, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit332.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329: ; preds = %bb.dn
  store ptr %i.py, ptr %i.pv, align 8, !tbaa !164
  %i.qd = load i64, ptr %i.cr, align 8, !tbaa !165
  store i64 %i.qd, ptr %i.px, align 8, !tbaa !165
  %.pre = load i64, ptr %i.cs, align 8, !tbaa !166
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit332.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit332.thread: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329
  %i.qe = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329 ], [ %i.qa, %bb.do ]
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store i64 %i.qe, ptr %i.qf, align 8, !tbaa !166
  store ptr %i.cr, ptr %16, align 8, !tbaa !164
  store i64 0, ptr %i.cs, align 8, !tbaa !166
  %i.qg = load ptr, ptr %spec.store.select.sroa.sel.sroa.sel589.v.sroa.sel.v.sroa.sel, align 8, !tbaa !570
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 32
  store ptr %i.qh, ptr %spec.store.select.sroa.sel.sroa.sel589.v.sroa.sel.v.sroa.sel, align 8, !tbaa !570
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

bb.dp:                                            ; preds = %bb.dm
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, ptr %i.pv, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit332 unwind label %bb.dw

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit332: ; preds = %bb.dp
  %.pre1115 = load ptr, ptr %16, align 8, !tbaa !164 ; 2 uses
  %i.qi = icmp eq ptr %.pre1115, %i.cr
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit332
  %i.qj = load i64, ptr %i.cr, align 8, !tbaa !165
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %.pre1115, i64 noundef %i.qk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit332, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit332.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0469.0943, i64 8
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !527 ; 3 uses
  %.not210 = icmp eq i64 %i.qm, -1
  br i1 %.not210, label %_ZNSt6vectorImSaImEE9push_backERKm.exit345, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335
  %i.qn = load ptr, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471 ; 4 uses
  %i.qo = load ptr, ptr %spec.store.select27.sroa.sel557.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1407
  %.not.i336 = icmp eq ptr %i.qn, %i.qo
  br i1 %.not.i336, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  store i64 %i.qm, ptr %i.qn, align 8, !tbaa !162
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store ptr %i.qp, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit345

bb.ds:                                            ; preds = %bb.dq
  %i.qq = load ptr, ptr %spec.store.select27, align 8, !tbaa !1406 ; 4 uses
  %i.qr = ptrtoint ptr %i.qn to i64
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = sub i64 %i.qr, %i.qs                    ; 6 uses
  %i.qu = icmp eq i64 %i.qt, 9223372036854775800
  br i1 %i.qu, label %bb.dt, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i337

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
          to label %.noexc343 unwind label %.loopexit.split-lp673

.noexc343:                                        ; preds = %bb.dt
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i337: ; preds = %bb.ds
  %i.qv = ashr exact i64 %i.qt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i338 = call i64 @llvm.umax.i64(i64 %i.qv, i64 1)
  %i.qw = add nsw i64 %.sroa.speculated.i.i.i338, %i.qv ; 2 uses
  %i.qx = icmp ult i64 %i.qw, %i.qv
  %i.qy = call i64 @llvm.umin.i64(i64 %i.qw, i64 1152921504606846975)
  %i.qz = select i1 %i.qx, i64 1152921504606846975, i64 %i.qy ; 3 uses
  %.not.i.i.i339 = icmp ne i64 %i.qz, 0
  call void @llvm.assume(i1 %.not.i.i.i339)
  %i.ra = shl nuw nsw i64 %i.qz, 3
  %i.rb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ra) #43
          to label %.noexc344 unwind label %.loopexit672 ; 4 uses

.noexc344:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i337
  %i.rc = getelementptr inbounds i8, ptr %i.rb, i64 %i.qt ; 2 uses
  store i64 %i.qm, ptr %i.rc, align 8, !tbaa !162
  %i.rd = icmp sgt i64 %i.qt, 0
  br i1 %i.rd, label %bb.du, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i340

bb.du:                                            ; preds = %.noexc344
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rb, ptr align 8 %i.qq, i64 %i.qt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i340

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i340: ; preds = %bb.du, %.noexc344
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %.not.i17.i.i341 = icmp eq ptr %i.qq, null
  br i1 %.not.i17.i.i341, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i342, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i340
  call void @_ZdlPvm(ptr noundef nonnull %i.qq, i64 noundef %i.qt) #41
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i342

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i342: ; preds = %bb.dv, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i340
  store ptr %i.rb, ptr %spec.store.select27, align 8, !tbaa !1406
  store ptr %i.re, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %i.qz
  store ptr %i.rf, ptr %spec.store.select27.sroa.sel557.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1407
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit345

.loopexit:                                        ; preds = %.noexc10.i.i324
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

.loopexit.split-lp:                               ; preds = %bb.dj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

bb.dw:                                            ; preds = %bb.dp
  %i.rg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rh = load ptr, ptr %16, align 8, !tbaa !164  ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.cr
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %bb.dw
  %i.rj = load i64, ptr %i.cr, align 8, !tbaa !165
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rk) #41
end_hunk_1
