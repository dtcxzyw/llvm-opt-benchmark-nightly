Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmImageHelper?download=true
inline.NumInlined: 4907
inline.NumDeleted: 1158
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4gdcmL27GetSpacingValueFromSequenceERKNS_7DataSetERKNS_3TagERNSt3__16vectorIdNS6_9allocatorIdEEEE:bb.a
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(16) %i.oi) #29, !inline_history !331
  br label %_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit.i

bb.ev:                                            ; preds = %bb.er
  %i.os = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ev, %bb.es
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.os, %bb.ev ], [ %i.on, %bb.es ]
  %i.ot = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  call void @__clang_call_terminate(ptr %i.ot) #32
  unreachable

_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit.i: ; preds = %bb.eu, %bb.et, %.loopexit327.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.ou = add i64 %.0137345.i, 1                  ; 2 uses
  %.not167.i = icmp ugt i64 %i.ou, %i.ie
  br i1 %.not167.i, label %.critedge197.i, label %bb.co, !llvm.loop !332

.loopexit330.i:                                   ; preds = %_ZNSt3__16__treeIdNS_4lessIdEENS_9allocatorIdEEE12__find_equalIdEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIdEEEEDaRT_m.exit.i.i.i.i
  %lpad.loopexit332.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.loopexit.split-lp331.i:                          ; preds = %bb.eh, %bb.eg
  %lpad.loopexit.split-lp333.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ew:                                            ; preds = %.loopexit.split-lp331.i, %.loopexit330.i, %bb.ej
  %.pn173.pn.i = phi { ptr, i32 } [ %i.nq, %bb.ej ], [ %lpad.loopexit332.i, %.loopexit330.i ], [ %lpad.loopexit.split-lp333.i, %.loopexit.split-lp331.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %.body241.i

.body241.i:                                       ; preds = %bb.ew, %bb.ec, %bb.dt
  %.pn173.pn.pn.pn.i = phi { ptr, i32 } [ %i.lc, %bb.dt ], [ %.pn173.pn.i, %bb.ew ], [ %i.lz, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.ex

bb.ex:                                            ; preds = %.body241.i, %bb.dr, %.loopexit.split-lp.i, %.loopexit328.i, %bb.dq, %bb.di, %bb.dh
  %.pn173.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ke, %bb.di ], [ %i.kd, %bb.dh ], [ %i.kz, %bb.dq ], [ %.pn173.pn.pn.pn.i, %.body241.i ], [ %i.la, %bb.dr ], [ %lpad.loopexit.i, %.loopexit328.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #29
  br label %.body225.i

.body225.i:                                       ; preds = %bb.ex, %bb.dg, %bb.db
  %.pn173.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn173.pn.pn.pn.pn.pn.pn.i, %bb.ex ], [ %i.kc, %bb.dg ], [ %i.jx, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.ey

bb.ey:                                            ; preds = %.body225.i, %bb.cs
  %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn173.pn.pn.pn.pn.pn.pn.pn.i, %.body225.i ], [ %i.ja, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.fs

.critedge205.i:                                   ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.ov = load ptr, ptr %17, align 8, !tbaa !40   ; 4 uses
  %.not.i.i255.i = icmp eq ptr %i.ov, null
  br i1 %.not.i.i255.i, label %_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit260.i, label %bb.ez

bb.ez:                                            ; preds = %.critedge205.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 2 uses
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !58 ; 2 uses
  %i.oy = icmp sgt i64 %i.ox, 0
  br i1 %i.oy, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.oz = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.oz, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 77, ptr noundef nonnull @.str.3)
          to label %bb.fb unwind label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  invoke void @__cxa_throw(ptr nonnull %i.oz, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #30
          to label %.noexc.i258.i unwind label %bb.ff

.noexc.i258.i:                                    ; preds = %bb.fb
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.pa = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.oz) #29
  br label %.body.i256.i

bb.fd:                                            ; preds = %bb.ez
  %i.pb = add nsw i64 %i.ox, -1                   ; 2 uses
  store i64 %i.pb, ptr %i.ow, align 8, !tbaa !58
  %.not.i.i.i259.i = icmp eq i64 %i.pb, 0
  br i1 %.not.i.i.i259.i, label %bb.fe, label %_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit260.i

bb.fe:                                            ; preds = %bb.fd
  %i.pc = load ptr, ptr %i.ov, align 8, !tbaa !60
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(16) %i.ov) #29, !inline_history !331
  br label %_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit260.i

