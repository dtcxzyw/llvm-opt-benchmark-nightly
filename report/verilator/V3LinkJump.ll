inline.NumInlined: 2531
inline.NumDeleted: 1062
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN15LinkJumpVisitor12getJumpBlockEP7AstNodeb:bb.a
  %i.em = getelementptr i8, ptr %i.el, i64 -1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !17
  %.not110 = icmp eq i8 %i.en, 10
  %i.eo = load ptr, ptr %11, align 8, !tbaa !10   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i172: ; preds = %bb.aj
  %i.er = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.er)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.aj
  %i.es = load i64, ptr %i.ep, align 8, !tbaa !17
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.et) #24
  %.pre244 = load ptr, ptr %10, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  %i.eu = phi ptr [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i172 ], [ %.pre244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !17
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %.not110, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 10)
          to label %bb.aq unwind label %bb.al     ; 0 uses

bb.al:                                            ; preds = %bb.af, %bb.ak
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.an:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit166, %bb.ag, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %9, align 8, !tbaa !10    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.an
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !17
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.am
  %.pn106 = phi { ptr, i32 } [ %i.fb, %bb.am ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %i.fc, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.au

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.ap:                                            ; preds = %bb.ai
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.fk = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.ap
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !17
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.ao
  %.pn108 = phi { ptr, i32 } [ %i.fi, %bb.ao ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %i.fj, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.au

bb.aq:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fp = load ptr, ptr %12, align 8, !tbaa !10
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !16
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.fp, i64 noundef %i.fr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183 unwind label %bb.at ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183: ; preds = %bb.ar
  %i.ft = load ptr, ptr %12, align 8, !tbaa !10   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !17
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.av

bb.as:                                            ; preds = %bb.aq
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.at:                                            ; preds = %bb.ar
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %12, align 8, !tbaa !10   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.at
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !17
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.as
  %.pn111 = phi { ptr, i32 } [ %i.fy, %bb.as ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %i.fz, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %bb.al
  %.pn111.pn = phi { ptr, i32 } [ %.pn111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %i.fa, %bb.al ], [ %.pn108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %.pn106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bl

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %.critedge
  %i.gf = getelementptr inbounds nuw i8, ptr %.484241, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !184
  %i.gh = icmp ne ptr %i.gg, null
  %or.cond = and i1 %.388280, %i.gh
  br i1 %or.cond, label %bb.aw, label %_ZN7AstNode4castI12AstJumpBlockS_EEPT_PT0_.exit

_ZN7AstNode4castI12AstJumpBlockS_EEPT_PT0_.exit:  ; preds = %bb.av
  %.sroa.0.0.copyload.i.i.i191 = load i16, ptr %i.dt, align 8, !tbaa !166
  %.not238 = icmp eq i16 %.sroa.0.0.copyload.i.i.i191, 433
  br i1 %.not238, label %_ZN7AstNode2asI12AstJumpBlockS_EEPT_PT0_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN7AstNode4castI12AstJumpBlockS_EEPT_PT0_.exit, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 25, i1 false)
  br i1 %.388280, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.gi = invoke noundef ptr @_ZN7AstNode20unlinkFrBackWithNextEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %.484241, ptr noundef nonnull %13)
          to label %bb.ba unwind label %bb.ay     ; 0 uses

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.az:                                            ; preds = %bb.aw
  %i.gk = invoke noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %.484241, ptr noundef nonnull %13)
          to label %bb.ba unwind label %bb.ay     ; 0 uses

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.gl = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %bb.bb unwind label %bb.be     ; 9 uses

bb.bb:                                            ; preds = %bb.ba
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !149
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.gl, i16 433, ptr noundef %i.gn)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV12AstJumpBlock, i64 16), ptr %i.gl, align 8, !tbaa !67
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 152
  store i64 0, ptr %i.go, align 8
  invoke void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.gl, ptr noundef nonnull %.484241)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %14 = ptrtoint ptr %i.gl to i64
  %. = select i1 %2, i64 104, i64 120
  %.293 = select i1 %2, i64 112, i64 116
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %.
  store i64 %14, ptr %i.gp, align 8, !tbaa !17
  %i.gq = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4
  %_ZN12VNUser2InUse12s_userCntGblE.val = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4
  %15 = select i1 %2, i32 %i.gq, i32 %_ZN12VNUser2InUse12s_userCntGblE.val
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 %.293
  store i32 %15, ptr %i.gr, align 4, !tbaa !19
  invoke void @_ZN7AstNode6relinkEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN10VNRelinker6relinkEP7AstNode.exit.preheader unwind label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bc, %bb.bb
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 160) #24
  br label %bb.bk

