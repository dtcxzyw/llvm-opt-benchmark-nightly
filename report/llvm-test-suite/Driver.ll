inline.NumInlined: 244
inline.NumDeleted: 83
begin_hunk_0_@_ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ad)
          to label %.noexc106 unwind label %bb.m

.noexc106:                                        ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef signext i8 %i.ak(ptr noundef nonnull align 8 dereferenceable(570) %i.ad, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.m, !inline_history !42

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc106, %bb.e
  %.0.i.i.i = phi i8 [ %i.ah, %bb.e ], [ %i.al, %.noexc106 ]
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc108 unwind label %bb.m

.noexc108:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.m ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc108
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ap = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20 ; 6 uses
  %.not.i.i.i110 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i110, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !36
  %.not.i1.i.i112 = icmp eq i8 %i.aw, 0
  br i1 %.not.i1.i.i112, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 67
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i113

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.au)
          to label %.noexc116 unwind label %bb.m

.noexc116:                                        ; preds = %bb.h
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef signext i8 %i.bb(ptr noundef nonnull align 8 dereferenceable(570) %i.au, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i113 unwind label %bb.m, !inline_history !42

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i113: ; preds = %.noexc116, %bb.g
  %.0.i.i.i114 = phi i8 [ %i.ay, %bb.g ], [ %i.bc, %.noexc116 ]
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i114)
          to label %.noexc118 unwind label %bb.m

.noexc118:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i113
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %_ZNSolsEPFRSoS_E.exit33 unwind label %bb.m ; 0 uses

_ZNSolsEPFRSoS_E.exit33:                          ; preds = %.noexc118
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZNSolsEPFRSoS_E.exit33
  %i.bg = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !20 ; 6 uses
  %.not.i.i.i121 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i121, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i122

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i122: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !36
  %.not.i1.i.i123 = icmp eq i8 %i.bn, 0
  br i1 %.not.i1.i.i123, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i122
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 67
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i124

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i122
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl)
          to label %.noexc127 unwind label %bb.m

.noexc127:                                        ; preds = %bb.j
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef signext i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i124 unwind label %bb.m, !inline_history !42

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i124: ; preds = %.noexc127, %bb.i
  %.0.i.i.i125 = phi i8 [ %i.bp, %bb.i ], [ %i.bt, %.noexc127 ]
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i125)
          to label %.noexc129 unwind label %bb.m

.noexc129:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i124
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %_ZNSolsEPFRSoS_E.exit35.a unwind label %bb.m ; 0 uses

_ZNSolsEPFRSoS_E.exit35.a:                        ; preds = %.noexc129
  %i.bw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 240
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !20 ; 6 uses
  %.not.i.i.i132 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i132, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i133

.invoke:                                          ; preds = %_ZNSolsEPFRSoS_E.exit35.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #16
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i133: ; preds = %_ZNSolsEPFRSoS_E.exit35.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !36
  %.not.i1.i.i134 = icmp eq i8 %i.cd, 0
  br i1 %.not.i1.i.i134, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i133
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 67
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i135

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i133
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cb)
          to label %.noexc138 unwind label %bb.m

.noexc138:                                        ; preds = %bb.l
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = invoke noundef signext i8 %i.ci(ptr noundef nonnull align 8 dereferenceable(570) %i.cb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i135 unwind label %bb.m, !inline_history !42

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i135: ; preds = %.noexc138, %bb.k
  %.0.i.i.i136 = phi i8 [ %i.cf, %bb.k ], [ %i.cj, %.noexc138 ]
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i136)
          to label %.noexc140 unwind label %bb.m

.noexc140:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i135
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
          to label %_ZNSolsEPFRSoS_E.exit36 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %.invoke, %.noexc140, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i135, %.noexc138, %bb.l, %.noexc129, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i124, %.noexc127, %bb.j, %.noexc118, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i113, %.noexc116, %bb.h, %.noexc108, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc106, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %bb.q, %_ZNSolsEPFRSoS_E.exit33, %_ZNSolsEPFRSoS_E.exit, %bb.d, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNSolsEPFRSoS_E.exit36:                          ; preds = %.noexc140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.cn, ptr %3, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cn, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.co, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.cp, align 1, !tbaa !17
  %i.cq = invoke noundef i32 @_ZNK9InputFile6getIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 999999)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZNSolsEPFRSoS_E.exit36
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !43
  %i.cs = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cn
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cu = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.cw, ptr %4, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cw, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.cx, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.cy, align 1, !tbaa !17
  %i.cz = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, double noundef f0x547D42AEA2879F2E)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store double %i.cz, ptr %i.da, align 8, !tbaa !48
  %i.db = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cw
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.o
  %i.dd = load i64, ptr %i.cw, align 8, !tbaa !17
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.df = load i32, ptr %i.cr, align 8, !tbaa !43
  %i.dg = icmp eq i32 %i.df, 999999
  br i1 %i.dg, label %9, label %._crit_edge.i.i56