bb.ff:                                            ; preds = %bb.fb
  %i.pf = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i256.i

.body.i256.i:                                     ; preds = %bb.ff, %bb.fc
  %eh.lpad-body.i257.i = phi { ptr, i32 } [ %i.pf, %bb.ff ], [ %i.pa, %bb.fc ]
  %i.pg = extractvalue { ptr, i32 } %eh.lpad-body.i257.i, 0
  call void @__clang_call_terminate(ptr %i.pg) #32
  unreachable

_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit260.i: ; preds = %bb.fe, %bb.fd, %.critedge205.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %.critedge200.i

.critedge197.i:                                   ; preds = %_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit.i
  %i.ph = load ptr, ptr %i.im, align 8, !tbaa !36
  %i.pi = load ptr, ptr %14, align 8, !tbaa !37   ; 4 uses
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = ashr exact i64 %i.pl, 3
  %i.pn = icmp eq i64 %i.pm, %i.ie
  br i1 %i.pn, label %bb.fk, label %bb.fg

bb.fg:                                            ; preds = %.critedge197.i
  %i.po = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.po, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.2, i32 noundef 253, ptr noundef nonnull @.str.3)
          to label %bb.fh unwind label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  invoke void @__cxa_throw(ptr nonnull %i.po, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #30
          to label %bb.il unwind label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.pp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.po) #29
  br label %bb.fs

bb.fj:                                            ; preds = %bb.fm, %bb.fh
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fk:                                            ; preds = %.critedge197.i
  %i.pr = load i64, ptr %i.io, align 8, !tbaa !89
  %.not169.i = icmp eq i64 %i.pr, %i.ie
  br i1 %.not169.i, label %bb.fo, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ps = load double, ptr %i.pi, align 8, !tbaa !48
  %i.pt = load ptr, ptr %15, align 8, !tbaa !88   ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !48
  %i.pw = fcmp oeq double %i.ps, %i.pv
  br i1 %i.pw, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZNSt3__16vectorIdNS_9allocatorIdEEE6assignINS_21__tree_const_iteratorIdPNS_11__tree_nodeIdPvEElEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIdNS_15iterator_traitsISC_E9referenceEEE5valueEiE4typeELi0EEEvSC_SC_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr nonnull %i.pt, ptr nonnull %i.ih)
          to label %bb.fn unwind label %bb.fj

