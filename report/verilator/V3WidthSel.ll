Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3WidthSel?download=true
inline.NumInlined: 2000
inline.NumDeleted: 381
begin_hunk_0_@_ZN15WidthSelVisitor5visitEP9AstSelBit:bb.a
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit811 unwind label %bb.dy ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit811: ; preds = %bb.dr
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.op, ptr noundef nonnull @.str.14, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812 unwind label %bb.dy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit811
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.op, ptr noundef %i.oh)
          to label %bb.ds unwind label %bb.dy     ; 0 uses

bb.ds:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812
  %i.os = load ptr, ptr %40, align 8, !tbaa !16   ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.ou = icmp eq ptr %i.os, %i.ot
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i813

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i813: ; preds = %bb.ds
  %i.ov = load i64, ptr %i.ot, align 8, !tbaa !18
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ow) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i813
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull align 8 dereferenceable(112) %39)
          to label %bb.dt unwind label %bb.dz

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr noundef nonnull align 8 dereferenceable(112) %39)
          to label %bb.du unwind label %bb.ea

bb.du:                                            ; preds = %bb.dt
  %i.ox = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !17 ; 2 uses
  %i.oz = load ptr, ptr %41, align 8, !tbaa !16   ; 2 uses
  %i.pa = getelementptr i8, ptr %i.oz, i64 %i.oy
  %i.pb = getelementptr i8, ptr %i.pa, i64 -1
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !18
  %.not426 = icmp eq i8 %i.pc, 10
  %i.pd = load ptr, ptr %42, align 8, !tbaa !16   ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i817, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i817: ; preds = %bb.du
  %i.pg = icmp ult i64 %i.oy, 16
  call void @llvm.assume(i1 %i.pg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816: ; preds = %bb.du
  %i.ph = load i64, ptr %i.pe, align 8, !tbaa !18
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pi) #22
  %.pre1705 = load ptr, ptr %41, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i817, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816
  %i.pj = phi ptr [ %i.oz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i817 ], [ %.pre1705, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  %i.pk = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818
  %i.pm = load i64, ptr %i.pk, align 8, !tbaa !18
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br i1 %.not426, label %bb.eb, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821
  %i.po = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %39, i8 noundef signext 10)
          to label %bb.eb unwind label %bb.dw     ; 0 uses

bb.dw:                                            ; preds = %bb.dq, %bb.dv
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.dx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit810
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824

bb.dy:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit811, %bb.dr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812
  %i.pr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ps = load ptr, ptr %40, align 8, !tbaa !16   ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.pu = icmp eq ptr %i.ps, %i.pt
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822: ; preds = %bb.dy
  %i.pv = load i64, ptr %i.pt, align 8, !tbaa !18
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822, %bb.dx
  %.pn422 = phi { ptr, i32 } [ %i.pq, %bb.dx ], [ %i.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822 ], [ %i.pr, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.ef

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827

bb.ea:                                            ; preds = %bb.dt
  %i.py = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  %i.pz = load ptr, ptr %41, align 8, !tbaa !16   ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.qb = icmp eq ptr %i.pz, %i.qa
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825: ; preds = %bb.ea
  %i.qc = load i64, ptr %i.qa, align 8, !tbaa !18
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825, %bb.dz
  %.pn424 = phi { ptr, i32 } [ %i.px, %bb.dz ], [ %i.py, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825 ], [ %i.py, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.ef

bb.eb:                                            ; preds = %bb.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef nonnull align 8 dereferenceable(112) %39)
          to label %bb.ec unwind label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.qe = load ptr, ptr %43, align 8, !tbaa !16
  %i.qf = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !17
  %i.qh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.qe, i64 noundef %i.qg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit828 unwind label %bb.ee ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit828: ; preds = %bb.ec
  %i.qi = load ptr, ptr %43, align 8, !tbaa !16   ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit831, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i829

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i829: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit828
  %i.ql = load i64, ptr %i.qj, align 8, !tbaa !18
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.qm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit831

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit831: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit828, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i829
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %39) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.eg

bb.ed:                                            ; preds = %bb.eb
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834

bb.ee:                                            ; preds = %bb.ec
  %i.qo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qp = load ptr, ptr %43, align 8, !tbaa !16   ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832: ; preds = %bb.ee
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !18
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832, %bb.ed
  %.pn427 = phi { ptr, i32 } [ %i.qn, %bb.ed ], [ %i.qo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832 ], [ %i.qo, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br label %bb.ef

bb.ef:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824, %bb.dw
  %.pn427.pn = phi { ptr, i32 } [ %.pn427, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834 ], [ %i.pp, %bb.dw ], [ %.pn424, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827 ], [ %.pn422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %39) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.xk

bb.eg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit831, %bb.dp
  %.not.i = icmp eq ptr %i.oh, null
  br i1 %.not.i, label %_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit.thread, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qu = getelementptr inbounds nuw i8, ptr %i.oh, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.qu, align 8, !tbaa !93 ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i.i, label %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit1420 [
    i16 99, label %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit
    i16 98, label %_ZN7AstNode4castI17AstPackArrayDType12AstNodeDTypeEEPT_PT0_.exit
    i16 73, label %_ZN7AstNode4castI18AstAssocArrayDType12AstNodeDTypeEEPT_PT0_.exit
    i16 97, label %_ZN7AstNode4castI21AstWildcardArrayDType12AstNodeDTypeEEPT_PT0_.exit
    i16 81, label %_ZN7AstNode4castI16AstDynArrayDType12AstNodeDTypeEEPT_PT0_.exit
    i16 90, label %_ZN7AstNode4castI13AstQueueDType12AstNodeDTypeEEPT_PT0_.exit
    i16 74, label %bb.qv
  ]

_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit: ; preds = %bb.eh
  %i.qv = load i32, ptr %38, align 4, !tbaa !94
  %i.qw = getelementptr inbounds nuw i8, ptr %38, i64 4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !95
  %..i = call noundef i32 @llvm.smin.i32(i32 %i.qv, i32 %i.qx) ; 2 uses
  %.not620.not = icmp eq i32 %..i, 0
  br i1 %.not620.not, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit
  %i.qy = call noundef ptr @_ZN15WidthSelVisitor9newSubNegEP11AstNodeExpri(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.hz, i32 noundef %..i)
  br label %bb.ej

bb.ej:                                            ; preds = %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit, %bb.ei
  %.0362 = phi ptr [ %i.qy, %bb.ei ], [ %i.hz, %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit ]
  %i.qz = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26 ; 12 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !96
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.qz, i16 279, ptr noundef %i.rb)
          to label %.noexc unwind label %bb.ex

.noexc:                                           ; preds = %bb.ej
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.qz, align 8, !tbaa !20
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 152
  store i64 0, ptr %i.rc, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.qz, ptr noundef %i.hw)
          to label %.noexc837 unwind label %bb.ex

.noexc837:                                        ; preds = %.noexc
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.qz, ptr noundef %.0362)
          to label %.noexc838 unwind label %bb.ex

.noexc838:                                        ; preds = %.noexc837
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstArraySel, i64 16), ptr %i.qz, align 8, !tbaa !20
  invoke void @_ZN11AstArraySel4initEPK7AstNode(ptr noundef nonnull align 8 dereferenceable(160) %i.qz, ptr noundef %i.hw)
          to label %_ZN11AstArraySelC2EP8FileLineP11AstNodeExprS3_.exit unwind label %bb.ex

