Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_lifetime_tests?download=true
inline.NumInlined: 5173
inline.NumDeleted: 769
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN50ProxyLifetimeTests_TestPolyAssignment_ToValue_Test8TestBodyEv:bb.a

bb.u:                                             ; preds = %bb.t
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.v
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !53
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.u
  %.pn40 = phi { ptr, i32 } [ %i.cb, %bb.u ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.cc, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aj

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i89, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.y, %bb.x
  %i.cl = phi ptr [ %i.ck, %bb.y ], [ @.str.172, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 316, ptr noundef %i.cl)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.cm = load ptr, ptr %11, align 8, !tbaa !81   ; 3 uses
  %.not.i.i90 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i90, label %_ZN7testing7MessageD2Ev.exit92, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.aa
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #23, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit92

_ZN7testing7MessageD2Ev.exit92:                   ; preds = %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !48 ; 4 uses
  %.not.i.i93 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i93, label %_ZN7testing15AssertionResultD2Ev.exit97, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit92
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !52 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94: ; preds = %bb.ab
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !53
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit97

_ZN7testing15AssertionResultD2Ev.exit97:          ; preds = %_ZN7testing7MessageD2Ev.exit92, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.critedge62

bb.ac:                                            ; preds = %bb.w
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit100

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn42 = phi { ptr, i32 } [ %i.cy, %bb.ae ], [ %i.cx, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.cz = load ptr, ptr %11, align 8, !tbaa !81   ; 3 uses
  %.not.i.i98 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i98, label %_ZN7testing7MessageD2Ev.exit100, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99: ; preds = %bb.af
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !35
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(128) %i.cz) #23, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit100

_ZN7testing7MessageD2Ev.exit100:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99, %bb.af, %bb.ac
  %.pn42.pn = phi { ptr, i32 } [ %i.cw, %bb.ac ], [ %.pn42, %bb.af ], [ %.pn42, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #23
  br label %bb.aj

.critedge60:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !48 ; 4 uses
  %.not.i.i101 = icmp eq ptr %i.de, null
  br i1 %.not.i.i101, label %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i107, label %bb.ag

bb.ag:                                            ; preds = %.critedge60
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !52 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i102: ; preds = %bb.ag
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !53
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i102
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 32) #24
  br label %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i107

_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i107: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103, %.critedge60
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.dk = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i123 unwind label %bb.ak ; 7 uses

_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i123: ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i107
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 2, ptr %i.dl, align 4, !tbaa !89
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 1, ptr %i.dm, align 4, !tbaa !90
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.dn = load i64, ptr %i.f, align 4, !alias.scope !295
  store i64 %i.dn, ptr %i.dk, align 4, !alias.scope !294
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 8) #24
  %i.do = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit153 unwind label %bb.al ; 10 uses

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit153: ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i123
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i32 3, ptr %i.dp, align 4, !tbaa !89
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  store i32 4, ptr %i.dq, align 4, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.do, ptr noundef nonnull align 4 dereferenceable(16) %i.dk, i64 16, i1 false), !alias.scope !296
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef 16) #24
  %.sroa.24.2 = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store i32 1, ptr %.sroa.24.2, align 4, !tbaa !89
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  store i32 5, ptr %i.dr, align 4, !tbaa !90
  %i.ds = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
          to label %.noexc168 unwind label %bb.am ; 20 uses

.noexc168:                                        ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit153
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  store i32 4, ptr %i.dt, align 4, !tbaa !89
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 36
  store i32 4, ptr %i.du, align 4, !tbaa !90
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %wide.load = load <2 x i64>, ptr %i.do, align 4, !alias.scope !298
  store <2 x i64> %wide.load, ptr %i.ds, align 4, !alias.scope !297
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %wide.load.1 = load <2 x i64>, ptr %i.dv, align 4, !alias.scope !300
  store <2 x i64> %wide.load.1, ptr %next.gep.1, align 4, !alias.scope !299
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef 32) #24
  %.sroa.24.4 = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store i32 3, ptr %.sroa.24.4, align 4, !tbaa !89
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 44
  store i32 5, ptr %i.dw, align 4, !tbaa !90
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 48 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 64 ; 7 uses
  store i32 2, ptr %i.dx, align 4, !tbaa !89
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 52
  store i32 5, ptr %i.dz, align 4, !tbaa !90
  %.0.lcssa.i.i.i.i.i196.pn464 = ptrtoaddr ptr %i.dx to i64
  %.sroa.24.6 = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !91 ; 3 uses
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !92  ; 3 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 4 uses
  %i.eg = ptrtoint ptr %.sroa.24.6 to i64
  %i.eh = ptrtoint ptr %i.ds to i64               ; 5 uses
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = icmp eq i64 %i.ef, %i.ei
  br i1 %i.ej, label %bb.ah, label %.loopexit363

bb.ah:                                            ; preds = %.noexc168
  %.not9.i.i.i.i.i = icmp eq ptr %i.ec, %i.eb
  br i1 %.not9.i.i.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit226, label %.lr.ph.i.i.i.i.i202

.lr.ph.i.i.i.i.i202:                              ; preds = %bb.ah, %bb.ai
  %.011.i.i.i.i.i = phi ptr [ %i.er, %bb.ai ], [ %i.ds, %bb.ah ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.eq, %bb.ai ], [ %i.ec, %bb.ah ] ; 2 uses
  %i.ek = load <2 x i32>, ptr %.0810.i.i.i.i.i, align 4
  %i.el = load <2 x i32>, ptr %.011.i.i.i.i.i, align 4
  %i.em = icmp eq <2 x i32> %i.ek, %i.el          ; 2 uses
  %i.en = extractelement <2 x i1> %i.em, i64 0
  %i.eo = extractelement <2 x i1> %i.em, i64 1
  %i.ep = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %i.ep, label %bb.ai, label %.loopexit363

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i202
  %i.eq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i203 = icmp eq ptr %i.eq, %i.eb
  br i1 %.not.i.i.i.i.i203, label %_ZN7testing15AssertionResultD2Ev.exit226, label %.lr.ph.i.i.i.i.i202, !llvm.loop !3

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %_ZN7testing7MessageD2Ev.exit100 ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bf

bb.ak:                                            ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i107
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.al:                                            ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i123
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  br label %bb.bf

bb.am:                                            ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit153
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  br label %bb.bf

.loopexit363:                                     ; preds = %.lr.ph.i.i.i.i.i202, %.noexc168
  store i8 0, ptr %13, align 8, !tbaa !78
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.ex, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.an unwind label %bb.at

bb.an:                                            ; preds = %.loopexit363
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ey = load ptr, ptr %16, align 8, !tbaa !52
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 326, ptr noundef %i.ey)
          to label %bb.ap unwind label %bb.av

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.aq unwind label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #23
  %i.ez = load ptr, ptr %16, align 8, !tbaa !52   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.aq
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !53
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.fe = load ptr, ptr %14, align 8, !tbaa !81   ; 3 uses
  %.not.i.i207 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i207, label %_ZN7testing7MessageD2Ev.exit209, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i208

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !35
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(128) %i.fe) #23, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit209

_ZN7testing7MessageD2Ev.exit209:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.fi = load ptr, ptr %i.ex, align 8, !tbaa !48 ; 4 uses
  %.not.i.i210 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i210, label %_ZN7testing15AssertionResultD2Ev.exit214, label %bb.ar

bb.ar:                                            ; preds = %_ZN7testing7MessageD2Ev.exit209
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !52 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i211: ; preds = %bb.ar
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !53
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i211
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit214

_ZN7testing15AssertionResultD2Ev.exit214:         ; preds = %_ZN7testing7MessageD2Ev.exit209, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.fo = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %.not.i.i215 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i215, label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit, label %bb.as

bb.as:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit214
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !95
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(24) %3) #23, !inline_history !4
  br label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit

_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit214, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit

bb.at:                                            ; preds = %.loopexit363
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit221

bb.au:                                            ; preds = %bb.an
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

bb.av:                                            ; preds = %bb.ao
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ap
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #23
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn46 = phi { ptr, i32 } [ %i.fu, %bb.aw ], [ %i.ft, %bb.av ] ; 2 uses
  %i.fv = load ptr, ptr %16, align 8, !tbaa !52   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.ax
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !53
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %bb.au
  %.pn46.pn = phi { ptr, i32 } [ %i.fs, %bb.au ], [ %.pn46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %.pn46, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.ga = load ptr, ptr %14, align 8, !tbaa !81   ; 3 uses
  %.not.i.i219 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i219, label %_ZN7testing7MessageD2Ev.exit221, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !35
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(128) %i.ga) #23, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit221

_ZN7testing7MessageD2Ev.exit221:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %bb.at
  %.pn46.pn.pn = phi { ptr, i32 } [ %i.fr, %bb.at ], [ %.pn46.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn46.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bf

_ZN7testing15AssertionResultD2Ev.exit226:         ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.ge = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %.not.i.i227 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i227, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit226
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !95
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(24) %3) #23, !inline_history !4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN7testing15AssertionResultD2Ev.exit226
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not.i229 = icmp eq ptr %.sroa.24.6, %i.dy
  br i1 %.not.i229, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 4, ptr %.sroa.24.6, align 4, !tbaa !89
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 5, ptr %i.gh, align 4, !tbaa !90
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit244

