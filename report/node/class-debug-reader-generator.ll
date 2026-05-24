inline.NumInlined: 982
inline.NumDeleted: 360
begin_hunk_0_@_ZN2v88internal6torque21ImplementationVisitor25GenerateClassDebugReadersERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZN2v88internal6torque10TypeOracle10GetClassesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.11") align 8 %16)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205
  %i.dz = load ptr, ptr %16, align 8              ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ec = icmp eq ptr %i.dz, %i.eb
  br i1 %i.ec, label %._crit_edge381, label %.lr.ph380

._crit_edge381.loopexit:                          ; preds = %bb.ab
  %.pre = load ptr, ptr %16, align 8
  br label %._crit_edge381

._crit_edge381:                                   ; preds = %._crit_edge381.loopexit, %bb.t
  %i.ed = phi ptr [ %.pre, %._crit_edge381.loopexit ], [ %i.dz, %bb.t ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN2v88internal6torque9ClassTypeESaIS5_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge381
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #22
  br label %_ZNSt6vectorIPKN2v88internal6torque9ClassTypeESaIS5_EED2Ev.exit

_ZNSt6vectorIPKN2v88internal6torque9ClassTypeESaIS5_EED2Ev.exit: ; preds = %._crit_edge381, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.23, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207 unwind label %bb.bp ; 0 uses

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.w:                                             ; preds = %.noexc168
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.w
  %i.eq = load i64, ptr %i.eo, align 8
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.ew = load i64, ptr %i.eu, align 8
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208.1
  %i.ey = load ptr, ptr %11, align 8              ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.1
  %i.fb = load i64, ptr %i.ez, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #22
  br label %.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.1
  %.pn.pn.pn366 = phi { ptr, i32 } [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.1 ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208.2 ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bv

bb.x:                                             ; preds = %.noexc195
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %bb.x
  %i.fj = load i64, ptr %i.fh, align 8
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.fp = load i64, ptr %i.fn, align 8
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214.1
  %i.fr = load ptr, ptr %13, align 8              ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %.thread368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.1
  %i.fu = load i64, ptr %i.fs, align 8
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #22
  br label %.thread368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.2
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.thread368

.thread368:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.1
  %.pn66.pn.pn373 = phi { ptr, i32 } [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.1 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214.2 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.bu

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.2
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201, %bb.s
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.lr.ph380:                                        ; preds = %bb.t, %bb.ab
  %.sroa.0348.0378 = phi ptr [ %i.gb, %bb.ab ], [ %i.dz, %bb.t ] ; 2 uses
  %i.ga = load ptr, ptr %.sroa.0348.0378, align 8
  invoke fastcc void @_ZN2v88internal6torque12_GLOBAL__N_124GenerateClassDebugReaderERKNS1_9ClassTypeERSoS6_S6_PSt13unordered_setIPS4_St4hashIS8_ESt8equal_toIS8_ESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(328) %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %15)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.lr.ph380
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0348.0378, i64 8 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.eb
  br i1 %i.gc, label %._crit_edge381.loopexit, label %.lr.ph380

bb.ac:                                            ; preds = %.lr.ph380
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = load ptr, ptr %16, align 8              ; 3 uses
  %.not.i.i.i220 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i220, label %_ZNSt6vectorIPKN2v88internal6torque9ClassTypeESaIS5_EED2Ev.exit221, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gf = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gj) #22
  br label %_ZNSt6vectorIPKN2v88internal6torque9ClassTypeESaIS5_EED2Ev.exit221

_ZNSt6vectorIPKN2v88internal6torque9ClassTypeESaIS5_EED2Ev.exit221: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.br

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207: ; preds = %_ZNSt6vectorIPKN2v88internal6torque9ClassTypeESaIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.gk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.gk, ptr %17, align 8, !alias.scope !14
  %i.gl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 0, ptr %i.gl, align 8, !alias.scope !14
  store i8 0, ptr %i.gk, align 8, !alias.scope !14
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !14 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.gn, null
  br i1 %.not5.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %27 = load ptr, ptr %26, align 8, !noalias !14  ; 2 uses
  %28 = icmp ugt ptr %i.gn, %27
  %.08.i.i.i = select i1 %28, ptr %i.gn, ptr %27
  %i.go = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !14 ; 2 uses
  %i.gq = ptrtoint ptr %.08.i.i.i to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.gp, i64 noundef %i.gs)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gv = load ptr, ptr %17, align 8, !alias.scope !14 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.gk
  br i1 %i.gw, label %.body, label %.body.sink.split

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207
  %i.gx = getelementptr inbounds nuw i8, ptr %14, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.gx)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.af

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ag, %bb.ae
  %i.gy = load ptr, ptr %17, align 8
  %i.gz = load i64, ptr %i.gl, align 8
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.gy, i64 noundef %i.gz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit223 unwind label %bb.bq ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit223: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.hb = load ptr, ptr %17, align 8              ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gk
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit223
  %i.hd = load i64, ptr %i.gk, align 8
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.hf = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i.i ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ] ; 2 uses
  %i.hg = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #22
  %.not.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %i.hh = load ptr, ptr %15, align 8
  %i.hi = load i64, ptr %i.dv, align 8
  %i.hj = shl i64 %i.hi, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hh, i8 0, i64 %i.hj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false)
  %i.hk = load ptr, ptr %15, align 8              ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.du
  br i1 %i.hl, label %_ZNSt13unordered_setIPKN2v88internal6torque9ClassTypeESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.hm = load i64, ptr %i.dv, align 8
  %i.hn = shl i64 %i.hm, 3
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #22
  br label %_ZNSt13unordered_setIPKN2v88internal6torque9ClassTypeESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit

