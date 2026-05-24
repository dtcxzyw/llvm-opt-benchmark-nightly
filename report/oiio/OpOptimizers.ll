inline.NumInlined: 568
inline.NumDeleted: 188
begin_hunk_0_@_ZN16OpenColorIO_v2_510OpRcPtrVec8optimizeENS_17OptimizationFlagsE:bb.a

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.k)
          to label %.noexc368 unwind label %bb.r

.noexc368:                                        ; preds = %bb.e
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.r, !inline_history !47

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc368, %bb.d
  %.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.s, %.noexc368 ]
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %34, i8 noundef signext %.0.i.i.i)
          to label %.noexc370 unwind label %bb.r

.noexc370:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.r ; 4 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc370
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24 ; 6 uses
  %.not.i.i.i372 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i372, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !41
  %.not.i1.i.i374 = icmp eq i8 %i.ad, 0
  br i1 %.not.i1.i.i374, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 67
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ab)
          to label %.noexc378 unwind label %bb.r

.noexc378:                                        ; preds = %bb.g
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(570) %i.ab, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375 unwind label %bb.r, !inline_history !47

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375: ; preds = %.noexc378, %bb.f
  %.0.i.i.i376 = phi i8 [ %i.af, %bb.f ], [ %i.aj, %.noexc378 ]
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext %.0.i.i.i376)
          to label %.noexc380 unwind label %bb.r

.noexc380:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_ZNSolsEPFRSoS_E.exit111 unwind label %bb.r ; 4 uses

_ZNSolsEPFRSoS_E.exit111:                         ; preds = %.noexc380
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.1, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112: ; preds = %_ZNSolsEPFRSoS_E.exit111
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !17
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 240
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24 ; 6 uses
  %.not.i.i.i383 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i383, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load i8, ptr %i.at, align 8, !tbaa !41
  %.not.i1.i.i385 = icmp eq i8 %i.au, 0
  br i1 %.not.i1.i.i385, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 67
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.as)
          to label %.noexc389 unwind label %bb.r

.noexc389:                                        ; preds = %bb.i
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef signext i8 %i.az(ptr noundef nonnull align 8 dereferenceable(570) %i.as, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386 unwind label %bb.r, !inline_history !47

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386: ; preds = %.noexc389, %bb.h
  %.0.i.i.i387 = phi i8 [ %i.aw, %bb.h ], [ %i.ba, %.noexc389 ]
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i8 noundef signext %.0.i.i.i387)
          to label %.noexc391 unwind label %bb.r

.noexc391:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %_ZNSolsEPFRSoS_E.exit113 unwind label %bb.r

_ZNSolsEPFRSoS_E.exit113:                         ; preds = %.noexc391
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #14
  invoke void @_ZN16OpenColorIO_v2_514SerializeOpVecB5cxx11ERKNS_10OpRcPtrVecEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef 4)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %_ZNSolsEPFRSoS_E.exit113
  %i.bd = load ptr, ptr %35, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !52
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.t ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.j
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !17
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 240
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !24 ; 6 uses
  %.not.i.i.i394 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i394, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i395

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.noexc399 unwind label %bb.t

.noexc399:                                        ; preds = %bb.k
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i395: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !41
  %.not.i1.i.i396 = icmp eq i8 %i.bo, 0
  br i1 %.not.i1.i.i396, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i395
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 67
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i397

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i395
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bm)
          to label %.noexc400 unwind label %bb.t

.noexc400:                                        ; preds = %bb.m
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef signext i8 %i.bt(ptr noundef nonnull align 8 dereferenceable(570) %i.bm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i397 unwind label %bb.t, !inline_history !47

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i397: ; preds = %.noexc400, %bb.l
  %.0.i.i.i398 = phi i8 [ %i.bq, %bb.l ], [ %i.bu, %.noexc400 ]
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i8 noundef signext %.0.i.i.i398)
          to label %.noexc402 unwind label %bb.t

.noexc402:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i397
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %_ZNSolsEPFRSoS_E.exit114 unwind label %bb.t ; 0 uses

_ZNSolsEPFRSoS_E.exit114:                         ; preds = %.noexc402
  %i.bx = load ptr, ptr %35, align 8, !tbaa !48   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit114
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !16
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.cc = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  store ptr %i.cc, ptr %36, align 8, !tbaa !59, !alias.scope !60
  %i.cd = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 0, ptr %i.cd, align 8, !tbaa !52, !alias.scope !60
  store i8 0, ptr %i.cc, align 8, !tbaa !16, !alias.scope !60
  %i.ce = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !61, !noalias !60 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.cf, null
  br i1 %.not5.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %45 = getelementptr inbounds nuw i8, ptr %34, i64 32
  %46 = load ptr, ptr %45, align 8, !noalias !60  ; 2 uses
  %47 = icmp ugt ptr %i.cf, %46
  %.08.i.i.i = select i1 %47, ptr %i.cf, ptr %46
  %i.cg = getelementptr inbounds nuw i8, ptr %34, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !63, !noalias !60 ; 2 uses
  %i.ci = ptrtoint ptr %.08.i.i.i to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef 0, i64 noundef 0, ptr noundef %i.ch, i64 noundef %i.ck)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %36, align 8, !tbaa !48, !alias.scope !60 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.cc
  br i1 %i.co, label %.body, label %.body.sink.split

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %34, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.p, %bb.n
  invoke void @_ZN16OpenColorIO_v2_58LogDebugERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cq = load ptr, ptr %36, align 8, !tbaa !48   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cc
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.q
  %i.cs = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #14
  %i.cu = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cu, ptr %34, align 8, !tbaa !17
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cw = getelementptr i8, ptr %i.cu, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %34, i64 %i.cx
  store ptr %i.cv, ptr %i.cy, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cz, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %34, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !48 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %34, i64 96 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !16
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cz, align 8, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %34, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dg) #14
  %i.dh = getelementptr inbounds nuw i8, ptr %34, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #14
  br label %bb.w

bb.r:                                             ; preds = %.invoke, %.noexc391, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386, %.noexc389, %bb.i, %.noexc380, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375, %.noexc378, %bb.g, %.noexc370, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc368, %bb.e, %_ZNSolsEPFRSoS_E.exit111, %_ZNSolsEPFRSoS_E.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZNSolsEPFRSoS_E.exit113
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.t:                                             ; preds = %.noexc402, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i397, %.noexc400, %bb.m, %bb.k, %bb.j
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %35, align 8, !tbaa !48   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.t
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !16
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %bb.s
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.s ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %i.dk, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #14
  br label %bb.v