_ZN11AstArraySelC2EP8FileLineP11AstNodeExprS3_.exit: ; preds = %.noexc838
  %i.rd = getelementptr inbounds nuw i8, ptr %i.oh, i64 168
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !101 ; 2 uses
  %.not.i840 = icmp eq ptr %i.re, null
  %i.rf = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8
  %i.rh = select i1 %.not.i840, ptr %i.rg, ptr %i.re ; 2 uses
  %.not.i841 = icmp eq ptr %i.rh, null
  br i1 %.not.i841, label %_ZN7AstNode9dtypeFromEPKS_.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZN11AstArraySelC2EP8FileLineP11AstNodeExprS3_.exit
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 72
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !102 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qz, i64 72 ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !102
  %.not.i.i = icmp eq ptr %i.rl, %i.rj
  br i1 %.not.i.i, label %_ZN7AstNode9dtypeFromEPKS_.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store ptr %i.rj, ptr %i.rk, align 8, !tbaa !102
  %i.rm = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  %i.rn = add i64 %i.rm, 1
  store i64 %i.rn, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  br label %_ZN7AstNode9dtypeFromEPKS_.exit

_ZN7AstNode9dtypeFromEPKS_.exit:                  ; preds = %_ZN11AstArraySelC2EP8FileLineP11AstNodeExprS3_.exit, %bb.ek, %bb.el
  %i.ro = call noundef i32 @_ZL5debugv()
  %i.rp = icmp sgt i32 %i.ro, 8
  br i1 %i.rp, label %bb.em, label %bb.xd, !prof !10

bb.em:                                            ; preds = %_ZN7AstNode9dtypeFromEPKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %44)
  %i.rq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull @.str.3, i64 noundef 0)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit843 unwind label %bb.ey ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit843: ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(112) %44)
          to label %bb.en unwind label %bb.ez

bb.en:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit843
  %i.rr = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !17 ; 2 uses
  %i.rt = icmp eq i64 %i.rs, 0
  %i.ru = load ptr, ptr %45, align 8, !tbaa !16   ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i845, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i845: ; preds = %bb.en
  %i.rx = icmp ult i64 %i.rs, 16
  call void @llvm.assume(i1 %i.rx)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844: ; preds = %bb.en
  %i.ry = load i64, ptr %i.rv, align 8, !tbaa !18
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i845, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br i1 %i.rt, label %bb.fp, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846
  %i.sa = invoke noundef i32 @_ZL5debugv()
          to label %bb.ep unwind label %bb.ey

bb.ep:                                            ; preds = %bb.eo
  %i.sb = icmp sgt i32 %i.sa, 8
  br i1 %i.sb, label %bb.eq, label %bb.fp, !prof !10

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %46)
          to label %bb.er unwind label %bb.fa

bb.er:                                            ; preds = %bb.eq
  %i.sc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit848 unwind label %bb.fb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit848: ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull @.str.1, i32 noundef 247)
          to label %bb.es unwind label %bb.fc

bb.es:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit848
  %i.sd = load ptr, ptr %47, align 8, !tbaa !16
  %i.se = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !17
  %i.sg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %i.sd, i64 noundef %i.sf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit850 unwind label %bb.fd

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit850: ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %48, ptr noundef nonnull align 8 dereferenceable(112) %44)
          to label %bb.et unwind label %bb.fe

bb.et:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit850
  %i.sh = load ptr, ptr %48, align 8, !tbaa !16
  %i.si = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !17
  %i.sk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sg, ptr noundef %i.sh, i64 noundef %i.sj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit852 unwind label %bb.ff ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit852: ; preds = %bb.et
  %i.sl = load ptr, ptr %48, align 8, !tbaa !16   ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.sn = icmp eq ptr %i.sl, %i.sm
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit852
  %i.so = load i64, ptr %i.sm, align 8, !tbaa !18
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sl, i64 noundef %i.sp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit852, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  %i.sq = load ptr, ptr %47, align 8, !tbaa !16   ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.ss = icmp eq ptr %i.sq, %i.sr
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855
  %i.st = load i64, ptr %i.sr, align 8, !tbaa !18
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sq, i64 noundef %i.su) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %49, ptr noundef nonnull align 8 dereferenceable(112) %46)
          to label %bb.eu unwind label %bb.fh

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %50, ptr noundef nonnull align 8 dereferenceable(112) %46)
          to label %bb.ev unwind label %bb.fi

bb.ev:                                            ; preds = %bb.eu
  %i.sv = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !17 ; 2 uses
  %i.sx = load ptr, ptr %49, align 8, !tbaa !16   ; 2 uses
  %i.sy = getelementptr i8, ptr %i.sx, i64 %i.sw
  %i.sz = getelementptr i8, ptr %i.sy, i64 -1
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !18
  %.not627 = icmp eq i8 %i.ta, 10
  %i.tb = load ptr, ptr %50, align 8, !tbaa !16   ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  %i.td = icmp eq ptr %i.tb, %i.tc
  br i1 %i.td, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i860, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i859

end_hunk_0
begin_hunk_1_@_ZN15WidthSelVisitor5visitEP9AstSelBit:bb.a
          to label %bb.qk unwind label %bb.qp

bb.qk:                                            ; preds = %bb.qj
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %129, ptr noundef nonnull align 8 dereferenceable(32) %130, ptr noundef nonnull @.str.12)
          to label %bb.ql unwind label %bb.qq

bb.ql:                                            ; preds = %bb.qk
  invoke void @_ZNK7AstNode8dumpTreeERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(152) %i.bav, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 8 dereferenceable(32) %129, i32 noundef 0)
          to label %_ZNK7AstNode8dumpTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit1345 unwind label %bb.qr