_ZNSt13unordered_setIPKN2v88internal6torque9ClassTypeESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.ho = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 4 uses
  store ptr %i.ho, ptr %14, align 8
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 3 uses
  %i.hq = getelementptr i8, ptr %i.ho, i64 -24    ; 3 uses
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds i8, ptr %14, i64 %i.hr
  store ptr %i.hp, ptr %i.hs, align 8
  %i.ht = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 3 uses
  store ptr %i.ht, ptr %i.dq, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt13unordered_setIPKN2v88internal6torque9ClassTypeESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit
  %i.hz = load i64, ptr %i.hx, align 8
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt13unordered_setIPKN2v88internal6torque9ClassTypeESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hu, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ib) #21
  %i.ic = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 4 uses
  store ptr %i.ic, ptr %14, align 8
  %i.id = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 3 uses
  %i.ie = getelementptr i8, ptr %i.ic, i64 -24    ; 3 uses
  %i.if = load i64, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds i8, ptr %14, i64 %i.if
  store ptr %i.id, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %14, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ii) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN2v88internal6torque14NamespaceScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN2v88internal6torque14NamespaceScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN2v88internal6torque17IncludeGuardScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.ij = load ptr, ptr %1, align 8, !noalias !17
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !17
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef %i.ij, i64 noundef %i.il, ptr noundef nonnull @.str.24, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.ai unwind label %bb.bx

bb.ai:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !17
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.im = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.in = load i64, ptr %i.im, align 8, !noalias !20 ; 5 uses
  %i.io = icmp sgt i64 %i.in, 9223372036854775788
  br i1 %i.io, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.noexc231 unwind label %bb.by

.noexc231:                                        ; preds = %bb.aj
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.ip = add i64 %i.in, 19                       ; 3 uses
  %i.iq = load ptr, ptr %20, align 8, !noalias !20 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 9 uses
  %i.is = icmp eq ptr %i.iq, %i.ir                ; 2 uses
  br i1 %i.is, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.it = icmp ult i64 %i.in, 16
  call void @llvm.assume(i1 %i.it)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.iu = load i64, ptr %i.ir, align 8, !noalias !20
  %i.iv = select i1 %i.is, i64 15, i64 %i.iu
  %.not.i.i.i.i229 = icmp ugt i64 %i.ip, %i.iv
  br i1 %.not.i.i.i.i229, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.in
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.iw, ptr noundef nonnull align 1 dereferenceable(19) %i.a, i64 19, i1 false), !noalias !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.in, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 19)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %bb.by

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.am, %bb.al
  store i64 %i.ip, ptr %i.im, align 8, !noalias !20
  %i.ix = load ptr, ptr %20, align 8, !noalias !20
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.ip
  store i8 0, ptr %i.iy, align 1, !noalias !20
  %i.iz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 15 uses
  store ptr %i.iz, ptr %19, align 8, !alias.scope !20
  %i.ja = load ptr, ptr %20, align 8, !noalias !20 ; 3 uses
  %i.jb = icmp eq ptr %i.ja, %i.ir
  br i1 %i.jb, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.jc = load i64, ptr %i.im, align 8, !noalias !20 ; 3 uses
  %i.jd = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jd)
  %i.je = add nuw nsw i64 %i.jc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iz, ptr noundef nonnull align 8 dereferenceable(1) %i.ir, i64 %i.je, i1 false)
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.ja, ptr %19, align 8, !alias.scope !20
  %i.jf = load i64, ptr %i.ir, align 8, !noalias !20
  store i64 %i.jf, ptr %i.iz, align 8, !alias.scope !20
  %.pre.i = load i64, ptr %i.im, align 8, !noalias !20
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %bb.an
  %i.jg = phi ptr [ %i.iz, %bb.an ], [ %i.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ] ; 2 uses
  %i.jh = phi i64 [ %i.jc, %bb.an ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ] ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  store i64 %i.jh, ptr %i.ji, align 8, !alias.scope !20
  store ptr %i.ir, ptr %20, align 8, !noalias !20
  store i64 0, ptr %i.im, align 8, !noalias !20
  store i8 0, ptr %i.ir, align 8, !noalias !20
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.jj = and i64 %i.jh, -2
  %i.jk = icmp eq i64 %i.jj, 9223372036854775806
  br i1 %i.jk, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.noexc236 unwind label %bb.bz

.noexc236:                                        ; preds = %bb.ap
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.ao
  %i.jl = add nsw i64 %i.jh, 2                    ; 3 uses
  %i.jm = icmp eq ptr %i.jg, %i.iz                ; 2 uses
  br i1 %i.jm, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.jn = icmp ult i64 %i.jh, 16
  call void @llvm.assume(i1 %i.jn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.jo = load i64, ptr %i.iz, align 8, !noalias !23
  %i.jp = select i1 %i.jm, i64 15, i64 %i.jo
  %.not.i.i.i233 = icmp ugt i64 %i.jl, %i.jp
  br i1 %.not.i.i.i233, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jh
  store i16 26670, ptr %i.jq, align 1, !noalias !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.jh, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.as, %bb.ar
  store i64 %i.jl, ptr %i.ji, align 8, !noalias !23
  %i.jr = load ptr, ptr %19, align 8, !noalias !23
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jl
  store i8 0, ptr %i.js, align 1, !noalias !23
  %i.jt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.jt, ptr %18, align 8, !alias.scope !23
  %i.ju = load ptr, ptr %19, align 8, !noalias !23 ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.iz
  br i1 %i.jv, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.jw = load i64, ptr %i.ji, align 8, !noalias !23 ; 3 uses
  %i.jx = icmp ult i64 %i.jw, 16
  call void @llvm.assume(i1 %i.jx)
  %i.jy = add nuw nsw i64 %i.jw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jt, ptr noundef nonnull align 8 dereferenceable(1) %i.iz, i64 %i.jy, i1 false)
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ju, ptr %18, align 8, !alias.scope !23
  %i.jz = load i64, ptr %i.iz, align 8, !noalias !23
  store i64 %i.jz, ptr %i.jt, align 8, !alias.scope !23
  %.pre.i235 = load i64, ptr %i.ji, align 8, !noalias !23
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %bb.at
  %i.ka = phi i64 [ %i.jw, %bb.at ], [ %.pre.i235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.ka, ptr %i.kb, align 8, !alias.scope !23
  store ptr %i.iz, ptr %19, align 8, !noalias !23
  store i64 0, ptr %i.ji, align 8, !noalias !23
  store i8 0, ptr %i.iz, align 8, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.kc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.kc, ptr %21, align 8, !alias.scope !32
  %i.kd = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.kd, align 8, !alias.scope !32
  store i8 0, ptr %i.kc, align 8, !alias.scope !32
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !32 ; 3 uses
  %.not5.i.i240 = icmp eq ptr %i.kf, null
  br i1 %.not5.i.i240, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %30 = load ptr, ptr %29, align 8, !noalias !32  ; 2 uses
  %31 = icmp ugt ptr %i.kf, %30
  %.08.i.i.i239 = select i1 %31, ptr %i.kf, ptr %30
  %i.kg = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !32 ; 2 uses
  %i.ki = ptrtoint ptr %.08.i.i.i239 to i64
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef 0, ptr noundef %i.kh, i64 noundef %i.kk)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit247 unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kn = load ptr, ptr %21, align 8, !alias.scope !32 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.kc
  br i1 %i.ko, label %.body245, label %.body245.sink.split