bb.bg:                                            ; preds = %_ZN10VNRelinker6relinkEP7AstNode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZN7AstNode2asI12AstJumpBlockS_EEPT_PT0_.exit

_ZN10VNRelinker6relinkEP7AstNode.exit.preheader:  ; preds = %bb.bd, %_ZN10VNRelinker6relinkEP7AstNode.exit
  %.0242 = phi ptr [ %i.gv, %_ZN10VNRelinker6relinkEP7AstNode.exit ], [ %.484241, %bb.bd ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0242, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !184 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0242, i64 64
  %.sroa.0.0.copyload.i.i.i196 = load i16, ptr %i.gw, align 8, !tbaa !166
  %i.gx = icmp eq i16 %.sroa.0.0.copyload.i.i.i196, 68
  br i1 %i.gx, label %bb.bh, label %_ZN10VNRelinker6relinkEP7AstNode.exit

bb.bh:                                            ; preds = %_ZN10VNRelinker6relinkEP7AstNode.exit.preheader
  %i.gy = invoke noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %.0242, ptr noundef null)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN7AstNode17addHereThisAsNextEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.gl, ptr noundef %i.gy)
          to label %_ZN10VNRelinker6relinkEP7AstNode.exit unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZN10VNRelinker6relinkEP7AstNode.exit:            ; preds = %_ZN10VNRelinker6relinkEP7AstNode.exit.preheader, %bb.bi
  %.not115 = icmp eq ptr %i.gv, null
  br i1 %.not115, label %bb.bg, label %_ZN10VNRelinker6relinkEP7AstNode.exit.preheader, !llvm.loop !352

bb.bk:                                            ; preds = %bb.be, %bb.bf, %bb.bj, %bb.ay
  %.pn116.pn = phi { ptr, i32 } [ %i.gj, %bb.ay ], [ %i.gz, %bb.bj ], [ %i.gs, %bb.be ], [ %i.gt, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bl

_ZN7AstNode2asI12AstJumpBlockS_EEPT_PT0_.exit:    ; preds = %bb.w, %bb.t, %bb.bg, %_ZN7AstNode4castI12AstJumpBlockS_EEPT_PT0_.exit
  %.2 = phi ptr [ %.484241, %_ZN7AstNode4castI12AstJumpBlockS_EEPT_PT0_.exit ], [ %i.br, %bb.t ], [ %i.gl, %bb.bg ], [ %i.ch, %bb.w ]
  ret ptr %.2

bb.bl:                                            ; preds = %bb.au, %bb.bk, %bb.q
  %.pn116.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn, %bb.q ], [ %.pn116.pn, %bb.bk ], [ %.pn111.pn, %bb.au ]
  resume { ptr, i32 } %.pn116.pn.pn.pn
}

declare void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6VNTypeC2ENS_2enE(ptr noundef nonnull align 2 dereferenceable(2) %0, i16 noundef zeroext %1) unnamed_addr #4 comdat align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !353
  ret void
}

declare void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152), i16, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9VNDeleter11pushDeletepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 16) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 47) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !67
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !269
  %i.j = and i32 %i.i, -75
  %i.k = or disjoint i32 %i.j, 2
  store i32 %i.k, ptr %i.h, align 8, !tbaa !278
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 269) ; 3 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.29, i64 noundef 26) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !279 ; 0 uses
  tail call void @_ZN7V3Error7vlAbortEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !157  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.q, align 8, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.t, ptr %i.p, align 8, !tbaa !157
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 8, !tbaa !134    ; 4 uses
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 6 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.f, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #27
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28 ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store ptr %1, ptr %i.ag, align 8, !tbaa !158
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.g, label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.u, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.not.i17.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.x) #24
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.af, ptr %0, align 8, !tbaa !134
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !157
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !135
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP7AstNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode6user1pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !213
  %i.c = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !19
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0.i = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI12AstJumpBlockS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !166
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 433
  br i1 %.not6, label %.critedge, label %bb.c, !prof !142

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.7, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.36)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !166
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !185
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.37)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #27
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode6user2pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !350
  %i.c = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !19
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0.i = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI8AstBeginS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
end_hunk_0
