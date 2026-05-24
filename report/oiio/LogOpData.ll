inline.NumInlined: 665
inline.NumDeleted: 238
begin_hunk_0_@_ZNK16OpenColorIO_v2_59LogOpData10getCacheIDB5cxx11Ev:bb.a

_ZNK16OpenColorIO_v2_59LogOpData20getLinearSlopeStringB5cxx11El.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.dc = load ptr, ptr %9, align 8, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !74
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.dc, i64 noundef %i.de)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87 unwind label %bb.ab ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87: ; preds = %_ZNK16OpenColorIO_v2_59LogOpData20getLinearSlopeStringB5cxx11El.exit
  %i.dg = load ptr, ptr %9, align 8, !tbaa !47    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !48
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ac

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.p:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit34, %bb.l
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.p
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !48
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.o
  %.pn = phi { ptr, i32 } [ %i.dl, %bb.o ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.dm, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.r:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit41, %_ZNK16OpenColorIO_v2_59LogOpData17getLogSlopeStringB5cxx11El.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.r
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !48
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.q
  %.pn12 = phi { ptr, i32 } [ %i.ds, %bb.q ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.dt, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.t:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit51, %_ZNK16OpenColorIO_v2_59LogOpData18getLogOffsetStringB5cxx11El.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.t
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !48
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.s
  %.pn14 = phi { ptr, i32 } [ %i.dz, %bb.s ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.ea, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.v:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61, %_ZNK16OpenColorIO_v2_59LogOpData17getLinSlopeStringB5cxx11El.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.v
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !48
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.u
  %.pn16 = phi { ptr, i32 } [ %i.eg, %bb.u ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.eh, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.x:                                             ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18getLinOffsetStringB5cxx11El.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.x
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !48
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.w
  %.pn18 = phi { ptr, i32 } [ %i.en, %bb.w ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.eo, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.body

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.z:                                             ; preds = %_ZNK16OpenColorIO_v2_59LogOpData17getLinBreakStringB5cxx11El.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.z
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !48
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.y
  %.pn20 = phi { ptr, i32 } [ %i.eu, %bb.y ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %i.ev, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.body

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.ab:                                            ; preds = %_ZNK16OpenColorIO_v2_59LogOpData20getLinearSlopeStringB5cxx11El.exit
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %9, align 8, !tbaa !47    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.ab
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !48
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.aa
  %.pn22 = phi { ptr, i32 } [ %i.fb, %bb.aa ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %i.fc, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %.body

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.fi, ptr %0, align 8, !tbaa !90, !alias.scope !91
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !74, !alias.scope !91
  store i8 0, ptr %i.fi, align 8, !tbaa !48, !alias.scope !91
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !92, !noalias !91 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.fl, null
  br i1 %.not5.i.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %11 = load ptr, ptr %10, align 8, !noalias !91  ; 2 uses
  %12 = icmp ugt ptr %i.fl, %11
  %.08.i.i.i = select i1 %12, ptr %i.fl, ptr %11
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !94, !noalias !91 ; 2 uses
  %i.fo = ptrtoint ptr %.08.i.i.i to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.fn, i64 noundef %i.fq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ae ; 0 uses

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %0, align 8, !tbaa !47, !alias.scope !91 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fi
  br i1 %i.fu, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ae
  %i.fv = load i64, ptr %i.fi, align 8, !tbaa !48, !alias.scope !91
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #20
  br label %.body

bb.af:                                            ; preds = %bb.ac
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.fx)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ae

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.af, %bb.ad
  %i.fy = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fy, ptr %2, align 8, !tbaa !7
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ga = getelementptr i8, ptr %i.fy, i64 -24
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds i8, ptr %2, i64 %i.gb
  store ptr %i.fz, ptr %i.gc, align 8, !tbaa !7
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gd, align 8, !tbaa !7
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !47 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !48
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gd, align 8, !tbaa !7
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gk) #21
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gl) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.gm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  ret void

.body:                                            ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn24 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pn14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %i.n, %bb.h ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fs, %bb.ae ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #21
  br label %bb.ag

bb.ag:                                            ; preds = %.body, %bb.g
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %.body ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.gn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  resume { ptr, i32 } %.pn24.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_56OpData5getIDB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

declare noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59LogOpData13getBaseStringB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !7
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.g = load double, ptr %i.f, align 8, !tbaa !9
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.g)
          to label %_ZNSolsEd.exit unwind label %bb.e ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !90, !alias.scope !102
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !74, !alias.scope !102
  store i8 0, ptr %i.i, align 8, !tbaa !48, !alias.scope !102
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92, !noalias !102 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !102   ; 2 uses
  %6 = icmp ugt ptr %i.l, %5
  %.08.i.i.i = select i1 %6, ptr %i.l, ptr %5
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !94, !noalias !102 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !47, !alias.scope !102 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.v = load i64, ptr %i.i, align 8, !tbaa !48, !alias.scope !102
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #20
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEd.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !7
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !48
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #21
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.al) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.e ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59LogOpData17getLogSlopeStringB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_518getParameterStringILi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59LogOpData18getLogOffsetStringB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_518getParameterStringILi1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59LogOpData17getLinSlopeStringB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_518getParameterStringILi2EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59LogOpData18getLinOffsetStringB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_518getParameterStringILi3EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59LogOpData17getLinBreakStringB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_518getParameterStringILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59LogOpData20getLinearSlopeStringB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_518getParameterStringILi5EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData6equalsERKNS_6OpDataE(ptr noundef nonnull align 8 dereferenceable(252) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56OpData6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  br i1 %i.a, label %bb.b, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.e = load i32, ptr %i.d, align 8, !tbaa !38
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = load double, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.j = load double, ptr %i.i, align 8, !tbaa !9
  %i.k = fcmp oeq double %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 3 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !39   ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp eq i64 %i.s, %i.y
  br i1 %i.z, label %bb.e, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not9.i.i.i.i.i, label %.loopexit23, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %i.aa = load double, ptr %.0810.i.i.i.i.i, align 8, !tbaa !42
  %i.ab = load double, ptr %.011.i.i.i.i.i, align 8, !tbaa !42
  %i.ac = fcmp oeq double %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.o
  br i1 %.not.i.i.i.i.i, label %.loopexit23, label %.lr.ph.i.i.i.i.i, !llvm.loop !49

.loopexit23:                                      ; preds = %bb.f, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 3 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !39 ; 3 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp eq i64 %i.am, %i.as
  br i1 %i.at, label %bb.g, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.g:                                             ; preds = %.loopexit23
  %.not9.i.i.i.i.i9 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not9.i.i.i.i.i9, label %.loopexit, label %.lr.ph.i.i.i.i.i10

.lr.ph.i.i.i.i.i10:                               ; preds = %bb.g, %bb.h
  %.011.i.i.i.i.i11 = phi ptr [ %i.ay, %bb.h ], [ %i.ap, %bb.g ] ; 2 uses
  %.0810.i.i.i.i.i12 = phi ptr [ %i.ax, %bb.h ], [ %i.aj, %bb.g ] ; 2 uses
  %i.au = load double, ptr %.0810.i.i.i.i.i12, align 8, !tbaa !42
  %i.av = load double, ptr %.011.i.i.i.i.i11, align 8, !tbaa !42
  %i.aw = fcmp oeq double %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i10
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv:bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.b, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not9.i.i.i.i.i, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.011.i.i.i.i.i = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.p = load double, ptr %.0810.i.i.i.i.i, align 8, !tbaa !42
  %i.q = load double, ptr %.011.i.i.i.i.i, align 8, !tbaa !42
  %i.r = fcmp oeq double %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !49

.loopexit:                                        ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !39   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %.not = icmp eq i64 %i.h, %i.aa
  br i1 %.not, label %.lr.ph.i.i.i.i.i2, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

.loopexit.thread:                                 ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp eq i64 %i.h, %i.ah
  br label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

.lr.ph.i.i.i.i.i2:                                ; preds = %.loopexit, %.lr.ph.i.i.i.i.i2
  %.011.i.i.i.i.i3 = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i2 ], [ %i.x, %.loopexit ] ; 2 uses
  %.0810.i.i.i.i.i4 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i2 ], [ %i.e, %.loopexit ] ; 2 uses
  %i.aj = load double, ptr %.0810.i.i.i.i.i4, align 8, !tbaa !42
  %i.ak = load double, ptr %.011.i.i.i.i.i3, align 8, !tbaa !42
  %i.al = fcmp oeq double %i.aj, %i.ak            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3, i64 8
  %.not.i.i.i.i.i5 = icmp ne ptr %i.am, %i.d
  %or.cond.not = select i1 %i.al, i1 %.not.i.i.i.i.i5, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i2, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit, !llvm.loop !49

_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i2, %.loopexit.thread, %.loopexit, %bb.a
  %i.ao = phi i1 [ %i.ai, %.loopexit.thread ], [ false, %bb.a ], [ false, %.loopexit ], [ %i.al, %.lr.ph.i.i.i.i.i2 ], [ false, %.lr.ph.i.i.i.i.i ]
  ret i1 %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518getParameterStringILi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !7
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !39   ; 6 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.l, %i.j                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp eq i64 %i.m, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %.011.i.i.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.u = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !42
  %i.v = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !42
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not.i = icmp eq i64 %i.m, %i.af
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %bb.d
  %.011.i.i.i.i.i3.i = phi ptr [ %i.ak, %bb.d ], [ %i.ac, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.aj, %bb.d ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ag = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !42
  %i.ah = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !42
  %i.ai = fcmp oeq double %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.aj, %i.h
  br i1 %.not.i.i.i.i.i5.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !49

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b
  %i.am = load double, ptr %i.i, align 8, !tbaa !42
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.am)
          to label %_ZNSolsEd.exit10 unwind label %bb.e

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !42
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.aq)
          to label %_ZNSolsEd.exit11 unwind label %bb.e

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink = phi ptr [ %i.au, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %bb.d ]
  %i.av = load double, ptr %.sink, align 8, !tbaa !42
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.av)
          to label %_ZNSolsEd.exit unwind label %bb.e ; 0 uses