bb.u:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %36, align 8, !tbaa !48   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cc
  br i1 %i.ds, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.u, %bb.o
  %.sink = phi ptr [ %i.cn, %bb.o ], [ %i.dr, %bb.u ]
  %.pn92.ph = phi { ptr, i32 } [ %i.cm, %bb.o ], [ %i.dq, %bb.u ]
  %i.dt = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.du) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.u, %bb.o
  %.pn92 = phi { ptr, i32 } [ %i.cm, %bb.o ], [ %i.dq, %bb.u ], [ %.pn92.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #14
  br label %bb.v

bb.v:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %bb.r
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.di, %bb.r ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %34) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #14
  br label %common.resume

bb.w:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !64  ; 3 uses
  %i.dw = load ptr, ptr %0, align 8, !tbaa !66    ; 3 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 4                 ; 2 uses
  %.not22.i = icmp eq ptr %i.dw, %i.dv
  br i1 %.not22.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115RemoveNoOpTypesERNS_10OpRcPtrVecE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %.lr.ph.i
  %.024.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 2 uses
  %.sroa.017.023.i = phi ptr [ %i.dw, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #14
  %i.ed = load ptr, ptr %.sroa.017.023.i, align 8, !tbaa !10 ; 3 uses
  store ptr %i.ed, ptr %32, align 8, !tbaa !67
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.017.023.i, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !15 ; 3 uses
  store ptr %i.ef, ptr %i.eb, align 8, !tbaa !15
  %.not.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.ek = atomicrmw volatile add ptr %i.eg, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %32, align 8, !tbaa !67
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i

_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i: ; preds = %bb.aa, %bb.z, %bb.x
  %i.el = phi ptr [ %i.ed, %bb.x ], [ %i.ed, %bb.z ], [ %.pre.i, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !75, !noalias !78 ; 3 uses
  store ptr %i.en, ptr %33, align 8, !tbaa !79, !alias.scope !78
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !15, !noalias !78 ; 3 uses
  store ptr %i.ep, ptr %i.ec, align 8, !tbaa !15, !alias.scope !78
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 3 uses
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !78
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !3, !noalias !78
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !3, !noalias !78
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.eu = atomicrmw volatile add ptr %i.eq, i32 1 acq_rel, align 4, !noalias !78 ; 0 uses
  %.pre25.i = load ptr, ptr %33, align 8, !tbaa !79
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i

_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i:          ; preds = %bb.ad, %bb.ac, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i
  %i.ev = phi ptr [ %i.en, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i ], [ %i.en, %bb.ac ], [ %.pre25.i, %bb.ad ] ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_510OpRcPtrVec8optimizeENS_17OptimizationFlagsE:bb.a

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.sroa.017.1.i = phi ptr [ %i.fr, %bb.am ], [ %i.fv, %bb.ap ] ; 3 uses
  %.1.i = phi i32 [ %i.fs, %bb.am ], [ %.024.i, %bb.ap ] ; 2 uses
  %i.fw = load ptr, ptr %i.eb, align 8, !tbaa !15 ; 8 uses
  %.not.i.i10.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i10.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  %i.fy = load atomic i64, ptr %i.fx acquire, align 8 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 4294967297
  %i.ga = trunc i64 %i.fy to i32                  ; 2 uses
  br i1 %i.fz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.fx, align 8, !tbaa !19
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.gb, align 4, !tbaa !21
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !17
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #14, !inline_history !82
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !17
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #14, !inline_history !82
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i11.i = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i11.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gj = add nsw i32 %i.ga, -1
  store i32 %i.gj, ptr %i.fx, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.i

bb.av:                                            ; preds = %bb.at
  %i.gk = atomicrmw volatile add ptr %i.fx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i13.i = phi i32 [ %i.ga, %bb.au ], [ %i.gk, %bb.av ]
  %i.gl = icmp eq i32 %.0.i.i.i.i13.i, 1
  br i1 %i.gl, label %bb.aw, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !23

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #14
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.i, %bb.as, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  %i.gm = load ptr, ptr %i.b, align 8, !tbaa !7
  %.not.i = icmp eq ptr %.sroa.017.1.i, %i.gm
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115RemoveNoOpTypesERNS_10OpRcPtrVecE.exit, label %bb.x, !llvm.loop !83

common.resume:                                    ; preds = %bb.v, %bb.sn, %bb.tj, %bb.bn, %bb.sd, %bb.oi, %bb.mh, %bb.fn, %bb.dp, %bb.cj, %bb.ax
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.ax ], [ %i.mj, %bb.cj ], [ %.pn.i177, %bb.dp ], [ %.pn.pn.i, %bb.fn ], [ %.pn43.pn.pn.i, %bb.mh ], [ %.pn.i247, %bb.oi ], [ %.pn29.pn.pn.i, %bb.sd ], [ %.pn92.pn, %bb.v ], [ %.pn106.pn, %bb.bn ], [ %.pn100.pn, %bb.tj ], [ %.pn95.pn, %bb.sn ]
  resume { ptr, i32 } %common.resume.op

bb.ax:                                            ; preds = %bb.ao, %bb.an
  %.pn.i = phi { ptr, i32 } [ %i.fu, %bb.ao ], [ %i.ft, %bb.an ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  br label %common.resume

_ZN16OpenColorIO_v2_512_GLOBAL__N_115RemoveNoOpTypesERNS_10OpRcPtrVecE.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.w
  %i.gn = phi ptr [ %i.dv, %bb.w ], [ %.sroa.017.1.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.w ], [ %.1.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 2 uses
  %i.go = icmp eq i64 %1, 0
  br i1 %i.go, label %bb.ay, label %bb.bo

bb.ay:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115RemoveNoOpTypesERNS_10OpRcPtrVecE.exit
  %i.gp = call noundef zeroext i1 @_ZN16OpenColorIO_v2_521IsDebugLoggingEnabledEv()
  br i1 %i.gp, label %bb.az, label %bb.tk

bb.az:                                            ; preds = %bb.ay
  %i.gq = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.gr = load ptr, ptr %0, align 8, !tbaa !66
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = ashr exact i64 %i.gu, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #14
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %37)
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124: ; preds = %bb.az
  %i.gx = load ptr, ptr %37, align 8, !tbaa !17
  %i.gy = getelementptr i8, ptr %i.gx, i64 -24
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds i8, ptr %37, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 240
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !24 ; 6 uses
  %.not.i.i.i405 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i405, label %bb.ba, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i406

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.noexc410 unwind label %bb.bj

.noexc410:                                        ; preds = %bb.ba
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i406: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !41
  %.not.i1.i.i407 = icmp eq i8 %i.he, 0
  br i1 %.not.i1.i.i407, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i406
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 67
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i408

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i406
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hc)
          to label %.noexc411 unwind label %bb.bj

.noexc411:                                        ; preds = %bb.bc
  %i.hh = load ptr, ptr %i.hc, align 8, !tbaa !17
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = invoke noundef signext i8 %i.hj(ptr noundef nonnull align 8 dereferenceable(570) %i.hc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i408 unwind label %bb.bj, !inline_history !47

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i408: ; preds = %.noexc411, %bb.bb
  %.0.i.i.i409 = phi i8 [ %i.hg, %bb.bb ], [ %i.hk, %.noexc411 ]
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %37, i8 noundef signext %.0.i.i.i409)
          to label %.noexc413 unwind label %bb.bj

.noexc413:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i408
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hl)
          to label %_ZNSolsEPFRSoS_E.exit125 unwind label %bb.bj ; 0 uses

