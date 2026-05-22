inline.NumInlined: 675
inline.NumDeleted: 297
begin_hunk_0_@_ZN10ODDLParser13OpenDDLParser11parseHeaderEPcS1_:bb.a
  store i8 0, ptr %i.ds, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN10ODDLParser7DDLNode7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %.0.i153, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dt = load ptr, ptr %5, align 8               ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.di
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.dv = load i64, ptr %i.di, align 8
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.af

bb.ad:                                            ; preds = %.noexc.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.ae:                                            ; preds = %bb.ab
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %5, align 8               ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.di
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.ae
  %i.eb = load i64, ptr %i.di, align 8
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.dx, %bb.ad ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.dy, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bb

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.x, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit
  call void @_ZN10ODDLParser4NameD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dc) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 16) #28
  br label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread: ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i, %bb.t, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread160, %bb.af
  %.0.i112159166 = phi ptr [ %i.cz, %bb.af ], [ %i.cz, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread160 ], [ %.0.lcssa.i.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i ], [ %.0.lcssa.i, %bb.t ] ; 5 uses
  %.not9.i117 = icmp eq ptr %.0.i112159166, %2
  br i1 %.not9.i117, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit125, label %.lr.ph.preheader.i118

.lr.ph.preheader.i118:                            ; preds = %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread
  %i.ed = ptrtoint ptr %2 to i64
  %i.ee = ptrtoint ptr %.0.i112159166 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %scevgep.i119 = getelementptr i8, ptr %.0.i112159166, i64 %i.ef
  br label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.critedge2.i122, %.lr.ph.preheader.i118
  %.010.i121 = phi ptr [ %i.eh, %.critedge2.i122 ], [ %.0.i112159166, %.lr.ph.preheader.i118 ] ; 3 uses
  %i.eg = load i8, ptr %.010.i121, align 1
  switch i8 %i.eg, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit125 [
    i8 32, label %.critedge2.i122
    i8 9, label %.critedge2.i122
    i8 13, label %.critedge2.i122
    i8 10, label %.critedge2.i122
    i8 44, label %.critedge2.i122
  ]

.critedge2.i122:                                  ; preds = %.lr.ph.i120, %.lr.ph.i120, %.lr.ph.i120, %.lr.ph.i120, %.lr.ph.i120
  %i.eh = getelementptr inbounds nuw i8, ptr %.010.i121, i64 1 ; 2 uses
  %.not.i123 = icmp eq ptr %i.eh, %2
  br i1 %.not.i123, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit125, label %.lr.ph.i120, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit125: ; preds = %.lr.ph.i120, %.critedge2.i122, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread
  %.0.lcssa.i124 = phi ptr [ %.0.i112159166, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread ], [ %scevgep.i119, %.critedge2.i122 ], [ %.010.i121, %.lr.ph.i120 ] ; 5 uses
  %.not94 = icmp eq ptr %.0.lcssa.i124, %2
  br i1 %.not94, label %.thread172, label %bb.ag

bb.ag:                                            ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit125
  %i.ei = load i8, ptr %.0.lcssa.i124, align 1
  %i.ej = icmp eq i8 %i.ei, 40
  br i1 %i.ej, label %bb.ah, label %.thread172

bb.ah:                                            ; preds = %bb.ag
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.lcssa.i124, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store ptr null, ptr %i.e, align 8
  %.not95186 = icmp eq ptr %i.ek, %2
  br i1 %.not95186, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %.thread172

.lr.ph:                                           ; preds = %bb.ah
  %i.el = ptrtoint ptr %2 to i64
  %i.em = load i8, ptr %i.ek, align 1
  %.not96253 = icmp eq i8 %i.em, 41
  br i1 %.not96253, label %._crit_edge, label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph, %bb.az
  %.072187256 = phi ptr [ %.0.lcssa.i133, %bb.az ], [ %i.ek, %.lr.ph ]
  %.056188255 = phi ptr [ %.2, %bb.az ], [ null, %.lr.ph ] ; 4 uses
  %.054189254 = phi ptr [ %.155, %bb.az ], [ null, %.lr.ph ] ; 3 uses
  %i.en = call noundef ptr @_ZN10ODDLParser13OpenDDLParser13parsePropertyEPcS1_PPNS_8PropertyE(ptr noundef nonnull %.072187256, ptr noundef %2, ptr noundef nonnull %i.e) ; 5 uses
  %.not9.i126 = icmp eq ptr %i.en, %2
  br i1 %.not9.i126, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit134, label %.lr.ph.preheader.i127