bb.bb:                                            ; preds = %bb.az
  %i.gj = icmp eq i64 %i.ef, 9223372036854775800
  br i1 %i.gj, label %bb.bc, label %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i230

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #26
          to label %.noexc242 unwind label %bb.bh

.noexc242:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i230: ; preds = %bb.bb
  %i.gk = ashr exact i64 %i.ef, 3                 ; 3 uses
  %.sroa.speculated.i.i.i231 = call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i231, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = call i64 @llvm.umin.i64(i64 %i.gl, i64 1152921504606846975)
  %i.go = select i1 %i.gm, i64 1152921504606846975, i64 %i.gn ; 3 uses
  %.not.i.i.i232 = icmp ne i64 %i.go, 0
  call void @llvm.assume(i1 %.not.i.i.i232)
  %i.gp = shl nuw nsw i64 %i.go, 3
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #25
          to label %.noexc243 unwind label %bb.bh ; 9 uses

.noexc243:                                        ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i230
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.ef ; 2 uses
  store i32 4, ptr %i.gr, align 4, !tbaa !89
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store i32 5, ptr %i.gs, align 4, !tbaa !90
  %.not10.i.i.i.i.i233 = icmp eq ptr %i.ds, %i.dy
  br i1 %.not10.i.i.i.i.i233, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i241, label %.lr.ph.i.i.i.i.i234.preheader

.lr.ph.i.i.i.i.i234.preheader:                    ; preds = %.noexc243
  %i.gt = ptrtoaddr ptr %i.gq to i64
  %i.gu = sub i64 %.0.lcssa.i.i.i.i.i196.pn464, %i.eh ; 2 uses
  %i.gv = lshr i64 %i.gu, 3
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check466 = icmp ult i64 %i.gu, 72
  %i.gx = sub i64 %i.eh, %i.gt
  %diff.check = icmp ugt i64 %i.gx, -32
  %or.cond = or i1 %min.iters.check466, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i234.preheader480, label %vector.ph467

vector.ph467:                                     ; preds = %.lr.ph.i.i.i.i.i234.preheader
  %n.vec468 = and i64 %i.gw, 4611686018427387900  ; 3 uses
  %i.gy = shl i64 %n.vec468, 3                    ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gq, i64 %i.gy  ; 2 uses
  %i.ha = getelementptr i8, ptr %i.ds, i64 %i.gy
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph467
  %index470 = phi i64 [ 0, %vector.ph467 ], [ %index.next475, %vector.body469 ] ; 2 uses
  %i.hb = shl i64 %index470, 3                    ; 2 uses
  %next.gep471 = getelementptr i8, ptr %i.gq, i64 %i.hb ; 2 uses
  %next.gep472 = getelementptr i8, ptr %i.ds, i64 %i.hb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.hc = getelementptr i8, ptr %next.gep472, i64 16
  %wide.load473 = load <2 x i64>, ptr %next.gep472, align 4, !alias.scope !302
  %wide.load474 = load <2 x i64>, ptr %i.hc, align 4, !alias.scope !302
  %i.hd = getelementptr i8, ptr %next.gep471, i64 16
  store <2 x i64> %wide.load473, ptr %next.gep471, align 4, !alias.scope !301
  store <2 x i64> %wide.load474, ptr %i.hd, align 4, !alias.scope !301
  %index.next475 = add nuw i64 %index470, 4       ; 2 uses
  %i.he = icmp eq i64 %index.next475, %n.vec468
  br i1 %i.he, label %middle.block476, label %vector.body469, !llvm.loop !290

middle.block476:                                  ; preds = %vector.body469
  %cmp.n477 = icmp eq i64 %i.gw, %n.vec468
  br i1 %cmp.n477, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i241, label %.lr.ph.i.i.i.i.i234.preheader480

.lr.ph.i.i.i.i.i234.preheader480:                 ; preds = %.lr.ph.i.i.i.i.i234.preheader, %middle.block476
  %.012.i.i.i.i.i235.ph = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i234.preheader ], [ %i.gz, %middle.block476 ]
  %.0911.i.i.i.i.i236.ph = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i234.preheader ], [ %i.ha, %middle.block476 ]
  br label %.lr.ph.i.i.i.i.i234

.lr.ph.i.i.i.i.i234:                              ; preds = %.lr.ph.i.i.i.i.i234.preheader480, %.lr.ph.i.i.i.i.i234
  %.012.i.i.i.i.i235 = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i234 ], [ %.012.i.i.i.i.i235.ph, %.lr.ph.i.i.i.i.i234.preheader480 ] ; 2 uses
  %.0911.i.i.i.i.i236 = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i234 ], [ %.0911.i.i.i.i.i236.ph, %.lr.ph.i.i.i.i.i234.preheader480 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.hf = load i64, ptr %.0911.i.i.i.i.i236, align 4, !alias.scope !302
  store i64 %i.hf, ptr %.012.i.i.i.i.i235, align 4, !alias.scope !301
  %i.hg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i236, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i235, i64 8 ; 2 uses
  %.not.i.i.i.i.i237 = icmp eq ptr %.0911.i.i.i.i.i236, %i.dx
  br i1 %.not.i.i.i.i.i237, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i241, label %.lr.ph.i.i.i.i.i234, !llvm.loop !291

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i241: ; preds = %.lr.ph.i.i.i.i.i234, %middle.block476, %.noexc243
  %.0.lcssa.i.i.i.i.i239 = phi ptr [ %i.gq, %.noexc243 ], [ %i.gz, %middle.block476 ], [ %i.hh, %.lr.ph.i.i.i.i.i234 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i239, i64 8
  %i.hj = ptrtoint ptr %i.dy to i64
  %i.hk = sub i64 %i.hj, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.hk) #24
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.go
  %.pre = ptrtoint ptr %i.gq to i64
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit244

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit244: ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i241, %bb.ba
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i241 ], [ %i.eh, %bb.ba ]
  %.sroa.24.7 = phi ptr [ %i.hi, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i241 ], [ %i.gi, %bb.ba ]
  %.sroa.50.11 = phi ptr [ %i.hl, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i241 ], [ %i.dy, %bb.ba ] ; 2 uses
  %.sroa.0.11 = phi ptr [ %i.gq, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i241 ], [ %i.ds, %bb.ba ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.hm = load ptr, ptr %i.ea, align 8, !tbaa !91 ; 3 uses
  %i.hn = load ptr, ptr %i.b, align 8, !tbaa !92  ; 3 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ptrtoint ptr %.sroa.24.7 to i64
  %i.hs = sub i64 %i.hr, %.pre-phi
  %i.ht = icmp eq i64 %i.hq, %i.hs
  br i1 %i.ht, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit244
  %.not9.i.i.i.i.i245 = icmp eq ptr %i.hn, %i.hm
  br i1 %.not9.i.i.i.i.i245, label %_ZN7testing15AssertionResultD2Ev.exit269, label %.lr.ph.i.i.i.i.i246

.lr.ph.i.i.i.i.i246:                              ; preds = %bb.bd, %bb.be
  %.011.i.i.i.i.i247 = phi ptr [ %i.ib, %bb.be ], [ %.sroa.0.11, %bb.bd ] ; 2 uses
  %.0810.i.i.i.i.i248 = phi ptr [ %i.ia, %bb.be ], [ %i.hn, %bb.bd ] ; 2 uses
  %i.hu = load <2 x i32>, ptr %.0810.i.i.i.i.i248, align 4
  %i.hv = load <2 x i32>, ptr %.011.i.i.i.i.i247, align 4
  %i.hw = icmp eq <2 x i32> %i.hu, %i.hv          ; 2 uses
  %i.hx = extractelement <2 x i1> %i.hw, i64 0
  %i.hy = extractelement <2 x i1> %i.hw, i64 1
  %i.hz = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %i.hz, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i246
  %i.ia = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i248, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i247, i64 8
  %.not.i.i.i.i.i249 = icmp eq ptr %i.ia, %i.hm
  br i1 %.not.i.i.i.i.i249, label %_ZN7testing15AssertionResultD2Ev.exit269, label %.lr.ph.i.i.i.i.i246, !llvm.loop !3

bb.bf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit221, %bb.am, %bb.al, %bb.ak, %bb.aj, %_ZN7testing7MessageD2Ev.exit74, %bb.h, %bb.e
  %.sroa.50.0 = phi ptr [ null, %bb.e ], [ %i.h, %bb.ak ], [ %i.eu, %bb.al ], [ %i.h, %bb.h ], [ %i.ew, %bb.am ], [ %i.h, %_ZN7testing7MessageD2Ev.exit74 ], [ %i.h, %bb.aj ], [ %i.dy, %_ZN7testing7MessageD2Ev.exit221 ]
  %.sroa.0.0 = phi ptr [ null, %bb.e ], [ %i.f, %bb.ak ], [ %i.dk, %bb.al ], [ %i.f, %bb.h ], [ %i.do, %bb.am ], [ %i.f, %_ZN7testing7MessageD2Ev.exit74 ], [ %i.f, %bb.aj ], [ %i.ds, %_ZN7testing7MessageD2Ev.exit221 ] ; 2 uses
  %.pn46.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.es, %bb.ak ], [ %i.et, %bb.al ], [ %.pn, %bb.h ], [ %i.ev, %bb.am ], [ %.pn36.pn.pn, %_ZN7testing7MessageD2Ev.exit74 ], [ %.pn42.pn.pn, %bb.aj ], [ %.pn46.pn.pn, %_ZN7testing7MessageD2Ev.exit221 ] ; 2 uses
  %i.ic = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %.not.i.i251 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i251, label %bb.bv, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !95
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(24) %3) #23, !inline_history !4
  br label %bb.bv

