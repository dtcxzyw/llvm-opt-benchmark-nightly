Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/numa_topo?download=true
inline.NumInlined: 880
inline.NumDeleted: 386
begin_hunk_0_@_ZN7xgboost6common11ReadCpuListERKNSt10filesystem7__cxx114pathEPSt6vectorIiSaIiEE:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph405, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.cr = phi i32 [ %i.ci, %.lr.ph405 ], [ %i.mc, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.cs = phi i64 [ %i.cj, %.lr.ph405 ], [ %i.md, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store i64 0, ptr %i.g, align 8, !tbaa !32
  %i.ct = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !19
  %i.cw = sext i8 %i.cv to i32
  %i.cx = call i32 @isalnum(i32 noundef %i.cw) #29
  %.not32 = icmp eq i32 %i.cx, 0
  br i1 %.not32, label %bb.ab, label %.thread523, !prof !33

.thread523:                                       ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.cy = sext i32 %i.cr to i64
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 %i.cy
  store ptr %i.cm, ptr %9, align 8, !tbaa !15
  br label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.da = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc101 unwind label %bb.ad

.noexc101:                                        ; preds = %bb.ab
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.da, ptr noundef nonnull @.str, i32 noundef 69)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit103 unwind label %bb.ad

_ZN4dmlc15LogMessageFatalC2EPKci.exit103:         ; preds = %.noexc101
  %i.db = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit105 unwind label %bb.ae ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit105: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit103
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.4, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit105
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.de = load i32, ptr %i.f, align 4, !tbaa !35
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.db, i32 noundef %i.de)
          to label %bb.ac unwind label %bb.ae     ; 2 uses

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111: ; preds = %bb.ac
  %i.dh = load ptr, ptr %2, align 8, !tbaa !20
  %i.di = load i64, ptr %i.q, align 8, !tbaa !18
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %i.dh, i64 noundef %i.di)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ae ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.ag unwind label %bb.ad

bb.ad:                                            ; preds = %.noexc101, %bb.ab, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111, %bb.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit105, %_ZN4dmlc15LogMessageFatalC2EPKci.exit103, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.af unwind label %bb.dj

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn33 = phi { ptr, i32 } [ %i.dk, %bb.ad ], [ %i.dl, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.de

bb.ag:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.pre471 = load ptr, ptr %2, align 8, !tbaa !20 ; 2 uses
  %.pre472 = load i32, ptr %i.f, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.dm = sext i32 %.pre472 to i64
  %i.dn = getelementptr inbounds i8, ptr %.pre471, i64 %i.dm
  store ptr %i.cm, ptr %9, align 8, !tbaa !15
  %i.do = icmp eq ptr %.pre471, null
  br i1 %i.do, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #30
          to label %.noexc115 unwind label %.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %.thread523, %bb.ag
  %i.dp = phi ptr [ %i.cz, %.thread523 ], [ %i.dn, %bb.ag ] ; 3 uses
  %i.dq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dp) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i64 %i.dq, ptr %i.d, align 8, !tbaa !32
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %.noexc.i114, label %._crit_edge.i.i113

.noexc.i114:                                      ; preds = %bb.ai
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc116 unwind label %.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc116:                                        ; preds = %.noexc.i114
  store ptr %i.ds, ptr %9, align 8, !tbaa !20
  %i.dt = load i64, ptr %i.d, align 8, !tbaa !32
  store i64 %i.dt, ptr %i.cm, align 8, !tbaa !19
  br label %._crit_edge.i.i113

._crit_edge.i.i113:                               ; preds = %.noexc116, %bb.ai
  %i.du = phi ptr [ %i.ds, %.noexc116 ], [ %i.cm, %bb.ai ] ; 2 uses
  switch i64 %i.dq, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i113
  %i.dv = load i8, ptr %i.dp, align 1, !tbaa !19
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !19
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i113
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr nonnull align 1 %i.dp, i64 %i.dq, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i113
  %i.dw = load i64, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  store i64 %i.dw, ptr %i.cn, align 8, !tbaa !18
  %i.dx = load ptr, ptr %9, align 8, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i8 0, ptr %i.dy, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.dz = load ptr, ptr %9, align 8, !tbaa !20    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ea = tail call ptr @__errno_location() #31   ; 12 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !35 ; 2 uses
  store i32 0, ptr %i.ea, align 4, !tbaa !35
  %i.ec = call noundef i64 @__isoc23_strtol(ptr noundef %i.dz, ptr noundef nonnull %i.c, i32 noundef 10) ; 3 uses
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.dz
  br i1 %i.ee, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.40) #30
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %.critedge.i.i, %bb.am
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load i32, ptr %i.ea, align 4, !tbaa !35
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.ap, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !35
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.ei = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.cm
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