bb.ax:                                            ; preds = %bb.au
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.kp)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit247 unwind label %bb.aw

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit247: ; preds = %bb.ax, %bb.av
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 8, !range !33, !noundef !34
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %_ZN2v88internal6torque21ImplementationVisitor9WriteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit247
  invoke void @_ZN2v88internal6torque30ReplaceFileContentsIfDifferentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZN2v88internal6torque21ImplementationVisitor9WriteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit unwind label %bb.ca

_ZN2v88internal6torque21ImplementationVisitor9WriteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit247, %bb.ay
  %i.kt = load ptr, ptr %21, align 8              ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.kc
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %_ZN2v88internal6torque21ImplementationVisitor9WriteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit
  %i.kv = load i64, ptr %i.kc, align 8
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %_ZN2v88internal6torque21ImplementationVisitor9WriteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.kx = load ptr, ptr %18, align 8              ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.jt
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %i.kz = load i64, ptr %i.jt, align 8
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  %i.lb = load ptr, ptr %19, align 8              ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.iz
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %i.ld = load i64, ptr %i.iz, align 8
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  %i.lf = load ptr, ptr %20, align 8              ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.ir
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  %i.lh = load i64, ptr %i.ir, align 8
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  %i.lj = load ptr, ptr %1, align 8, !noalias !35
  %i.lk = load i64, ptr %i.ik, align 8, !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !35
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef %i.lj, i64 noundef %i.lk, ptr noundef nonnull @.str.24, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.az unwind label %bb.cb

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !35
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.ll = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 7 uses
  %i.lm = load i64, ptr %i.ll, align 8, !noalias !38 ; 5 uses
  %i.ln = icmp sgt i64 %i.lm, 9223372036854775788
  br i1 %i.ln, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i263

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.noexc271 unwind label %bb.cc

.noexc271:                                        ; preds = %bb.ba
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i263: ; preds = %bb.az
  %i.lo = add i64 %i.lm, 19                       ; 3 uses
  %i.lp = load ptr, ptr %24, align 8, !noalias !38 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 10 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq                ; 2 uses
  br i1 %i.lr, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i264

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i263
  %i.ls = icmp ult i64 %i.lm, 16
  call void @llvm.assume(i1 %i.ls)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i264: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i263
  %i.lt = load i64, ptr %i.lq, align 8, !noalias !38
  %i.lu = select i1 %i.lr, i64 15, i64 %i.lt
  %.not.i.i.i.i265 = icmp ugt i64 %i.lo, %i.lu
  br i1 %.not.i.i.i.i265, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i264
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.lv, ptr noundef nonnull align 1 dereferenceable(19) %i.a, i64 19, i1 false), !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i268

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i264
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %i.lm, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 19)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i268 unwind label %bb.cc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i268: ; preds = %bb.bd, %bb.bc
  store i64 %i.lo, ptr %i.ll, align 8, !noalias !38
  %i.lw = load ptr, ptr %24, align 8, !noalias !38
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lo
  store i8 0, ptr %i.lx, align 1, !noalias !38
  %i.ly = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 14 uses
  store ptr %i.ly, ptr %23, align 8, !alias.scope !38
  %i.lz = load ptr, ptr %24, align 8, !noalias !38 ; 5 uses
  %i.ma = icmp eq ptr %i.lz, %i.lq
  br i1 %i.ma, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274.thread, label %bb.be

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i268
  %i.mb = load i64, ptr %i.ll, align 8, !noalias !38 ; 5 uses
  %i.mc = icmp ult i64 %i.mb, 16
  call void @llvm.assume(i1 %i.mc)
  %i.md = add nuw nsw i64 %i.mb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ly, ptr noundef nonnull align 8 dereferenceable(1) %i.lq, i64 %i.md, i1 false)
  %i.me = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i64 %i.mb, ptr %i.me, align 8, !alias.scope !38
  store ptr %i.lq, ptr %24, align 8, !noalias !38
  store i64 0, ptr %i.ll, align 8, !noalias !38
  store i8 0, ptr %i.lq, align 8, !noalias !38
  %i.mf = add nuw nsw i64 %i.mb, 3
  br label %bb.bg

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i268
  store ptr %i.lz, ptr %23, align 8, !alias.scope !38
  %i.mg = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.mh = load <2 x i64>, ptr %i.ll, align 8, !noalias !38
  %.pre.i270 = load i64, ptr %i.ll, align 8, !noalias !38 ; 4 uses
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !alias.scope !38
  store ptr %i.lq, ptr %24, align 8, !noalias !38
  store i64 0, ptr %i.ll, align 8, !noalias !38
  store i8 0, ptr %i.lq, align 8, !noalias !38
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.mi = icmp sgt i64 %.pre.i270, 9223372036854775804
  br i1 %i.mi, label %bb.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.noexc282 unwind label %bb.cd

