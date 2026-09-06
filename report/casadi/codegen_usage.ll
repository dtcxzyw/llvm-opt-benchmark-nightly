Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/codegen_usage?download=true
inline.NumInlined: 627
inline.NumDeleted: 259
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z15usage_cplusplusv:bb.a
          to label %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.r

_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.y

bb.r:                                             ; preds = %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc81
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.bx, %.noexc81 ], [ %i.ca, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  %i.ch = call ptr @__cxa_begin_catch(ptr %i.cg) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi6MatrixIdEEEvT_S4_(ptr noundef nonnull %i.bx, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_rethrow() #28
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body82 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #30
  unreachable

bb.v:                                             ; preds = %bb.s
  unreachable

bb.w:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.body82:                                          ; preds = %bb.t, %bb.w
  %eh.lpad-body83 = phi { ptr, i32 } [ %i.cl, %bb.w ], [ %i.ci, %bb.t ]
  %i.cm = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %.body28, label %bb.x

bb.x:                                             ; preds = %.body82
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !50
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #29
  br label %.body28

bb.y:                                             ; preds = %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !46
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.ce to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cw) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.y, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 48
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %_ZN6casadi6MatrixIdED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1, %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #30
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.1, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1, label %bb.aa

bb.aa:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !46
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1

_ZNSt6vectorIdSaIdEED2Ev.exit.i.1:                ; preds = %bb.aa, %_ZN6casadi6MatrixIdED2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
          to label %_ZN6casadi6MatrixIdED2Ev.exit.1 unwind label %bb.z

_ZN6casadi6MatrixIdED2Ev.exit.1:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i30, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i31, label %bb.ab

bb.ab:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit.1
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i31

_ZNSt6vectorIdSaIdEED2Ev.exit.i31:                ; preds = %bb.ab, %_ZN6casadi6MatrixIdED2Ev.exit.1
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %_ZN6casadi6MatrixIdED2Ev.exit32 unwind label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i31
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #30
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit32:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNK6casadi8FunctionclERKSt6vectorINS_6MatrixIdEESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.12") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ad unwind label %bb.ar

bb.ad:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit32
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.35, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.as ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !51
  %i.dv = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i.not, label %.invoke150, label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE2atEm.exit

_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE2atEm.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZNK6casadi6MatrixIdE4dispERSob(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext false)
          to label %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit unwind label %bb.as

_ZN6casadilsERSoRKNS_6MatrixIdEE.exit:            ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE2atEm.exit
  %i.dw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !34
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 240
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !98 ; 6 uses
  %.not.i.i.i84 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i84, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85: ; preds = %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !104
  %.not.i1.i.i86 = icmp eq i8 %i.ed, 0
  br i1 %.not.i1.i.i86, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 67
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.af:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eb)
          to label %.noexc89 unwind label %bb.as

.noexc89:                                         ; preds = %bb.af
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = invoke noundef signext i8 %i.ei(ptr noundef nonnull align 8 dereferenceable(570) %i.eb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.as, !inline_history !83

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc89, %bb.ae
  %.0.i.i.i87 = phi i8 [ %i.ef, %bb.ae ], [ %i.ej, %.noexc89 ]
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i87)
          to label %.noexc91 unwind label %bb.as

.noexc91:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ek)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.as ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc91
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.36, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.as ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.en = load ptr, ptr %i.dt, align 8, !tbaa !51
  %i.eo = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 2 uses
  %.not.i.i39 = icmp ugt i64 %i.er, 40
  br i1 %.not.i.i39, label %bb.ag, label %8

8:                                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %.cmp = icmp eq i64 %i.er, 40
  %9 = zext i1 %.cmp to i64
  br label %.invoke150

.invoke150:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %8
  %i.es = phi i64 [ 1, %8 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.et = phi i64 [ %9, %8 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.64, i64 noundef %i.es, i64 noundef %i.et) #28
          to label %.cont151 unwind label %bb.as

.cont151:                                         ; preds = %.invoke150
  unreachable

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  invoke void @_ZNK6casadi6MatrixIdE4dispERSob(ptr noundef nonnull align 8 dereferenceable(40) %i.eu, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext false)
          to label %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit43 unwind label %bb.as

_ZN6casadilsERSoRKNS_6MatrixIdEE.exit43:          ; preds = %bb.ag
  %i.ev = load ptr, ptr @_ZSt4cout, align 8, !tbaa !34
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 240
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !98 ; 6 uses
  %.not.i.i.i94 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i94, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95

.invoke:                                          ; preds = %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit43, %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.cont unwind label %bb.as

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95: ; preds = %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit43
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !104
  %.not.i1.i.i96 = icmp eq i8 %i.fc, 0
  br i1 %.not.i1.i.i96, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 67
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fa)
          to label %.noexc100 unwind label %bb.as

.noexc100:                                        ; preds = %bb.ai
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !34
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = invoke noundef signext i8 %i.fh(ptr noundef nonnull align 8 dereferenceable(570) %i.fa, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97 unwind label %bb.as, !inline_history !83

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97: ; preds = %.noexc100, %bb.ah
  %.0.i.i.i98 = phi i8 [ %i.fe, %bb.ah ], [ %i.fi, %.noexc100 ]
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i98)
          to label %.noexc102 unwind label %bb.as

.noexc102:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fj)
          to label %_ZNSolsEPFRSoS_E.exit45 unwind label %bb.as ; 0 uses

_ZNSolsEPFRSoS_E.exit45:                          ; preds = %.noexc102
  %i.fl = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %i.fm = load ptr, ptr %i.dt, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSolsEPFRSoS_E.exit45, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fx, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i ], [ %i.fl, %_ZNSolsEPFRSoS_E.exit45 ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !46
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fo to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.ft) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.aj, %.lr.ph.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fu)
          to label %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i unwind label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #30
  unreachable

_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.fx, %i.fm
  br i1 %.not.i.i.i46, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSolsEPFRSoS_E.exit45
  %i.fy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.fl, %_ZNSolsEPFRSoS_E.exit45 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !50
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fy to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gd) #29
  br label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ge = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %i.gf = load ptr, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i48 = icmp eq ptr %i.ge, %i.gf
  br i1 %.not4.i.i.i48, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57, label %.lr.ph.i.i.i49

.lr.ph.i.i.i49:                                   ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53
  %.05.i.i.i50 = phi ptr [ %i.gq, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53 ], [ %i.ge, %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i.i.i51, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i49
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !46
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gh to i64
  %i.gm = sub i64 %i.gk, %i.gl
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gm) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52:        ; preds = %bb.am, %.lr.ph.i.i.i49
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gn)
          to label %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53 unwind label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #30
  unreachable

_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 40 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.gq, %i.gf
  br i1 %.not.i.i.i54, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55, label %.lr.ph.i.i.i49, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55: ; preds = %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53
  %.pr.i56 = load ptr, ptr %4, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55, %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit
  %i.gr = phi ptr [ %.pr.i56, %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55 ], [ %i.ge, %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i1.i58, label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57
  %i.gs = load ptr, ptr %i.bz, align 8, !tbaa !50
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gv) #29
  br label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60

_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.gw = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60
  %i.gx = load ptr, ptr %i.bt, align 8, !tbaa !46
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.ha) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  ret void

bb.aq:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit79
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.hc = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.ay
end_hunk_0