_ZNSolsEPFRSoS_E.exit125:                         ; preds = %.noexc413
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull @.str.2, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126: ; preds = %_ZNSolsEPFRSoS_E.exit125
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %37, i64 noundef %i.ea)
          to label %_ZNSolsEm.exit unwind label %bb.bj ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127: ; preds = %_ZNSolsEm.exit
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, i64 noundef %i.gv)
          to label %_ZNSolsEm.exit128 unwind label %bb.bj

_ZNSolsEm.exit128:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hq, ptr noundef nonnull @.str.4, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129: ; preds = %_ZNSolsEm.exit128
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef %.0.lcssa.i)
          to label %bb.bd unwind label %bb.bj

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull @.str.5, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130: ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #14
  invoke void @_ZN16OpenColorIO_v2_514SerializeOpVecB5cxx11ERKNS_10OpRcPtrVecEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef 4)
          to label %bb.be unwind label %bb.bk

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.hu = load ptr, ptr %38, align 8, !tbaa !48
  %i.hv = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !52
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %i.hu, i64 noundef %i.hw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit131 unwind label %bb.bl ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit131: ; preds = %bb.be
  %i.hy = load ptr, ptr %38, align 8, !tbaa !48   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit131
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !16
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.id = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  store ptr %i.id, ptr %39, align 8, !tbaa !59, !alias.scope !91
  %i.ie = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 0, ptr %i.ie, align 8, !tbaa !52, !alias.scope !91
  store i8 0, ptr %i.id, align 8, !tbaa !16, !alias.scope !91
  %i.if = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !61, !noalias !91 ; 3 uses
  %.not5.i.i137 = icmp eq ptr %i.ig, null
  br i1 %.not5.i.i137, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %48 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %49 = load ptr, ptr %48, align 8, !noalias !91  ; 2 uses
  %50 = icmp ugt ptr %i.ig, %49
  %.08.i.i.i136 = select i1 %50, ptr %i.ig, ptr %49
  %i.ih = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !63, !noalias !91 ; 2 uses
  %i.ij = ptrtoint ptr %.08.i.i.i136 to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef 0, i64 noundef 0, ptr noundef %i.ii, i64 noundef %i.il)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit144 unwind label %bb.bg ; 0 uses

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %39, align 8, !tbaa !48, !alias.scope !91 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.id
  br i1 %i.ip, label %.body142, label %.body142.sink.split

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.iq = getelementptr inbounds nuw i8, ptr %37, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(32) %i.iq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit144 unwind label %bb.bg

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit144: ; preds = %bb.bh, %bb.bf
  invoke void @_ZN16OpenColorIO_v2_58LogDebugERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %39)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit144
  %i.ir = load ptr, ptr %39, align 8, !tbaa !48   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.id
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.bi
  %i.it = load i64, ptr %i.id, align 8, !tbaa !16
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #14
  %i.iv = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.iv, ptr %37, align 8, !tbaa !17
  %i.iw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ix = getelementptr i8, ptr %i.iv, i64 -24
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds i8, ptr %37, i64 %i.iy
  store ptr %i.iw, ptr %i.iz, align 8, !tbaa !17
  %i.ja = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ja, align 8, !tbaa !17
  %i.jb = getelementptr inbounds nuw i8, ptr %37, i64 80
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !48 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %37, i64 96 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !16
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit150

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i148
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ja, align 8, !tbaa !17
  %i.jh = getelementptr inbounds nuw i8, ptr %37, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jh) #14
  %i.ji = getelementptr inbounds nuw i8, ptr %37, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ji) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #14
  br label %bb.tk

bb.bj:                                            ; preds = %.noexc413, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i408, %.noexc411, %bb.bc, %bb.ba, %bb.bd, %_ZNSolsEm.exit128, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126, %_ZNSolsEPFRSoS_E.exit125, %bb.az, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

bb.bl:                                            ; preds = %bb.be
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = load ptr, ptr %38, align 8, !tbaa !48   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.bl
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !16
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.bk
  %.pn104 = phi { ptr, i32 } [ %i.jk, %bb.bk ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %i.jl, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #14
  br label %bb.bn

bb.bm:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit144
  %i.jr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.js = load ptr, ptr %39, align 8, !tbaa !48   ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.id
  br i1 %i.jt, label %.body142, label %.body142.sink.split

.body142.sink.split:                              ; preds = %bb.bm, %bb.bg
  %.sink1504 = phi ptr [ %i.io, %bb.bg ], [ %i.js, %bb.bm ]
  %.pn106.ph = phi { ptr, i32 } [ %i.in, %bb.bg ], [ %i.jr, %bb.bm ]
  %i.ju = load i64, ptr %i.id, align 8, !tbaa !16
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %.sink1504, i64 noundef %i.jv) #16
  br label %.body142