.lr.ph.preheader.i127:                            ; preds = %.lr.ph257
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.el, %i.eo
  %scevgep.i128 = getelementptr i8, ptr %i.en, i64 %i.ep
  br label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.critedge2.i131, %.lr.ph.preheader.i127
  %.010.i130 = phi ptr [ %i.er, %.critedge2.i131 ], [ %i.en, %.lr.ph.preheader.i127 ] ; 3 uses
  %i.eq = load i8, ptr %.010.i130, align 1
  switch i8 %i.eq, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit134 [
    i8 32, label %.critedge2.i131
    i8 9, label %.critedge2.i131
    i8 13, label %.critedge2.i131
    i8 10, label %.critedge2.i131
    i8 44, label %.critedge2.i131
  ]

.critedge2.i131:                                  ; preds = %.lr.ph.i129, %.lr.ph.i129, %.lr.ph.i129, %.lr.ph.i129, %.lr.ph.i129
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i130, i64 1 ; 2 uses
  %.not.i132 = icmp eq ptr %i.er, %2
  br i1 %.not.i132, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit134, label %.lr.ph.i129, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit134: ; preds = %.lr.ph.i129, %.critedge2.i131, %.lr.ph257
  %.0.lcssa.i133 = phi ptr [ %i.en, %.lr.ph257 ], [ %scevgep.i128, %.critedge2.i131 ], [ %.010.i130, %.lr.ph.i129 ] ; 7 uses
  %i.es = icmp eq ptr %.0.lcssa.i133, %2
  br i1 %i.es, label %._crit_edge, label %bb.ai

bb.ai:                                            ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit134
  %i.et = load i8, ptr %.0.lcssa.i133, align 1    ; 2 uses
  switch i8 %i.et, label %bb.aj [
    i8 44, label %bb.aw
    i8 41, label %bb.aw
  ]

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %.0.lcssa.i133, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_ZN10ODDLParserL20logInvalidTokenErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St8functionIFvNS_11LogSeverityES7_EE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %10)
          to label %bb.an unwind label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not.i135 = icmp eq ptr %i.ev, null
  br i1 %.not.i135, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ew = invoke noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.an, %bb.ao
  %i.ez = load ptr, ptr %8, align 8               ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.fc = load i64, ptr %i.fa, align 8
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.fe = load ptr, ptr %6, align 8               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.fh = load i64, ptr %i.ff, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140

bb.aq:                                            ; preds = %bb.aj
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.ar:                                            ; preds = %bb.ak
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

bb.as:                                            ; preds = %bb.al
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit143

