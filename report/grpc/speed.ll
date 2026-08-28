Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/speed?download=true
inline.NumInlined: 3544
inline.NumDeleted: 1627
begin_hunk_0_@_Z5SpeedRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
  %.not.i111.i = icmp eq ptr %i.ps, null
  br i1 %.not.i111.i, label %_ZNSt14_Function_baseD2Ev.exit112.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pt = invoke noundef zeroext i1 %i.ps(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit112.i unwind label %bb.db ; 0 uses

bb.db:                                            ; preds = %bb.da
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  %i.pv = extractvalue { ptr, i32 } %i.pu, 0
  call void @__clang_call_terminate(ptr %i.pv) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit112.i:              ; preds = %bb.da, %bb.cz
  br i1 %i.pr, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit112.i
  %i.pw = load ptr, ptr @stderr, align 8, !tbaa !43
  %i.px = load ptr, ptr %1, align 8, !tbaa !33
  %i.py = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pw, ptr noundef nonnull @.str.39, ptr noundef %i.px) #32 ; 0 uses
  br label %.invoke.i

.body101.i:                                       ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %.body58.i

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i
  %i.pz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qa = load ptr, ptr %i.im, align 8, !tbaa !55 ; 2 uses
  %.not.i116.i = icmp eq ptr %i.qa, null
  br i1 %.not.i116.i, label %.body58.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qb = invoke noundef zeroext i1 %i.qa(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body58.i unwind label %bb.df ; 0 uses

bb.df:                                            ; preds = %bb.de
  %i.qc = landingpad { ptr, i32 }
          catch ptr null
  %i.qd = extractvalue { ptr, i32 } %i.qc, 0
  call void @__clang_call_terminate(ptr %i.qd) #33
  unreachable

bb.dg:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit112.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.qe = load ptr, ptr %1, align 8, !tbaa !33, !noalias !83
  %i.qf = load i64, ptr %i.ia, align 8, !tbaa !30, !noalias !83 ; 3 uses
  store ptr %i.io, ptr %11, align 8, !tbaa !27, !alias.scope !86
  store i64 0, ptr %i.ip, align 8, !tbaa !30, !alias.scope !86
  store i8 0, ptr %i.io, align 8, !tbaa !32, !alias.scope !86
  %i.qg = add i64 %i.qf, 18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.qg)
          to label %bb.dh unwind label %.loopexit191.i

bb.dh:                                            ; preds = %bb.dg
  %i.qh = load i64, ptr %i.ip, align 8, !tbaa !30, !alias.scope !86
  %i.qi = sub i64 4611686018427387903, %i.qh
  %i.qj = icmp ult i64 %i.qi, %i.qf
  br i1 %i.qj, label %.invoke.i.i124.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i121.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i121.i: ; preds = %bb.dh
  %i.qk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.qe, i64 noundef %i.qf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i122.i unwind label %.loopexit191.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i122.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i121.i
  %i.ql = load i64, ptr %i.ip, align 8, !tbaa !30, !alias.scope !86
  %i.qm = add i64 %i.ql, -4611686018427387886
  %i.qn = icmp ult i64 %i.qm, 18
  br i1 %i.qn, label %.invoke.i.i124.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i123.i

.invoke.i.i124.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i122.i, %bb.dh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #29
          to label %.cont.i.i125.i unwind label %.loopexit.split-lp192.i

.cont.i.i125.i:                                   ; preds = %.invoke.i.i124.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i123.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i122.i
  %i.qo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.45, i64 noundef 18)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit128.i unwind label %.loopexit191.i ; 0 uses

.loopexit191.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i123.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i121.i, %bb.dg
  %lpad.loopexit193.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

.loopexit.split-lp192.i:                          ; preds = %.invoke.i.i124.i
  %lpad.loopexit.split-lp194.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.di:                                            ; preds = %.loopexit.split-lp192.i, %.loopexit191.i
  %lpad.phi195.i = phi { ptr, i32 } [ %lpad.loopexit193.i, %.loopexit191.i ], [ %lpad.loopexit.split-lp194.i, %.loopexit.split-lp192.i ]
  %i.qp = load ptr, ptr %11, align 8, !tbaa !33, !alias.scope !86 ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.io
  br i1 %i.qq, label %.body126.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i118.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i118.i: ; preds = %bb.di
  %i.qr = load i64, ptr %i.io, align 8, !tbaa !32, !alias.scope !86
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qs) #26
  br label %.body126.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit128.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i123.i
  %.b.i129.i = load i1, ptr @_ZL12g_print_json, align 1
  br i1 %.b.i129.i, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit128.i
  %i.qt = load i8, ptr @_ZN11TimeResults18first_json_printedE, align 1, !tbaa !63, !range !65, !noundef !66
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %bb.dk, label %_ZNK11TimeResults9PrintJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i130.i