.body142:                                         ; preds = %.body142.sink.split, %bb.bm, %bb.bg
  %.pn106 = phi { ptr, i32 } [ %i.in, %bb.bg ], [ %i.jr, %bb.bm ], [ %.pn106.ph, %.body142.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #14
  br label %bb.bn

bb.bn:                                            ; preds = %.body142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %bb.bj
  %.pn106.pn = phi { ptr, i32 } [ %.pn106, %.body142 ], [ %.pn104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %i.jj, %bb.bj ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %37) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #14
  br label %common.resume

bb.bo:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115RemoveNoOpTypesERNS_10OpRcPtrVecE.exit
  %i.jw = and i64 %1, 268435456
  %.not453 = icmp eq i64 %i.jw, 0
  br i1 %.not453, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jx = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %.not.i157 = icmp eq ptr %i.gn, %i.jx
  br i1 %.not.i157, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %bb.bp
  %i.jy = ptrtoint ptr %i.gn to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = ashr exact i64 %i.ka, 4
  %i.kc = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ck, %.lr.ph.i158
  %.012.i = phi i64 [ 0, %.lr.ph.i158 ], [ %i.mk, %bb.ck ] ; 3 uses
  %i.kd = load ptr, ptr %0, align 8, !tbaa !66
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.kd, i64 %.012.i ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !10 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !17
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 152
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = call noundef zeroext i1 %i.ki(ptr noundef nonnull align 8 dereferenceable(24) %i.kf), !inline_history !92
  br i1 %i.kj, label %bb.br, label %bb.ck

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #14
  %i.kk = load ptr, ptr %i.ke, align 8, !tbaa !10 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !17
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %31, ptr noundef nonnull align 8 dereferenceable(24) %i.kk), !inline_history !92
  %i.ko = load ptr, ptr %31, align 8, !tbaa !10   ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !17
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 216
  %i.kr = load ptr, ptr %i.kq, align 8
  invoke void %i.kr(ptr noundef nonnull align 8 dereferenceable(24) %i.ko)
          to label %bb.bs unwind label %bb.cj

bb.bs:                                            ; preds = %bb.br
  %i.ks = load ptr, ptr %0, align 8, !tbaa !66
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %.012.i ; 2 uses
  %i.ku = load ptr, ptr %31, align 8, !tbaa !10
  store ptr %i.ku, ptr %i.kt, align 8, !tbaa !10
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 3 uses
  %i.kw = load ptr, ptr %i.kc, align 8, !tbaa !15 ; 5 uses
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !15 ; 3 uses
  %.not.i.i.i.i159 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not.i.i.i.i159, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not7.i.i.i.i = icmp eq ptr %i.kw, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 3 uses
  %i.kz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i160 = icmp eq i8 %i.kz, 0
  br i1 %.not.i.i.i.i.i160, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.la = load i32, ptr %i.ky, align 4, !tbaa !3
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.ky, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.lc = atomicrmw volatile add ptr %i.ky, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.kv, align 8, !tbaa !15
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.bw, %bb.bv, %bb.bt
  %i.ld = phi ptr [ %i.kx, %bb.bt ], [ %i.kx, %bb.bv ], [ %.pr.pre.i.i.i.i, %bb.bw ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ld, null
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_510OpRcPtrVec8optimizeENS_17OptimizationFlagsE:bb.a
  %i.ays = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i64.i = icmp eq i8 %i.ays, 0
  br i1 %.not.i.i.i64.i, label %bb.ro, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.ayt = add nsw i32 %i.ayk, -1
  store i32 %i.ayt, ptr %i.ayh, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i

bb.ro:                                            ; preds = %bb.rm
  %i.ayu = atomicrmw volatile add ptr %i.ayh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i: ; preds = %bb.ro, %bb.rn
  %.0.i.i.i.i66.i = phi i32 [ %i.ayk, %bb.rn ], [ %i.ayu, %bb.ro ]
  %i.ayv = icmp eq i32 %.0.i.i.i.i66.i, 1
  br i1 %i.ayv, label %bb.rp, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !23

bb.rp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ayg) #14
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.rp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i, %bb.rl, %bb.rj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.rq

bb.rq:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i285, %bb.os
  %.324.i = phi i32 [ %.122.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i285 ], [ %.223.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ %.02184.i, %bb.os ] ; 3 uses
  %i.ayw = load ptr, ptr %i.oa, align 8, !tbaa !15 ; 8 uses
  %.not.i.i67.i = icmp eq ptr %i.ayw, null
  br i1 %.not.i.i67.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i273, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 8 ; 4 uses
  %i.ayy = load atomic i64, ptr %i.ayx acquire, align 8 ; 2 uses
  %i.ayz = icmp eq i64 %i.ayy, 4294967297
  %i.aza = trunc i64 %i.ayy to i32                ; 2 uses
  br i1 %i.ayz, label %bb.rs, label %bb.rt

bb.rs:                                            ; preds = %bb.rr
  store i32 0, ptr %i.ayx, align 8, !tbaa !19
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayw, i64 12
  store i32 0, ptr %i.azb, align 4, !tbaa !21
  %i.azc = load ptr, ptr %i.ayw, align 8, !tbaa !17
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 16
  %i.aze = load ptr, ptr %i.azd, align 8
  call void %i.aze(ptr noundef nonnull align 8 dereferenceable(16) %i.ayw) #14, !inline_history !233
  %i.azf = load ptr, ptr %i.ayw, align 8, !tbaa !17
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 24
  %i.azh = load ptr, ptr %i.azg, align 8
  call void %i.azh(ptr noundef nonnull align 8 dereferenceable(16) %i.ayw) #14, !inline_history !233
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i273

bb.rt:                                            ; preds = %bb.rr
  %i.azi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i68.i = icmp eq i8 %i.azi, 0
  br i1 %.not.i.i.i68.i, label %bb.rv, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.azj = add nsw i32 %i.aza, -1
  store i32 %i.azj, ptr %i.ayx, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i

bb.rv:                                            ; preds = %bb.rt
  %i.azk = atomicrmw volatile add ptr %i.ayx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i: ; preds = %bb.rv, %bb.ru
  %.0.i.i.i.i70.i = phi i32 [ %i.aza, %bb.ru ], [ %i.azk, %bb.rv ]
  %i.azl = icmp eq i32 %.0.i.i.i.i70.i, 1
  br i1 %i.azl, label %bb.rw, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i273, !prof !23

bb.rw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ayw) #14
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i273

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i273: ; preds = %bb.rw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i, %bb.rs, %bb.rq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.azm = load ptr, ptr %i.nz, align 8, !tbaa !15 ; 8 uses
  %.not.i.i71.i = icmp eq ptr %i.azm, null
  br i1 %.not.i.i71.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i274, label %bb.rx

bb.rx:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i273
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 8 ; 4 uses
  %i.azo = load atomic i64, ptr %i.azn acquire, align 8 ; 2 uses
  %i.azp = icmp eq i64 %i.azo, 4294967297
  %i.azq = trunc i64 %i.azo to i32                ; 2 uses
  br i1 %i.azp, label %bb.ry, label %bb.rz