.noexc282:                                        ; preds = %bb.bf
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274: ; preds = %bb.be
  %i.mj = add nsw i64 %.pre.i270, 3               ; 2 uses
  %i.mk = icmp eq ptr %i.lz, %i.ly
  br i1 %i.mk, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i275

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274
  %i.ml = phi i64 [ %i.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274.thread ], [ %i.mj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274 ]
  %i.mm = phi ptr [ %i.ly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274.thread ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274 ]
  %i.mn = phi i64 [ %i.mb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274.thread ], [ %.pre.i270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274 ] ; 2 uses
  %i.mo = phi ptr [ %i.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274.thread ], [ %i.mg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274 ]
  %i.mp = icmp ult i64 %i.mn, 16
  call void @llvm.assume(i1 %i.mp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i275: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274
  %i.mq = phi i1 [ true, %bb.bg ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274 ]
  %i.mr = phi i64 [ %i.ml, %bb.bg ], [ %i.mj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274 ] ; 3 uses
  %i.ms = phi ptr [ %i.mm, %bb.bg ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274 ]
  %i.mt = phi i64 [ %i.mn, %bb.bg ], [ %.pre.i270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274 ] ; 2 uses
  %i.mu = phi ptr [ %i.mo, %bb.bg ], [ %i.mg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i274 ] ; 4 uses
  %i.mv = load i64, ptr %i.ly, align 8, !noalias !41
  %i.mw = select i1 %i.mq, i64 15, i64 %i.mv
  %.not.i.i.i276 = icmp ugt i64 %i.mr, %i.mw
  br i1 %.not.i.i.i276, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i275
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.mx, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, i64 3, i1 false), !noalias !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i279

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i275
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.mt, i64 noundef 0, ptr noundef nonnull @.str.25, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i279 unwind label %bb.cd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i279: ; preds = %bb.bi, %bb.bh
  store i64 %i.mr, ptr %i.mu, align 8, !noalias !41
  %i.my = load ptr, ptr %23, align 8, !noalias !41
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mr
  store i8 0, ptr %i.mz, align 1, !noalias !41
  %i.na = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.na, ptr %22, align 8, !alias.scope !41
  %i.nb = load ptr, ptr %23, align 8, !noalias !41 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.ly
  br i1 %i.nc, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i279
  %i.nd = load i64, ptr %i.mu, align 8, !noalias !41 ; 3 uses
  %i.ne = icmp ult i64 %i.nd, 16
  call void @llvm.assume(i1 %i.ne)
  %i.nf = add nuw nsw i64 %i.nd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.na, ptr noundef nonnull align 8 dereferenceable(1) %i.ly, i64 %i.nf, i1 false)
  br label %bb.bk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i279
  store ptr %i.nb, ptr %22, align 8, !alias.scope !41
  %i.ng = load i64, ptr %i.ly, align 8, !noalias !41
  store i64 %i.ng, ptr %i.na, align 8, !alias.scope !41
  %.pre.i281 = load i64, ptr %i.mu, align 8, !noalias !41
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %bb.bj
  %i.nh = phi i64 [ %i.nd, %bb.bj ], [ %.pre.i281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ]
  %i.ni = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.nh, ptr %i.ni, align 8, !alias.scope !41
  store ptr %i.ly, ptr %23, align 8, !noalias !41
  store i64 0, ptr %i.mu, align 8, !noalias !41
  store i8 0, ptr %i.ly, align 8, !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.nj = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  store ptr %i.nj, ptr %25, align 8, !alias.scope !50
  %i.nk = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.nk, align 8, !alias.scope !50
  store i8 0, ptr %i.nj, align 8, !alias.scope !50
  %i.nl = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.nm = load ptr, ptr %i.nl, align 8, !noalias !50 ; 3 uses
  %.not5.i.i287 = icmp eq ptr %i.nm, null
  br i1 %.not5.i.i287, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %32 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %33 = load ptr, ptr %32, align 8, !noalias !50  ; 2 uses
  %34 = icmp ugt ptr %i.nm, %33
  %.08.i.i.i284 = select i1 %34, ptr %i.nm, ptr %33
  %i.nn = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.no = load ptr, ptr %i.nn, align 8, !noalias !50 ; 2 uses
  %i.np = ptrtoint ptr %.08.i.i.i284 to i64
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = sub i64 %i.np, %i.nq
  %i.ns = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 0, i64 noundef 0, ptr noundef %i.no, i64 noundef %i.nr)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit294 unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nu = load ptr, ptr %25, align 8, !alias.scope !50 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.nj
  br i1 %i.nv, label %.body292, label %.body292.sink.split

bb.bn:                                            ; preds = %bb.bk
  %i.nw = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %i.nw)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit294 unwind label %bb.bm

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit294: ; preds = %bb.bn, %bb.bl
  %i.nx = load i8, ptr %i.kq, align 8, !range !33, !noundef !34
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %_ZN2v88internal6torque21ImplementationVisitor9WriteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit296, label %bb.bo

bb.bo:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit294
  invoke void @_ZN2v88internal6torque30ReplaceFileContentsIfDifferentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %_ZN2v88internal6torque21ImplementationVisitor9WriteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit296 unwind label %bb.ce