_ZNK7AstNode8dumpTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit1345: ; preds = %bb.ql
  %i.bfp = load ptr, ptr %129, align 8, !tbaa !16 ; 2 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %129, i64 16 ; 2 uses
  %i.bfr = icmp eq ptr %i.bfp, %i.bfq
  br i1 %i.bfr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346: ; preds = %_ZNK7AstNode8dumpTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit1345
  %i.bfs = load i64, ptr %i.bfq, align 8, !tbaa !18
  %i.bft = add i64 %i.bfs, 1
  call void @_ZdlPvm(ptr noundef %i.bfp, i64 noundef %i.bft) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348: ; preds = %_ZNK7AstNode8dumpTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit1345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346
  %i.bfu = load ptr, ptr %130, align 8, !tbaa !16 ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 2 uses
  %i.bfw = icmp eq ptr %i.bfu, %i.bfv
  br i1 %i.bfw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348
  %i.bfx = load i64, ptr %i.bfv, align 8, !tbaa !18
  %i.bfy = add i64 %i.bfx, 1
  call void @_ZdlPvm(ptr noundef %i.bfu, i64 noundef %i.bfy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1351: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1349
  %i.bfz = load ptr, ptr %133, align 8, !tbaa !16 ; 2 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %133, i64 16 ; 2 uses
  %i.bgb = icmp eq ptr %i.bfz, %i.bga
  br i1 %i.bgb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1351
  %i.bgc = load i64, ptr %i.bga, align 8, !tbaa !18
  %i.bgd = add i64 %i.bgc, 1
  call void @_ZdlPvm(ptr noundef %i.bfz, i64 noundef %i.bgd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1352
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #21
  %i.bge = load ptr, ptr %131, align 8, !tbaa !16 ; 2 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %131, i64 16 ; 2 uses
  %i.bgg = icmp eq ptr %i.bge, %i.bgf
  br i1 %i.bgg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1354
  %i.bgh = load i64, ptr %i.bgf, align 8, !tbaa !18
  %i.bgi = add i64 %i.bgh, 1
  call void @_ZdlPvm(ptr noundef %i.bge, i64 noundef %i.bgi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1355
  %i.bgj = load ptr, ptr %132, align 8, !tbaa !16 ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %132, i64 16 ; 2 uses
  %i.bgl = icmp eq ptr %i.bgj, %i.bgk
  br i1 %i.bgl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1357
  %i.bgm = load i64, ptr %i.bgk, align 8, !tbaa !18
  %i.bgn = add i64 %i.bgm, 1
  call void @_ZdlPvm(ptr noundef %i.bgj, i64 noundef %i.bgn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1357, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1358
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %127) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %119) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #21
  br label %bb.xd

bb.qm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1343
  %i.bgo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1375

bb.qn:                                            ; preds = %bb.qh
  %i.bgp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372

bb.qo:                                            ; preds = %bb.qi
  %i.bgq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1369

bb.qp:                                            ; preds = %bb.qj
  %i.bgr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366

bb.qq:                                            ; preds = %bb.qk
  %i.bgs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1363

bb.qr:                                            ; preds = %bb.ql
  %i.bgt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgu = load ptr, ptr %129, align 8, !tbaa !16 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %129, i64 16 ; 2 uses
  %i.bgw = icmp eq ptr %i.bgu, %i.bgv
  br i1 %i.bgw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1361: ; preds = %bb.qr
  %i.bgx = load i64, ptr %i.bgv, align 8, !tbaa !18
  %i.bgy = add i64 %i.bgx, 1
  call void @_ZdlPvm(ptr noundef %i.bgu, i64 noundef %i.bgy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1363: ; preds = %bb.qr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1361, %bb.qq
  %.pn520 = phi { ptr, i32 } [ %i.bgs, %bb.qq ], [ %i.bgt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1361 ], [ %i.bgt, %bb.qr ] ; 2 uses
  %i.bgz = load ptr, ptr %130, align 8, !tbaa !16 ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 2 uses
  %i.bhb = icmp eq ptr %i.bgz, %i.bha
  br i1 %i.bhb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1364: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1363
  %i.bhc = load i64, ptr %i.bha, align 8, !tbaa !18
  %i.bhd = add i64 %i.bhc, 1
  call void @_ZdlPvm(ptr noundef %i.bgz, i64 noundef %i.bhd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1364, %bb.qp
  %.pn520.pn = phi { ptr, i32 } [ %i.bgr, %bb.qp ], [ %.pn520, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1364 ], [ %.pn520, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1363 ] ; 2 uses
  %i.bhe = load ptr, ptr %133, align 8, !tbaa !16 ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %133, i64 16 ; 2 uses
  %i.bhg = icmp eq ptr %i.bhe, %i.bhf
  br i1 %i.bhg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1367: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366
  %i.bhh = load i64, ptr %i.bhf, align 8, !tbaa !18
  %i.bhi = add i64 %i.bhh, 1
  call void @_ZdlPvm(ptr noundef %i.bhe, i64 noundef %i.bhi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1369

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1367, %bb.qo
  %.pn520.pn.pn = phi { ptr, i32 } [ %i.bgq, %bb.qo ], [ %.pn520.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1367 ], [ %.pn520.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #21
  %i.bhj = load ptr, ptr %131, align 8, !tbaa !16 ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %131, i64 16 ; 2 uses
  %i.bhl = icmp eq ptr %i.bhj, %i.bhk
  br i1 %i.bhl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1370: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1369
  %i.bhm = load i64, ptr %i.bhk, align 8, !tbaa !18
  %i.bhn = add i64 %i.bhm, 1
  call void @_ZdlPvm(ptr noundef %i.bhj, i64 noundef %i.bhn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1370, %bb.qn
  %.pn520.pn.pn.pn = phi { ptr, i32 } [ %i.bgp, %bb.qn ], [ %.pn520.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1370 ], [ %.pn520.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1369 ] ; 2 uses
  %i.bho = load ptr, ptr %132, align 8, !tbaa !16 ; 2 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %132, i64 16 ; 2 uses
  %i.bhq = icmp eq ptr %i.bho, %i.bhp
  br i1 %i.bhq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1373: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372
  %i.bhr = load i64, ptr %i.bhp, align 8, !tbaa !18
  %i.bhs = add i64 %i.bhr, 1
  call void @_ZdlPvm(ptr noundef %i.bho, i64 noundef %i.bhs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1373, %bb.qm
  %.pn520.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bgo, %bb.qm ], [ %.pn520.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1373 ], [ %.pn520.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #21
  br label %bb.qs

bb.qs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1375, %bb.qg, %bb.qf
  %.pn520.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn520.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1375 ], [ %i.bfn, %bb.qf ], [ %i.bfo, %bb.qg ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %127) #21
  br label %bb.qt

bb.qt:                                            ; preds = %bb.qs, %bb.qe
  %.pn520.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn520.pn.pn.pn.pn.pn, %bb.qs ], [ %i.bfm, %bb.qe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #21
  br label %bb.qu

bb.qu:                                            ; preds = %bb.qt, %bb.pz, %bb.pk, %bb.pj
  %.pn520.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn520.pn.pn.pn.pn.pn.pn, %bb.qt ], [ %.pn516.pn.pn, %bb.pz ], [ %i.bdm, %bb.pj ], [ %i.bdn, %bb.pk ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %119) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #21
  br label %bb.xk

bb.qv:                                            ; preds = %bb.eh
  %i.bht = call noundef zeroext i1 @_ZNK7AstNode8isStringEv(ptr noundef nonnull align 8 dereferenceable(152) %i.oh)
  br i1 %i.bht, label %.preheader, label %._ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit1420_crit_edge

._ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit1420_crit_edge: ; preds = %bb.qv
  %.sroa.0.0.copyload.i.i.i1419.pre = load i16, ptr %i.qu, align 8, !tbaa !93
  br label %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit1420

.preheader:                                       ; preds = %bb.qv
  %.not.i13791700 = icmp eq ptr %i.hw, null
  br i1 %.not.i13791700, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPT_PT0_.exit
  %.01651701 = phi ptr [ %.3, %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPT_PT0_.exit ], [ %i.hw, %.preheader ] ; 3 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %.01651701, i64 64
  %.sroa.0.0.copyload.i.i.i1380 = load i16, ptr %i.bhu, align 8, !tbaa !93 ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i.i1380, label %bb.qw [
    i16 153, label %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPT_PT0_.exit
    i16 185, label %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPT_PT0_.exit
  ]

_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPT_PT0_.exit: ; preds = %.lr.ph, %.lr.ph
  %.3.in = getelementptr inbounds nuw i8, ptr %.01651701, i64 24
  %.3 = load ptr, ptr %.3.in, align 8, !tbaa !86  ; 2 uses
  %.not.i1379 = icmp eq ptr %.3, null
  br i1 %.not.i1379, label %.critedge, label %.lr.ph

bb.qw:                                            ; preds = %.lr.ph
  %i.bhv = add i16 %.sroa.0.0.copyload.i.i.i1380, -369
  %spec.select.i.i = icmp ult i16 %i.bhv, 2
  br i1 %spec.select.i.i, label %_ZN7AstNode4castI13AstNodeVarRef11AstNodeExprEEPT_PT0_.exit, label %.critedge

_ZN7AstNode4castI13AstNodeVarRef11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.qw
  %i.bhw = getelementptr inbounds nuw i8, ptr %.01651701, i64 176
  %.sroa.0.0.copyload.i1388 = load i8, ptr %i.bhw, align 8, !tbaa !193
  %i.bhx = icmp eq i8 %.sroa.0.0.copyload.i1388, 0
  br i1 %i.bhx, label %.critedge, label %bb.qy

.critedge:                                        ; preds = %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPT_PT0_.exit, %.preheader, %bb.qw, %_ZN7AstNode4castI13AstNodeVarRef11AstNodeExprEEPT_PT0_.exit
  %i.bhy = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26 ; 3 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bia = load ptr, ptr %i.bhz, align 8, !tbaa !96
  invoke void @_ZN8AstGetcNC2EP8FileLineP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(160) %i.bhy, ptr noundef %i.bia, ptr noundef %i.hw, ptr noundef %i.hz)
          to label %bb.ra unwind label %bb.qx

bb.qx:                                            ; preds = %.critedge
  %i.bib = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bhy, i64 noundef 160) #22
  br label %bb.xk

bb.qy:                                            ; preds = %_ZN7AstNode4castI13AstNodeVarRef11AstNodeExprEEPT_PT0_.exit
  %i.bic = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26 ; 3 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bie = load ptr, ptr %i.bid, align 8, !tbaa !96
  invoke void @_ZN11AstGetcRefNC2EP8FileLineP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(160) %i.bic, ptr noundef %i.bie, ptr noundef nonnull %i.hw, ptr noundef %i.hz)
          to label %bb.ra unwind label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.bif = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bic, i64 noundef 160) #22
  br label %bb.xk

bb.ra:                                            ; preds = %bb.qy, %.critedge
  %.0 = phi ptr [ %i.bhy, %.critedge ], [ %i.bic, %bb.qy ] ; 3 uses
  %i.big = call noundef i32 @_ZL5debugv()
  %i.bih = icmp sgt i32 %i.big, 5
  br i1 %i.bih, label %bb.rb, label %bb.xd, !prof !10

bb.rb:                                            ; preds = %bb.ra
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %134)
  %i.bii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %134, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1390 unwind label %bb.rh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1390: ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #21
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %135, ptr noundef nonnull @.str.1, i32 noundef 340)
          to label %bb.rc unwind label %bb.ri