bb.f:                                             ; preds = %bb.a
  %i.ax = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull @.str.24)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.l unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ax) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !90, !alias.scope !127
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !74, !alias.scope !127
  store i8 0, ptr %i.az, align 8, !tbaa !48, !alias.scope !127
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92, !noalias !127 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bc, null
  br i1 %.not5.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSolsEd.exit
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !127   ; 2 uses
  %6 = icmp ugt ptr %i.bc, %5
  %.08.i.i.i = select i1 %6, ptr %i.bc, ptr %5
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !94, !noalias !127 ; 2 uses
  %i.bf = ptrtoint ptr %.08.i.i.i to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.be, i64 noundef %i.bh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !47, !alias.scope !127 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.az
  br i1 %i.bl, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.bm = load i64, ptr %i.az, align 8, !tbaa !48, !alias.scope !127
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #20
  br label %.body

bb.k:                                             ; preds = %_ZNSolsEd.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bo)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.bp = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bp, ptr %3, align 8, !tbaa !7
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %3, i64 %i.bs
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bu, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !48
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bu, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cb) #21
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cc) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %i.al, %bb.e ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bj, %bb.j ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518getParameterStringILi2EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !7
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !39   ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp ugt i64 %i.l, 16
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.l, %i.t
  br i1 %i.u, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.011.i.i.i.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !42
  %i.w = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !42
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp eq i64 %i.l, %i.ag
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %bb.e
  %.011.i.i.i.i.i3.i = phi ptr [ %i.al, %bb.e ], [ %i.ad, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ak, %bb.e ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ah = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !42
  %i.ai = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !42
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i5.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !49

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp eq i64 %i.l, %i.as
  br i1 %i.at, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !42
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.aw)
          to label %_ZNSolsEd.exit10 unwind label %bb.f

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !42
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.bb)
          to label %_ZNSolsEd.exit11 unwind label %bb.f

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %bb.e, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink26 = phi ptr [ %i.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.i, %bb.e ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink26, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !42
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.bh)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