_ZN2v88internal6torque21ImplementationVisitor9WriteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit296: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit294, %bb.bo
  %i.nz = load ptr, ptr %25, align 8              ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.nj
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZN2v88internal6torque21ImplementationVisitor9WriteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit296
  %i.ob = load i64, ptr %i.nj, align 8
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZN2v88internal6torque21ImplementationVisitor9WriteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  %i.od = load ptr, ptr %22, align 8              ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.na
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  %i.of = load i64, ptr %i.na, align 8
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  %i.oh = load ptr, ptr %23, align 8              ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.ly
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  %i.oj = load i64, ptr %i.ly, align 8
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ok) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303
  %i.ol = load ptr, ptr %24, align 8              ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.lq
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305
  %i.on = load i64, ptr %i.lq, align 8
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  store ptr %i.ho, ptr %6, align 8
  %i.op = load i64, ptr %i.hq, align 8
  %i.oq = getelementptr inbounds i8, ptr %6, i64 %i.op
  store ptr %i.hp, ptr %i.oq, align 8
  store ptr %i.ht, ptr %i.bc, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.or, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ot = load ptr, ptr %i.os, align 8            ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.ow = load i64, ptr %i.ou, align 8
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ox) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit311

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i309
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.or, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.oy) #21
  store ptr %i.ic, ptr %6, align 8
  %i.oz = load i64, ptr %i.ie, align 8
  %i.pa = getelementptr inbounds i8, ptr %6, i64 %i.oz
  store ptr %i.id, ptr %i.pa, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.pb, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.pc) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  store ptr %i.ho, ptr %5, align 8
  %i.pd = load i64, ptr %i.hq, align 8
  %i.pe = getelementptr inbounds i8, ptr %5, i64 %i.pd
  store ptr %i.hp, ptr %i.pe, align 8
  store ptr %i.ht, ptr %i.c, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.pf, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ph = load ptr, ptr %i.pg, align 8            ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.pj = icmp eq ptr %i.ph, %i.pi
  br i1 %i.pj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i312: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit311
  %i.pk = load i64, ptr %i.pi, align 8
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pl) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit314

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit314: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit311, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i312
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.pf, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.pm) #21
  store ptr %i.ic, ptr %5, align 8
  %i.pn = load i64, ptr %i.ie, align 8
  %i.po = getelementptr inbounds i8, ptr %5, i64 %i.pn
  store ptr %i.id, ptr %i.po, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.pp, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.pq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef 20) #22
  ret void

bb.bp:                                            ; preds = %_ZNSt6vectorIPKN2v88internal6torque9ClassTypeESaIS5_EED2Ev.exit
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ps = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pt = load ptr, ptr %17, align 8              ; 2 uses
  %i.pu = icmp eq ptr %i.pt, %i.gk
  br i1 %i.pu, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.bq, %bb.af
  %.sink = phi ptr [ %i.gv, %bb.af ], [ %i.pt, %bb.bq ]
  %.pn70.ph = phi { ptr, i32 } [ %i.gu, %bb.af ], [ %i.ps, %bb.bq ]
  %i.pv = load i64, ptr %i.gk, align 8
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.pw) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.bq, %bb.af
  %.pn70 = phi { ptr, i32 } [ %i.gu, %bb.af ], [ %i.ps, %bb.bq ], [ %.pn70.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.br

bb.br:                                            ; preds = %bb.aa, %_ZNSt6vectorIPKN2v88internal6torque9ClassTypeESaIS5_EED2Ev.exit221, %.body, %bb.bp
  %.pn82.pn = phi { ptr, i32 } [ %i.pr, %bb.bp ], [ %.pn70, %.body ], [ %i.gd, %_ZNSt6vectorIPKN2v88internal6torque9ClassTypeESaIS5_EED2Ev.exit221 ], [ %i.fz, %bb.aa ]
  call void @_ZNSt13unordered_setIPKN2v88internal6torque9ClassTypeESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.z
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %bb.br ], [ %i.fy, %bb.z ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14) #21
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.y
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn, %bb.bs ], [ %i.fx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN2v88internal6torque14NamespaceScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #21
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.thread368
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn, %bb.bt ], [ %.pn66.pn.pn373, %.thread368 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN2v88internal6torque14NamespaceScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #21
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.thread
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn, %bb.bu ], [ %.pn.pn.pn366, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bw

bb.bw:                                            ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %bb.v, %bb.bv, %bb.k
  %.pn90.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.au, %bb.n ], [ %i.ek, %bb.v ], [ %.pn82.pn.pn.pn.pn.pn, %bb.bv ], [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ]
  call void @_ZN2v88internal6torque17IncludeGuardScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