bb.rc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1390
  %i.bij = load ptr, ptr %135, align 8, !tbaa !16
  %i.bik = getelementptr inbounds nuw i8, ptr %135, i64 8
  %i.bil = load i64, ptr %i.bik, align 8, !tbaa !17
  %i.bim = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %134, ptr noundef %i.bij, i64 noundef %i.bil)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1392 unwind label %bb.rj ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1392: ; preds = %bb.rc
  %i.bin = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bim, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1394 unwind label %bb.rj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1394: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1392
  %i.bio = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.bim, ptr noundef nonnull %.0)
          to label %bb.rd unwind label %bb.rj     ; 0 uses

bb.rd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1394
  %i.bip = load ptr, ptr %135, align 8, !tbaa !16 ; 2 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %135, i64 16 ; 2 uses
  %i.bir = icmp eq ptr %i.bip, %i.biq
  br i1 %i.bir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1395: ; preds = %bb.rd
  %i.bis = load i64, ptr %i.biq, align 8, !tbaa !18
  %i.bit = add i64 %i.bis, 1
  call void @_ZdlPvm(ptr noundef %i.bip, i64 noundef %i.bit) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397: ; preds = %bb.rd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1395
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %136, ptr noundef nonnull align 8 dereferenceable(112) %134)
          to label %bb.re unwind label %bb.rk

bb.re:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %137, ptr noundef nonnull align 8 dereferenceable(112) %134)
          to label %bb.rf unwind label %bb.rl