bb.dk:                                            ; preds = %bb.dj
  %i.qv = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.49) ; 0 uses
  br label %_ZNK11TimeResults9PrintJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i130.i

_ZNK11TimeResults9PrintJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i130.i: ; preds = %bb.dk, %bb.dj
  %i.qw = load ptr, ptr %11, align 8, !tbaa !33
  %i.qx = load i64, ptr %3, align 8, !tbaa !67
  %i.qy = load i64, ptr %i.ie, align 8, !tbaa !69
  %i.qz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, ptr noundef %i.qw, i64 noundef %i.qx, i64 noundef %i.qy) ; 0 uses
  %putchar.i.i131.i = call i32 @putchar(i32 125)  ; 0 uses
  store i8 1, ptr @_ZN11TimeResults18first_json_printedE, align 1, !tbaa !63
  br label %_ZNK11TimeResults5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit132.i

bb.dl:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit128.i
  %i.ra = load i64, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.rb = load ptr, ptr %11, align 8, !tbaa !33
  %i.rc = load i64, ptr %i.ie, align 8, !tbaa !69 ; 2 uses
  %i.rd = uitofp i64 %i.ra to double
  %i.re = uitofp i64 %i.rc to double
  %i.rf = fdiv double %i.rd, %i.re
  %i.rg = fmul double %i.rf, 1.000000e+06
  %i.rh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i64 noundef %i.ra, ptr noundef %i.rb, i64 noundef %i.rc, double noundef %i.rg) ; 0 uses
  br label %_ZNK11TimeResults5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit132.i

_ZNK11TimeResults5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit132.i: ; preds = %bb.dl, %_ZNK11TimeResults9PrintJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i130.i
  %i.ri = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.rj = icmp eq ptr %i.ri, %i.io
  br i1 %i.rj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i: ; preds = %_ZNK11TimeResults5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit132.i
  %i.rk = load i64, ptr %i.io, align 8, !tbaa !32
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i: ; preds = %_ZNK11TimeResults5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit132.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.rm = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %.not.i136.i = icmp eq ptr %i.rm, null
  br i1 %.not.i136.i, label %_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i
  invoke void @RSA_free(ptr noundef nonnull %i.rm)
          to label %_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit.i unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.rn = landingpad { ptr, i32 }
          catch ptr null
  %i.ro = extractvalue { ptr, i32 } %i.rn, 0
  call void @__clang_call_terminate(ptr %i.ro) #33
  unreachable

_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit.i: ; preds = %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.rp = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.hz
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137.i: ; preds = %_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit.i
  %i.rr = load i64, ptr %i.hz, align 8, !tbaa !32
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i: ; preds = %_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.rt = load i64, ptr %i.d, align 8, !tbaa !38
  %i.ru = add i64 %i.rt, 1                        ; 3 uses
  store i64 %i.ru, ptr %i.d, align 8, !tbaa !38
  %i.rv = icmp ugt i64 %i.ru, 2
  br i1 %i.rv, label %.thread1032, label %bb.ap, !llvm.loop !89

.thread1032:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %.thread1028

.body126.i:                                       ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.body58.i