bb.ry:                                            ; preds = %bb.rx
  store i32 0, ptr %i.azn, align 8, !tbaa !19
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azm, i64 12
  store i32 0, ptr %i.azr, align 4, !tbaa !21
  %i.azs = load ptr, ptr %i.azm, align 8, !tbaa !17
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 16
  %i.azu = load ptr, ptr %i.azt, align 8
  call void %i.azu(ptr noundef nonnull align 8 dereferenceable(16) %i.azm) #14, !inline_history !234
  %i.azv = load ptr, ptr %i.azm, align 8, !tbaa !17
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 24
  %i.azx = load ptr, ptr %i.azw, align 8
  call void %i.azx(ptr noundef nonnull align 8 dereferenceable(16) %i.azm) #14, !inline_history !234
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i274

bb.rz:                                            ; preds = %bb.rx
  %i.azy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i72.i = icmp eq i8 %i.azy, 0
  br i1 %.not.i.i.i72.i, label %bb.sb, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.azz = add nsw i32 %i.azq, -1
  store i32 %i.azz, ptr %i.azn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73.i

bb.sb:                                            ; preds = %bb.rz
  %i.baa = atomicrmw volatile add ptr %i.azn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73.i: ; preds = %bb.sb, %bb.sa
  %.0.i.i.i.i74.i = phi i32 [ %i.azq, %bb.sa ], [ %i.baa, %bb.sb ]
  %i.bab = icmp eq i32 %.0.i.i.i.i74.i, 1
  br i1 %i.bab, label %bb.sc, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i274, !prof !23

bb.sc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.azm) #14
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i274

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i274: ; preds = %bb.sc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73.i, %bb.ry, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.bac = add nuw i64 %.02582.i, 1               ; 2 uses
  %exitcond.not.i275 = icmp eq i64 %i.bac, %i.arz
  br i1 %exitcond.not.i275, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceInverseLutsERNS_10OpRcPtrVecE.exit, label %bb.ol, !llvm.loop !235

bb.sd:                                            ; preds = %bb.ri, %bb.px, %bb.ps
  %.pn29.pn.pn.i = phi { ptr, i32 } [ %.pn29.pn.i, %bb.px ], [ %.pn.pn.i276, %bb.ri ], [ %i.ave, %bb.ps ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %common.resume

_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceInverseLutsERNS_10OpRcPtrVecE.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i274
  %.not = icmp eq i32 %.324.i, 0
  %i.bad = add nsw i32 %.324.i, %.0811496         ; 2 uses
  br i1 %.not, label %.thread, label %bb.se

bb.se:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110CombineOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceInverseLutsERNS_10OpRcPtrVecE.exit
  %.283 = phi i32 [ %i.bad, %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceInverseLutsERNS_10OpRcPtrVecE.exit ], [ %.0811496, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110CombineOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit ] ; 2 uses
  %i.bae = add nsw i32 %i.os, %.0661501           ; 2 uses
  %i.baf = add nsw i32 %i.rt, %.0691500           ; 2 uses
  %i.bag = add nsw i32 %.2.i, %.0721499           ; 2 uses
  %i.bah = add nsw i32 %.0.lcssa.i210, %.0751498  ; 2 uses
  %i.bai = add nsw i32 %.2.i240, %.0781497        ; 2 uses
  %i.baj = add nuw nsw i32 %.0861495, 1           ; 2 uses
  %i.bak = icmp samesign ult i32 %.0861495, 80
  br i1 %i.bak, label %bb.cl, label %.thread438

.thread:                                          ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceInverseLutsERNS_10OpRcPtrVecE.exit, %bb.ok, %bb.oj
  %.485 = phi i32 [ %.0811496, %bb.ok ], [ %.0811496, %bb.oj ], [ %i.bad, %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceInverseLutsERNS_10OpRcPtrVecE.exit ] ; 2 uses
  %i.bal = icmp eq i32 %.0861495, 80
  br i1 %i.bal, label %bb.sf, label %.thread438

bb.sf:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #14
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %40)
  %i.bam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull @.str.6, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301.a unwind label %bb.sl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301.a: ; preds = %bb.sf
  %i.ban = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 80)
          to label %bb.sg unwind label %bb.sl

bb.sg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301.a
  %i.bao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ban, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.a unwind label %bb.sl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.a: ; preds = %bb.sg
  %i.bap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull @.str.8, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit303.a unwind label %bb.sl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit303.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.a
  %i.baq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull @.str.9, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304.a unwind label %bb.sl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit303.a
  %i.bar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull @.str.10, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305 unwind label %bb.sl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304.a
  %i.bas = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull @.str.11, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306 unwind label %bb.sl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.bat = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 7 uses
  store ptr %i.bat, ptr %41, align 8, !tbaa !59, !alias.scope !242
  %i.bau = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 0, ptr %i.bau, align 8, !tbaa !52, !alias.scope !242
  store i8 0, ptr %i.bat, align 8, !tbaa !16, !alias.scope !242
  %i.bav = getelementptr inbounds nuw i8, ptr %40, i64 48
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !61, !noalias !242 ; 3 uses
  %.not5.i.i309 = icmp eq ptr %i.baw, null
  br i1 %.not5.i.i309, label %bb.sj, label %bb.sh

bb.sh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %51 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %52 = load ptr, ptr %51, align 8, !noalias !242 ; 2 uses
  %53 = icmp ugt ptr %i.baw, %52
  %.08.i.i.i306 = select i1 %53, ptr %i.baw, ptr %52
  %i.bax = getelementptr inbounds nuw i8, ptr %40, i64 40
  %i.bay = load ptr, ptr %i.bax, align 8, !tbaa !63, !noalias !242 ; 2 uses
  %i.baz = ptrtoint ptr %.08.i.i.i306 to i64
  %i.bba = ptrtoint ptr %i.bay to i64
  %i.bbb = sub i64 %i.baz, %i.bba
  %i.bbc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %41, i64 noundef 0, i64 noundef 0, ptr noundef %i.bay, i64 noundef %i.bbb)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316 unwind label %bb.si ; 0 uses

bb.si:                                            ; preds = %bb.sj, %bb.sh
  %i.bbd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbe = load ptr, ptr %41, align 8, !tbaa !48, !alias.scope !242 ; 2 uses
  %i.bbf = icmp eq ptr %i.bbe, %i.bat
  br i1 %i.bbf, label %.body314, label %.body314.sink.split