end_hunk_0
begin_hunk_1_@_ZN2v88internal6torque12_GLOBAL__N_124GenerateClassDebugReaderERKNS1_9ClassTypeERSoS6_S6_PSt13unordered_setIPS4_St4hashIS8_ESt8equal_toIS8_ESaIS8_EE:bb.a
  br i1 %i.ajw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i
  %i.ajx = load i64, ptr %i.gi, align 8
  %i.ajy = add i64 %i.ajx, 1
  call void @_ZdlPvm(ptr noundef %i.ajv, i64 noundef %i.ajy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.ajz = load ptr, ptr %14, align 8             ; 2 uses
  %i.aka = icmp eq ptr %i.ajz, %i.fd
  br i1 %i.aka, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i347.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i346.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i346.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i
  %i.akb = load i64, ptr %i.fd, align 8
  %i.akc = add i64 %i.akb, 1
  call void @_ZdlPvm(ptr noundef %i.ajz, i64 noundef %i.akc) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i347.i

bb.fo:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit304.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.i, %bb.fj
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.i

bb.fp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306.i
  %i.ake = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354.i

bb.fq:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit308.i, %bb.fk
  %i.akf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310.i
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351.i

bb.fs:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit328.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.i, %_ZNSolsEm.exit320.i, %bb.fm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit316.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit312.i, %bb.fl
  %i.akh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aki = load ptr, ptr %30, align 8             ; 2 uses
  %i.akj = icmp eq ptr %i.aki, %i.go
  br i1 %i.akj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349.i: ; preds = %bb.fs
  %i.akk = load i64, ptr %i.go, align 8
  %i.akl = add i64 %i.akk, 1
  call void @_ZdlPvm(ptr noundef %i.aki, i64 noundef %i.akl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351.i: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349.i, %bb.fr
  %.pn46.i = phi { ptr, i32 } [ %i.akg, %bb.fr ], [ %i.akh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349.i ], [ %i.akh, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.ft

bb.ft:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351.i, %bb.fq
  %.pn46.pn.i = phi { ptr, i32 } [ %.pn46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351.i ], [ %i.akf, %bb.fq ] ; 2 uses
  %i.akm = load ptr, ptr %29, align 8             ; 2 uses
  %i.akn = icmp eq ptr %i.akm, %i.gp
  br i1 %i.akn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352.i: ; preds = %bb.ft
  %i.ako = load i64, ptr %i.gp, align 8
  %i.akp = add i64 %i.ako, 1
  call void @_ZdlPvm(ptr noundef %i.akm, i64 noundef %i.akp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354.i: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352.i, %bb.fp
  %.pn46.pn.pn.i = phi { ptr, i32 } [ %i.ake, %bb.fp ], [ %.pn46.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352.i ], [ %.pn46.pn.i, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i, %bb.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354.i
  %.sroa.0324.0 = phi ptr [ %.sroa.0324.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i ], [ %i.ack, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354.i ], [ %i.ack, %bb.fo ]
  %.sroa.16.0 = phi i64 [ %i.aii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i ], [ 25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354.i ], [ 25, %bb.fo ]
  %.pn54.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i ], [ %.pn46.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354.i ], [ %i.akd, %bb.fo ] ; 2 uses
  call void @_ZdlPvm(ptr noundef %.sroa.0324.0, i64 noundef %.sroa.16.0) #22
  %.pre = load ptr, ptr %21, align 8              ; 2 uses
  %i.akq = icmp eq ptr %.pre, %i.gj
  br i1 %i.akq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.i
  %i.akr = load i64, ptr %i.gj, align 8
  %i.aks = add i64 %i.akr, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.aks) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358.i
  %.pn54.pn.pn.pn.pn.pn.pn.pn.i1272 = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358.i ], [ %i.agz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.i.thread ], [ %.pn54.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %.body.i210

.body.i210:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282.i, %_ZN2v88internal6torque12_GLOBAL__N_122ValueTypeFieldIterator6ResultD2Ev.exit150.i, %.loopexit.split-lp.i, %.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i86.i, %bb.cp, %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i8.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i228
  %.pn64.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vt, %bb.co ], [ %.pn54.pn.pn.pn.pn.pn.pn.pn.i1272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.i ], [ %.pn.i219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282.i ], [ %i.xd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i86.i ], [ %i.uw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i8.i.i ], [ %.pn64.pn.pn.i, %_ZN2v88internal6torque12_GLOBAL__N_122ValueTypeFieldIterator6ResultD2Ev.exit150.i ], [ %i.vu, %bb.cp ], [ %i.ty, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i228 ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.akt = load ptr, ptr %15, align 8             ; 2 uses
  %i.aku = icmp eq ptr %i.akt, %i.gi
  br i1 %i.aku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.i: ; preds = %.body.i210
  %i.akv = load i64, ptr %i.gi, align 8
  %i.akw = add i64 %i.akv, 1
  call void @_ZdlPvm(ptr noundef %i.akt, i64 noundef %i.akw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i: ; preds = %.body.i210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.i, %bb.cn
  %.pn64.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vs, %bb.cn ], [ %.pn64.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.i ], [ %.pn64.pn.pn.pn.pn.pn.pn.i, %.body.i210 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.akx = load ptr, ptr %14, align 8             ; 2 uses
  %i.aky = icmp eq ptr %i.akx, %i.fd
  br i1 %i.aky, label %_ZN2v88internal6torque12_GLOBAL__N_114DebugFieldTypeD2Ev.exit366.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i364.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i364.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i
  %i.akz = load i64, ptr %i.fd, align 8
  %i.ala = add i64 %i.akz, 1
  call void @_ZdlPvm(ptr noundef %i.akx, i64 noundef %i.ala) #22
  br label %_ZN2v88internal6torque12_GLOBAL__N_114DebugFieldTypeD2Ev.exit366.i

_ZN2v88internal6torque12_GLOBAL__N_114DebugFieldTypeD2Ev.exit366.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i364.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %.body238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i347.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i346.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.alb = load ptr, ptr %48, align 8             ; 2 uses
  %i.alc = icmp eq ptr %i.alb, %i.fa
  br i1 %i.alc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i347.i
  %i.ald = load i64, ptr %i.fa, align 8
  %i.ale = add i64 %i.ald, 1
  call void @_ZdlPvm(ptr noundef %i.alb, i64 noundef %i.ale) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i347.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.alf = getelementptr inbounds nuw i8, ptr %.sroa.0320.01045, i64 128 ; 2 uses
  %i.alg = icmp eq ptr %i.alf, %i.dr
  br i1 %i.alg, label %._crit_edge, label %bb.v

.loopexit354:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i232
  %lpad.loopexit356 = landingpad { ptr, i32 }
          cleanup
  br label %.body238

.loopexit.split-lp355:                            ; preds = %.noexc.i.i.i.i234, %.noexc6.i.i.i.i233
  %lpad.loopexit.split-lp357 = landingpad { ptr, i32 }
          cleanup
  br label %.body238

.body238:                                         ; preds = %.loopexit354, %.loopexit.split-lp355, %_ZN2v88internal6torque12_GLOBAL__N_114DebugFieldTypeD2Ev.exit366.i
  %eh.lpad-body239 = phi { ptr, i32 } [ %.pn64.pn.pn.pn.pn.pn.pn.pn.i, %_ZN2v88internal6torque12_GLOBAL__N_114DebugFieldTypeD2Ev.exit366.i ], [ %lpad.loopexit356, %.loopexit354 ], [ %lpad.loopexit.split-lp357, %.loopexit.split-lp355 ] ; 2 uses
  %i.alh = load ptr, ptr %48, align 8             ; 2 uses
  %i.ali = icmp eq ptr %i.alh, %i.fa
  br i1 %i.ali, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %.body238
  %i.alj = load i64, ptr %i.fa, align 8
  %i.alk = add i64 %i.alj, 1
  call void @_ZdlPvm(ptr noundef %i.alh, i64 noundef %i.alk) #22
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173: ; preds = %._crit_edge
  %i.all = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.55, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 unwind label %bb.fy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173
  %i.alm = load ptr, ptr %45, align 8
  %i.aln = load i64, ptr %i.y, align 8
  %i.alo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.alm, i64 noundef %i.aln)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit248 unwind label %bb.fy

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit248: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246
  %i.alp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alo, ptr noundef nonnull @.str.56, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250 unwind label %bb.fy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit248
  %i.alq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.57, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252 unwind label %bb.fy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250
  %i.alr = load ptr, ptr %46, align 8
  %i.als = load i64, ptr %i.ax, align 8
  %i.alt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.alr, i64 noundef %i.als)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254 unwind label %bb.fy

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252
  %i.alu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alt, ptr noundef nonnull @.str.58, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256 unwind label %bb.fy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.alv = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 7 uses
  store ptr %i.alv, ptr %49, align 8, !alias.scope !96
  %i.alw = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  store i64 0, ptr %i.alw, align 8, !alias.scope !96
  store i8 0, ptr %i.alv, align 8, !alias.scope !96
  %i.alx = getelementptr inbounds nuw i8, ptr %47, i64 64
  %i.aly = load ptr, ptr %i.alx, align 8, !noalias !96 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.aly, null
  br i1 %.not5.i.i, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 48
  %51 = load ptr, ptr %50, align 8, !noalias !96  ; 2 uses
  %52 = icmp ugt ptr %i.aly, %51
  %.08.i.i.i = select i1 %52, ptr %i.aly, ptr %51
  %i.alz = getelementptr inbounds nuw i8, ptr %47, i64 56
  %i.ama = load ptr, ptr %i.alz, align 8, !noalias !96 ; 2 uses
  %i.amb = ptrtoint ptr %.08.i.i.i to i64
  %i.amc = ptrtoint ptr %i.ama to i64
  %i.amd = sub i64 %i.amb, %i.amc
  %i.ame = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %49, i64 noundef 0, i64 noundef 0, ptr noundef %i.ama, i64 noundef %i.amd)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.fv ; 0 uses

bb.fv:                                            ; preds = %bb.fw, %bb.fu
  %i.amf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amg = load ptr, ptr %49, align 8, !alias.scope !96 ; 2 uses
  %i.amh = icmp eq ptr %i.amg, %i.alv
  br i1 %i.amh, label %.body258, label %.body258.sink.split

bb.fw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256
  %i.ami = getelementptr inbounds nuw i8, ptr %47, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(32) %i.ami)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.fv

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.fw, %bb.fu
  %i.amj = load ptr, ptr %49, align 8
  %i.amk = load i64, ptr %i.alw, align 8
  %i.aml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.amj, i64 noundef %i.amk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit261 unwind label %bb.fz ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit261: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.amm = load ptr, ptr %49, align 8             ; 2 uses
  %i.amn = icmp eq ptr %i.amm, %i.alv
  br i1 %i.amn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit261
  %i.amo = load i64, ptr %i.alv, align 8
  %i.amp = add i64 %i.amo, 1
  call void @_ZdlPvm(ptr noundef %i.amm, i64 noundef %i.amp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  %i.amq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.59, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit266 unwind label %bb.fy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264
  %i.amr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.40, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268 unwind label %bb.fy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit266
  %i.ams = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ams, ptr %47, align 8
  %i.amt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.amu = getelementptr i8, ptr %i.ams, i64 -24
  %i.amv = load i64, ptr %i.amu, align 8
  %i.amw = getelementptr inbounds i8, ptr %47, i64 %i.amv
  store ptr %i.amt, ptr %i.amw, align 8
  %i.amx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.amy = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %i.amx, ptr %i.amy, align 8
  %i.amz = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.amz, align 8
  %i.ana = getelementptr inbounds nuw i8, ptr %47, i64 96
  %i.anb = load ptr, ptr %i.ana, align 8          ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %47, i64 112 ; 2 uses
  %i.and = icmp eq ptr %i.anb, %i.anc
  br i1 %i.and, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i269: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268
  %i.ane = load i64, ptr %i.anc, align 8
  %i.anf = add i64 %i.ane, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.anf) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i269
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.amz, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %47, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ang) #21
  %i.anh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.anh, ptr %47, align 8
  %i.ani = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.anj = getelementptr i8, ptr %i.anh, i64 -24
  %i.ank = load i64, ptr %i.anj, align 8
  %i.anl = getelementptr inbounds i8, ptr %47, i64 %i.ank
  store ptr %i.ani, ptr %i.anl, align 8
  %i.anm = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 0, ptr %i.anm, align 8
  %i.ann = getelementptr inbounds nuw i8, ptr %47, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ann) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  %i.ano = load ptr, ptr %46, align 8             ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.anq = icmp eq ptr %i.ano, %i.anp
  br i1 %i.anq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.anr = load i64, ptr %i.anp, align 8
  %i.ans = add i64 %i.anr, 1
  call void @_ZdlPvm(ptr noundef %i.ano, i64 noundef %i.ans) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.ant = load ptr, ptr %45, align 8             ; 2 uses
  %i.anu = icmp eq ptr %i.ant, %i.n
  br i1 %i.anu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273
  %i.anv = load i64, ptr %i.n, align 8
  %i.anw = add i64 %i.anv, 1
  call void @_ZdlPvm(ptr noundef %i.ant, i64 noundef %i.anw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %bb.fx

bb.fx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, %_ZNK2v88internal6torque9ClassType13GetSuperClassEv.exit.thread, %bb.a
  ret void

bb.fy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit248, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173, %._crit_edge
  %i.anx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fz:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.any = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anz = load ptr, ptr %49, align 8             ; 2 uses
  %i.aoa = icmp eq ptr %i.anz, %i.alv
  br i1 %i.aoa, label %.body258, label %.body258.sink.split

.body258.sink.split:                              ; preds = %bb.fz, %bb.fv
  %.sink = phi ptr [ %i.amg, %bb.fv ], [ %i.anz, %bb.fz ]
  %.pn.ph = phi { ptr, i32 } [ %i.amf, %bb.fv ], [ %i.any, %bb.fz ]
  %i.aob = load i64, ptr %i.alv, align 8
  %i.aoc = add i64 %i.aob, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.aoc) #22
  br label %.body258

