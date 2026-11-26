Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/codegen_usage?download=true
inline.NumInlined: 627
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z15usage_cplusplusv:bb.a
          to label %bb.p unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i4.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit68, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !46
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit68.sink.split

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.bn, ptr %3, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) @__const._Z16usage_c_with_memv.x_val, i64 32, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN6casadi6MatrixIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6casadi6MatrixIdE7reshapeERKS1_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef 2, i64 noundef 2)
          to label %_ZN6casadi7reshapeERKNS_6MatrixIdEExx.exit unwind label %.thread148

.thread148:                                       ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #27
  br label %.loopexit.sink.split

_ZN6casadi7reshapeERKNS_6MatrixIdEExx.exit:       ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  invoke void @_ZN6casadi6MatrixIdEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, double noundef 5.000000e+00)
          to label %bb.r unwind label %.preheader.preheader

bb.r:                                             ; preds = %_ZN6casadi7reshapeERKNS_6MatrixIdEExx.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.bx = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31
          to label %.noexc81 unwind label %bb.x   ; 7 uses

.noexc81:                                         ; preds = %bb.r
  store ptr %i.bx, ptr %4, align 8, !tbaa !49
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !50
  invoke void @_ZN6casadi6MatrixIdEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.s

_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc81
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  invoke void @_ZN6casadi6MatrixIdEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, ptr noundef nonnull align 8 dereferenceable(40) %i.bw)
          to label %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.s

_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.z

bb.s:                                             ; preds = %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc81
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.bx, %.noexc81 ], [ %i.ca, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  %i.ch = call ptr @__cxa_begin_catch(ptr %i.cg) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi6MatrixIdEEEvT_S4_(ptr noundef nonnull %i.bx, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_rethrow() #28
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body82 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #30
  unreachable

bb.w:                                             ; preds = %bb.t
  unreachable

bb.x:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.body82:                                          ; preds = %bb.u, %bb.x
  %eh.lpad-body83 = phi { ptr, i32 } [ %i.cl, %bb.x ], [ %i.ci, %bb.u ]
  %i.cm = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %.body28, label %bb.y

bb.y:                                             ; preds = %.body82
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !50
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #29
  br label %.body28

bb.z:                                             ; preds = %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !46
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.ce to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cw) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.z, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 48
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %_ZN6casadi6MatrixIdED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1, %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #30
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.1, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1, label %bb.ab

bb.ab:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !46
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1

_ZNSt6vectorIdSaIdEED2Ev.exit.i.1:                ; preds = %bb.ab, %_ZN6casadi6MatrixIdED2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
          to label %_ZN6casadi6MatrixIdED2Ev.exit.1 unwind label %bb.aa

_ZN6casadi6MatrixIdED2Ev.exit.1:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i30, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i31, label %bb.ac

bb.ac:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit.1
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i31

_ZNSt6vectorIdSaIdEED2Ev.exit.i31:                ; preds = %bb.ac, %_ZN6casadi6MatrixIdED2Ev.exit.1
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %_ZN6casadi6MatrixIdED2Ev.exit32 unwind label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i31
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
          to label %bb.ae unwind label %bb.as

bb.ae:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit32
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.35, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !51
  %i.dv = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i.not, label %.invoke150, label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE2atEm.exit

_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE2atEm.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZNK6casadi6MatrixIdE4dispERSob(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext false)
          to label %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit unwind label %bb.at

_ZN6casadilsERSoRKNS_6MatrixIdEE.exit:            ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE2atEm.exit
  %i.dw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !34
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 240
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i84 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i84, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85: ; preds = %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !103
  %.not.i1.i.i86 = icmp eq i8 %i.ed, 0
  br i1 %.not.i1.i.i86, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 67
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eb)
          to label %.noexc89 unwind label %bb.at

.noexc89:                                         ; preds = %bb.ag
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = invoke noundef signext i8 %i.ei(ptr noundef nonnull align 8 dereferenceable(570) %i.eb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.at, !inline_history !82

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc89, %bb.af
  %.0.i.i.i87 = phi i8 [ %i.ef, %bb.af ], [ %i.ej, %.noexc89 ]
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i87)
          to label %.noexc91 unwind label %bb.at