bb.aq:                                            ; preds = %bb.al
  %i.ek = load i32, ptr %i.ea, align 4, !tbaa !35 ; 2 uses
  %i.el = icmp eq i32 %i.ek, 34
  %i.em = add i64 %i.ec, -2147483648
  %i.en = icmp ult i64 %i.em, -4294967296
  %or.cond.i.i = or i1 %i.en, %i.el
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.as

.critedge.i.i:                                    ; preds = %bb.aq
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.40) #30
          to label %bb.ar unwind label %bb.ao

bb.ar:                                            ; preds = %.critedge.i.i
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.eo = ptrtoint ptr %i.ed to i64
  %i.ep = ptrtoint ptr %i.dz to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 2 uses
  store i64 %i.eq, ptr %i.g, align 8, !tbaa !32
  %i.er = icmp eq i32 %i.ek, 0
  br i1 %i.er, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !35
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.es = trunc nsw i64 %i.ec to i32              ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.et = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.cm
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.au
  %i.ev = load i64, ptr %i.cm, align 8, !tbaa !19
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #28
  %.pre473 = load i64, ptr %i.g, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  %i.ex = phi i64 [ %.pre473, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.eq, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.ey = load i32, ptr %i.f, align 4, !tbaa !35
  %i.ez = sext i32 %i.ey to i64
  %i.fa = add i64 %i.ex, %i.ez                    ; 2 uses
  store i64 %i.fa, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.fb = load i64, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  store i64 %i.fb, ptr %i.i, align 8, !tbaa !32
  %.not.i = icmp ugt i64 %i.fa, %i.fb
  br i1 %.not.i, label %bb.av, label %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.6") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.ax

_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.av
  %.pr247 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  %.not268 = icmp eq ptr %.pr247, null
  br i1 %.not268, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.fc = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc122 unwind label %bb.ay

.noexc122:                                        ; preds = %bb.aw
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.fc, ptr noundef nonnull @.str, i32 noundef 72)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit124 unwind label %bb.ay

_ZN4dmlc15LogMessageFatalC2EPKci.exit124:         ; preds = %.noexc122
  %i.fd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit126 unwind label %bb.az ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit126: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit124
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128 unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit126
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull @.str.7, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128
  %i.fg = load ptr, ptr %10, align 8, !tbaa !38   ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !20
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !18
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef %i.fh, i64 noundef %i.fj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit132 unwind label %bb.az

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit132: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134 unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit132
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.bb unwind label %bb.ay

.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i114, %bb.ah
  %lpad.loopexit.split-lp649 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
  %i.fm = load i64, ptr %i.cm, align 8, !tbaa !19
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.fn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  %.pn35 = phi { ptr, i32 } [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %lpad.loopexit.split-lp649, %.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ef, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.de

bb.ax:                                            ; preds = %bb.av
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %bb.bj

bb.ay:                                            ; preds = %.noexc122, %bb.aw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit132, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit126, %_ZN4dmlc15LogMessageFatalC2EPKci.exit124
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ba unwind label %bb.dj

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn37 = phi { ptr, i32 } [ %i.fp, %bb.ay ], [ %i.fq, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #13
  br label %bb.bj

bb.bb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %.pr248 = load ptr, ptr %10, align 8, !tbaa !38 ; 4 uses
  %.not.i138 = icmp eq ptr %.pr248, null
  br i1 %.not.i138, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fr = load ptr, ptr %.pr248, align 8, !tbaa !20 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.pr248, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bc
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !19
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr248, i64 noundef 32) #28
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.fw = load i64, ptr %i.h, align 8, !tbaa !32  ; 3 uses
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = add i32 %i.fx, 1
  store i32 %i.fy, ptr %i.f, align 4, !tbaa !35
  %i.fz = load i64, ptr %i.q, align 8, !tbaa !18
  %i.ga = icmp eq i64 %i.fw, %i.fz
  br i1 %i.ga, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.gb = load ptr, ptr %2, align 8, !tbaa !20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fw ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !19
  %.not40 = icmp eq i8 %i.gd, 45
  br i1 %.not40, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ge = load ptr, ptr %i.n, align 8, !tbaa !12  ; 4 uses
  %i.gf = load ptr, ptr %i.cq, align 8, !tbaa !39
  %.not.i139 = icmp eq ptr %i.ge, %i.gf
  br i1 %.not.i139, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 %i.es, ptr %i.ge, align 4, !tbaa !35
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store ptr %i.gg, ptr %i.n, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bg:                                            ; preds = %bb.be
  %i.gh = load ptr, ptr %1, align 8, !tbaa !11    ; 4 uses
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 5 uses
  %i.gl = icmp eq i64 %i.gk, 9223372036854775804
  br i1 %i.gl, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.bg, %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bg
  %i.gm = ashr exact i64 %i.gk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gm, i64 1)
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i, %i.gm ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gm
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gn, i64 2305843009213693951)
  %i.gq = select i1 %i.go, i64 2305843009213693951, i64 %i.gp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gr = shl nuw nsw i64 %i.gq, 2
  %i.gs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #32
          to label %.noexc141 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc141:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.gk ; 2 uses
  store i32 %i.es, ptr %i.gt, align 4, !tbaa !35
  %i.gu = icmp sgt i64 %i.gk, 0