bb.at:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not.i142 = icmp eq ptr %i.fo, null
  br i1 %.not.i142, label %_ZNSt14_Function_baseD2Ev.exit143, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fp = invoke noundef zeroext i1 %i.fo(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit143 unwind label %bb.av ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit143:                ; preds = %bb.au, %bb.at, %bb.as
  %.pn102 = phi { ptr, i32 } [ %i.fl, %bb.as ], [ %i.fm, %bb.at ], [ %i.fm, %bb.au ] ; 2 uses
  %i.fs = load ptr, ptr %8, align 8               ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt14_Function_baseD2Ev.exit143
  %i.fv = load i64, ptr %i.ft, align 8
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt14_Function_baseD2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %bb.ar
  %.pn102.pn = phi { ptr, i32 } [ %i.fk, %bb.ar ], [ %.pn102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %.pn102, %_ZNSt14_Function_baseD2Ev.exit143 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.fx = load ptr, ptr %6, align 8               ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.ga = load i64, ptr %i.fy, align 8
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.aq
  %.pn102.pn.pn = phi { ptr, i32 } [ %i.fj, %bb.aq ], [ %.pn102.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.bb

bb.aw:                                            ; preds = %bb.ai, %bb.ai
  %i.gc = load ptr, ptr %i.e, align 8             ; 5 uses
  %.not99 = icmp eq ptr %i.gc, null
  %.not100 = icmp eq i8 %i.et, 44
  %or.cond181 = or i1 %.not100, %.not99
  br i1 %or.cond181, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gd = icmp eq ptr %.056188255, null
  %spec.select = select i1 %i.gd, ptr %i.gc, ptr %.056188255 ; 2 uses
  %.not101 = icmp eq ptr %.054189254, null
  br i1 %.not101, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ge = getelementptr inbounds nuw i8, ptr %.054189254, i64 24
  store ptr %i.gc, ptr %i.ge, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw
  %.2 = phi ptr [ %.056188255, %bb.aw ], [ %spec.select, %bb.ax ], [ %spec.select, %bb.ay ] ; 2 uses
  %.155 = phi ptr [ %.054189254, %bb.aw ], [ %i.gc, %bb.ax ], [ %i.gc, %bb.ay ]
  %i.gf = load i8, ptr %.0.lcssa.i133, align 1
  %.not96 = icmp eq i8 %i.gf, 41
  br i1 %.not96, label %._crit_edge, label %.lr.ph257

._crit_edge:                                      ; preds = %bb.az, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit134, %.lr.ph
  %.056188.lcssa = phi ptr [ null, %.lr.ph ], [ %.2, %bb.az ], [ %.056188255, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit134 ] ; 2 uses
  %.173 = phi ptr [ %i.ek, %.lr.ph ], [ %.0.lcssa.i133, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit134 ], [ %.0.lcssa.i133, %bb.az ] ; 2 uses
  %.not107 = icmp ne ptr %.173, %2
  %spec.select109.idx = zext i1 %.not107 to i64
  %spec.select109 = getelementptr inbounds nuw i8, ptr %.173, i64 %spec.select109.idx ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.gg = icmp ne ptr %.056188.lcssa, null
  %or.cond4 = and i1 %i.co, %i.gg
  br i1 %or.cond4, label %bb.ba, label %.thread172

bb.ba:                                            ; preds = %._crit_edge
  call void @_ZN10ODDLParser7DDLNode13setPropertiesEPNS_8PropertyE(ptr noundef nonnull align 8 dereferenceable(136) %.0.i153, ptr noundef nonnull %.056188.lcssa)
  br label %.thread172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %.thread172

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %common.resume

.thread172:                                       ; preds = %._crit_edge.thread, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit125, %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140, %bb.ba, %._crit_edge, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.370 = phi ptr [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140 ], [ %spec.select109, %bb.ba ], [ %spec.select109, %._crit_edge ], [ %.0.lcssa.i124, %bb.ag ], [ %.0.lcssa.i124, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit125 ], [ %i.ek, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.bc

bb.bc:                                            ; preds = %bb.a, %.thread172
  %.471 = phi ptr [ %.370, %.thread172 ], [ %1, %bb.a ]
  ret ptr %.471
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser14parseStructureEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::function", align 8     ; 10 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %1, %2
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.u, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i8 0, ptr %i.b, align 1
  %i.e = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.g
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.i, %.critedge2.i ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %i.h = load i8, ptr %.010.i, align 1
  switch i8 %i.h, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %2
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 7 uses
  %.not = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.j = load i8, ptr %.0.lcssa.i, align 1
  %i.k = icmp eq i8 %i.j, 123
  br i1 %i.k, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.b, %bb.d
  %.031 = phi ptr [ %i.l, %bb.d ], [ %.0.lcssa.i, %bb.b ]
  %i.l = call noundef ptr @_ZN10ODDLParser13OpenDDLParser18parseStructureBodyEPcS1_Rb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.031, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN10ODDLParser13OpenDDLParser7popNodeEv.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %.not41.not.not.not.not.not = icmp ne ptr %i.l, %2 ; 2 uses
  br i1 %.not41.not.not.not.not.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.l, align 1
  %.not42 = icmp eq i8 %i.n, 125
  br i1 %.not42, label %.critedge, label %.preheader, !llvm.loop !12

.critedge:                                        ; preds = %bb.c, %bb.d
  %spec.select.idx = zext i1 %.not41.not.not.not.not.not to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.idx
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.o, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.q = ptrtoint ptr %.0.lcssa.i to i64
  %i.r = sub i64 %i.e, %i.q                       ; 4 uses
  store i64 %i.r, ptr %i.a, align 8
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %3, align 8
  %i.u = load i64, ptr %i.a, align 8
  store i64 %i.u, ptr %i.o, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc.i ], [ %i.o, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %._crit_edge.i.i43
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %.0.lcssa.i, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %._crit_edge.i.i43

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %.0.lcssa.i, i64 %i.r, i1 false)
  br label %._crit_edge.i.i43

._crit_edge.i.i43:                                ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.x = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.x, ptr %i.p, align 8
  %i.y = load ptr, ptr %3, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.aa, ptr %4, align 8
  store i8 123, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i43
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8
  store <2 x ptr> %i.ah, ptr %i.ad, align 8
  br label %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #29
  unreachable

_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit: ; preds = %bb.i, %._crit_edge.i.i43
  invoke fastcc void @_ZN10ODDLParserL20logInvalidTokenErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St8functionIFvNS_11LogSeverityES7_EE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit
  %i.an = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i46 = icmp eq ptr %i.an, null
  br i1 %.not.i46, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.m, %bb.n
  %i.ar = load ptr, ptr %4, align 8               ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.aa
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.at = load i64, ptr %i.aa, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.o
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.o, align 8
end_hunk_0