bb.fn:                                            ; preds = %bb.fm
  %i.px = load i64, ptr %i.io, align 8, !tbaa !89
  %.pre.i = load ptr, ptr %14, align 8, !tbaa !37
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fl, %bb.fk
  %i.py = phi ptr [ %.pre.i, %bb.fn ], [ %i.pi, %bb.fl ], [ %i.pi, %bb.fk ] ; 3 uses
  %.0138.i = phi i64 [ %i.px, %bb.fn ], [ %i.ie, %bb.fl ], [ %i.ie, %bb.fk ] ; 4 uses
  %i.pz = icmp ugt i64 %.0138.i, 1
  br i1 %i.pz, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.fo
  %.084.pre.i = load double, ptr %i.py, align 8, !tbaa !48 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.084.i = phi double [ %i.qc, %.lr.ph.i ], [ %.084.pre.i, %.lr.ph.preheader.i ]
  %i.qa = phi i64 [ %i.qg, %.lr.ph.i ], [ 1, %.lr.ph.preheader.i ]
  %.083348.i = phi i32 [ %i.qf, %.lr.ph.i ], [ 1, %.lr.ph.preheader.i ]
  %.087346.i = phi double [ %i.qe, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.qa
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !48 ; 2 uses
  %i.qd = fsub double %i.qc, %.084.i
  %i.qe = fadd double %.087346.i, %i.qd           ; 2 uses
  %i.qf = add i32 %.083348.i, 1                   ; 2 uses
  %i.qg = zext i32 %i.qf to i64                   ; 2 uses
  %i.qh = icmp ugt i64 %.0138.i, %i.qg
  br i1 %i.qh, label %.lr.ph.i, label %._crit_edge.thread.i, !llvm.loop !333

._crit_edge.thread.i:                             ; preds = %.lr.ph.i
  %i.qi = add nsw i64 %.0138.i, -1
  %i.qj = uitofp nneg i64 %i.qi to double
  %i.qk = fdiv double %i.qe, %i.qj                ; 3 uses
  %i.ql = fcmp oeq double %i.qk, 0.000000e+00
  br i1 %i.ql, label %.loopexit.i, label %.lr.ph352.i

bb.fp:                                            ; preds = %.lr.ph352.i
  %indvars.iv.next.i = add nuw i64 %i.qm, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %.0138.i
  br i1 %exitcond.not, label %.loopexit.i, label %.lr.ph352.i, !llvm.loop !334

.lr.ph352.i:                                      ; preds = %._crit_edge.thread.i, %bb.fp
  %i.qm = phi i64 [ %indvars.iv.next.i, %bb.fp ], [ 1, %._crit_edge.thread.i ] ; 2 uses
  %.185350.i = phi double [ %i.qo, %bb.fp ], [ %.084.pre.i, %._crit_edge.thread.i ]
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.qm
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !48 ; 2 uses
  %i.qp = fsub double %i.qo, %.185350.i
  %i.qq = fsub double %i.qp, %i.qk
  %i.qr = call double @llvm.fabs.f64(double %i.qq)
  %i.qs = fcmp ule double %i.qr, 1.000000e-03     ; 3 uses
  br i1 %i.qs, label %bb.fp, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph352.i, %bb.fp, %bb.fo, %._crit_edge.thread.i
  %.4 = phi double [ 0.000000e+00, %bb.fo ], [ 1.000000e+00, %._crit_edge.thread.i ], [ 1.000000e+00, %.lr.ph352.i ], [ %i.qk, %bb.fp ]
  %i.qt = phi i1 [ true, %bb.fo ], [ true, %._crit_edge.thread.i ], [ %i.qs, %bb.fp ], [ %i.qs, %.lr.ph352.i ]
  %i.qu = load ptr, ptr %i.ih, align 8, !tbaa !53
  call void @_ZNSt3__16__treeIdNS_4lessIdEENS_9allocatorIdEEE7destroyEPNS_11__tree_nodeIdPvEE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %i.qu) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.qv = load ptr, ptr %14, align 8, !tbaa !37   ; 4 uses
  %.not.i.i261.i = icmp eq ptr %i.qv, null
  br i1 %.not.i.i261.i, label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit.i, label %bb.fq

bb.fq:                                            ; preds = %.loopexit.i
  store ptr %i.qv, ptr %i.im, align 8, !tbaa !36
  %i.qw = load ptr, ptr %i.in, align 8, !tbaa !50
  %i.qx = ptrtoint ptr %i.qw to i64
  %i.qy = ptrtoint ptr %i.qv to i64
  %i.qz = sub i64 %i.qx, %i.qy
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.qz) #31
  br label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit.i