bb.g:                                             ; preds = %bb.a
  %i.bj = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull @.str.24)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.m unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bj) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !90, !alias.scope !134
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !74, !alias.scope !134
  store i8 0, ptr %i.bl, align 8, !tbaa !48, !alias.scope !134
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92, !noalias !134 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bo, null
  br i1 %.not5.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !134   ; 2 uses
  %6 = icmp ugt ptr %i.bo, %5
  %.08.i.i.i = select i1 %6, ptr %i.bo, ptr %5
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !94, !noalias !134 ; 2 uses
  %i.br = ptrtoint ptr %.08.i.i.i to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bq, i64 noundef %i.bt)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !47, !alias.scope !134 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bl
  br i1 %i.bx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !48, !alias.scope !134
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #20
  br label %.body

bb.l:                                             ; preds = %_ZNSolsEd.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.cb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cb, ptr %3, align 8, !tbaa !7
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cd = getelementptr i8, ptr %i.cb, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %3, i64 %i.ce
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cg, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !48
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cg, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #21
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.co) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.i ], [ %i.au, %bb.f ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bv, %bb.k ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518getParameterStringILi3EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !7
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !39   ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp ugt i64 %i.l, 24
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.l, %i.t
  br i1 %i.u, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.011.i.i.i.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !42
  %i.w = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !42
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp eq i64 %i.l, %i.ag
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %bb.e
  %.011.i.i.i.i.i3.i = phi ptr [ %i.al, %bb.e ], [ %i.ad, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ak, %bb.e ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ah = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !42
  %i.ai = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !42
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i5.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !49

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp eq i64 %i.l, %i.as
  br i1 %i.at, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.aw = load double, ptr %i.av, align 8, !tbaa !42
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.aw)
          to label %_ZNSolsEd.exit10 unwind label %bb.f

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !42
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.bb)
          to label %_ZNSolsEd.exit11 unwind label %bb.f

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %bb.e, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink26 = phi ptr [ %i.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.i, %bb.e ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink26, i64 24
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !42
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.bh)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

