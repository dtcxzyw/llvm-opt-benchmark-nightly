Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/StatementIf?download=true
inline.NumInlined: 405
inline.NumDeleted: 224
begin_hunk_0_@_ZNK11StatementIf11visit_factsERSt6vectorIPK4FactSaIS3_EER9CGContext:bb.a
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ay

bb.u:                                             ; preds = %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.v:                                             ; preds = %_ZNSt15__new_allocatorIPK4FactE8allocateEmPKv.exit.i.i.i.i55, %.noexc.i.i56
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit99

bb.w:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i61
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.y:                                             ; preds = %.noexc66
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.br
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.y
  %i.ch = load i64, ptr %i.br, align 8, !tbaa !101
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.x
  %.pn37 = phi { ptr, i32 } [ %i.cd, %bb.x ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.ce, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ba

bb.z:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %i.ck = load ptr, ptr %1, align 8, !tbaa !45    ; 4 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i74 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i.i.i74, label %.thread108, label %bb.aa

.thread108:                                       ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cp = getelementptr inbounds i8, ptr null, i64 %i.cn ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !46
  br label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.cr = icmp ugt i64 %i.cn, 9223372036854775800
  br i1 %i.cr, label %.noexc.i.i76, label %_ZNSt15__new_allocatorIPK4FactE8allocateEmPKv.exit.i.i.i.i75, !prof !48

.noexc.i.i76:                                     ; preds = %bb.aa
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #15
          to label %.noexc77 unwind label %bb.ah

.noexc77:                                         ; preds = %.noexc.i.i76
  unreachable

_ZNSt15__new_allocatorIPK4FactE8allocateEmPKv.exit.i.i.i.i75: ; preds = %bb.aa
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #13
          to label %.noexc78 unwind label %bb.ah  ; 5 uses

.noexc78:                                         ; preds = %_ZNSt15__new_allocatorIPK4FactE8allocateEmPKv.exit.i.i.i.i75
  store ptr %i.cs, ptr %8, align 8, !tbaa !45
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !47
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cn ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !46
  %i.cw = icmp samesign ugt i64 %i.cn, 8
  br i1 %i.cw, label %bb.ab, label %bb.ac, !prof !100

bb.ab:                                            ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cs, ptr align 8 %i.ck, i64 %i.cn, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc78
  %i.cx = icmp eq i64 %i.cn, 8
  br i1 %i.cx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cy = load ptr, ptr %i.ck, align 8, !tbaa !50
  store ptr %i.cy, ptr %i.cs, align 8, !tbaa !50
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %.thread108
  %i.cz = phi ptr [ %i.cv, %bb.ab ], [ %i.cv, %bb.ac ], [ %i.cv, %bb.ad ], [ %i.cq, %.thread108 ] ; 2 uses
  %i.da = phi ptr [ %i.cu, %bb.ab ], [ %i.cu, %bb.ac ], [ %i.cu, %bb.ad ], [ %i.cp, %.thread108 ]
  %i.db = phi ptr [ %i.ct, %bb.ab ], [ %i.ct, %bb.ac ], [ %i.ct, %bb.ad ], [ %i.co, %.thread108 ]
  store ptr %i.da, ptr %i.db, align 8, !tbaa !47
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !54, !nonnull !55, !align !56 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(192) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(216) %2)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  br i1 %i.dh, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i81: ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.dj = invoke noalias noundef nonnull dereferenceable(25) ptr @_Znwm(i64 noundef 25) #13
          to label %.noexc86 unwind label %bb.aj  ; 3 uses

.noexc86:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i81
  store ptr %i.dj, ptr %9, align 8, !tbaa !26
  store i64 24, ptr %i.di, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dj, ptr noundef nonnull align 1 dereferenceable(24) @.str.6, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 24, ptr %i.dk, align 8, !tbaa !25
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i8 0, ptr %i.dl, align 1, !tbaa !101
  %i.dm = invoke noundef zeroext i1 @_Z17log_analysis_failRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %.noexc86
  %i.dn = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.di
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ag
  %i.dp = load i64, ptr %i.di, align 8, !tbaa !101
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.au

bb.ah:                                            ; preds = %_ZNSt15__new_allocatorIPK4FactE8allocateEmPKv.exit.i.i.i.i75, %.noexc.i.i76
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit95

bb.ai:                                            ; preds = %bb.am, %bb.al, %bb.ae
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i81
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.ak:                                            ; preds = %.noexc86
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.di
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.ak
  %i.dx = load i64, ptr %i.di, align 8, !tbaa !101
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.aj
  %.pn39 = phi { ptr, i32 } [ %i.dt, %bb.aj ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.du, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.aw

bb.al:                                            ; preds = %bb.af
  %i.dz = load ptr, ptr %i.bl, align 8, !tbaa !58, !nonnull !55, !align !56
  invoke void @_ZNK9Statement34set_accumulated_effect_after_blockER6EffectPK5BlockR9CGContext(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(74) %5, ptr noundef nonnull %i.dz, ptr noundef nonnull align 8 dereferenceable(216) %2)
          to label %bb.am unwind label %bb.ai

bb.am:                                            ; preds = %bb.al
  %i.ea = load ptr, ptr %i.dc, align 8, !tbaa !54, !nonnull !55, !align !56
  invoke void @_ZNK9Statement34set_accumulated_effect_after_blockER6EffectPK5BlockR9CGContext(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(74) %5, ptr noundef nonnull %i.ea, ptr noundef nonnull align 8 dereferenceable(216) %2)
          to label %bb.an unwind label %bb.ai

bb.an:                                            ; preds = %bb.am
  %i.eb = load ptr, ptr %i.bl, align 8, !tbaa !58, !nonnull !55, !align !56 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = invoke noundef zeroext i1 %i.ee(ptr noundef nonnull align 8 dereferenceable(192) %i.eb)
          to label %bb.ao unwind label %bb.aq     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.eg = load ptr, ptr %i.dc, align 8, !tbaa !54, !nonnull !55, !align !56 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !28
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(192) %i.eg)
          to label %bb.ap unwind label %bb.ar     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %brmerge133 = or i1 %i.ef, %i.ek
  br i1 %brmerge133, label %.invoke, label %bb.as