bb.bh:                                            ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i230, %bb.bc
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.thread434

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i246, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit244
  store i8 0, ptr %17, align 8, !tbaa !78
  %i.ig = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr null, ptr %i.ig, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.ih = load ptr, ptr %20, align 8, !tbaa !52
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 329, ptr noundef %i.ih)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #23
  %i.ii = load ptr, ptr %20, align 8, !tbaa !52   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %bb.bl
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !53
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.in = load ptr, ptr %18, align 8, !tbaa !81   ; 3 uses
  %.not.i.i256 = icmp eq ptr %i.in, null
  br i1 %.not.i.i256, label %bb.br, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !35
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(128) %i.in) #23, !inline_history !1
  br label %bb.br

bb.bm:                                            ; preds = %.loopexit
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit264

bb.bn:                                            ; preds = %bb.bi
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

bb.bo:                                            ; preds = %bb.bj
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bk
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #23
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn53 = phi { ptr, i32 } [ %i.iu, %bb.bp ], [ %i.it, %bb.bo ] ; 2 uses
  %i.iv = load ptr, ptr %20, align 8, !tbaa !52   ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %bb.bq
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !53
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259, %bb.bn
  %.pn53.pn = phi { ptr, i32 } [ %i.is, %bb.bn ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259 ], [ %.pn53, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.ja = load ptr, ptr %18, align 8, !tbaa !81   ; 3 uses
  %.not.i.i262 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i262, label %_ZN7testing7MessageD2Ev.exit264, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !35
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(128) %i.ja) #23, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit264

_ZN7testing7MessageD2Ev.exit264:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, %bb.bm
  %.pn53.pn.pn = phi { ptr, i32 } [ %i.ir, %bb.bm ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261 ], [ %.pn53.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.thread434

bb.br:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %.pr = load ptr, ptr %i.ig, align 8, !tbaa !48  ; 4 uses
  %.not.i.i265 = icmp eq ptr %.pr, null
  br i1 %.not.i.i265, label %_ZN7testing15AssertionResultD2Ev.exit269, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.je = load ptr, ptr %.pr, align 8, !tbaa !52  ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i266: ; preds = %bb.bs
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !53
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i267

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i267: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i266
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit269

_ZN7testing15AssertionResultD2Ev.exit269:         ; preds = %bb.be, %bb.bd, %bb.br, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit

.critedge62:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit97, %_ZN7testing15AssertionResultD2Ev.exit
  %i.jj = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %.not.i.i270 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i270, label %.thread357, label %bb.bt

bb.bt:                                            ; preds = %.critedge62
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !95
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(24) %3) #23, !inline_history !4
  br label %.thread357

.thread357:                                       ; preds = %bb.bt, %.critedge62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit: ; preds = %.thread357, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit, %_ZN7testing15AssertionResultD2Ev.exit269
  %.sroa.0.2362 = phi ptr [ %i.f, %.thread357 ], [ %.sroa.0.11, %_ZN7testing15AssertionResultD2Ev.exit269 ], [ %i.ds, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit ] ; 2 uses
  %.sroa.50.2361 = phi ptr [ %i.h, %.thread357 ], [ %.sroa.50.11, %_ZN7testing15AssertionResultD2Ev.exit269 ], [ %i.dy, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit ]
  %i.jm = ptrtoint ptr %.sroa.50.2361 to i64
  %i.jn = ptrtoint ptr %.sroa.0.2362 to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2362, i64 noundef %i.jo) #24
  %i.jp = load ptr, ptr %i.b, align 8, !tbaa !92  ; 3 uses
  %.not.i.i.i.i273 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i273, label %_ZN5utils15LifetimeTrackerD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !96
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #24
  br label %_ZN5utils15LifetimeTrackerD2Ev.exit

_ZN5utils15LifetimeTrackerD2Ev.exit:              ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.bv:                                            ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not.i.i.i274 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i274, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit275, label %.thread434

.thread434:                                       ; preds = %_ZN7testing7MessageD2Ev.exit264, %bb.bh, %bb.bv
  %.pn53.pn.pn.pn.pn441 = phi { ptr, i32 } [ %.pn46.pn.pn.pn.pn, %bb.bv ], [ %.pn53.pn.pn, %_ZN7testing7MessageD2Ev.exit264 ], [ %i.if, %bb.bh ]
  %.sroa.0.3440 = phi ptr [ %.sroa.0.0, %bb.bv ], [ %.sroa.0.11, %_ZN7testing7MessageD2Ev.exit264 ], [ %i.ds, %bb.bh ] ; 2 uses
  %.sroa.50.3439 = phi ptr [ %.sroa.50.0, %bb.bv ], [ %.sroa.50.11, %_ZN7testing7MessageD2Ev.exit264 ], [ %i.dy, %bb.bh ]
  %i.jv = ptrtoint ptr %.sroa.50.3439 to i64
  %i.jw = ptrtoint ptr %.sroa.0.3440 to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3440, i64 noundef %i.jx) #24
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit275

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit275: ; preds = %.thread443, %bb.bv, %.thread434
  %.pn53.pn.pn.pn.pn442 = phi { ptr, i32 } [ %.pn46.pn.pn.pn.pn, %bb.bv ], [ %.pn53.pn.pn.pn.pn441, %.thread434 ], [ %i.x, %.thread443 ]
  %i.jy = load ptr, ptr %i.b, align 8, !tbaa !92  ; 3 uses
  %.not.i.i.i.i276 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i276, label %_ZN5utils15LifetimeTrackerD2Ev.exit277, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit275
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !96
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jy to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kd) #24
  br label %_ZN5utils15LifetimeTrackerD2Ev.exit277

_ZN5utils15LifetimeTrackerD2Ev.exit277:           ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit275, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn53.pn.pn.pn.pn442
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN60ProxyLifetimeTests_TestPolyAssignment_ToValue_Exception_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pro::v4::proxy", align 8    ; 6 uses
  %2 = alloca %"class.utils::LifetimeTracker", align 8 ; 13 uses
  %3 = alloca %"class.pro::v4::proxy", align 8    ; 23 uses
  %4 = alloca %"class.utils::LifetimeTracker::Session", align 8 ; 11 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 0, ptr %2, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i8 0, ptr %i.b, align 4, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = invoke noundef i32 @_ZN5utils15LifetimeTracker10AllocateIdENS_21LifetimeOperationTypeE(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 1)
          to label %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i unwind label %.thread330

_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.a
  store i32 %i.e, ptr %i.d, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %2, ptr %i.f, align 8, !tbaa !66
  store i64 ptrtoint (ptr @_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN27proxy_lifetime_tests_detail10TestFacadeEEENS1_13copy_dispatchEKFvRS8_EEENS4_IS8_NS1_17relocate_dispatchEFvSA_OEEENS4_IS8_NS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EEN5utils4spec12FreeToStringEFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEENS4_IS8_NS0_28explicit_conversion_dispatchEKFNSL_15LifetimeTracker7SessionEvREEENS4_IS8_SW_FSY_vOEEEEEEE7storageISY_EE to i64), ptr %3, align 8, !tbaa !68
  %i.g = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %bb.b unwind label %bb.c       ; 7 uses

bb.b:                                             ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  store i32 1, ptr %i.g, align 4, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.h, align 4, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.j = invoke noundef i32 @_ZN5utils15LifetimeTracker10AllocateIdENS_21LifetimeOperationTypeE(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 1)
          to label %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i102 unwind label %bb.d

_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i102: ; preds = %bb.b
  store i32 %i.j, ptr %4, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %2, ptr %i.k, align 8, !tbaa !66
  %i.l = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %.noexc115 unwind label %bb.e  ; 19 uses

.noexc115:                                        ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i102
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 2, ptr %i.m, align 4, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !90
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.o = load i64, ptr %i.g, align 4, !alias.scope !320
  store i64 %i.o, ptr %i.l, align 4, !alias.scope !319
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 10 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 8) #24
  store i8 1, ptr %i.b, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.s = invoke noundef i32 @_ZN5utils15LifetimeTracker10AllocateIdENS_21LifetimeOperationTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %.noexc117 unwind label %bb.f

.noexc117:                                        ; preds = %.noexc115
  store i32 %i.s, ptr %i.q, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !66   ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !66
  store i64 ptrtoint (ptr @_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN27proxy_lifetime_tests_detail10TestFacadeEEENS1_13copy_dispatchEKFvRS8_EEENS4_IS8_NS1_17relocate_dispatchEFvSA_OEEENS4_IS8_NS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EEN5utils4spec12FreeToStringEFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEENS4_IS8_NS0_28explicit_conversion_dispatchEKFNSL_15LifetimeTracker7SessionEvREEENS4_IS8_SW_FSY_vOEEEEEEE7storageISY_EE to i64), ptr %1, align 8, !tbaa !68
  %i.v = load ptr, ptr %3, align 8, !tbaa !70     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit.i.thread.i, label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit.i.i