_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit.i: ; preds = %bb.fq, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.ra = load ptr, ptr %13, align 8, !tbaa !37   ; 4 uses
  %.not.i.i262.i = icmp eq ptr %i.ra, null
  br i1 %.not.i.i262.i, label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit263.i, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit.i
  store ptr %i.ra, ptr %i.ig, align 8, !tbaa !36
  %i.rb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !50
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = ptrtoint ptr %i.ra to i64
  %i.rf = sub i64 %i.rd, %i.re
  call void @_ZdlPvm(ptr noundef nonnull %i.ra, i64 noundef %i.rf) #31
  br label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit263.i

_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit263.i: ; preds = %bb.fr, %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.hx

bb.fs:                                            ; preds = %bb.fj, %bb.fi, %bb.ey, %bb.cr
  %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.pp, %bb.fi ], [ %i.iz, %bb.cr ], [ %i.pq, %bb.fj ], [ %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ey ]
  %i.rg = load ptr, ptr %i.ih, align 8, !tbaa !53
  call void @_ZNSt3__16__treeIdNS_4lessIdEENS_9allocatorIdEEE7destroyEPNS_11__tree_nodeIdPvEE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %i.rg) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.rh = load ptr, ptr %14, align 8, !tbaa !37   ; 4 uses
  %.not.i.i264.i = icmp eq ptr %i.rh, null
  br i1 %.not.i.i264.i, label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit265.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  store ptr %i.rh, ptr %i.im, align 8, !tbaa !36
  %i.ri = load ptr, ptr %i.in, align 8, !tbaa !50
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = ptrtoint ptr %i.rh to i64
  %i.rl = sub i64 %i.rj, %i.rk
  call void @_ZdlPvm(ptr noundef nonnull %i.rh, i64 noundef %i.rl) #31
  br label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit265.i

_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit265.i: ; preds = %bb.ft, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.fu

bb.fu:                                            ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit265.i, %bb.cn
  %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit265.i ], [ %i.iu, %bb.cn ]
  %i.rm = load ptr, ptr %13, align 8, !tbaa !37   ; 4 uses
  %.not.i.i266.i = icmp eq ptr %i.rm, null
  br i1 %.not.i.i266.i, label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit267.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  store ptr %i.rm, ptr %i.ig, align 8, !tbaa !36
  %i.rn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !50
  %i.rp = ptrtoint ptr %i.ro to i64
  %i.rq = ptrtoint ptr %i.rm to i64
  %i.rr = sub i64 %i.rp, %i.rq
  call void @_ZdlPvm(ptr noundef nonnull %i.rm, i64 noundef %i.rr) #31
  br label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit267.i

_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit267.i: ; preds = %bb.fv, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.if

bb.fw:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  store i16 20992, ptr %20, align 4, !tbaa !30
  %i.rs = getelementptr inbounds nuw i8, ptr %20, i64 2
  store i16 -28119, ptr %i.rs, align 2, !tbaa !30
  %i.rt = invoke noundef zeroext i1 @_ZNK4gdcm7DataSet15FindDataElementERKNS_3TagE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %20)
          to label %bb.fx unwind label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  br i1 %i.rt, label %bb.fz, label %.critedge202.i

bb.fy:                                            ; preds = %bb.fw
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.rv = load i32, ptr %20, align 4, !tbaa !30   ; 3 uses
  store i32 %i.rv, ptr %3, align 8, !tbaa !30
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.rw, i8 0, i64 20, i1 false)
  %i.rx = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %.not14.i.i.i.i268.i = icmp eq ptr %i.rx, null
  %i.ry = trunc i32 %i.rv to i16                  ; 4 uses
  %i.rz = lshr i32 %i.rv, 16
  %i.sa = trunc nuw i32 %i.rz to i16              ; 2 uses
  br i1 %.not14.i.i.i.i268.i, label %.thread.i278.i, label %.lr.ph.i.i.i.i269.i