end_hunk_0
begin_hunk_1_@_ZN7xgboost6common11ReadCpuListERKNSt10filesystem7__cxx114pathEPSt6vectorIiSaIiEE:bb.a

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.40) #30
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  unreachable

bb.cj:                                            ; preds = %.critedge.i.i186, %bb.ch
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = load i32, ptr %i.ea, align 4, !tbaa !35
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.ck, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i187

bb.ck:                                            ; preds = %bb.cj
  store i32 %i.jh, ptr %i.ea, align 4, !tbaa !35
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i187

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i187: ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.jo = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.co
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

bb.cl:                                            ; preds = %bb.cg
  %i.jq = load i32, ptr %i.ea, align 4, !tbaa !35 ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 34
  %i.js = add i64 %i.ji, -2147483648
  %i.jt = icmp ult i64 %i.js, -4294967296
  %or.cond.i.i184 = or i1 %i.jt, %i.jr
  br i1 %or.cond.i.i184, label %.critedge.i.i186, label %bb.cn

.critedge.i.i186:                                 ; preds = %bb.cl
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.40) #30
          to label %bb.cm unwind label %bb.cj

bb.cm:                                            ; preds = %.critedge.i.i186
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.ju = ptrtoint ptr %i.jj to i64
  %i.jv = ptrtoint ptr %i.jg to i64
  %i.jw = sub i64 %i.ju, %i.jv
  store i64 %i.jw, ptr %i.g, align 8, !tbaa !32
  %i.jx = icmp eq i32 %i.jq, 0
  br i1 %i.jx, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 %i.jh, ptr %i.ea, align 4, !tbaa !35
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.jy = trunc nsw i64 %i.ji to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.jz = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.co
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.thread: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  br label %_ZN4dmlc11LogCheck_GEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.cp
  %i.kb = load i64, ptr %i.co, align 8, !tbaa !19
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #28
  %.pre474 = load i64, ptr %i.g, align 8, !tbaa !32, !noalias !63
  %i.kd = icmp eq i64 %.pre474, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  store i32 1, ptr %i.l, align 4, !tbaa !35
  br i1 %i.kd, label %bb.cq, label %_ZN4dmlc11LogCheck_GEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit214

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  invoke void @_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.6") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %_ZN4dmlc11LogCheck_GEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.ct

_ZN4dmlc11LogCheck_GEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.cq
  %.pr262 = load ptr, ptr %17, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  %.not271 = icmp eq ptr %.pr262, null
  br i1 %.not271, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit214, label %bb.cr

bb.cr:                                            ; preds = %_ZN4dmlc11LogCheck_GEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.ke = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %.noexc194 unwind label %bb.cu

.noexc194:                                        ; preds = %bb.cr
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ke, ptr noundef nonnull @.str, i32 noundef 84)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit196 unwind label %bb.cu

_ZN4dmlc15LogMessageFatalC2EPKci.exit196:         ; preds = %.noexc194
  %i.kf = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit198 unwind label %bb.cv ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit198: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit196
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200 unwind label %bb.cv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit198
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull @.str.10, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202 unwind label %bb.cv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200
  %i.ki = load ptr, ptr %17, align 8, !tbaa !38   ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !20
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !18
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef %i.kj, i64 noundef %i.kl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit204 unwind label %bb.cv

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit204: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206 unwind label %bb.cv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit204
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.cx unwind label %bb.cu