_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit.i.i: ; preds = %.noexc117
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(24) %3) #23, !inline_history !9
  br label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit.i.thread.i

_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit.i.thread.i: ; preds = %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit.i.i, %.noexc117
  store ptr null, ptr %3, align 8, !tbaa !70
  %i.y = invoke noundef i32 @_ZN5utils15LifetimeTracker10AllocateIdENS_21LifetimeOperationTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 4)
          to label %bb.w unwind label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit5.i, !inline_history !7

_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit5.i: ; preds = %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit.i.thread.i
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5utils19ConstructionFailureE
  call void @_ZN5utils15LifetimeTracker7SessionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.q) #23, !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.body

.thread330:                                       ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit275

bb.c:                                             ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.d:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.e:                                             ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i102
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.f:                                             ; preds = %.noexc115
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5utils19ConstructionFailureE
  br label %.body

.body:                                            ; preds = %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit5.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.z, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit5.i ] ; 3 uses
  %i.af = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.ag = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5utils19ConstructionFailureE) #23
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.bx

bb.g:                                             ; preds = %.body
  %i.ai = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.aj = call ptr @__cxa_begin_catch(ptr %i.ai) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 3, ptr %i.a, align 4, !tbaa !100
  invoke void @_ZN7testing8internal8EqHelper7CompareIN5utils21LifetimeOperationTypeES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.al = load i8, ptr %5, align 8, !tbaa !78, !range !85, !noundef !86
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  br i1 %i.am, label %bb.s, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.o

end_hunk_0
begin_hunk_1_@_ZN44ProxyLifetimeTests_TestSwap_Value_Value_Test8TestBodyEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA10_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.ge = load i8, ptr %17, align 8, !tbaa !78, !range !85, !noundef !86
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %.critedge88, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

bb.bc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i179, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i182
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = load ptr, ptr %18, align 8, !tbaa !52   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.bc
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !53
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189, %bb.bb
  %.pn62 = phi { ptr, i32 } [ %i.gg, %bb.bb ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %i.gh, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.bt

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.gn = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i192, label %_ZNK7testing15AssertionResult15failure_messageEv.exit193, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit193

_ZNK7testing15AssertionResult15failure_messageEv.exit193: ; preds = %bb.bf, %bb.be
  %i.gq = phi ptr [ %i.gp, %bb.bf ], [ @.str.172, %bb.be ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1016, ptr noundef %i.gq)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit193
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.gr = load ptr, ptr %19, align 8, !tbaa !81   ; 3 uses
  %.not.i.i194 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i194, label %_ZN7testing7MessageD2Ev.exit196, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195: ; preds = %bb.bh
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !35
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(128) %i.gr) #23, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit196

_ZN7testing7MessageD2Ev.exit196:                  ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.gv = load ptr, ptr %i.gn, align 8, !tbaa !48 ; 4 uses
  %.not.i.i197 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i197, label %_ZN7testing15AssertionResultD2Ev.exit201, label %bb.bi

bb.bi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit196
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !52 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198: ; preds = %bb.bi
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !53
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit201

_ZN7testing15AssertionResultD2Ev.exit201:         ; preds = %_ZN7testing7MessageD2Ev.exit196, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.critedge90

bb.bj:                                            ; preds = %bb.bd
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit204

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit193
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #23
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn64 = phi { ptr, i32 } [ %i.hd, %bb.bl ], [ %i.hc, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.he = load ptr, ptr %19, align 8, !tbaa !81   ; 3 uses
  %.not.i.i202 = icmp eq ptr %i.he, null
  br i1 %.not.i.i202, label %_ZN7testing7MessageD2Ev.exit204, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203: ; preds = %bb.bm
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !35
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(128) %i.he) #23, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit204

_ZN7testing7MessageD2Ev.exit204:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203, %bb.bm, %bb.bj
  %.pn64.pn = phi { ptr, i32 } [ %i.hb, %bb.bj ], [ %.pn64, %bb.bm ], [ %.pn64, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #23
  br label %bb.bt

.critedge88:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !48 ; 4 uses
  %.not.i.i205 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i205, label %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211, label %bb.bn

bb.bn:                                            ; preds = %.critedge88
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !52 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206: ; preds = %bb.bn
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !53
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ho) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef 32) #24
  br label %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211

_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207, %.critedge88
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.hp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit241 unwind label %bb.bu ; 10 uses

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit241: ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store i32 3, ptr %i.hq, align 4, !tbaa !89
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 20
  store i32 4, ptr %i.hr, align 4, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hp, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !alias.scope !763
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 16) #24
  %.sroa.28.2 = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  store i32 1, ptr %.sroa.28.2, align 4, !tbaa !89
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 28
  store i32 5, ptr %i.hs, align 4, !tbaa !90
  %i.ht = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
          to label %.lr.ph.i.i.i.i.i247.preheader unwind label %bb.bv ; 17 uses

.lr.ph.i.i.i.i.i247.preheader:                    ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit241
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  store i32 4, ptr %i.hu, align 4, !tbaa !89
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 36
  store i32 4, ptr %i.hv, align 4, !tbaa !90
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %wide.load = load <2 x i64>, ptr %i.hp, align 4, !alias.scope !765
  store <2 x i64> %wide.load, ptr %i.ht, align 4, !alias.scope !764
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %wide.load.1 = load <2 x i64>, ptr %i.hw, align 4, !alias.scope !767
  store <2 x i64> %wide.load.1, ptr %next.gep.1, align 4, !alias.scope !766
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef 32) #24
  %.sroa.28.4 = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  store i32 2, ptr %.sroa.28.4, align 4, !tbaa !89
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 44
  store i32 5, ptr %i.hx, align 4, !tbaa !90
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 64 ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 48 ; 6 uses
  store i32 5, ptr %i.hz, align 4, !tbaa !89
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 52
  store i32 4, ptr %i.ia, align 4, !tbaa !90
  %.0.lcssa.i.i.i.i.i284.pn638 = ptrtoaddr ptr %i.hz to i64
  %.sroa.28.6 = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %.not.i290 = icmp eq ptr %.sroa.28.6, %i.hy
  br i1 %.not.i290, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i.i247.preheader
  store i32 3, ptr %.sroa.28.6, align 4, !tbaa !89
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store i32 5, ptr %i.ib, align 4, !tbaa !90
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit305

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i247.preheader
  %i.id = ptrtoint ptr %i.hy to i64
  %i.ie = ptrtoint ptr %i.ht to i64               ; 3 uses
  %i.if = sub i64 %i.id, %i.ie                    ; 4 uses
  %i.ig = icmp eq i64 %i.if, 9223372036854775800
  br i1 %i.ig, label %bb.bq, label %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i291

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #26
          to label %.noexc303 unwind label %bb.bw

.noexc303:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i291: ; preds = %bb.bp
  %i.ih = ashr exact i64 %i.if, 3                 ; 3 uses
  %.sroa.speculated.i.i.i292 = call i64 @llvm.umax.i64(i64 %i.ih, i64 1)
  %i.ii = add nsw i64 %.sroa.speculated.i.i.i292, %i.ih ; 2 uses
  %i.ij = icmp ult i64 %i.ii, %i.ih
  %i.ik = call i64 @llvm.umin.i64(i64 %i.ii, i64 1152921504606846975)
  %i.il = select i1 %i.ij, i64 1152921504606846975, i64 %i.ik ; 3 uses
  %.not.i.i.i293 = icmp ne i64 %i.il, 0
  call void @llvm.assume(i1 %.not.i.i.i293)
  %i.im = shl nuw nsw i64 %i.il, 3
  %i.in = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.im) #25
          to label %.noexc304 unwind label %bb.bw ; 8 uses

.noexc304:                                        ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i291
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.if ; 2 uses
  store i32 3, ptr %i.io, align 4, !tbaa !89
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store i32 5, ptr %i.ip, align 4, !tbaa !90
  %.not10.i.i.i.i.i294 = icmp eq ptr %i.ht, %i.hy
  br i1 %.not10.i.i.i.i.i294, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i302, label %.lr.ph.i.i.i.i.i295.preheader

.lr.ph.i.i.i.i.i295.preheader:                    ; preds = %.noexc304
  %i.iq = ptrtoaddr ptr %i.in to i64
  %i.ir = sub i64 %.0.lcssa.i.i.i.i.i284.pn638, %i.ie ; 2 uses
  %i.is = lshr i64 %i.ir, 3
  %i.it = add nuw nsw i64 %i.is, 1                ; 2 uses
  %min.iters.check640 = icmp ult i64 %i.ir, 72
  %i.iu = sub i64 %i.ie, %i.iq
  %diff.check = icmp ugt i64 %i.iu, -32
  %or.cond = or i1 %min.iters.check640, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i295.preheader699, label %vector.ph641