9:                                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %10 = load double, ptr %i.da, align 8, !tbaa !48
  %11 = fcmp oeq double %10, f0x547D42AEA2879F2E
  br i1 %11, label %bb.p, label %._crit_edge.i.i56

bb.p:                                             ; preds = %9
  %i.dh = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.q, label %_ZNSolsEPFRSoS_E.exit49

bb.q:                                             ; preds = %bb.p
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %bb.q
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit49 unwind label %bb.m, !inline_history !49 ; 0 uses

bb.r:                                             ; preds = %_ZNSolsEPFRSoS_E.exit36
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cn
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.r
  %i.do = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.ah

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cw
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.s
  %i.dt = load i64, ptr %i.cw, align 8, !tbaa !17
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.ah

_ZNSolsEPFRSoS_E.exit49:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %bb.p
  call void @exit(i32 noundef 1) #18
  unreachable

._crit_edge.i.i56:                                ; preds = %9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.dv, ptr %5, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.dv, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %i.dw, align 8, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 21
  store i8 0, ptr %i.dx, align 1, !tbaa !17
  %i.dy = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, double noundef f0x547D42AEA2879F2E)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %._crit_edge.i.i56
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.dy, ptr %i.dz, align 8, !tbaa !50
  %i.ea = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.dv
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.t
  %i.ec = load i64, ptr %i.dv, align 8, !tbaa !17
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ee, ptr %6, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ee, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i64 6, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.ef, align 8, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.eg, align 2, !tbaa !17
  %i.eh = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, double noundef f0x547D42AEA2879F2E)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.eh, ptr %i.ei, align 8, !tbaa !51
  %i.ej = load ptr, ptr %6, align 8, !tbaa !12    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ee
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.u
  %i.el = load i64, ptr %i.ee, align 8, !tbaa !17
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.en, ptr %7, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.en, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %i.eo, align 8, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.ep, align 1, !tbaa !17
  %i.eq = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, double noundef 1.200000e+00)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.eq, ptr %i.er, align 8, !tbaa !52
  %i.es = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.en
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.v
  %i.eu = load i64, ptr %i.en, align 8, !tbaa !17
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ew, ptr %8, align 8, !tbaa !8
  store i64 8390891584273675364, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.ex, align 8, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.ey, align 8, !tbaa !17
  %i.ez = invoke noundef i32 @_ZNK9InputFile6getIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 10)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ez, ptr %i.fa, align 8, !tbaa !53
  %i.fb = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ew
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.w
  %i.fd = load i64, ptr %i.ew, align 8, !tbaa !17
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ff = invoke noalias noundef nonnull dereferenceable(616) ptr @_Znwm(i64 noundef 616) #19
          to label %bb.x unwind label %bb.m       ; 4 uses

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  invoke void @_ZN4MeshC1EPK9InputFile(ptr noundef nonnull align 8 dereferenceable(616) %i.ff, ptr noundef nonnull %1)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  store ptr %i.ff, ptr %0, align 8, !tbaa !54
  %i.fg = invoke noalias noundef nonnull dereferenceable(408) ptr @_Znwm(i64 noundef 408) #19
          to label %bb.z unwind label %bb.m       ; 3 uses

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5HydroC1EPK9InputFileP4Mesh(ptr noundef nonnull align 8 dereferenceable(408) %i.fg, ptr noundef nonnull %1, ptr noundef nonnull %i.ff)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !55
  ret void

bb.ab:                                            ; preds = %._crit_edge.i.i56
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.dv
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.ab
  %i.fl = load i64, ptr %i.dv, align 8, !tbaa !17
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.ah

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %6, align 8, !tbaa !12    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ee
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.ac
  %i.fq = load i64, ptr %i.ee, align 8, !tbaa !17
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ah

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.fs = landingpad { ptr, i32 }
          cleanup
  %i.ft = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.en
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.ad
  %i.fv = load i64, ptr %i.en, align 8, !tbaa !17
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.ew
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.ae
  %i.ga = load i64, ptr %i.ew, align 8, !tbaa !17
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.ah

bb.af:                                            ; preds = %bb.x
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 616) #17
  br label %bb.ah

bb.ag:                                            ; preds = %bb.z
end_hunk_0