bb.g:                                             ; preds = %bb.a
  %i.bj = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull @.str.24)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.m unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bj) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !90, !alias.scope !141
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !74, !alias.scope !141
  store i8 0, ptr %i.bl, align 8, !tbaa !48, !alias.scope !141
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92, !noalias !141 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bo, null
  br i1 %.not5.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !141   ; 2 uses
  %6 = icmp ugt ptr %i.bo, %5
  %.08.i.i.i = select i1 %6, ptr %i.bo, ptr %5
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !94, !noalias !141 ; 2 uses
  %i.br = ptrtoint ptr %.08.i.i.i to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bq, i64 noundef %i.bt)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !47, !alias.scope !141 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bl
  br i1 %i.bx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !48, !alias.scope !141
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #20
  br label %.body

bb.l:                                             ; preds = %_ZNSolsEd.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.cb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cb, ptr %3, align 8, !tbaa !7
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cd = getelementptr i8, ptr %i.cb, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %3, i64 %i.ce
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cg, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !48
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cg, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #21
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.co) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.i ], [ %i.au, %bb.f ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bv, %bb.k ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518getParameterStringILi1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !7
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !39   ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp ugt i64 %i.l, 8
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.l, %i.t
  br i1 %i.u, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.011.i.i.i.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !42
  %i.w = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !42
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp eq i64 %i.l, %i.ag
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %bb.e
  %.011.i.i.i.i.i3.i = phi ptr [ %i.al, %bb.e ], [ %i.ad, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ak, %bb.e ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ah = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !42
  %i.ai = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !42
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i5.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !49

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp eq i64 %i.l, %i.as
  br i1 %i.at, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !42
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.aw)
          to label %_ZNSolsEd.exit10 unwind label %bb.f

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !42
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.bb)
          to label %_ZNSolsEd.exit11 unwind label %bb.f

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %bb.e, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink26 = phi ptr [ %i.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.i, %bb.e ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink26, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !42
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.bh)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