vector.ph641:                                     ; preds = %.lr.ph.i.i.i.i.i295.preheader
  %n.vec642 = and i64 %i.it, 4611686018427387900  ; 3 uses
  %i.iv = shl i64 %n.vec642, 3                    ; 2 uses
  %i.iw = getelementptr i8, ptr %i.in, i64 %i.iv  ; 2 uses
  %i.ix = getelementptr i8, ptr %i.ht, i64 %i.iv
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph641
  %index644 = phi i64 [ 0, %vector.ph641 ], [ %index.next649, %vector.body643 ] ; 2 uses
  %i.iy = shl i64 %index644, 3                    ; 2 uses
  %next.gep645 = getelementptr i8, ptr %i.in, i64 %i.iy ; 2 uses
  %next.gep646 = getelementptr i8, ptr %i.ht, i64 %i.iy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.iz = getelementptr i8, ptr %next.gep646, i64 16
  %wide.load647 = load <2 x i64>, ptr %next.gep646, align 4, !alias.scope !769
  %wide.load648 = load <2 x i64>, ptr %i.iz, align 4, !alias.scope !769
  %i.ja = getelementptr i8, ptr %next.gep645, i64 16
  store <2 x i64> %wide.load647, ptr %next.gep645, align 4, !alias.scope !768
  store <2 x i64> %wide.load648, ptr %i.ja, align 4, !alias.scope !768
  %index.next649 = add nuw i64 %index644, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next649, %n.vec642
  br i1 %i.jb, label %middle.block650, label %vector.body643, !llvm.loop !723

middle.block650:                                  ; preds = %vector.body643
  %cmp.n651 = icmp eq i64 %i.it, %n.vec642
  br i1 %cmp.n651, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i302, label %.lr.ph.i.i.i.i.i295.preheader699

.lr.ph.i.i.i.i.i295.preheader699:                 ; preds = %.lr.ph.i.i.i.i.i295.preheader, %middle.block650
  %.012.i.i.i.i.i296.ph = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i295.preheader ], [ %i.iw, %middle.block650 ]
  %.0911.i.i.i.i.i297.ph = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.i295.preheader ], [ %i.ix, %middle.block650 ]
  br label %.lr.ph.i.i.i.i.i295

.lr.ph.i.i.i.i.i295:                              ; preds = %.lr.ph.i.i.i.i.i295.preheader699, %.lr.ph.i.i.i.i.i295
  %.012.i.i.i.i.i296 = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i295 ], [ %.012.i.i.i.i.i296.ph, %.lr.ph.i.i.i.i.i295.preheader699 ] ; 2 uses
  %.0911.i.i.i.i.i297 = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i295 ], [ %.0911.i.i.i.i.i297.ph, %.lr.ph.i.i.i.i.i295.preheader699 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.jc = load i64, ptr %.0911.i.i.i.i.i297, align 4, !alias.scope !769
  store i64 %i.jc, ptr %.012.i.i.i.i.i296, align 4, !alias.scope !768
  %i.jd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i297, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i296, i64 8 ; 2 uses
  %.not.i.i.i.i.i298 = icmp eq ptr %.0911.i.i.i.i.i297, %i.hz
  br i1 %.not.i.i.i.i.i298, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i302, label %.lr.ph.i.i.i.i.i295, !llvm.loop !724

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i302: ; preds = %.lr.ph.i.i.i.i.i295, %middle.block650, %.noexc304
  %.0.lcssa.i.i.i.i.i300 = phi ptr [ %i.in, %.noexc304 ], [ %i.iw, %middle.block650 ], [ %i.je, %.lr.ph.i.i.i.i.i295 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i300, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.if) #24
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.il
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit305

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit305: ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i302, %bb.bo
  %.sroa.60.13 = phi ptr [ %i.jg, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i302 ], [ %i.hy, %bb.bo ] ; 9 uses
  %.sroa.28.7 = phi ptr [ %i.jf, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i302 ], [ %i.ic, %bb.bo ] ; 5 uses
  %.sroa.0.13 = phi ptr [ %i.in, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i302 ], [ %i.ht, %bb.bo ] ; 11 uses
  %.sroa.60.13656 = ptrtoaddr ptr %.sroa.60.13 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !91 ; 3 uses
  %i.jj = load ptr, ptr %i.b, align 8, !tbaa !92  ; 3 uses
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl                    ; 4 uses
  %i.jn = ptrtoint ptr %.sroa.28.7 to i64
  %i.jo = ptrtoint ptr %.sroa.0.13 to i64         ; 4 uses
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = icmp eq i64 %i.jm, %i.jp
  br i1 %i.jq, label %bb.br, label %.loopexit502

bb.br:                                            ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit305
  %.not9.i.i.i.i.i = icmp eq ptr %i.jj, %i.ji
  br i1 %.not9.i.i.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit332, label %.lr.ph.i.i.i.i.i306

.lr.ph.i.i.i.i.i306:                              ; preds = %bb.br, %bb.bs
  %.011.i.i.i.i.i = phi ptr [ %i.jy, %bb.bs ], [ %.sroa.0.13, %bb.br ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.jx, %bb.bs ], [ %i.jj, %bb.br ] ; 2 uses
  %i.jr = load <2 x i32>, ptr %.0810.i.i.i.i.i, align 4
  %i.js = load <2 x i32>, ptr %.011.i.i.i.i.i, align 4
  %i.jt = icmp eq <2 x i32> %i.jr, %i.js          ; 2 uses
  %i.ju = extractelement <2 x i1> %i.jt, i64 0
  %i.jv = extractelement <2 x i1> %i.jt, i64 1
  %i.jw = select i1 %i.ju, i1 %i.jv, i1 false
  br i1 %i.jw, label %bb.bs, label %.loopexit502

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i.i306
  %i.jx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i307 = icmp eq ptr %i.jx, %i.ji
  br i1 %.not.i.i.i.i.i307, label %_ZN7testing15AssertionResultD2Ev.exit332, label %.lr.ph.i.i.i.i.i306, !llvm.loop !3

bb.bt:                                            ; preds = %_ZN7testing7MessageD2Ev.exit204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %_ZN7testing7MessageD2Ev.exit204 ], [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.body

bb.bu:                                            ; preds = %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEE10initializeEOS4_QnesrT_14relocatabilityLNS0_16constraint_levelE0E.exit15.i.i.invoke, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEEC2EOS4_QaagesrT_14relocatabilityLNS0_16constraint_levelE1EnesrS6_11copyabilityLS7_3E.exit.i.i, %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bv:                                            ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit241
  %i.ka = landingpad { ptr, i32 }
          cleanup
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  br label %.body

bb.bw:                                            ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i291, %bb.bq
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit502:                                     ; preds = %.lr.ph.i.i.i.i.i306, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit305
  store i8 0, ptr %21, align 8, !tbaa !78
  %i.kd = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store ptr null, ptr %i.kd, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bx unwind label %bb.ce

bb.bx:                                            ; preds = %.loopexit502
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.by unwind label %bb.cf

bb.by:                                            ; preds = %bb.bx
  %i.ke = load ptr, ptr %24, align 8, !tbaa !52
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1026, ptr noundef %i.ke)
          to label %bb.bz unwind label %bb.cg

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ca unwind label %bb.ch

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #23
  %i.kf = load ptr, ptr %24, align 8, !tbaa !52   ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %bb.ca
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !53
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.kk = load ptr, ptr %22, align 8, !tbaa !81   ; 3 uses
  %.not.i.i311 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i311, label %_ZN7testing7MessageD2Ev.exit313, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i312

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !35
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(128) %i.kk) #23, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit313

_ZN7testing7MessageD2Ev.exit313:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.ko = load ptr, ptr %i.kd, align 8, !tbaa !48 ; 4 uses
  %.not.i.i314 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i314, label %_ZN7testing15AssertionResultD2Ev.exit318, label %bb.cb

bb.cb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit313
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !52 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i315: ; preds = %bb.cb
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !53
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i315
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit318

_ZN7testing15AssertionResultD2Ev.exit318:         ; preds = %_ZN7testing7MessageD2Ev.exit313, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.ku = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %.not.i.i319 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i319, label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit318
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !95
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(24) %4) #23, !inline_history !4
  br label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit

_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit318, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.kx = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %.not.i.i320 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i320, label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit321, label %bb.cd

bb.cd:                                            ; preds = %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !95
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(24) %3) #23, !inline_history !4
  br label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit321

_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit321: ; preds = %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EED2Ev.exit

bb.ce:                                            ; preds = %.loopexit502
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit327

bb.cf:                                            ; preds = %bb.bx
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

bb.cg:                                            ; preds = %bb.by
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %bb.bz
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #23
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn68 = phi { ptr, i32 } [ %i.ld, %bb.ch ], [ %i.lc, %bb.cg ] ; 2 uses
  %i.le = load ptr, ptr %24, align 8, !tbaa !52   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %bb.ci
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !53
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322, %bb.cf
  %.pn68.pn = phi { ptr, i32 } [ %i.lb, %bb.cf ], [ %.pn68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %.pn68, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.lj = load ptr, ptr %22, align 8, !tbaa !81   ; 3 uses
  %.not.i.i325 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i325, label %_ZN7testing7MessageD2Ev.exit327, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i326

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i326: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !35
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(128) %i.lj) #23, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit327

_ZN7testing7MessageD2Ev.exit327:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i326, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %bb.ce
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.la, %bb.ce ], [ %.pn68.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %.pn68.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i326 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %.body

_ZN7testing15AssertionResultD2Ev.exit332:         ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.ln = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %.not.i.i333 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i333, label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit334, label %bb.cj

bb.cj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit332
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !95
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(24) %4) #23, !inline_history !4
  br label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit334