bb.rf:                                            ; preds = %bb.re
  %i.biu = getelementptr inbounds nuw i8, ptr %137, i64 8
  %i.biv = load i64, ptr %i.biu, align 8, !tbaa !17 ; 2 uses
  %i.biw = load ptr, ptr %136, align 8, !tbaa !16 ; 2 uses
  %i.bix = getelementptr i8, ptr %i.biw, i64 %i.biv
  %i.biy = getelementptr i8, ptr %i.bix, i64 -1
  %i.biz = load i8, ptr %i.biy, align 1, !tbaa !18
  %.not501 = icmp eq i8 %i.biz, 10
  %i.bja = load ptr, ptr %137, align 8, !tbaa !16 ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %137, i64 16 ; 2 uses
  %i.bjc = icmp eq ptr %i.bja, %i.bjb
  br i1 %i.bjc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1399: ; preds = %bb.rf
  %i.bjd = icmp ult i64 %i.biv, 16
  call void @llvm.assume(i1 %i.bjd)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1398: ; preds = %bb.rf
  %i.bje = load i64, ptr %i.bjb, align 8, !tbaa !18
  %i.bjf = add i64 %i.bje, 1
  call void @_ZdlPvm(ptr noundef %i.bja, i64 noundef %i.bjf) #22
  %.pre1711 = load ptr, ptr %136, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1400: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1398
  %i.bjg = phi ptr [ %i.biw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1399 ], [ %.pre1711, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1398 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #21
  %i.bjh = getelementptr inbounds nuw i8, ptr %136, i64 16 ; 2 uses
  %i.bji = icmp eq ptr %i.bjg, %i.bjh
  br i1 %i.bji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1401: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1400
  %i.bjj = load i64, ptr %i.bjh, align 8, !tbaa !18
  %i.bjk = add i64 %i.bjj, 1
  call void @_ZdlPvm(ptr noundef %i.bjg, i64 noundef %i.bjk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1401
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #21
  br i1 %.not501, label %bb.rm, label %bb.rg

bb.rg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1403
  %i.bjl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %134, i8 noundef signext 10)
          to label %bb.rm unwind label %bb.rh     ; 0 uses

bb.rh:                                            ; preds = %bb.rb, %bb.rg
  %i.bjm = landingpad { ptr, i32 }
          cleanup
  br label %bb.rq

bb.ri:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1390
  %i.bjn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1406

bb.rj:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1392, %bb.rc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1394
  %i.bjo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bjp = load ptr, ptr %135, align 8, !tbaa !16 ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %135, i64 16 ; 2 uses
  %i.bjr = icmp eq ptr %i.bjp, %i.bjq
  br i1 %i.bjr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1404: ; preds = %bb.rj
  %i.bjs = load i64, ptr %i.bjq, align 8, !tbaa !18
  %i.bjt = add i64 %i.bjs, 1
  call void @_ZdlPvm(ptr noundef %i.bjp, i64 noundef %i.bjt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1406: ; preds = %bb.rj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1404, %bb.ri
  %.pn497 = phi { ptr, i32 } [ %i.bjn, %bb.ri ], [ %i.bjo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1404 ], [ %i.bjo, %bb.rj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #21
  br label %bb.rq

bb.rk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397
  %i.bju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1409

bb.rl:                                            ; preds = %bb.re
  %i.bjv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #21
  %i.bjw = load ptr, ptr %136, align 8, !tbaa !16 ; 2 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %136, i64 16 ; 2 uses
  %i.bjy = icmp eq ptr %i.bjw, %i.bjx
  br i1 %i.bjy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1407: ; preds = %bb.rl
  %i.bjz = load i64, ptr %i.bjx, align 8, !tbaa !18
  %i.bka = add i64 %i.bjz, 1
  call void @_ZdlPvm(ptr noundef %i.bjw, i64 noundef %i.bka) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1409

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1409: ; preds = %bb.rl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1407, %bb.rk
  %.pn499 = phi { ptr, i32 } [ %i.bju, %bb.rk ], [ %i.bjv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1407 ], [ %i.bjv, %bb.rl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #21
  br label %bb.rq

bb.rm:                                            ; preds = %bb.rg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1403
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %138, ptr noundef nonnull align 8 dereferenceable(112) %134)
          to label %bb.rn unwind label %bb.ro

bb.rn:                                            ; preds = %bb.rm
  %i.bkb = load ptr, ptr %138, align 8, !tbaa !16
  %i.bkc = getelementptr inbounds nuw i8, ptr %138, i64 8
  %i.bkd = load i64, ptr %i.bkc, align 8, !tbaa !17
  %i.bke = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bkb, i64 noundef %i.bkd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1411 unwind label %bb.rp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1411: ; preds = %bb.rn
  %i.bkf = load ptr, ptr %138, align 8, !tbaa !16 ; 2 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %138, i64 16 ; 2 uses
  %i.bkh = icmp eq ptr %i.bkf, %i.bkg
  br i1 %i.bkh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1411
  %i.bki = load i64, ptr %i.bkg, align 8, !tbaa !18
  %i.bkj = add i64 %i.bki, 1
  call void @_ZdlPvm(ptr noundef %i.bkf, i64 noundef %i.bkj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %134) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #21
  br label %bb.xd

bb.ro:                                            ; preds = %bb.rm
  %i.bkk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417

bb.rp:                                            ; preds = %bb.rn
  %i.bkl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bkm = load ptr, ptr %138, align 8, !tbaa !16 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %138, i64 16 ; 2 uses
  %i.bko = icmp eq ptr %i.bkm, %i.bkn
  br i1 %i.bko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1415: ; preds = %bb.rp
  %i.bkp = load i64, ptr %i.bkn, align 8, !tbaa !18
  %i.bkq = add i64 %i.bkp, 1
  call void @_ZdlPvm(ptr noundef %i.bkm, i64 noundef %i.bkq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417: ; preds = %bb.rp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1415, %bb.ro
  %.pn502 = phi { ptr, i32 } [ %i.bkk, %bb.ro ], [ %i.bkl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1415 ], [ %i.bkl, %bb.rp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #21
  br label %bb.rq

bb.rq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1406, %bb.rh
  %.pn502.pn = phi { ptr, i32 } [ %.pn502, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417 ], [ %i.bjm, %bb.rh ], [ %.pn499, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1409 ], [ %.pn497, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1406 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %134) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #21
  br label %bb.xk

_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit1420: ; preds = %bb.eh, %._ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit1420_crit_edge
  %.sroa.0.0.copyload.i.i.i1530 = phi i16 [ %.sroa.0.0.copyload.i.i.i1419.pre, %._ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit1420_crit_edge ], [ %.sroa.0.0.copyload.i.i.i, %bb.eh ] ; 2 uses
  %i.bkr = icmp eq i16 %.sroa.0.0.copyload.i.i.i1530, 74
  br i1 %i.bkr, label %bb.rr, label %_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit

bb.rr:                                            ; preds = %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit1420
  %i.bks = call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #26 ; 7 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !96
  %i.bkv = invoke noundef ptr @_ZN15WidthSelVisitor11newSubLsbOfEP11AstNodeExprRK9VNumRange(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.hz, ptr noundef nonnull align 4 dereferenceable(12) %38)
          to label %bb.rs unwind label %bb.sa

bb.rs:                                            ; preds = %bb.rr
  invoke void @_ZN6AstSelC2EP8FileLineP11AstNodeExprS3_i(ptr noundef nonnull align 8 dereferenceable(184) %i.bks, ptr noundef %i.bku, ptr noundef %i.hw, ptr noundef %i.bkv, i32 noundef 1)
          to label %bb.rt unwind label %bb.sa

bb.rt:                                            ; preds = %bb.rs
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bks, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bkw, ptr noundef nonnull align 4 dereferenceable(12) %38, i64 9, i1 false), !tbaa.struct !92
  %i.bkx = call noundef i32 @_ZL5debugv()
  %i.bky = icmp sgt i32 %i.bkx, 5
  br i1 %i.bky, label %bb.ru, label %bb.sl, !prof !10

bb.ru:                                            ; preds = %bb.rt
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %139)
  %i.bkz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %139, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1422 unwind label %bb.sb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1422: ; preds = %bb.ru
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #21
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %140, ptr noundef nonnull @.str.1, i32 noundef 348)
          to label %bb.rv unwind label %bb.sc

bb.rv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1422
  %i.bla = load ptr, ptr %140, align 8, !tbaa !16
  %i.blb = getelementptr inbounds nuw i8, ptr %140, i64 8
  %i.blc = load i64, ptr %i.blb, align 8, !tbaa !17
  %i.bld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %139, ptr noundef %i.bla, i64 noundef %i.blc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1424 unwind label %bb.sd ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1424: ; preds = %bb.rv
  %i.ble = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bld, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1426 unwind label %bb.sd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1426: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1424
  %i.blf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.bld, ptr noundef nonnull %i.bks)
          to label %bb.rw unwind label %bb.sd     ; 0 uses

bb.rw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1426
  %i.blg = load ptr, ptr %140, align 8, !tbaa !16 ; 2 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %140, i64 16 ; 2 uses
  %i.bli = icmp eq ptr %i.blg, %i.blh
  br i1 %i.bli, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1427: ; preds = %bb.rw
  %i.blj = load i64, ptr %i.blh, align 8, !tbaa !18
  %i.blk = add i64 %i.blj, 1
  call void @_ZdlPvm(ptr noundef %i.blg, i64 noundef %i.blk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429: ; preds = %bb.rw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1427
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %141, ptr noundef nonnull align 8 dereferenceable(112) %139)
          to label %bb.rx unwind label %bb.se

bb.rx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %142, ptr noundef nonnull align 8 dereferenceable(112) %139)
          to label %bb.ry unwind label %bb.sf