.body258:                                         ; preds = %.body258.sink.split, %bb.fz, %bb.fv
  %.pn = phi { ptr, i32 } [ %i.amf, %bb.fv ], [ %i.any, %bb.fz ], [ %.pn.ph, %.body258.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %.body

.body:                                            ; preds = %.body238, %.loopexit, %.loopexit.split-lp, %_ZN2v88internal6torque12_GLOBAL__N_114DebugFieldTypeD2Ev.exit24.i, %_ZN2v88internal6torque12_GLOBAL__N_114DebugFieldTypeD2Ev.exit142.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.u, %.body258, %bb.fy
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn, %.body258 ], [ %i.anx, %bb.fy ], [ %i.hi, %bb.u ], [ %.pn24.pn.pn.pn.pn.i, %_ZN2v88internal6torque12_GLOBAL__N_114DebugFieldTypeD2Ev.exit142.i ], [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %.pn.i, %_ZN2v88internal6torque12_GLOBAL__N_114DebugFieldTypeD2Ev.exit24.i ], [ %eh.lpad-body239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %eh.lpad-body239, %.body238 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %47) #21
  br label %bb.ga

bb.ga:                                            ; preds = %.body, %bb.t
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn, %.body ], [ %i.hh, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.s
  %.pn67.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn, %bb.ga ], [ %i.hg, %bb.s ] ; 2 uses
  %i.aod = load ptr, ptr %46, align 8             ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.aof = icmp eq ptr %i.aod, %i.aoe
  br i1 %i.aof, label %.critedge75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.gb
  %i.aog = load i64, ptr %i.aoe, align 8
  %i.aoh = add i64 %i.aog, 1
  call void @_ZdlPvm(ptr noundef %i.aod, i64 noundef %i.aoh) #22
  br label %.critedge75