_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit334: ; preds = %_ZN7testing15AssertionResultD2Ev.exit332, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.lq = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %.not.i.i335 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i335, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit334
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !95
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(24) %3) #23, !inline_history !4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit334
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not.i337 = icmp eq ptr %.sroa.28.7, %.sroa.60.13
  br i1 %.not.i337, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store i32 5, ptr %.sroa.28.7, align 4, !tbaa !89
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.28.7, i64 4
  store i32 5, ptr %i.lt, align 4, !tbaa !90
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit352

bb.cn:                                            ; preds = %bb.cl
  %i.lu = icmp eq i64 %i.jm, 9223372036854775800
  br i1 %i.lu, label %bb.co, label %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i338

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #26
          to label %.noexc350 unwind label %.thread608

.noexc350:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i338: ; preds = %bb.cn
  %i.lv = ashr exact i64 %i.jm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i339 = call i64 @llvm.umax.i64(i64 %i.lv, i64 1)
  %i.lw = add nsw i64 %.sroa.speculated.i.i.i339, %i.lv ; 2 uses
  %i.lx = icmp ult i64 %i.lw, %i.lv
  %i.ly = call i64 @llvm.umin.i64(i64 %i.lw, i64 1152921504606846975)
  %i.lz = select i1 %i.lx, i64 1152921504606846975, i64 %i.ly ; 3 uses
  %.not.i.i.i340 = icmp ne i64 %i.lz, 0
  call void @llvm.assume(i1 %.not.i.i.i340)
  %i.ma = shl nuw nsw i64 %i.lz, 3
  %i.mb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ma) #25
          to label %.noexc351 unwind label %.thread608 ; 8 uses

.noexc351:                                        ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i338
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.jm ; 2 uses
  store i32 5, ptr %i.mc, align 4, !tbaa !89
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  store i32 5, ptr %i.md, align 4, !tbaa !90
  %.not10.i.i.i.i.i341 = icmp eq ptr %.sroa.0.13, %.sroa.60.13
  br i1 %.not10.i.i.i.i.i341, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i349, label %.lr.ph.i.i.i.i.i342.preheader

.lr.ph.i.i.i.i.i342.preheader:                    ; preds = %.noexc351
  %i.me = ptrtoaddr ptr %i.mb to i64
  %i.mf = add i64 %.sroa.60.13656, -8
  %i.mg = sub i64 %i.mf, %i.jo                    ; 2 uses
  %i.mh = lshr i64 %i.mg, 3
  %i.mi = add nuw nsw i64 %i.mh, 1                ; 2 uses
  %min.iters.check658 = icmp ult i64 %i.mg, 72
  %i.mj = sub i64 %i.jo, %i.me
  %diff.check660 = icmp ugt i64 %i.mj, -32
  %or.cond694 = or i1 %min.iters.check658, %diff.check660
  br i1 %or.cond694, label %.lr.ph.i.i.i.i.i342.preheader697, label %vector.ph661

vector.ph661:                                     ; preds = %.lr.ph.i.i.i.i.i342.preheader
  %n.vec662 = and i64 %i.mi, 4611686018427387900  ; 3 uses
  %i.mk = shl i64 %n.vec662, 3                    ; 2 uses
  %i.ml = getelementptr i8, ptr %i.mb, i64 %i.mk  ; 2 uses
  %i.mm = getelementptr i8, ptr %.sroa.0.13, i64 %i.mk
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph661
  %index664 = phi i64 [ 0, %vector.ph661 ], [ %index.next669, %vector.body663 ] ; 2 uses
  %i.mn = shl i64 %index664, 3                    ; 2 uses
  %next.gep665 = getelementptr i8, ptr %i.mb, i64 %i.mn ; 2 uses
  %next.gep666 = getelementptr i8, ptr %.sroa.0.13, i64 %i.mn ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.mo = getelementptr i8, ptr %next.gep666, i64 16
  %wide.load667 = load <2 x i64>, ptr %next.gep666, align 4, !alias.scope !771
  %wide.load668 = load <2 x i64>, ptr %i.mo, align 4, !alias.scope !771
  %i.mp = getelementptr i8, ptr %next.gep665, i64 16
  store <2 x i64> %wide.load667, ptr %next.gep665, align 4, !alias.scope !770
  store <2 x i64> %wide.load668, ptr %i.mp, align 4, !alias.scope !770
  %index.next669 = add nuw i64 %index664, 4       ; 2 uses
  %i.mq = icmp eq i64 %index.next669, %n.vec662
  br i1 %i.mq, label %middle.block670, label %vector.body663, !llvm.loop !728

middle.block670:                                  ; preds = %vector.body663
  %cmp.n671 = icmp eq i64 %i.mi, %n.vec662
  br i1 %cmp.n671, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i349, label %.lr.ph.i.i.i.i.i342.preheader697

.lr.ph.i.i.i.i.i342.preheader697:                 ; preds = %.lr.ph.i.i.i.i.i342.preheader, %middle.block670
  %.012.i.i.i.i.i343.ph = phi ptr [ %i.mb, %.lr.ph.i.i.i.i.i342.preheader ], [ %i.ml, %middle.block670 ]
  %.0911.i.i.i.i.i344.ph = phi ptr [ %.sroa.0.13, %.lr.ph.i.i.i.i.i342.preheader ], [ %i.mm, %middle.block670 ]
  br label %.lr.ph.i.i.i.i.i342

.lr.ph.i.i.i.i.i342:                              ; preds = %.lr.ph.i.i.i.i.i342.preheader697, %.lr.ph.i.i.i.i.i342
  %.012.i.i.i.i.i343 = phi ptr [ %i.mt, %.lr.ph.i.i.i.i.i342 ], [ %.012.i.i.i.i.i343.ph, %.lr.ph.i.i.i.i.i342.preheader697 ] ; 2 uses
  %.0911.i.i.i.i.i344 = phi ptr [ %i.ms, %.lr.ph.i.i.i.i.i342 ], [ %.0911.i.i.i.i.i344.ph, %.lr.ph.i.i.i.i.i342.preheader697 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.mr = load i64, ptr %.0911.i.i.i.i.i344, align 4, !alias.scope !771
  store i64 %i.mr, ptr %.012.i.i.i.i.i343, align 4, !alias.scope !770
  %i.ms = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i344, i64 8 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i343, i64 8 ; 2 uses
  %.not.i.i.i.i.i345 = icmp eq ptr %i.ms, %.sroa.60.13
  br i1 %.not.i.i.i.i.i345, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i349, label %.lr.ph.i.i.i.i.i342, !llvm.loop !729

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i349: ; preds = %.lr.ph.i.i.i.i.i342, %middle.block670, %.noexc351
  %.0.lcssa.i.i.i.i.i347 = phi ptr [ %i.mb, %.noexc351 ], [ %i.ml, %middle.block670 ], [ %i.mt, %.lr.ph.i.i.i.i.i342 ]
  %i.mu = ptrtoint ptr %.sroa.60.13 to i64
  %i.mv = sub i64 %i.mu, %i.jo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.13, i64 noundef %i.mv) #24
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.lz
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit352

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit352: ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i349, %bb.cm
  %.sroa.60.14 = phi ptr [ %i.mw, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i349 ], [ %.sroa.60.13, %bb.cm ] ; 5 uses
  %.0.lcssa.i.i.i.i.i347.pn = phi ptr [ %.0.lcssa.i.i.i.i.i347, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i349 ], [ %.sroa.28.7, %bb.cm ] ; 5 uses
  %.sroa.0.14 = phi ptr [ %i.mb, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i349 ], [ %.sroa.0.13, %bb.cm ] ; 8 uses
  %.0.lcssa.i.i.i.i.i347.pn676 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i347.pn to i64 ; 2 uses
  %.sroa.28.8 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i347.pn, i64 8 ; 2 uses
  %.not.i353 = icmp eq ptr %.sroa.28.8, %.sroa.60.14
  br i1 %.not.i353, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit352
  store i32 4, ptr %.sroa.28.8, align 4, !tbaa !89
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i347.pn, i64 12
  store i32 5, ptr %i.mx, align 4, !tbaa !90
  %i.my = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i347.pn, i64 16
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit368

bb.cq:                                            ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit352
  %i.mz = ptrtoint ptr %.sroa.60.14 to i64
  %i.na = ptrtoint ptr %.sroa.0.14 to i64         ; 3 uses
  %i.nb = sub i64 %i.mz, %i.na                    ; 4 uses
  %i.nc = icmp eq i64 %i.nb, 9223372036854775800
  br i1 %i.nc, label %bb.cr, label %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i354

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #26
          to label %.noexc366 unwind label %bb.cx

.noexc366:                                        ; preds = %bb.cr
  unreachable

_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i354: ; preds = %bb.cq
  %i.nd = ashr exact i64 %i.nb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i355 = call i64 @llvm.umax.i64(i64 %i.nd, i64 1)
  %i.ne = add nsw i64 %.sroa.speculated.i.i.i355, %i.nd ; 2 uses
  %i.nf = icmp ult i64 %i.ne, %i.nd
  %i.ng = call i64 @llvm.umin.i64(i64 %i.ne, i64 1152921504606846975)
  %i.nh = select i1 %i.nf, i64 1152921504606846975, i64 %i.ng ; 3 uses
  %.not.i.i.i356 = icmp ne i64 %i.nh, 0
  call void @llvm.assume(i1 %.not.i.i.i356)
  %i.ni = shl nuw nsw i64 %i.nh, 3
  %i.nj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ni) #25
          to label %.noexc367 unwind label %bb.cx ; 8 uses