.body58.i:                                        ; preds = %.body126.i, %bb.de, %bb.dd, %.body101.i, %bb.cr, %bb.cq, %.body72.i, %bb.cj, %bb.ci, %bb.ca, %bb.bz, %bb.bs, %bb.br, %.loopexit.split-lp177.i, %.loopexit176.i
  %.pn39.i = phi { ptr, i32 } [ %i.oe, %bb.cq ], [ %lpad.phi195.i, %.body126.i ], [ %i.pz, %bb.de ], [ %lpad.phi190.i, %.body101.i ], [ %i.md, %bb.bz ], [ %lpad.phi185.i, %.body72.i ], [ %i.pz, %bb.dd ], [ %i.lq, %bb.br ], [ %i.md, %bb.ca ], [ %i.lq, %bb.bs ], [ %i.ns, %bb.ci ], [ %i.oe, %bb.cr ], [ %i.ns, %bb.cj ], [ %lpad.loopexit178.i, %.loopexit176.i ], [ %lpad.loopexit.split-lp179.i, %.loopexit.split-lp177.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %_ZNSt14_Function_baseD2Ev.exit54.i

_ZNSt14_Function_baseD2Ev.exit54.i:               ; preds = %.body58.i, %.body.i, %bb.bi, %bb.bg, %bb.bf
  %.pn41.i = phi { ptr, i32 } [ %i.kd, %bb.bi ], [ %.pn39.i, %.body58.i ], [ %lpad.phi175.i, %.body.i ], [ %i.jy, %bb.bf ], [ %i.jy, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.do

bb.do:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit54.i, %.loopexit.split-lp.i, %.loopexit170.i
  %.pn43.i = phi { ptr, i32 } [ %.pn41.i, %_ZNSt14_Function_baseD2Ev.exit54.i ], [ %lpad.loopexit.i, %.loopexit170.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #27
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.aw
  %.pn43.pn.i = phi { ptr, i32 } [ %.pn43.i, %bb.do ], [ %i.jn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.rw = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.hz
  br i1 %i.rx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i: ; preds = %bb.dp
  %i.ry = load i64, ptr %i.hz, align 8, !tbaa !32
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.rz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %.body

.critedge.i:                                      ; preds = %bb.av
  %i.sa = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %.not.i146.i = icmp eq ptr %i.sa, null
  br i1 %.not.i146.i, label %_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit147.i, label %bb.dq

bb.dq:                                            ; preds = %.critedge.i
  invoke void @RSA_free(ptr noundef nonnull %i.sa)
          to label %_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit147.i unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sb = landingpad { ptr, i32 }
          catch ptr null
  %i.sc = extractvalue { ptr, i32 } %i.sb, 0
  call void @__clang_call_terminate(ptr %i.sc) #33
  unreachable

_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit147.i: ; preds = %bb.dq, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.sd = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.hz
  br i1 %i.se, label %.critedge551.thread, label %.critedge551.thread.sink.split

.critedge48.i:                                    ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.sf = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %.not.i151.i = icmp eq ptr %i.sf, null
  br i1 %.not.i151.i, label %_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit152.i, label %bb.ds

bb.ds:                                            ; preds = %.critedge48.i
  invoke void @RSA_free(ptr noundef nonnull %i.sf)
          to label %_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit152.i unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.sg = landingpad { ptr, i32 }
          catch ptr null
  %i.sh = extractvalue { ptr, i32 } %i.sg, 0
  call void @__clang_call_terminate(ptr %i.sh) #33
  unreachable

_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit152.i: ; preds = %bb.ds, %.critedge48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.si = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.hz
  br i1 %i.sj, label %.critedge551.thread, label %.critedge551.thread.sink.split

.critedge50.i:                                    ; preds = %bb.bp, %.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.sk = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %.not.i156.i = icmp eq ptr %i.sk, null
  br i1 %.not.i156.i, label %_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit157.i, label %bb.du

bb.du:                                            ; preds = %.critedge50.i
  invoke void @RSA_free(ptr noundef nonnull %i.sk)
          to label %_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit157.i unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.sl = landingpad { ptr, i32 }
          catch ptr null
  %i.sm = extractvalue { ptr, i32 } %i.sl, 0
  call void @__clang_call_terminate(ptr %i.sm) #33
  unreachable

_ZNSt10unique_ptrI6rsa_stN4bssl8internal7DeleterEED2Ev.exit157.i: ; preds = %bb.du, %.critedge50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.sn = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.hz
  br i1 %i.so, label %.critedge551.thread, label %.critedge551.thread.sink.split

.thread1028:                                      ; preds = %bb.ak, %.thread1032
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.sp = invoke ptr @EVP_aead_aes_128_gcm()
          to label %._crit_edge.i.i825 unwind label %.loopexit.split-lp

._crit_edge.i.i825:                               ; preds = %.thread1028
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.sq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.sq, ptr %24, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.sq, ptr noundef nonnull align 1 dereferenceable(11) @.str.7, i64 11, i1 false)
  %i.sr = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 11, ptr %i.sr, align 8, !tbaa !30
  %i.ss = getelementptr inbounds nuw i8, ptr %24, i64 27
  store i8 0, ptr %i.ss, align 1, !tbaa !32
  %.val567 = load ptr, ptr %13, align 8
  %.val568 = load i64, ptr %i.q, align 8, !tbaa !30
  %i.st = invoke fastcc noundef zeroext i1 @_ZL9SpeedAEADPK11evp_aead_stRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS9_(ptr noundef %i.sp, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 13, ptr %.val567, i64 %.val568)
          to label %bb.dw unwind label %bb.in

bb.dw:                                            ; preds = %._crit_edge.i.i825
  br i1 %i.st, label %bb.dx, label %.critedge549

bb.dx:                                            ; preds = %bb.dw
  %i.su = invoke ptr @EVP_aead_aes_256_gcm()
          to label %._crit_edge.i.i829 unwind label %bb.in

._crit_edge.i.i829:                               ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.sv = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.sv, ptr %25, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.sv, ptr noundef nonnull align 1 dereferenceable(11) @.str.8, i64 11, i1 false)
  %i.sw = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 11, ptr %i.sw, align 8, !tbaa !30
  %i.sx = getelementptr inbounds nuw i8, ptr %25, i64 27
  store i8 0, ptr %i.sx, align 1, !tbaa !32
  %.val565 = load ptr, ptr %13, align 8
  %.val566 = load i64, ptr %i.q, align 8, !tbaa !30
  %i.sy = invoke fastcc noundef zeroext i1 @_ZL9SpeedAEADPK11evp_aead_stRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS9_(ptr noundef %i.su, ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 13, ptr %.val565, i64 %.val566)
          to label %bb.dy unwind label %bb.io

bb.dy:                                            ; preds = %._crit_edge.i.i829
  br i1 %i.sy, label %bb.dz, label %.critedge545

bb.dz:                                            ; preds = %bb.dy
  %i.sz = invoke ptr @EVP_aead_chacha20_poly1305()
          to label %.noexc.i834 unwind label %bb.io

.noexc.i834:                                      ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.ta = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.ta, ptr %26, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 17, ptr %i.b, align 8, !tbaa !38
  %i.tb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc835 unwind label %bb.ip ; 2 uses

.noexc835:                                        ; preds = %.noexc.i834
  store ptr %i.tb, ptr %26, align 8, !tbaa !33
  %i.tc = load i64, ptr %i.b, align 8, !tbaa !38  ; 3 uses
  store i64 %i.tc, ptr %i.ta, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.tb, ptr noundef nonnull align 1 dereferenceable(17) @.str.9, i64 17, i1 false)
  %i.td = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.tc, ptr %i.td, align 8, !tbaa !30
  %i.te = load ptr, ptr %26, align 8, !tbaa !33
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.tc
  store i8 0, ptr %i.tf, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.val563 = load ptr, ptr %13, align 8
  %.val564 = load i64, ptr %i.q, align 8, !tbaa !30
  %i.tg = invoke fastcc noundef zeroext i1 @_ZL9SpeedAEADPK11evp_aead_stRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS9_(ptr noundef %i.sz, ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef 13, ptr %.val563, i64 %.val564)
          to label %bb.ea unwind label %bb.iq

bb.ea:                                            ; preds = %.noexc835
  br i1 %i.tg, label %bb.eb, label %.critedge541

bb.eb:                                            ; preds = %bb.ea
  %i.th = invoke ptr @EVP_aead_des_ede3_cbc_sha1_tls()
          to label %.noexc.i838 unwind label %bb.iq

.noexc.i838:                                      ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.ti = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.ti, ptr %27, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 17, ptr %i.a, align 8, !tbaa !38
  %i.tj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc839 unwind label %bb.ir ; 2 uses

.noexc839:                                        ; preds = %.noexc.i838
  store ptr %i.tj, ptr %27, align 8, !tbaa !33
  %i.tk = load i64, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  store i64 %i.tk, ptr %i.ti, align 8, !tbaa !32
end_hunk_0