bb.cs:                                            ; preds = %bb.bz, %bb.bw
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %bb.bz ], [ %i.ik, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i180, %bb.cc
  %lpad.loopexit.split-lp652 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i187
  %i.ko = load i64, ptr %i.co, align 8, !tbaa !19
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.kp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i187, %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  %.pn47 = phi { ptr, i32 } [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %lpad.loopexit.split-lp652, %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.jl, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i187 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cq
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  br label %bb.cz

bb.cu:                                            ; preds = %.noexc194, %bb.cr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit204, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit198, %_ZN4dmlc15LogMessageFatalC2EPKci.exit196
  %i.ks = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.cw unwind label %bb.dj

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn49 = phi { ptr, i32 } [ %i.kr, %bb.cu ], [ %i.ks, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #13
  br label %bb.cz

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %.pr263 = load ptr, ptr %17, align 8, !tbaa !38 ; 4 uses
  %.not.i210 = icmp eq ptr %.pr263, null
  br i1 %.not.i210, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit214, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kt = load ptr, ptr %.pr263, align 8, !tbaa !20 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.pr263, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i211: ; preds = %bb.cy
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !19
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i212

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i212: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i211
  call void @_ZdlPvm(ptr noundef nonnull %.pr263, i64 noundef 32) #28
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit214

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit214: ; preds = %_ZN4dmlc11LogCheck_GEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.cx, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  %.not52402 = icmp sgt i64 %i.ec, %i.ji
  br i1 %.not52402, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit214
  %smax = call i32 @llvm.smax.i32(i32 %i.jy, i32 %i.es)
  %.pre475 = load ptr, ptr %i.n, align 8, !tbaa !12
  %.pre476 = load ptr, ptr %i.cq, align 8, !tbaa !39
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit224, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit214
  %i.ky = load i64, ptr %i.g, align 8, !tbaa !32
  %i.kz = load i32, ptr %i.f, align 4, !tbaa !35
  %i.la = trunc i64 %i.ky to i32
  %i.lb = add i32 %i.la, 1
  %i.lc = add i32 %i.lb, %i.kz
  store i32 %i.lc, ptr %i.f, align 4, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.cz:                                            ; preds = %bb.cw, %bb.ct
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %bb.cw ], [ %i.kq, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit224
  %i.ld = phi ptr [ %i.lz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit224 ], [ %.pre476, %.lr.ph.preheader ] ; 3 uses
  %i.le = phi ptr [ %i.ma, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit224 ], [ %.pre475, %.lr.ph.preheader ] ; 3 uses
  %storemerge403 = phi i32 [ %i.mb, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit224 ], [ %i.es, %.lr.ph.preheader ] ; 4 uses
  %.not.i215 = icmp eq ptr %i.le, %i.ld
  br i1 %.not.i215, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.lr.ph
  store i32 %storemerge403, ptr %i.le, align 4, !tbaa !35
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4 ; 2 uses
  store ptr %i.lf, ptr %i.n, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit224

bb.db:                                            ; preds = %.lr.ph
  %i.lg = load ptr, ptr %1, align 8, !tbaa !11    ; 4 uses
  %i.lh = ptrtoint ptr %i.ld to i64
  %i.li = ptrtoint ptr %i.lg to i64               ; 2 uses
  %i.lj = sub i64 %i.lh, %i.li                    ; 5 uses
  %i.lk = icmp eq i64 %i.lj, 9223372036854775804
  br i1 %i.lk, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i216

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i216: ; preds = %bb.db
  %i.ll = ashr exact i64 %i.lj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i217 = call i64 @llvm.umax.i64(i64 %i.ll, i64 1)
  %i.lm = add nsw i64 %.sroa.speculated.i.i.i217, %i.ll ; 2 uses
  %i.ln = icmp ult i64 %i.lm, %i.ll
  %i.lo = call i64 @llvm.umin.i64(i64 %i.lm, i64 2305843009213693951)
  %i.lp = select i1 %i.ln, i64 2305843009213693951, i64 %i.lo ; 3 uses
  %.not.i.i.i218 = icmp ne i64 %i.lp, 0
  call void @llvm.assume(i1 %.not.i.i.i218)
  %i.lq = shl nuw nsw i64 %i.lp, 2
  %i.lr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lq) #32
          to label %.noexc223 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc223:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i216
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 %i.lj ; 2 uses
  store i32 %storemerge403, ptr %i.ls, align 4, !tbaa !35
  %i.lt = icmp sgt i64 %i.lj, 0
  br i1 %i.lt, label %bb.dc, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i219

bb.dc:                                            ; preds = %.noexc223
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lr, ptr align 4 %i.lg, i64 %i.lj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i219

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i219: ; preds = %bb.dc, %.noexc223
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 4 ; 2 uses
  %.not.i17.i.i220 = icmp eq ptr %i.lg, null
  br i1 %.not.i17.i.i220, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i221, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i219
  %i.lv = load ptr, ptr %i.cq, align 8, !tbaa !39
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = sub i64 %i.lw, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.lx) #28
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i221

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i221: ; preds = %bb.dd, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i219
  store ptr %i.lr, ptr %1, align 8, !tbaa !11
  store ptr %i.lu, ptr %i.n, align 8, !tbaa !12
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lp ; 2 uses
  store ptr %i.ly, ptr %i.cq, align 8, !tbaa !39
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit224

_ZNSt6vectorIiSaIiEE9push_backERKi.exit224:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i221, %bb.da
  %i.lz = phi ptr [ %i.ly, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i221 ], [ %i.ld, %bb.da ]
  %i.ma = phi ptr [ %i.lu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i221 ], [ %i.lf, %bb.da ]
  %i.mb = add i32 %storemerge403, 1
  %exitcond.not = icmp eq i32 %storemerge403, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i216, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %.invoke
  %lpad.loopexit.split-lp656 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.bf, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  %i.mc = load i32, ptr %i.f, align 4, !tbaa !35  ; 2 uses
  %i.md = sext i32 %i.mc to i64                   ; 2 uses
  %i.me = load i64, ptr %i.q, align 8, !tbaa !18
  %i.mf = icmp ugt i64 %i.me, %i.md
  br i1 %i.mf, label %bb.aa, label %._crit_edge406

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %bb.cs, %bb.bv, %bb.bj
  %.pn53 = phi { ptr, i32 } [ %.pn37.pn, %bb.bj ], [ %.pn41.pn, %bb.bv ], [ %.pn49.pn, %bb.cz ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %.pn44.pn, %bb.cs ], [ %lpad.loopexit.split-lp656, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  br label %bb.de

bb.de:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %bb.af
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %.pn33, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %bb.dg

._crit_edge406:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.df

bb.df:                                            ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge406
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.mg = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.p
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.df
  %i.mi = load i64, ptr %i.p, align 8, !tbaa !19
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

bb.dg:                                            ; preds = %bb.de, %bb.y
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn53.pn, %bb.de ], [ %.pn30, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.v, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn, %bb.p ], [ %.pn53.pn.pn, %bb.dg ], [ %i.cf, %bb.v ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #13
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.g
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %bb.dh ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.mk = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.p
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.di
  %i.mm = load i64, ptr %i.p, align 8, !tbaa !19
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn57.pn.pn.pn

bb.dj:                                            ; preds = %bb.cv, %bb.by, %bb.bp, %bb.az, %bb.ae, %bb.x, %bb.o
  %i.mo = landingpad { ptr, i32 }
          catch ptr null
  %i.mp = extractvalue { ptr, i32 } %i.mo, 0
  call void @__clang_call_terminate(ptr %i.mp) #33
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::__detail::_Quoted_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.b = load ptr, ptr %1, align 8, !tbaa !20, !noalias !66 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18, !noalias !66 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !15, !alias.scope !66
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !66
  store i64 %i.d, ptr %i.a, align 8, !tbaa !32, !noalias !66
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !20, !alias.scope !66
  %i.j = load i64, ptr %i.a, align 8, !tbaa !32, !noalias !66
  store i64 %i.j, ptr %i.e, align 8, !tbaa !19, !alias.scope !66
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !19
  store i8 %i.l, ptr %i.k, align 1, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !32, !noalias !66 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !18, !alias.scope !66
  %i.o = load ptr, ptr %3, align 8, !tbaa !20, !alias.scope !66
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !66
  store ptr %3, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 23586, ptr %.sroa.2.0..sroa_idx, align 8
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(10) %2)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.e, align 8, !tbaa !19
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret ptr %0

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.e
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  %i.y = load i64, ptr %i.e, align 8, !tbaa !19
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !15
end_hunk_1