.noexc367:                                        ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i354
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nb ; 2 uses
  store i32 4, ptr %i.nk, align 4, !tbaa !89
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  store i32 5, ptr %i.nl, align 4, !tbaa !90
  %.not10.i.i.i.i.i357 = icmp eq ptr %.sroa.0.14, %.sroa.60.14
  br i1 %.not10.i.i.i.i.i357, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i365, label %.lr.ph.i.i.i.i.i358.preheader

.lr.ph.i.i.i.i.i358.preheader:                    ; preds = %.noexc367
  %i.nm = ptrtoaddr ptr %i.nj to i64
  %i.nn = sub i64 %.0.lcssa.i.i.i.i.i347.pn676, %i.na ; 2 uses
  %i.no = lshr i64 %i.nn, 3
  %i.np = add nuw nsw i64 %i.no, 1                ; 2 uses
  %min.iters.check678 = icmp ult i64 %i.nn, 72
  %i.nq = sub i64 %i.na, %i.nm
  %diff.check680 = icmp ugt i64 %i.nq, -32
  %or.cond695 = or i1 %min.iters.check678, %diff.check680
  br i1 %or.cond695, label %.lr.ph.i.i.i.i.i358.preheader696, label %vector.ph681

vector.ph681:                                     ; preds = %.lr.ph.i.i.i.i.i358.preheader
  %n.vec682 = and i64 %i.np, 4611686018427387900  ; 3 uses
  %i.nr = shl i64 %n.vec682, 3                    ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nj, i64 %i.nr  ; 2 uses
  %i.nt = getelementptr i8, ptr %.sroa.0.14, i64 %i.nr
  br label %vector.body683

vector.body683:                                   ; preds = %vector.body683, %vector.ph681
  %index684 = phi i64 [ 0, %vector.ph681 ], [ %index.next689, %vector.body683 ] ; 2 uses
  %i.nu = shl i64 %index684, 3                    ; 2 uses
  %next.gep685 = getelementptr i8, ptr %i.nj, i64 %i.nu ; 2 uses
  %next.gep686 = getelementptr i8, ptr %.sroa.0.14, i64 %i.nu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.nv = getelementptr i8, ptr %next.gep686, i64 16
  %wide.load687 = load <2 x i64>, ptr %next.gep686, align 4, !alias.scope !773
  %wide.load688 = load <2 x i64>, ptr %i.nv, align 4, !alias.scope !773
  %i.nw = getelementptr i8, ptr %next.gep685, i64 16
  store <2 x i64> %wide.load687, ptr %next.gep685, align 4, !alias.scope !772
  store <2 x i64> %wide.load688, ptr %i.nw, align 4, !alias.scope !772
  %index.next689 = add nuw i64 %index684, 4       ; 2 uses
  %i.nx = icmp eq i64 %index.next689, %n.vec682
  br i1 %i.nx, label %middle.block690, label %vector.body683, !llvm.loop !733

middle.block690:                                  ; preds = %vector.body683
  %cmp.n691 = icmp eq i64 %i.np, %n.vec682
  br i1 %cmp.n691, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i365, label %.lr.ph.i.i.i.i.i358.preheader696

.lr.ph.i.i.i.i.i358.preheader696:                 ; preds = %.lr.ph.i.i.i.i.i358.preheader, %middle.block690
  %.012.i.i.i.i.i359.ph = phi ptr [ %i.nj, %.lr.ph.i.i.i.i.i358.preheader ], [ %i.ns, %middle.block690 ] ; 2 uses
  %.0911.i.i.i.i.i360.ph = phi ptr [ %.sroa.0.14, %.lr.ph.i.i.i.i.i358.preheader ], [ %i.nt, %middle.block690 ] ; 3 uses
  %.0911.i.i.i.i.i360.ph701 = ptrtoaddr ptr %.0911.i.i.i.i.i360.ph to i64
  %i.ny = sub i64 %.0.lcssa.i.i.i.i.i347.pn676, %.0911.i.i.i.i.i360.ph701 ; 2 uses
  %i.nz = lshr i64 %i.ny, 3
  %i.oa = add nuw nsw i64 %i.nz, 1
  %xtraiter = and i64 %i.oa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i358.prol.loopexit, label %.lr.ph.i.i.i.i.i358.prol

.lr.ph.i.i.i.i.i358.prol:                         ; preds = %.lr.ph.i.i.i.i.i358.preheader696, %.lr.ph.i.i.i.i.i358.prol
  %.012.i.i.i.i.i359.prol = phi ptr [ %i.od, %.lr.ph.i.i.i.i.i358.prol ], [ %.012.i.i.i.i.i359.ph, %.lr.ph.i.i.i.i.i358.preheader696 ] ; 2 uses
  %.0911.i.i.i.i.i360.prol = phi ptr [ %i.oc, %.lr.ph.i.i.i.i.i358.prol ], [ %.0911.i.i.i.i.i360.ph, %.lr.ph.i.i.i.i.i358.preheader696 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i358.prol ], [ 0, %.lr.ph.i.i.i.i.i358.preheader696 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.ob = load i64, ptr %.0911.i.i.i.i.i360.prol, align 4, !alias.scope !773
  store i64 %i.ob, ptr %.012.i.i.i.i.i359.prol, align 4, !alias.scope !772
  %i.oc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i360.prol, i64 8 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i359.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i358.prol.loopexit, label %.lr.ph.i.i.i.i.i358.prol, !llvm.loop !734

.lr.ph.i.i.i.i.i358.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i358.prol, %.lr.ph.i.i.i.i.i358.preheader696
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i358.preheader696 ], [ %i.od, %.lr.ph.i.i.i.i.i358.prol ]
  %.012.i.i.i.i.i359.unr = phi ptr [ %.012.i.i.i.i.i359.ph, %.lr.ph.i.i.i.i.i358.preheader696 ], [ %i.od, %.lr.ph.i.i.i.i.i358.prol ]
  %.0911.i.i.i.i.i360.unr = phi ptr [ %.0911.i.i.i.i.i360.ph, %.lr.ph.i.i.i.i.i358.preheader696 ], [ %i.oc, %.lr.ph.i.i.i.i.i358.prol ]
  %i.oe = icmp ult i64 %i.ny, 56
  br i1 %i.oe, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i365, label %.lr.ph.i.i.i.i.i358