bb.sj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %i.bbg = getelementptr inbounds nuw i8, ptr %40, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %i.bbg)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316 unwind label %bb.si

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316: ; preds = %bb.sj, %bb.sh
  invoke void @_ZN16OpenColorIO_v2_58LogDebugERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %bb.sk unwind label %bb.sm

bb.sk:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316
  %i.bbh = load ptr, ptr %41, align 8, !tbaa !48  ; 2 uses
  %i.bbi = icmp eq ptr %i.bbh, %i.bat
  br i1 %i.bbi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %bb.sk
  %i.bbj = load i64, ptr %i.bat, align 8, !tbaa !16
  %i.bbk = add i64 %i.bbj, 1
  call void @_ZdlPvm(ptr noundef %i.bbh, i64 noundef %i.bbk) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %bb.sk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #14
  %i.bbl = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bbl, ptr %40, align 8, !tbaa !17
  %i.bbm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bbn = getelementptr i8, ptr %i.bbl, i64 -24
  %i.bbo = load i64, ptr %i.bbn, align 8
  %i.bbp = getelementptr inbounds i8, ptr %40, i64 %i.bbo
  store ptr %i.bbm, ptr %i.bbp, align 8, !tbaa !17
  %i.bbq = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bbq, align 8, !tbaa !17
  %i.bbr = getelementptr inbounds nuw i8, ptr %40, i64 80
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !48 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %40, i64 96 ; 2 uses
  %i.bbu = icmp eq ptr %i.bbs, %i.bbt
  br i1 %i.bbu, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
  %i.bbv = load i64, ptr %i.bbt, align 8, !tbaa !16
  %i.bbw = add i64 %i.bbv, 1
  call void @_ZdlPvm(ptr noundef %i.bbs, i64 noundef %i.bbw) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i320
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bbq, align 8, !tbaa !17
  %i.bbx = getelementptr inbounds nuw i8, ptr %40, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bbx) #14
  %i.bby = getelementptr inbounds nuw i8, ptr %40, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bby) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #14
  br label %.thread438

bb.sl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit303.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.a, %bb.sg, %bb.sf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301.a
  %i.bbz = landingpad { ptr, i32 }
          cleanup
  br label %bb.sn

bb.sm:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316
  %i.bca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcb = load ptr, ptr %41, align 8, !tbaa !48  ; 2 uses
  %i.bcc = icmp eq ptr %i.bcb, %i.bat
  br i1 %i.bcc, label %.body314, label %.body314.sink.split

.body314.sink.split:                              ; preds = %bb.sm, %bb.si
  %.sink1507 = phi ptr [ %i.bbe, %bb.si ], [ %i.bcb, %bb.sm ]
  %.pn95.ph = phi { ptr, i32 } [ %i.bbd, %bb.si ], [ %i.bca, %bb.sm ]
  %i.bcd = load i64, ptr %i.bat, align 8, !tbaa !16
  %i.bce = add i64 %i.bcd, 1
  call void @_ZdlPvm(ptr noundef %.sink1507, i64 noundef %i.bce) #16
  br label %.body314

.body314:                                         ; preds = %.body314.sink.split, %bb.sm, %bb.si
  %.pn95 = phi { ptr, i32 } [ %i.bbd, %bb.si ], [ %i.bca, %bb.sm ], [ %.pn95.ph, %.body314.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #14
  br label %bb.sn

bb.sn:                                            ; preds = %.body314, %bb.sl
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %.body314 ], [ %i.bbz, %bb.sl ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %40) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #14
  br label %common.resume

.thread438:                                       ; preds = %bb.se, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322, %.thread
  %.0861494 = phi i32 [ %.0861495, %.thread ], [ %.0861495, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322 ], [ %i.baj, %bb.se ]
  %.0781431 = phi i32 [ %.0781497, %.thread ], [ %.0781497, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322 ], [ %i.bai, %bb.se ]
  %.0751399 = phi i32 [ %.0751498, %.thread ], [ %.0751498, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322 ], [ %i.bah, %bb.se ]
  %.0721367 = phi i32 [ %.0721499, %.thread ], [ %.0721499, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322 ], [ %i.bag, %bb.se ]
  %.0691335 = phi i32 [ %.0691500, %.thread ], [ %.0691500, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322 ], [ %i.baf, %bb.se ]
  %.0661303 = phi i32 [ %.0661501, %.thread ], [ %.0661501, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322 ], [ %i.bae, %bb.se ]
  %.485447 = phi i32 [ %.485, %.thread ], [ %.485, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322 ], [ %.283, %bb.se ]
  %i.bcf = call noundef zeroext i1 @_ZN16OpenColorIO_v2_521IsDebugLoggingEnabledEv()
  br i1 %i.bcf, label %bb.so, label %bb.tk

bb.so:                                            ; preds = %.thread438
  %i.bcg = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.bch = load ptr, ptr %0, align 8, !tbaa !66
  %i.bci = ptrtoint ptr %i.bcg to i64
  %i.bcj = ptrtoint ptr %i.bch to i64
  %i.bck = sub i64 %i.bci, %i.bcj
  %i.bcl = ashr exact i64 %i.bck, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #14
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %42)
  %i.bcm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326.a unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326.a: ; preds = %bb.so
  %i.bcn = load ptr, ptr %42, align 8, !tbaa !17
  %i.bco = getelementptr i8, ptr %i.bcn, i64 -24
  %i.bcp = load i64, ptr %i.bco, align 8
  %i.bcq = getelementptr inbounds i8, ptr %42, i64 %i.bcp
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 240
  %i.bcs = load ptr, ptr %i.bcr, align 8, !tbaa !24 ; 6 uses
  %.not.i.i.i416 = icmp eq ptr %i.bcs, null
  br i1 %.not.i.i.i416, label %bb.sp, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i417

bb.sp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326.a
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.noexc421 unwind label %bb.tf

.noexc421:                                        ; preds = %bb.sp
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i417: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326.a
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 56
  %i.bcu = load i8, ptr %i.bct, align 8, !tbaa !41
  %.not.i1.i.i418 = icmp eq i8 %i.bcu, 0
  br i1 %.not.i1.i.i418, label %bb.sr, label %bb.sq

bb.sq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i417
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcs, i64 67
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i419

bb.sr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i417
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bcs)
          to label %.noexc422 unwind label %bb.tf