bb.aq:                                            ; preds = %bb.an
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ar:                                            ; preds = %.invoke, %bb.at, %bb.as, %bb.ao
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.invoke:                                          ; preds = %bb.ap
  %.mux = select i1 %i.ek, ptr %3, ptr %8
  %.mux.mux = select i1 %i.ef, ptr %.mux, ptr %6
  %i.en = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPK4FactSaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.mux.mux)
          to label %bb.au unwind label %bb.ar     ; 0 uses

bb.as:                                            ; preds = %bb.ap
  %i.eo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPK4FactSaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.at unwind label %bb.ar     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.ep = invoke noundef zeroext i1 @_Z11merge_factsRSt6vectorIPK4FactSaIS2_EERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.au unwind label %bb.ar     ; 0 uses

bb.au:                                            ; preds = %.invoke, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.033 = phi i1 [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ true, %.invoke ], [ true, %bb.at ]
  %i.eq = load ptr, ptr %8, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.er = load ptr, ptr %i.cz, align 8, !tbaa !46
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #14
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ay

bb.aw:                                            ; preds = %bb.aq, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.ai
  %.pn41.pn = phi { ptr, i32 } [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.ds, %bb.ai ], [ %i.em, %bb.ar ], [ %i.el, %bb.aq ] ; 2 uses
  %i.ev = load ptr, ptr %8, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i94 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i94, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit95, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ew = load ptr, ptr %i.cz, align 8, !tbaa !46
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ez) #14
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit95

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit95:          ; preds = %bb.ax, %bb.aw, %bb.ah
  %.pn41.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.ah ], [ %.pn41.pn, %bb.aw ], [ %.pn41.pn, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ba

bb.ay:                                            ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.134 = phi i1 [ %.033, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %i.fa = load ptr, ptr %6, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i96 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit97, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fb = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #14
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit97

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit97:          ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZN6EffectD1Ev(ptr noundef nonnull align 8 dead_on_return(74) dereferenceable(74) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.pre109 = load ptr, ptr %3, align 8, !tbaa !45
  br label %bb.bd

bb.ba:                                            ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.w
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit95 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.cc, %bb.w ] ; 2 uses
  %i.ff = load ptr, ptr %6, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit99, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fg = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fj) #14
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit99

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit99:          ; preds = %bb.bb, %bb.ba, %bb.v
  %.pn41.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.v ], [ %.pn41.pn.pn.pn, %bb.ba ], [ %.pn41.pn.pn.pn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZN6EffectD1Ev(ptr noundef nonnull align 8 dead_on_return(74) dereferenceable(74) %5) #12
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !45
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit99, %bb.u
  %.pre = phi ptr [ %.pre.pre, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit99 ], [ %i.r, %bb.u ]
  %.pn41.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn.pn, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit99 ], [ %i.ca, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.bf

bb.bd:                                            ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fk = phi ptr [ %.pre109, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit97 ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.235 = phi i1 [ %.134, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit97 ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.not.i.i.i100 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit101, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fl = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fo) #14
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit101

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit101:         ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i1 %.235

bb.bf:                                            ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %bb.i
  %i.fp = phi ptr [ %.pre, %bb.bc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.r, %bb.i ] ; 3 uses
  %.pn41.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn.pn.pn, %bb.bc ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.ak, %bb.i ]
  %.not.i.i.i102 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i102, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit103, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fq = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.ft) #14
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit103

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit103:         ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn41.pn.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_Z17log_analysis_failRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef zeroext i1 @_Z11merge_factsRSt6vectorIPK4FactSaIS2_EERKS4_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11StatementIf11must_returnEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58, !nonnull !55, !align !56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(192) %i.b)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54, !nonnull !55, !align !56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(192) %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.a ], [ %i.l, %bb.b ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11StatementIf9must_jumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58, !nonnull !55, !align !56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(192) %i.b)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54, !nonnull !55, !align !56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(192) %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.a ], [ %i.l, %bb.b ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11StatementIf20combine_branch_factsERSt6vectorIPK4FactSaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.76", align 1     ; 3 uses
  %4 = alloca %"class.std::tuple", align 8        ; 4 uses
  %5 = alloca %"class.std::tuple.76", align 1     ; 3 uses
  %6 = alloca %"class.std::tuple", align 8        ; 4 uses
  %7 = alloca %"class.std::tuple.76", align 1     ; 3 uses
  %8 = alloca %"class.std::tuple", align 8        ; 4 uses
  %9 = alloca %"class.std::tuple.76", align 1     ; 3 uses
  %10 = alloca %"class.std::tuple", align 8       ; 4 uses
end_hunk_0