bb.ry:                                            ; preds = %bb.rx
  %i.bll = getelementptr inbounds nuw i8, ptr %142, i64 8
  %i.blm = load i64, ptr %i.bll, align 8, !tbaa !17 ; 2 uses
  %i.bln = load ptr, ptr %141, align 8, !tbaa !16 ; 2 uses
  %i.blo = getelementptr i8, ptr %i.bln, i64 %i.blm
  %i.blp = getelementptr i8, ptr %i.blo, i64 -1
  %i.blq = load i8, ptr %i.blp, align 1, !tbaa !18
  %.not469 = icmp eq i8 %i.blq, 10
  %i.blr = load ptr, ptr %142, align 8, !tbaa !16 ; 2 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %142, i64 16 ; 2 uses
  %i.blt = icmp eq ptr %i.blr, %i.bls
  br i1 %i.blt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1430

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1431: ; preds = %bb.ry
  %i.blu = icmp ult i64 %i.blm, 16
  call void @llvm.assume(i1 %i.blu)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1430: ; preds = %bb.ry
  %i.blv = load i64, ptr %i.bls, align 8, !tbaa !18
  %i.blw = add i64 %i.blv, 1
  call void @_ZdlPvm(ptr noundef %i.blr, i64 noundef %i.blw) #22
  %.pre1709 = load ptr, ptr %141, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1432

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1432: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1431, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1430
  %i.blx = phi ptr [ %i.bln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1431 ], [ %.pre1709, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1430 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #21
  %i.bly = getelementptr inbounds nuw i8, ptr %141, i64 16 ; 2 uses
  %i.blz = icmp eq ptr %i.blx, %i.bly
  br i1 %i.blz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1433: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1432
  %i.bma = load i64, ptr %i.bly, align 8, !tbaa !18
  %i.bmb = add i64 %i.bma, 1
  call void @_ZdlPvm(ptr noundef %i.blx, i64 noundef %i.bmb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1435

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1435: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1433
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #21
  br i1 %.not469, label %bb.sg, label %bb.rz

bb.rz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1435
  %i.bmc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %139, i8 noundef signext 10)
          to label %bb.sg unwind label %bb.sb     ; 0 uses

bb.sa:                                            ; preds = %bb.rs, %bb.rr
  %i.bmd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bks, i64 noundef 184) #22
  br label %bb.xk

bb.sb:                                            ; preds = %bb.ru, %bb.rz
  %i.bme = landingpad { ptr, i32 }
          cleanup
  br label %bb.sk

bb.sc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1422
  %i.bmf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1438

bb.sd:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1424, %bb.rv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1426
  %i.bmg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bmh = load ptr, ptr %140, align 8, !tbaa !16 ; 2 uses
  %i.bmi = getelementptr inbounds nuw i8, ptr %140, i64 16 ; 2 uses
  %i.bmj = icmp eq ptr %i.bmh, %i.bmi
  br i1 %i.bmj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1438, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1436

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1436: ; preds = %bb.sd
  %i.bmk = load i64, ptr %i.bmi, align 8, !tbaa !18
  %i.bml = add i64 %i.bmk, 1
  call void @_ZdlPvm(ptr noundef %i.bmh, i64 noundef %i.bml) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1438

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1438: ; preds = %bb.sd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1436, %bb.sc
  %.pn465 = phi { ptr, i32 } [ %i.bmf, %bb.sc ], [ %i.bmg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1436 ], [ %i.bmg, %bb.sd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #21
  br label %bb.sk

bb.se:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429
  %i.bmm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1441

bb.sf:                                            ; preds = %bb.rx
  %i.bmn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #21
  %i.bmo = load ptr, ptr %141, align 8, !tbaa !16 ; 2 uses
  %i.bmp = getelementptr inbounds nuw i8, ptr %141, i64 16 ; 2 uses
  %i.bmq = icmp eq ptr %i.bmo, %i.bmp
  br i1 %i.bmq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1441, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1439: ; preds = %bb.sf
  %i.bmr = load i64, ptr %i.bmp, align 8, !tbaa !18
  %i.bms = add i64 %i.bmr, 1
  call void @_ZdlPvm(ptr noundef %i.bmo, i64 noundef %i.bms) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1441

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1441: ; preds = %bb.sf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1439, %bb.se
  %.pn467 = phi { ptr, i32 } [ %i.bmm, %bb.se ], [ %i.bmn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1439 ], [ %i.bmn, %bb.sf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #21
  br label %bb.sk

bb.sg:                                            ; preds = %bb.rz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1435
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %143, ptr noundef nonnull align 8 dereferenceable(112) %139)
          to label %bb.sh unwind label %bb.si

bb.sh:                                            ; preds = %bb.sg
  %i.bmt = load ptr, ptr %143, align 8, !tbaa !16
  %i.bmu = getelementptr inbounds nuw i8, ptr %143, i64 8
  %i.bmv = load i64, ptr %i.bmu, align 8, !tbaa !17
  %i.bmw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bmt, i64 noundef %i.bmv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1443 unwind label %bb.sj ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1443: ; preds = %bb.sh
  %i.bmx = load ptr, ptr %143, align 8, !tbaa !16 ; 2 uses
  %i.bmy = getelementptr inbounds nuw i8, ptr %143, i64 16 ; 2 uses
  %i.bmz = icmp eq ptr %i.bmx, %i.bmy
  br i1 %i.bmz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1444: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1443
  %i.bna = load i64, ptr %i.bmy, align 8, !tbaa !18
  %i.bnb = add i64 %i.bna, 1
  call void @_ZdlPvm(ptr noundef %i.bmx, i64 noundef %i.bnb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1446: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1444
end_hunk_1
begin_hunk_2_@_ZN15WidthSelVisitor5visitEP9AstSelBit:bb.a
bb.tx:                                            ; preds = %bb.tw
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %155, ptr noundef nonnull align 8 dereferenceable(32) %156, ptr noundef nonnull align 8 dereferenceable(32) %158)
          to label %bb.ty unwind label %bb.ud

bb.ty:                                            ; preds = %bb.tx
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %154, ptr noundef nonnull align 8 dereferenceable(32) %155, ptr noundef nonnull @.str.12)
          to label %bb.tz unwind label %bb.ue

bb.tz:                                            ; preds = %bb.ty
  invoke void @_ZNK7AstNode8dumpTreeERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(152) %i.bks, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 8 dereferenceable(32) %154, i32 noundef 0)
          to label %_ZNK7AstNode8dumpTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit1498 unwind label %bb.uf