.lr.ph.i.i.i.i269.i:                              ; preds = %bb.fz, %bb.gd
  %.016.i.i.i.i270.i = phi ptr [ %i.sk, %bb.gd ], [ %i.e, %bb.fz ]
  %.0815.i.i.i.i271.i = phi ptr [ %.19.i.i.i.i272.i, %bb.gd ], [ %i.rx, %bb.fz ] ; 7 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i271.i, i64 32
  %i.sc = load i16, ptr %i.sb, align 4, !tbaa !30 ; 2 uses
  %i.sd = icmp ult i16 %i.sc, %i.ry
  br i1 %i.sd, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %.lr.ph.i.i.i.i269.i
  %i.se = icmp eq i16 %i.sc, %i.ry
  br i1 %i.se, label %bb.gb, label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.sf = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i271.i, i64 34
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !30
  %i.sh = icmp ult i16 %i.sg, %i.sa
  br i1 %i.sh, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb, %.lr.ph.i.i.i.i269.i
  %i.si = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i271.i, i64 8
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb, %bb.ga
  %i.sj = phi ptr [ %i.si, %bb.gc ], [ %.0815.i.i.i.i271.i, %bb.gb ], [ %.0815.i.i.i.i271.i, %bb.ga ]
  %i.sk = phi ptr [ %.016.i.i.i.i270.i, %bb.gc ], [ %.0815.i.i.i.i271.i, %bb.gb ], [ %.0815.i.i.i.i271.i, %bb.ga ] ; 4 uses
  %.19.i.i.i.i272.i = load ptr, ptr %i.sj, align 8, !tbaa !54 ; 2 uses
  %.not.i.i.i.i273.i = icmp eq ptr %.19.i.i.i.i272.i, null
  br i1 %.not.i.i.i.i273.i, label %_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i274.i, label %.lr.ph.i.i.i.i269.i, !llvm.loop !0

_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i274.i: ; preds = %bb.gd
  %.not.i.i.i275.i = icmp eq ptr %i.sk, %i.e
  br i1 %.not.i.i.i275.i, label %.thread.i278.i, label %bb.ge

bb.ge:                                            ; preds = %_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i274.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 32 ; 3 uses
  %i.sm = load i16, ptr %i.sl, align 4, !tbaa !30 ; 2 uses
  %i.sn = icmp ugt i16 %i.sm, %i.ry
  br i1 %i.sn, label %.thread.i278.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.so = icmp eq i16 %i.sm, %i.ry
  br i1 %i.so, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %bb.gf
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sk, i64 34
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !30
  %.not.i277.i = icmp ugt i16 %i.sq, %i.sa
  br i1 %.not.i277.i, label %.thread.i278.i, label %bb.gi

bb.gh:                                            ; preds = %.thread.i278.i
  %i.sr = landingpad { ptr, i32 }
          cleanup
  %i.ss = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ss) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.body279.i

.thread.i278.i:                                   ; preds = %bb.gg, %bb.ge, %_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i274.i, %bb.fz
  %i.st = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4gdcm7DataSet8GetDEEndEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.gi unwind label %bb.gh

bb.gi:                                            ; preds = %.thread.i278.i, %bb.gg, %bb.gf
  %.05.i276.i = phi ptr [ %i.st, %.thread.i278.i ], [ %i.sl, %bb.gf ], [ %i.sl, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  invoke void @_ZNK4gdcm11DataElement12GetValueAsSQEv(ptr dead_on_unwind nonnull writable sret(%"class.gdcm::SmartPointer") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %.05.i276.i)
          to label %bb.gj unwind label %bb.gl

bb.gj:                                            ; preds = %bb.gi
  %i.su = load ptr, ptr %21, align 8, !tbaa !40   ; 7 uses
  %.not155.i = icmp eq ptr %i.su, null
  br i1 %.not155.i, label %_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit291.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !45
  %i.sy = load ptr, ptr %i.sv, align 8, !tbaa !46
  %.not156.i = icmp eq ptr %i.sx, %i.sy
  br i1 %.not156.i, label %.critedge207.i, label %bb.gm

end_hunk_0