.noexc91:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ek)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.at ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc91
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.36, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.en = load ptr, ptr %i.dt, align 8, !tbaa !51
  %i.eo = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = sdiv exact i64 %i.er, 40                ; 2 uses
  %.not.i.i39 = icmp ugt i64 %i.es, 1
  br i1 %.not.i.i39, label %bb.ah, label %.invoke150

.invoke150:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.et = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 ]
  %i.eu = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %i.es, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.64, i64 noundef %i.et, i64 noundef %i.eu) #28
          to label %.cont151 unwind label %bb.at

.cont151:                                         ; preds = %.invoke150
  unreachable

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  invoke void @_ZNK6casadi6MatrixIdE4dispERSob(ptr noundef nonnull align 8 dereferenceable(40) %i.ev, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext false)
          to label %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit43 unwind label %bb.at

_ZN6casadilsERSoRKNS_6MatrixIdEE.exit43:          ; preds = %bb.ah
  %i.ew = load ptr, ptr @_ZSt4cout, align 8, !tbaa !34
  %i.ex = getelementptr i8, ptr %i.ew, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 240
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i94 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i94, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95

.invoke:                                          ; preds = %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit43, %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.cont unwind label %bb.at

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95: ; preds = %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit43
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fd = load i8, ptr %i.fc, align 8, !tbaa !103
  %.not.i1.i.i96 = icmp eq i8 %i.fd, 0
  br i1 %.not.i1.i.i96, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 67
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fb)
          to label %.noexc100 unwind label %bb.at

.noexc100:                                        ; preds = %bb.aj
  %i.fg = load ptr, ptr %i.fb, align 8, !tbaa !34
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = invoke noundef signext i8 %i.fi(ptr noundef nonnull align 8 dereferenceable(570) %i.fb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97 unwind label %bb.at, !inline_history !82

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97: ; preds = %.noexc100, %bb.ai
  %.0.i.i.i98 = phi i8 [ %i.ff, %bb.ai ], [ %i.fj, %.noexc100 ]
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i98)
          to label %.noexc102 unwind label %bb.at

.noexc102:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %_ZNSolsEPFRSoS_E.exit45 unwind label %bb.at ; 0 uses

_ZNSolsEPFRSoS_E.exit45:                          ; preds = %.noexc102
  %i.fm = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %i.fn = load ptr, ptr %i.dt, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fm, %i.fn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSolsEPFRSoS_E.exit45, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fy, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i ], [ %i.fm, %_ZNSolsEPFRSoS_E.exit45 ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !46
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.ak, %.lr.ph.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #30
  unreachable

_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.fy, %i.fn
  br i1 %.not.i.i.i46, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSolsEPFRSoS_E.exit45
  %i.fz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.fm, %_ZNSolsEPFRSoS_E.exit45 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !50
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fz to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.ge) #29
  br label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.gf = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %i.gg = load ptr, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i48 = icmp eq ptr %i.gf, %i.gg
  br i1 %.not4.i.i.i48, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57, label %.lr.ph.i.i.i49

.lr.ph.i.i.i49:                                   ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53
  %.05.i.i.i50 = phi ptr [ %i.gr, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53 ], [ %i.gf, %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit ] ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i.i.i.i51, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i49
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !46
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gn) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52:        ; preds = %bb.an, %.lr.ph.i.i.i49
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.go)
          to label %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53 unwind label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #30
  unreachable

_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 40 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.gr, %i.gg
  br i1 %.not.i.i.i54, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55, label %.lr.ph.i.i.i49, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55: ; preds = %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53
  %.pr.i56 = load ptr, ptr %4, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55, %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit
  %i.gs = phi ptr [ %.pr.i56, %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55 ], [ %i.gf, %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i58 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i1.i58, label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57
  %i.gt = load ptr, ptr %i.bz, align 8, !tbaa !50
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gw) #29
  br label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60

_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.gx = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60
  %i.gy = load ptr, ptr %i.bt, align 8, !tbaa !46
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gx to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hb) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  ret void

bb.ar:                                            ; preds = %bb.k
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.hd = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.ay
end_hunk_0