_ZNK7AstNode8dumpTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit1498: ; preds = %bb.tz
  %i.brl = load ptr, ptr %154, align 8, !tbaa !16 ; 2 uses
  %i.brm = getelementptr inbounds nuw i8, ptr %154, i64 16 ; 2 uses
  %i.brn = icmp eq ptr %i.brl, %i.brm
  br i1 %i.brn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1499: ; preds = %_ZNK7AstNode8dumpTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit1498
  %i.bro = load i64, ptr %i.brm, align 8, !tbaa !18
  %i.brp = add i64 %i.bro, 1
  call void @_ZdlPvm(ptr noundef %i.brl, i64 noundef %i.brp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1501

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1501: ; preds = %_ZNK7AstNode8dumpTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit1498, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1499
  %i.brq = load ptr, ptr %155, align 8, !tbaa !16 ; 2 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %155, i64 16 ; 2 uses
  %i.brs = icmp eq ptr %i.brq, %i.brr
  br i1 %i.brs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1502

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1502: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1501
  %i.brt = load i64, ptr %i.brr, align 8, !tbaa !18
  %i.bru = add i64 %i.brt, 1
  call void @_ZdlPvm(ptr noundef %i.brq, i64 noundef %i.bru) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1504: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1501, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1502
  %i.brv = load ptr, ptr %158, align 8, !tbaa !16 ; 2 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %158, i64 16 ; 2 uses
  %i.brx = icmp eq ptr %i.brv, %i.brw
  br i1 %i.brx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1507, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1505

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1505: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1504
  %i.bry = load i64, ptr %i.brw, align 8, !tbaa !18
  %i.brz = add i64 %i.bry, 1
  call void @_ZdlPvm(ptr noundef %i.brv, i64 noundef %i.brz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1507

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1507: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1504, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1505
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #21
  %i.bsa = load ptr, ptr %156, align 8, !tbaa !16 ; 2 uses
  %i.bsb = getelementptr inbounds nuw i8, ptr %156, i64 16 ; 2 uses
  %i.bsc = icmp eq ptr %i.bsa, %i.bsb
  br i1 %i.bsc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1510, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1508

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1508: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1507
  %i.bsd = load i64, ptr %i.bsb, align 8, !tbaa !18
  %i.bse = add i64 %i.bsd, 1
  call void @_ZdlPvm(ptr noundef %i.bsa, i64 noundef %i.bse) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1510

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1510: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1507, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1508
  %i.bsf = load ptr, ptr %157, align 8, !tbaa !16 ; 2 uses
  %i.bsg = getelementptr inbounds nuw i8, ptr %157, i64 16 ; 2 uses
  %i.bsh = icmp eq ptr %i.bsf, %i.bsg
  br i1 %i.bsh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1513, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1511

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1511: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1510
  %i.bsi = load i64, ptr %i.bsg, align 8, !tbaa !18
  %i.bsj = add i64 %i.bsi, 1
  call void @_ZdlPvm(ptr noundef %i.bsf, i64 noundef %i.bsj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1513

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1513: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1510, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1511
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %152) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %144) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #21
  br label %bb.xd

bb.ua:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1496
  %i.bsk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1528

bb.ub:                                            ; preds = %bb.tv
  %i.bsl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525

bb.uc:                                            ; preds = %bb.tw
  %i.bsm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522

bb.ud:                                            ; preds = %bb.tx
  %i.bsn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1519

bb.ue:                                            ; preds = %bb.ty
  %i.bso = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1516

bb.uf:                                            ; preds = %bb.tz
  %i.bsp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bsq = load ptr, ptr %154, align 8, !tbaa !16 ; 2 uses
  %i.bsr = getelementptr inbounds nuw i8, ptr %154, i64 16 ; 2 uses
  %i.bss = icmp eq ptr %i.bsq, %i.bsr
  br i1 %i.bss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1516, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1514: ; preds = %bb.uf
  %i.bst = load i64, ptr %i.bsr, align 8, !tbaa !18
  %i.bsu = add i64 %i.bst, 1
  call void @_ZdlPvm(ptr noundef %i.bsq, i64 noundef %i.bsu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1516

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1516: ; preds = %bb.uf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1514, %bb.ue
  %.pn484 = phi { ptr, i32 } [ %i.bso, %bb.ue ], [ %i.bsp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1514 ], [ %i.bsp, %bb.uf ] ; 2 uses
  %i.bsv = load ptr, ptr %155, align 8, !tbaa !16 ; 2 uses
  %i.bsw = getelementptr inbounds nuw i8, ptr %155, i64 16 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1519, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1517

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1517: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1516
  %i.bsy = load i64, ptr %i.bsw, align 8, !tbaa !18
  %i.bsz = add i64 %i.bsy, 1
  call void @_ZdlPvm(ptr noundef %i.bsv, i64 noundef %i.bsz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1519

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1519: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1516, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1517, %bb.ud
  %.pn484.pn = phi { ptr, i32 } [ %i.bsn, %bb.ud ], [ %.pn484, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1517 ], [ %.pn484, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1516 ] ; 2 uses
  %i.bta = load ptr, ptr %158, align 8, !tbaa !16 ; 2 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %158, i64 16 ; 2 uses
  %i.btc = icmp eq ptr %i.bta, %i.btb
  br i1 %i.btc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1520: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1519
  %i.btd = load i64, ptr %i.btb, align 8, !tbaa !18
  %i.bte = add i64 %i.btd, 1
  call void @_ZdlPvm(ptr noundef %i.bta, i64 noundef %i.bte) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1519, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1520, %bb.uc
  %.pn484.pn.pn = phi { ptr, i32 } [ %i.bsm, %bb.uc ], [ %.pn484.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1520 ], [ %.pn484.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1519 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #21
  %i.btf = load ptr, ptr %156, align 8, !tbaa !16 ; 2 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %156, i64 16 ; 2 uses
  %i.bth = icmp eq ptr %i.btf, %i.btg
  br i1 %i.bth, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1523

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1523: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522
  %i.bti = load i64, ptr %i.btg, align 8, !tbaa !18
  %i.btj = add i64 %i.bti, 1
  call void @_ZdlPvm(ptr noundef %i.btf, i64 noundef %i.btj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1523, %bb.ub
  %.pn484.pn.pn.pn = phi { ptr, i32 } [ %i.bsl, %bb.ub ], [ %.pn484.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1523 ], [ %.pn484.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522 ] ; 2 uses
  %i.btk = load ptr, ptr %157, align 8, !tbaa !16 ; 2 uses
  %i.btl = getelementptr inbounds nuw i8, ptr %157, i64 16 ; 2 uses
  %i.btm = icmp eq ptr %i.btk, %i.btl
  br i1 %i.btm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1528, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1526

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1526: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525
  %i.btn = load i64, ptr %i.btl, align 8, !tbaa !18
  %i.bto = add i64 %i.btn, 1
  call void @_ZdlPvm(ptr noundef %i.btk, i64 noundef %i.bto) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1528

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1528: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1526, %bb.ua
  %.pn484.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bsk, %bb.ua ], [ %.pn484.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1526 ], [ %.pn484.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #21
  br label %bb.ug

bb.ug:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1528, %bb.tu, %bb.tt
  %.pn484.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn484.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1528 ], [ %i.brj, %bb.tt ], [ %i.brk, %bb.tu ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %152) #21
  br label %bb.uh

bb.uh:                                            ; preds = %bb.ug, %bb.ts
  %.pn484.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn484.pn.pn.pn.pn.pn, %bb.ug ], [ %i.bri, %bb.ts ]
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #21
  br label %bb.ui

bb.ui:                                            ; preds = %bb.uh, %bb.tn, %bb.sy, %bb.sx
  %.pn484.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn484.pn.pn.pn.pn.pn.pn, %bb.uh ], [ %.pn480.pn.pn, %bb.tn ], [ %i.bpi, %bb.sx ], [ %i.bpj, %bb.sy ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %144) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #21
  br label %bb.xk

_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit1420
  %i.btp = and i16 %.sroa.0.0.copyload.i.i.i1530, -2
  %spec.select.i.i1531 = icmp eq i16 %i.btp, 100
  br i1 %spec.select.i.i1531, label %bb.uj, label %_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit.thread

bb.uj:                                            ; preds = %_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit
  %i.btq = call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #26 ; 7 uses
  %i.btr = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bts = load ptr, ptr %i.btr, align 8, !tbaa !96
  %i.btt = invoke noundef ptr @_ZN15WidthSelVisitor11newSubLsbOfEP11AstNodeExprRK9VNumRange(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.hz, ptr noundef nonnull align 4 dereferenceable(12) %38)
          to label %bb.uk unwind label %bb.us

bb.uk:                                            ; preds = %bb.uj
  invoke void @_ZN6AstSelC2EP8FileLineP11AstNodeExprS3_i(ptr noundef nonnull align 8 dereferenceable(184) %i.btq, ptr noundef %i.bts, ptr noundef %i.hw, ptr noundef %i.btt, i32 noundef 1)
          to label %bb.ul unwind label %bb.us

bb.ul:                                            ; preds = %bb.uk
  %i.btu = getelementptr inbounds nuw i8, ptr %i.btq, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.btu, ptr noundef nonnull align 4 dereferenceable(12) %38, i64 9, i1 false), !tbaa.struct !92
  %i.btv = call noundef i32 @_ZL5debugv()
  %i.btw = icmp sgt i32 %i.btv, 5
  br i1 %i.btw, label %bb.um, label %bb.vd, !prof !10

bb.um:                                            ; preds = %bb.ul
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %159)
  %i.btx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %159, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1533 unwind label %bb.ut ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1533: ; preds = %bb.um
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #21
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %160, ptr noundef nonnull @.str.1, i32 noundef 357)
          to label %bb.un unwind label %bb.uu