bb.g:                                             ; preds = %bb.a
  %i.bj = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull @.str.24)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.m unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bj) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !90, !alias.scope !148
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !74, !alias.scope !148
  store i8 0, ptr %i.bl, align 8, !tbaa !48, !alias.scope !148
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92, !noalias !148 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bo, null
  br i1 %.not5.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !148   ; 2 uses
  %6 = icmp ugt ptr %i.bo, %5
  %.08.i.i.i = select i1 %6, ptr %i.bo, ptr %5
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !94, !noalias !148 ; 2 uses
  %i.br = ptrtoint ptr %.08.i.i.i to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bq, i64 noundef %i.bt)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !47, !alias.scope !148 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bl
  br i1 %i.bx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !48, !alias.scope !148
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #20
  br label %.body

bb.l:                                             ; preds = %_ZNSolsEd.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.cb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cb, ptr %3, align 8, !tbaa !7
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cd = getelementptr i8, ptr %i.cb, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %3, i64 %i.ce
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cg, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !48
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cg, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #21
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.co) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.i ], [ %i.au, %bb.f ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bv, %bb.k ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518getParameterStringILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !7
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !39   ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp ugt i64 %i.l, 32
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.l, %i.t
  br i1 %i.u, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.011.i.i.i.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !42
  %i.w = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !42
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp eq i64 %i.l, %i.ag
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %bb.e
  %.011.i.i.i.i.i3.i = phi ptr [ %i.al, %bb.e ], [ %i.ad, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ak, %bb.e ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ah = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !42
  %i.ai = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !42
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i5.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !49

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp eq i64 %i.l, %i.as
  br i1 %i.at, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aw = load double, ptr %i.av, align 8, !tbaa !42
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.aw)
          to label %_ZNSolsEd.exit10 unwind label %bb.f

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !42
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.bb)
          to label %_ZNSolsEd.exit11 unwind label %bb.f

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %bb.e, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink26 = phi ptr [ %i.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.i, %bb.e ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink26, i64 32
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !42
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.bh)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

bb.g:                                             ; preds = %bb.a
  %i.bj = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull @.str.24)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.m unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bj) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !90, !alias.scope !155
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !74, !alias.scope !155
  store i8 0, ptr %i.bl, align 8, !tbaa !48, !alias.scope !155
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92, !noalias !155 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bo, null
  br i1 %.not5.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !155   ; 2 uses
  %6 = icmp ugt ptr %i.bo, %5
  %.08.i.i.i = select i1 %6, ptr %i.bo, ptr %5
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !94, !noalias !155 ; 2 uses
  %i.br = ptrtoint ptr %.08.i.i.i to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bq, i64 noundef %i.bt)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !47, !alias.scope !155 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bl
  br i1 %i.bx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !48, !alias.scope !155
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #20
  br label %.body

bb.l:                                             ; preds = %_ZNSolsEd.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.cb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cb, ptr %3, align 8, !tbaa !7
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cd = getelementptr i8, ptr %i.cb, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %3, i64 %i.ce
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cg, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !48
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cg, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #21
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.co) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.i ], [ %i.au, %bb.f ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bv, %bb.k ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518getParameterStringILi5EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !7
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !39   ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp ugt i64 %i.l, 40
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.l, %i.t
  br i1 %i.u, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.011.i.i.i.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !42
  %i.w = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !42
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp eq i64 %i.l, %i.ag
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %bb.e
  %.011.i.i.i.i.i3.i = phi ptr [ %i.al, %bb.e ], [ %i.ad, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ak, %bb.e ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ah = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !42
  %i.ai = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !42
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i5.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !49

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp eq i64 %i.l, %i.as
  br i1 %i.at, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aw = load double, ptr %i.av, align 8, !tbaa !42
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.aw)
          to label %_ZNSolsEd.exit10 unwind label %bb.f

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !42
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.bb)
          to label %_ZNSolsEd.exit11 unwind label %bb.f

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %bb.e, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink26 = phi ptr [ %i.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.i, %bb.e ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink26, i64 40
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !42
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.bh)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