.lr.ph.i.i.i.i.i358:                              ; preds = %.lr.ph.i.i.i.i.i358.prol.loopexit, %.lr.ph.i.i.i.i.i358
  %.012.i.i.i.i.i359 = phi ptr [ %i.pc, %.lr.ph.i.i.i.i.i358 ], [ %.012.i.i.i.i.i359.unr, %.lr.ph.i.i.i.i.i358.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i360 = phi ptr [ %i.pb, %.lr.ph.i.i.i.i.i358 ], [ %.0911.i.i.i.i.i360.unr, %.lr.ph.i.i.i.i.i358.prol.loopexit ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.of = load i64, ptr %.0911.i.i.i.i.i360, align 4, !alias.scope !773
  store i64 %i.of, ptr %.012.i.i.i.i.i359, align 4, !alias.scope !772
  %i.og = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i360, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i359, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %i.oi = load i64, ptr %i.og, align 4, !alias.scope !776
  store i64 %i.oi, ptr %i.oh, align 4, !alias.scope !775
  %i.oj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i360, i64 16
  %i.ok = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i359, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.ol = load i64, ptr %i.oj, align 4, !alias.scope !778
  store i64 %i.ol, ptr %i.ok, align 4, !alias.scope !777
  %i.om = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i360, i64 24
  %i.on = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i359, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.oo = load i64, ptr %i.om, align 4, !alias.scope !780
  store i64 %i.oo, ptr %i.on, align 4, !alias.scope !779
  %i.op = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i360, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i359, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.or = load i64, ptr %i.op, align 4, !alias.scope !782
  store i64 %i.or, ptr %i.oq, align 4, !alias.scope !781
  %i.os = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i360, i64 40
  %i.ot = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i359, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.ou = load i64, ptr %i.os, align 4, !alias.scope !784
  store i64 %i.ou, ptr %i.ot, align 4, !alias.scope !783
  %i.ov = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i360, i64 48
  %i.ow = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i359, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.ox = load i64, ptr %i.ov, align 4, !alias.scope !786
  store i64 %i.ox, ptr %i.ow, align 4, !alias.scope !785
  %i.oy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i360, i64 56 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i359, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.pa = load i64, ptr %i.oy, align 4, !alias.scope !788
  store i64 %i.pa, ptr %i.oz, align 4, !alias.scope !787
  %i.pb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i360, i64 64
  %i.pc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i359, i64 64 ; 2 uses
  %.not.i.i.i.i.i361.7 = icmp eq ptr %i.oy, %.0.lcssa.i.i.i.i.i347.pn
  br i1 %.not.i.i.i.i.i361.7, label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i365, label %.lr.ph.i.i.i.i.i358, !llvm.loop !756

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i365: ; preds = %.lr.ph.i.i.i.i.i358.prol.loopexit, %.lr.ph.i.i.i.i.i358, %middle.block690, %.noexc367
  %.0.lcssa.i.i.i.i.i363 = phi ptr [ %i.nj, %.noexc367 ], [ %i.ns, %middle.block690 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i358.prol.loopexit ], [ %i.pc, %.lr.ph.i.i.i.i.i358 ]
  %i.pd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i363, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.14, i64 noundef %i.nb) #24
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nh
  br label %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit368

_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit368: ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i365, %bb.cp
  %.sroa.60.15 = phi ptr [ %i.pe, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i365 ], [ %.sroa.60.14, %bb.cp ] ; 2 uses
  %.sroa.28.9 = phi ptr [ %i.pd, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i365 ], [ %i.my, %bb.cp ]
  %.sroa.0.15 = phi ptr [ %i.nj, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE17_M_realloc_insertIJiNS0_21LifetimeOperationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i365 ], [ %.sroa.0.14, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  %i.pf = load ptr, ptr %i.jh, align 8, !tbaa !91 ; 3 uses
  %i.pg = load ptr, ptr %i.b, align 8, !tbaa !92  ; 3 uses
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = sub i64 %i.ph, %i.pi
  %i.pk = ptrtoint ptr %.sroa.28.9 to i64
  %i.pl = ptrtoint ptr %.sroa.0.15 to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = icmp eq i64 %i.pj, %i.pm
  br i1 %i.pn, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit368
  %.not9.i.i.i.i.i369 = icmp eq ptr %i.pg, %i.pf
  br i1 %.not9.i.i.i.i.i369, label %_ZN7testing15AssertionResultD2Ev.exit395, label %.lr.ph.i.i.i.i.i370

.lr.ph.i.i.i.i.i370:                              ; preds = %bb.cs, %bb.ct
  %.011.i.i.i.i.i371 = phi ptr [ %i.pv, %bb.ct ], [ %.sroa.0.15, %bb.cs ] ; 2 uses
  %.0810.i.i.i.i.i372 = phi ptr [ %i.pu, %bb.ct ], [ %i.pg, %bb.cs ] ; 2 uses
  %i.po = load <2 x i32>, ptr %.0810.i.i.i.i.i372, align 4
  %i.pp = load <2 x i32>, ptr %.011.i.i.i.i.i371, align 4
  %i.pq = icmp eq <2 x i32> %i.po, %i.pp          ; 2 uses
  %i.pr = extractelement <2 x i1> %i.pq, i64 0
  %i.ps = extractelement <2 x i1> %i.pq, i64 1
  %i.pt = select i1 %i.pr, i1 %i.ps, i1 false
  br i1 %i.pt, label %bb.ct, label %.loopexit

bb.ct:                                            ; preds = %.lr.ph.i.i.i.i.i370
  %i.pu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i372, i64 8 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i371, i64 8
  %.not.i.i.i.i.i373 = icmp eq ptr %i.pu, %i.pf
  br i1 %.not.i.i.i.i.i373, label %_ZN7testing15AssertionResultD2Ev.exit395, label %.lr.ph.i.i.i.i.i370, !llvm.loop !3

.body:                                            ; preds = %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit13.i.i, %_ZN7testing7MessageD2Ev.exit327, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %_ZN7testing7MessageD2Ev.exit171, %bb.ao, %_ZN7testing7MessageD2Ev.exit123, %bb.n
  %.sroa.60.0 = phi ptr [ %i.h, %bb.n ], [ %i.p, %bb.bu ], [ %i.p, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit13.i.i ], [ %i.kb, %bb.bv ], [ %i.p, %_ZN7testing7MessageD2Ev.exit123 ], [ %i.p, %bb.ao ], [ %i.hy, %bb.bw ], [ %.sroa.60.13, %_ZN7testing7MessageD2Ev.exit327 ], [ %i.p, %bb.bt ], [ %i.p, %_ZN7testing7MessageD2Ev.exit171 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.f, %bb.n ], [ %i.l, %bb.bu ], [ %i.l, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit13.i.i ], [ %i.hp, %bb.bv ], [ %i.l, %_ZN7testing7MessageD2Ev.exit123 ], [ %i.l, %bb.ao ], [ %i.ht, %bb.bw ], [ %.sroa.0.13, %_ZN7testing7MessageD2Ev.exit327 ], [ %i.l, %bb.bt ], [ %i.l, %_ZN7testing7MessageD2Ev.exit171 ] ; 2 uses
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %i.jz, %bb.bu ], [ %i.ac, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit13.i.i ], [ %i.ka, %bb.bv ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit123 ], [ %.pn54.pn.pn, %bb.ao ], [ %i.kc, %bb.bw ], [ %.pn68.pn.pn, %_ZN7testing7MessageD2Ev.exit327 ], [ %.pn64.pn.pn, %bb.bt ], [ %.pn58.pn.pn, %_ZN7testing7MessageD2Ev.exit171 ] ; 2 uses
  %i.pw = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %.not.i.i375 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i375, label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit376, label %bb.cu

bb.cu:                                            ; preds = %.body
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !95
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(24) %4) #23, !inline_history !4
  br label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit376

_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit376: ; preds = %bb.cu, %.body, %bb.m
  %.sroa.60.1 = phi ptr [ %i.h, %bb.m ], [ %.sroa.60.0, %.body ], [ %.sroa.60.0, %bb.cu ]
  %.sroa.0.1 = phi ptr [ %i.f, %bb.m ], [ %.sroa.0.0, %.body ], [ %.sroa.0.0, %bb.cu ]
  %.pn68.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %.pn68.pn.pn.pn.pn, %.body ], [ %.pn68.pn.pn.pn.pn, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit376, %bb.l
  %.sroa.60.2 = phi ptr [ null, %bb.l ], [ %.sroa.60.1, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit376 ] ; 2 uses
  %.sroa.0.2 = phi ptr [ null, %bb.l ], [ %.sroa.0.1, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit376 ] ; 2 uses
  %.pn68.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %.pn68.pn.pn.pn.pn.pn, %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit376 ] ; 2 uses
  %i.pz = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %.not.i.i377 = icmp eq ptr %i.pz, null
  br i1 %.not.i.i377, label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit378, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !95
  call void %i.qb(ptr noundef nonnull align 8 dereferenceable(24) %3) #23, !inline_history !4
  br label %_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit378

_ZN3pro2v45proxyIN27proxy_lifetime_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit378: ; preds = %bb.cw, %bb.cv, %bb.k
  %.sroa.60.3 = phi ptr [ null, %bb.k ], [ %.sroa.60.2, %bb.cv ], [ %.sroa.60.2, %bb.cw ]
  %.sroa.0.3 = phi ptr [ null, %bb.k ], [ %.sroa.0.2, %bb.cv ], [ %.sroa.0.2, %bb.cw ]
  %.pn68.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %.pn68.pn.pn.pn.pn.pn.pn, %bb.cv ], [ %.pn68.pn.pn.pn.pn.pn.pn, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.dm

.thread608:                                       ; preds = %bb.co, %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i338
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.cx:                                            ; preds = %_ZNKSt6vectorIN5utils17LifetimeOperationESaIS1_EE12_M_check_lenEmPKc.exit.i.i354, %bb.cr
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i370, %_ZNSt6vectorIN5utils17LifetimeOperationESaIS1_EE12emplace_backIJiNS0_21LifetimeOperationTypeEEEERS1_DpOT_.exit368
  store i8 0, ptr %25, align 8, !tbaa !78
  %i.qe = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store ptr null, ptr %i.qe, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.cy unwind label %bb.dc

bb.cy:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.cz unwind label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.qf = load ptr, ptr %28, align 8, !tbaa !52
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1030, ptr noundef %i.qf)
          to label %bb.da unwind label %bb.de

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.db unwind label %bb.df

bb.db:                                            ; preds = %bb.da
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #23
  %i.qg = load ptr, ptr %28, align 8, !tbaa !52   ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %bb.db
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !53
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %i.ql = load ptr, ptr %26, align 8, !tbaa !81   ; 3 uses
  %.not.i.i382 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i382, label %bb.dh, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i383

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i383: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !35
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(128) %i.ql) #23, !inline_history !1
  br label %bb.dh

bb.dc:                                            ; preds = %.loopexit
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit390

bb.dd:                                            ; preds = %bb.cy
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

bb.de:                                            ; preds = %bb.cz
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.df:                                            ; preds = %bb.da
  %i.qs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #23
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.pn77 = phi { ptr, i32 } [ %i.qs, %bb.df ], [ %i.qr, %bb.de ] ; 2 uses
  %i.qt = load ptr, ptr %28, align 8, !tbaa !52   ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %bb.dg
  %i.qw = load i64, ptr %i.qu, align 8, !tbaa !53
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385, %bb.dd
  %.pn77.pn = phi { ptr, i32 } [ %i.qq, %bb.dd ], [ %.pn77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385 ], [ %.pn77, %bb.dg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %i.qy = load ptr, ptr %26, align 8, !tbaa !81   ; 3 uses
  %.not.i.i388 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i388, label %_ZN7testing7MessageD2Ev.exit390, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !35
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(128) %i.qy) #23, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit390

_ZN7testing7MessageD2Ev.exit390:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, %bb.dc
  %.pn77.pn.pn = phi { ptr, i32 } [ %i.qp, %bb.dc ], [ %.pn77.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387 ], [ %.pn77.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.dm

bb.dh:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i383, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
end_hunk_1