.critedge75:                                      ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %bb.r
  %.pn67.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.r ], [ %.pn67.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %.pn67.pn.pn.pn.pn, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.aoi = load ptr, ptr %45, align 8             ; 2 uses
  %i.aoj = icmp eq ptr %i.aoi, %i.n
  br i1 %i.aoj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %.critedge75
  %i.aok = load i64, ptr %i.n, align 8
  %i.aol = add i64 %i.aok, 1
  call void @_ZdlPvm(ptr noundef %i.aoi, i64 noundef %i.aol) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %.critedge75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  resume { ptr, i32 } %.pn67.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_setIPKN2v88internal6torque9ClassTypeESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #22
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !15

_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8
end_hunk_1
begin_hunk_2_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8
  %i.aa = load i64, ptr %i.u, align 8
  store i64 %i.aa, ptr %i.s, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8
  store ptr %i.u, ptr %i.r, align 8
  store i64 0, ptr %i.ab, align 8
  store i8 0, ptr %i.u, align 8
  br label %bb.o

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  br i1 %i.h, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  br i1 %i.l, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %.pre, align 1
  store i8 %i.ai, ptr %i.ah, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.e, ptr %i.a, align 8
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.e
  store i8 0, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8
  %i.am = load ptr, ptr %1, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ao = load i64, ptr %i.a, align 8             ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.am, ptr %0, align 8
  %i.ar = load i64, ptr %i.g, align 8
  store i64 %i.ar, ptr %i.al, align 8
  %.pre15 = load i64, ptr %i.a, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = phi i64 [ %i.ao, %bb.n ], [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8
  store ptr %i.g, ptr %1, align 8
  store i64 0, ptr %i.a, align 8
  store i8 0, ptr %i.g, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

declare void @_ZN2v88internal6torque6SizeOfB5cxx11EPKNS1_4TypeE(ptr dead_on_unwind writable sret(%"class.std::optional.290") align 8, ptr noundef) local_unnamed_addr #2

declare void @_ZNK2v88internal6torque4Type8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque14MessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZNK2v88internal6torque14MessageBuilder6ReportEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #22
  br label %_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !139

_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2v88internal6torque13TorqueMessageESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #22
  br label %_ZNSt6vectorIN2v88internal6torque13TorqueMessageESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal6torque13TorqueMessageESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exit.i, %bb.c
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN2v88internal6torque13TorqueMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN2v88internal6torque13TorqueMessageESaIS3_EED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #22
  br label %_ZN2v88internal6torque13TorqueMessageD2Ev.exit

_ZN2v88internal6torque13TorqueMessageD2Ev.exit:   ; preds = %_ZNSt6vectorIN2v88internal6torque13TorqueMessageESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque8ToStringIJRA24_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1, i64 noundef %i.b)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !alias.scope !146
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !alias.scope !146
  store i8 0, ptr %i.h, align 8, !alias.scope !146
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !noalias !146 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.k, null
  br i1 %.not5.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load ptr, ptr %4, align 8, !noalias !146   ; 2 uses
  %6 = icmp ugt ptr %i.k, %5
  %.08.i.i.i = select i1 %6, ptr %i.k, ptr %5
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !noalias !146 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !alias.scope !146 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.h, align 8, !alias.scope !146
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #22
  br label %.body

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %3, align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %3, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #21
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.al, ptr %3, align 8
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %3, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ar) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.as, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.r, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn
}

declare void @_ZN2v88internal6torque14MessageBuilderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13TorqueMessage4KindE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #2

declare void @_ZNK2v88internal6torque14MessageBuilder6ReportEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare void @_ZN2v88internal6torque30ReplaceFileContentsIfDifferentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !51

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #20 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #22
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8
  store i64 %.0, ptr %i.d, align 8
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.c, align 1
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8                ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1
  store i8 %i.s, ptr %i.q, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