bb.un:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1533
  %i.bty = load ptr, ptr %160, align 8, !tbaa !16
  %i.btz = getelementptr inbounds nuw i8, ptr %160, i64 8
  %i.bua = load i64, ptr %i.btz, align 8, !tbaa !17
  %i.bub = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %159, ptr noundef %i.bty, i64 noundef %i.bua)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1535 unwind label %bb.uv ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1535: ; preds = %bb.un
  %i.buc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bub, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1537 unwind label %bb.uv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1537: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1535
  %i.bud = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.bub, ptr noundef nonnull %i.btq)
          to label %bb.uo unwind label %bb.uv     ; 0 uses

bb.uo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1537
  %i.bue = load ptr, ptr %160, align 8, !tbaa !16 ; 2 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %160, i64 16 ; 2 uses
  %i.bug = icmp eq ptr %i.bue, %i.buf
  br i1 %i.bug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1538

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1538: ; preds = %bb.uo
  %i.buh = load i64, ptr %i.buf, align 8, !tbaa !18
  %i.bui = add i64 %i.buh, 1
  call void @_ZdlPvm(ptr noundef %i.bue, i64 noundef %i.bui) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540: ; preds = %bb.uo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1538
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %161, ptr noundef nonnull align 8 dereferenceable(112) %159)
          to label %bb.up unwind label %bb.uw

bb.up:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %162, ptr noundef nonnull align 8 dereferenceable(112) %159)
          to label %bb.uq unwind label %bb.ux

bb.uq:                                            ; preds = %bb.up
  %i.buj = getelementptr inbounds nuw i8, ptr %162, i64 8
  %i.buk = load i64, ptr %i.buj, align 8, !tbaa !17 ; 2 uses
  %i.bul = load ptr, ptr %161, align 8, !tbaa !16 ; 2 uses
  %i.bum = getelementptr i8, ptr %i.bul, i64 %i.buk
  %i.bun = getelementptr i8, ptr %i.bum, i64 -1
  %i.buo = load i8, ptr %i.bun, align 1, !tbaa !18
  %.not440 = icmp eq i8 %i.buo, 10
  %i.bup = load ptr, ptr %162, align 8, !tbaa !16 ; 2 uses
  %i.buq = getelementptr inbounds nuw i8, ptr %162, i64 16 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1542: ; preds = %bb.uq
  %i.bus = icmp ult i64 %i.buk, 16
  call void @llvm.assume(i1 %i.bus)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1541: ; preds = %bb.uq
  %i.but = load i64, ptr %i.buq, align 8, !tbaa !18
  %i.buu = add i64 %i.but, 1
  call void @_ZdlPvm(ptr noundef %i.bup, i64 noundef %i.buu) #22
  %.pre1707 = load ptr, ptr %161, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1542, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1541
  %i.buv = phi ptr [ %i.bul, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1542 ], [ %.pre1707, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1541 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #21
  %i.buw = getelementptr inbounds nuw i8, ptr %161, i64 16 ; 2 uses
  %i.bux = icmp eq ptr %i.buv, %i.buw
  br i1 %i.bux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1544

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1544: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543
  %i.buy = load i64, ptr %i.buw, align 8, !tbaa !18
  %i.buz = add i64 %i.buy, 1
  call void @_ZdlPvm(ptr noundef %i.buv, i64 noundef %i.buz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1544
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #21
  br i1 %.not440, label %bb.uy, label %bb.ur

bb.ur:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546
  %i.bva = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %159, i8 noundef signext 10)
          to label %bb.uy unwind label %bb.ut     ; 0 uses

bb.us:                                            ; preds = %bb.uk, %bb.uj
  %i.bvb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.btq, i64 noundef 184) #22
  br label %bb.xk

bb.ut:                                            ; preds = %bb.um, %bb.ur
  %i.bvc = landingpad { ptr, i32 }
          cleanup
  br label %bb.vc

bb.uu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1533
  %i.bvd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1549

bb.uv:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1535, %bb.un, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1537
  %i.bve = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bvf = load ptr, ptr %160, align 8, !tbaa !16 ; 2 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %160, i64 16 ; 2 uses
  %i.bvh = icmp eq ptr %i.bvf, %i.bvg
  br i1 %i.bvh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1549, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1547

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1547: ; preds = %bb.uv
  %i.bvi = load i64, ptr %i.bvg, align 8, !tbaa !18
  %i.bvj = add i64 %i.bvi, 1
  call void @_ZdlPvm(ptr noundef %i.bvf, i64 noundef %i.bvj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1549

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1549: ; preds = %bb.uv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1547, %bb.uu
  %.pn436 = phi { ptr, i32 } [ %i.bvd, %bb.uu ], [ %i.bve, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1547 ], [ %i.bve, %bb.uv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #21
  br label %bb.vc

bb.uw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540
  %i.bvk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1552

bb.ux:                                            ; preds = %bb.up
  %i.bvl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #21
  %i.bvm = load ptr, ptr %161, align 8, !tbaa !16 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %161, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1552, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1550

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1550: ; preds = %bb.ux
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !18
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1552

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1552: ; preds = %bb.ux, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1550, %bb.uw
  %.pn438 = phi { ptr, i32 } [ %i.bvk, %bb.uw ], [ %i.bvl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1550 ], [ %i.bvl, %bb.ux ]
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #21
  br label %bb.vc

bb.uy:                                            ; preds = %bb.ur, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %163, ptr noundef nonnull align 8 dereferenceable(112) %159)
          to label %bb.uz unwind label %bb.va

bb.uz:                                            ; preds = %bb.uy
  %i.bvr = load ptr, ptr %163, align 8, !tbaa !16
  %i.bvs = getelementptr inbounds nuw i8, ptr %163, i64 8
  %i.bvt = load i64, ptr %i.bvs, align 8, !tbaa !17
  %i.bvu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bvr, i64 noundef %i.bvt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1554 unwind label %bb.vb ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1554: ; preds = %bb.uz
  %i.bvv = load ptr, ptr %163, align 8, !tbaa !16 ; 2 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %163, i64 16 ; 2 uses
  %i.bvx = icmp eq ptr %i.bvv, %i.bvw
  br i1 %i.bvx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1557, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1555

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1555: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1554
  %i.bvy = load i64, ptr %i.bvw, align 8, !tbaa !18
  %i.bvz = add i64 %i.bvy, 1
  call void @_ZdlPvm(ptr noundef %i.bvv, i64 noundef %i.bvz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1557

end_hunk_2