.noexc422:                                        ; preds = %bb.sr
  %i.bcx = load ptr, ptr %i.bcs, align 8, !tbaa !17
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 48
  %i.bcz = load ptr, ptr %i.bcy, align 8
  %i.bda = invoke noundef signext i8 %i.bcz(ptr noundef nonnull align 8 dereferenceable(570) %i.bcs, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i419 unwind label %bb.tf, !inline_history !47

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i419: ; preds = %.noexc422, %bb.sq
  %.0.i.i.i420 = phi i8 [ %i.bcw, %bb.sq ], [ %i.bda, %.noexc422 ]
  %i.bdb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %42, i8 noundef signext %.0.i.i.i420)
          to label %.noexc424 unwind label %bb.tf

.noexc424:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i419
  %i.bdc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bdb)
          to label %_ZNSolsEPFRSoS_E.exit327 unwind label %bb.tf ; 0 uses

_ZNSolsEPFRSoS_E.exit327:                         ; preds = %.noexc424
  %i.bdd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull @.str.2, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit328.a unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit328.a: ; preds = %_ZNSolsEPFRSoS_E.exit327
  %i.bde = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %i.ea)
          to label %_ZNSolsEm.exit329 unwind label %bb.tf ; 2 uses

_ZNSolsEm.exit329:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit328.a
  %i.bdf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bde, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit330.a unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit330.a: ; preds = %_ZNSolsEm.exit329
  %i.bdg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bde, i64 noundef %i.bcl)
          to label %_ZNSolsEm.exit331 unwind label %bb.tf

_ZNSolsEm.exit331:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit330.a
  %i.bdh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bdg, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit332.a unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit332.a: ; preds = %_ZNSolsEm.exit331
  %i.bdi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %.0861494)
          to label %bb.ss unwind label %bb.tf

bb.ss:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit332.a
  %i.bdj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bdi, ptr noundef nonnull @.str.12, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit333.a unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit333.a: ; preds = %bb.ss
  %i.bdk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %.0.lcssa.i)
          to label %bb.st unwind label %bb.tf

bb.st:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit333.a
  %i.bdl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bdk, ptr noundef nonnull @.str.13, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334.a unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334.a: ; preds = %bb.st
  %i.bdm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %.0661303)
          to label %bb.su unwind label %bb.tf

bb.su:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334.a
  %i.bdn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bdm, ptr noundef nonnull @.str.14, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit335.a unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit335.a: ; preds = %bb.su
  %i.bdo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %.0691335)
          to label %bb.sv unwind label %bb.tf

bb.sv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit335.a
  %i.bdp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bdo, ptr noundef nonnull @.str.15, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit336.a unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit336.a: ; preds = %bb.sv
  %i.bdq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %.0721367)
          to label %bb.sw unwind label %bb.tf

bb.sw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit336.a
  %i.bdr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bdq, ptr noundef nonnull @.str.16, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337 unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337: ; preds = %bb.sw
  %i.bds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %.0751399)
          to label %bb.sx unwind label %bb.tf

bb.sx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337
  %i.bdt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bds, ptr noundef nonnull @.str.17, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338 unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338: ; preds = %bb.sx
  %i.bdu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %.0781431)
          to label %bb.sy unwind label %bb.tf

bb.sy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338
  %i.bdv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bdu, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit339 unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit339: ; preds = %bb.sy
  %i.bdw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %.485447)
          to label %bb.sz unwind label %bb.tf

bb.sz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit339
  %i.bdx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bdw, ptr noundef nonnull @.str.19, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit340 unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit340: ; preds = %bb.sz
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #14
  invoke void @_ZN16OpenColorIO_v2_514SerializeOpVecB5cxx11ERKNS_10OpRcPtrVecEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef 4)
          to label %bb.ta unwind label %bb.tg

bb.ta:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit340
  %i.bdy = load ptr, ptr %43, align 8, !tbaa !48
  %i.bdz = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bea = load i64, ptr %i.bdz, align 8, !tbaa !52
  %i.beb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %i.bdy, i64 noundef %i.bea)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit341 unwind label %bb.th ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit341: ; preds = %bb.ta
  %i.bec = load ptr, ptr %43, align 8, !tbaa !48  ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.bee = icmp eq ptr %i.bec, %i.bed
  br i1 %i.bee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit341
  %i.bef = load i64, ptr %i.bed, align 8, !tbaa !16
  %i.beg = add i64 %i.bef, 1
  call void @_ZdlPvm(ptr noundef %i.bec, i64 noundef %i.beg) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.beh = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 7 uses
  store ptr %i.beh, ptr %44, align 8, !tbaa !59, !alias.scope !249
  %i.bei = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 0, ptr %i.bei, align 8, !tbaa !52, !alias.scope !249
  store i8 0, ptr %i.beh, align 8, !tbaa !16, !alias.scope !249
  %i.bej = getelementptr inbounds nuw i8, ptr %42, i64 48
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !61, !noalias !249 ; 3 uses
  %.not5.i.i347 = icmp eq ptr %i.bek, null
  br i1 %.not5.i.i347, label %bb.td, label %bb.tb

bb.tb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  %54 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %55 = load ptr, ptr %54, align 8, !noalias !249 ; 2 uses
  %56 = icmp ugt ptr %i.bek, %55
  %.08.i.i.i342 = select i1 %56, ptr %i.bek, ptr %55
  %i.bel = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.bem = load ptr, ptr %i.bel, align 8, !tbaa !63, !noalias !249 ; 2 uses
  %i.ben = ptrtoint ptr %.08.i.i.i342 to i64
  %i.beo = ptrtoint ptr %i.bem to i64
  %i.bep = sub i64 %i.ben, %i.beo
  %i.beq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %44, i64 noundef 0, i64 noundef 0, ptr noundef %i.bem, i64 noundef %i.bep)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit354 unwind label %bb.tc ; 0 uses

bb.tc:                                            ; preds = %bb.td, %bb.tb
  %i.ber = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bes = load ptr, ptr %44, align 8, !tbaa !48, !alias.scope !249 ; 2 uses
  %i.bet = icmp eq ptr %i.bes, %i.beh
  br i1 %i.bet, label %.body352, label %.body352.sink.split

bb.td:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  %i.beu = getelementptr inbounds nuw i8, ptr %42, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(32) %i.beu)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit354 unwind label %bb.tc

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit354: ; preds = %bb.td, %bb.tb
  invoke void @_ZN16OpenColorIO_v2_58LogDebugERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %44)
          to label %bb.te unwind label %bb.ti