bb.g:                                             ; preds = %bb.a
  %i.bj = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull @.str.24)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.m unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bj) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !90, !alias.scope !162
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !74, !alias.scope !162
  store i8 0, ptr %i.bl, align 8, !tbaa !48, !alias.scope !162
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92, !noalias !162 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bo, null
  br i1 %.not5.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !162   ; 2 uses
  %6 = icmp ugt ptr %i.bo, %5
  %.08.i.i.i = select i1 %6, ptr %i.bo, ptr %5
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !94, !noalias !162 ; 2 uses
  %i.br = ptrtoint ptr %.08.i.i.i to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bq, i64 noundef %i.bt)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !47, !alias.scope !162 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bl
  br i1 %i.bx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !48, !alias.scope !162
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #20
  br label %.body

bb.l:                                             ; preds = %_ZNSolsEd.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.cb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cb, ptr %3, align 8, !tbaa !7
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cd = getelementptr i8, ptr %i.cb, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %3, i64 %i.ce
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cg, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !48
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cg, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #21
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.co) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.i ], [ %i.au, %bb.f ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bv, %bb.k ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData11isSimpleLogEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(252) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !39   ; 8 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ne i64 %i.h, %i.n
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  %or.cond = or i1 %i.o, %.not9.i.i.i.i.i.i
  br i1 %or.cond, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %bb.b
  %.011.i.i.i.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.s, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.p = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !42
  %i.q = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !42
  %i.r = fcmp oeq double %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !39   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %.not.i = icmp eq i64 %i.h, %i.aa
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %bb.c
  %.011.i.i.i.i.i3.i = phi ptr [ %i.af, %bb.c ], [ %i.x, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ae, %bb.c ], [ %i.e, %.loopexit.i ] ; 2 uses
  %i.ab = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !42
  %i.ac = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !42
  %i.ad = fcmp oeq double %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.ae, %i.d
  br i1 %.not.i.i.i.i.i5.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread2, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !49

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread2: ; preds = %bb.c
  %i.ag = icmp eq i64 %i.h, 32
  br i1 %i.ag, label %bb.d, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.d:                                             ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread2
  %i.ah = load double, ptr %i.e, align 8, !tbaa !42
  %i.ai = fcmp oeq double %i.ah, 1.000000e+00
  br i1 %i.ai, label %bb.e, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !42
  %i.al = fcmp oeq double %i.ak, 1.000000e+00
  br i1 %i.al, label %bb.f, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !42
  %i.ao = fcmp oeq double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.g, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !42
  %i.ar = fcmp oeq double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.h, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.a, %bb.d, %bb.e, %bb.f, %bb.g, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %.0 = phi i1 [ false, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread ], [ true, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData9isLogBaseEd(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(252) %0, double noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !39   ; 8 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ne i64 %i.h, %i.n
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  %or.cond.i = or i1 %.not9.i.i.i.i.i.i.i, %i.o
  br i1 %or.cond.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %bb.b
  %.011.i.i.i.i.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %.0810.i.i.i.i.i.i.i = phi ptr [ %i.s, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.p = load double, ptr %.0810.i.i.i.i.i.i.i, align 8, !tbaa !42
  %i.q = load double, ptr %.011.i.i.i.i.i.i.i, align 8, !tbaa !42
  %i.r = fcmp oeq double %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !49

.loopexit.i.i:                                    ; preds = %bb.b
end_hunk_1