bb.te:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit354
  %i.bev = load ptr, ptr %44, align 8, !tbaa !48  ; 2 uses
  %i.bew = icmp eq ptr %i.bev, %i.beh
  br i1 %i.bew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355.a: ; preds = %bb.te
  %i.bex = load i64, ptr %i.beh, align 8, !tbaa !16
  %i.bey = add i64 %i.bex, 1
  call void @_ZdlPvm(ptr noundef %i.bev, i64 noundef %i.bey) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.a: ; preds = %bb.te, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355.a
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #14
  %i.bez = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bez, ptr %42, align 8, !tbaa !17
  %i.bfa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bfb = getelementptr i8, ptr %i.bez, i64 -24
  %i.bfc = load i64, ptr %i.bfb, align 8
  %i.bfd = getelementptr inbounds i8, ptr %42, i64 %i.bfc
  store ptr %i.bfa, ptr %i.bfd, align 8, !tbaa !17
  %i.bfe = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bfe, align 8, !tbaa !17
  %i.bff = getelementptr inbounds nuw i8, ptr %42, i64 80
  %i.bfg = load ptr, ptr %i.bff, align 8, !tbaa !48 ; 2 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %42, i64 96 ; 2 uses
  %i.bfi = icmp eq ptr %i.bfg, %i.bfh
  br i1 %i.bfi, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.a
  %i.bfj = load i64, ptr %i.bfh, align 8, !tbaa !16
  %i.bfk = add i64 %i.bfj, 1
  call void @_ZdlPvm(ptr noundef %i.bfg, i64 noundef %i.bfk) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit360

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bfe, align 8, !tbaa !17
  %i.bfl = getelementptr inbounds nuw i8, ptr %42, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bfl) #14
  %i.bfm = getelementptr inbounds nuw i8, ptr %42, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bfm) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #14
  br label %bb.tk

bb.tf:                                            ; preds = %.noexc424, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i419, %.noexc422, %bb.sr, %bb.sp, %bb.sz, %bb.sy, %bb.sx, %bb.sw, %bb.sv, %bb.su, %bb.st, %bb.ss, %_ZNSolsEm.exit331, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit330.a, %_ZNSolsEm.exit329, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit328.a, %_ZNSolsEPFRSoS_E.exit327, %bb.so, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit339, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit336.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit335.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit333.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit332.a
  %i.bfn = landingpad { ptr, i32 }
          cleanup
  br label %bb.tj

bb.tg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit340
  %i.bfo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

bb.th:                                            ; preds = %bb.ta
  %i.bfp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfq = load ptr, ptr %43, align 8, !tbaa !48  ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.bfs = icmp eq ptr %i.bfq, %i.bfr
  br i1 %i.bfs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %bb.th
  %i.bft = load i64, ptr %i.bfr, align 8, !tbaa !16
  %i.bfu = add i64 %i.bft, 1
  call void @_ZdlPvm(ptr noundef %i.bfq, i64 noundef %i.bfu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %bb.th, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361, %bb.tg
  %.pn98 = phi { ptr, i32 } [ %i.bfo, %bb.tg ], [ %i.bfp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361 ], [ %i.bfp, %bb.th ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #14
  br label %bb.tj

bb.ti:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit354
  %i.bfv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfw = load ptr, ptr %44, align 8, !tbaa !48  ; 2 uses
  %i.bfx = icmp eq ptr %i.bfw, %i.beh
  br i1 %i.bfx, label %.body352, label %.body352.sink.split

.body352.sink.split:                              ; preds = %bb.ti, %bb.tc
  %.sink1510 = phi ptr [ %i.bes, %bb.tc ], [ %i.bfw, %bb.ti ]
  %.pn100.ph = phi { ptr, i32 } [ %i.ber, %bb.tc ], [ %i.bfv, %bb.ti ]
  %i.bfy = load i64, ptr %i.beh, align 8, !tbaa !16
  %i.bfz = add i64 %i.bfy, 1
  call void @_ZdlPvm(ptr noundef %.sink1510, i64 noundef %i.bfz) #16
  br label %.body352

.body352:                                         ; preds = %.body352.sink.split, %bb.ti, %bb.tc
  %.pn100 = phi { ptr, i32 } [ %i.ber, %bb.tc ], [ %i.bfv, %bb.ti ], [ %.pn100.ph, %.body352.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #14
  br label %bb.tj

bb.tj:                                            ; preds = %.body352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, %bb.tf
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %.body352 ], [ %.pn98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %i.bfn, %bb.tf ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %42) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #14
  br label %common.resume

bb.tk:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit150, %bb.ay, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit360, %.thread438, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_521IsDebugLoggingEnabledEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN16OpenColorIO_v2_514SerializeOpVecB5cxx11ERKNS_10OpRcPtrVecEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(144), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN16OpenColorIO_v2_58LogDebugERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_510OpRcPtrVec19optimizeForBitdepthERKNS_8BitDepthES3_NS_17OptimizationFlagsE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.17", align 8 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.20", align 8 ; 8 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %7 = alloca %"class.std::shared_ptr.17", align 8 ; 8 uses
  %8 = alloca %"class.std::shared_ptr.20", align 8 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.20", align 8 ; 7 uses
  %10 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 8 uses
  %11 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %12 = alloca %"class.std::shared_ptr.37", align 8 ; 8 uses
  %13 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 10 uses
  %14 = alloca %"class.std::shared_ptr.17", align 8 ; 7 uses
  %15 = alloca %"class.std::shared_ptr.20", align 8 ; 7 uses
  %16 = alloca %"class.std::shared_ptr.17", align 8 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.20", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123OptimizeSeparablePrefixERNS_10OpRcPtrVecENS_8BitDepthE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !250
  %i.f = tail call noundef zeroext i1 @_ZN16OpenColorIO_v2_515IsFloatBitDepthENS_8BitDepthE(i32 noundef %i.e)
  br i1 %i.f, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126RemoveLeadingClampIdentityERNS_10OpRcPtrVecE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.c
  %.sroa.025.0.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.025.1.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 6 uses
  %.0.i = phi i32 [ 0, %bb.c ], [ %.1.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 4 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !7
  %.not28.i = icmp eq ptr %.sroa.025.0.i, %i.j
  br i1 %.not28.i, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.k = load ptr, ptr %.sroa.025.0.i, align 8, !tbaa !10 ; 3 uses
  store ptr %i.k, ptr %16, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15   ; 3 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !15
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
end_hunk_2
