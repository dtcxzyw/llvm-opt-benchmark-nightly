Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3LinkDot?download=true
inline.NumInlined: 14877
inline.NumDeleted: 2437
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN12LinkDotState19computeIfaceVarSymsEv:bb.a
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !75, !noalias !773 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26, !noalias !773
  store i64 %i.mh, ptr %i.g, align 8, !tbaa !146, !noalias !773
  %i.mi = icmp ugt i64 %i.mh, 15
  br i1 %i.mi, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit320
  %i.mj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.mj, ptr %19, align 8, !tbaa !74, !alias.scope !773
  %i.mk = load i64, ptr %i.g, align 8, !tbaa !146, !noalias !773
  store i64 %i.mk, ptr %i.bv, align 8, !tbaa !76, !alias.scope !773
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit320
  %i.ml = phi ptr [ %i.mj, %.noexc.i.i ], [ %i.bv, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit320 ] ; 2 uses
  switch i64 %i.mh, label %bb.bw [
    i64 1, label %bb.bv
    i64 0, label %_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit
  ]

bb.bv:                                            ; preds = %._crit_edge.i.i.i
  %i.mm = load i8, ptr %i.mf, align 1, !tbaa !76
  store i8 %i.mm, ptr %i.ml, align 1, !tbaa !76
  br label %_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit

bb.bw:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ml, ptr align 1 %i.mf, i64 %i.mh, i1 false)
  br label %_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit

_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit:   ; preds = %._crit_edge.i.i.i, %bb.bv, %bb.bw
  %i.mn = load i64, ptr %i.g, align 8, !tbaa !146, !noalias !773 ; 2 uses
  store i64 %i.mn, ptr %i.bw, align 8, !tbaa !75, !alias.scope !773
  %i.mo = load ptr, ptr %19, align 8, !tbaa !74, !alias.scope !773
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mn
  store i8 0, ptr %i.mp, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26, !noalias !773
  invoke void @_ZN7AstNode11prettyNameQERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit
  %i.mq = load ptr, ptr %18, align 8, !tbaa !74
  %i.mr = load i64, ptr %i.bx, align 8, !tbaa !75
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mc, ptr noundef %i.mq, i64 noundef %i.mr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit322 unwind label %bb.ca

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit322: ; preds = %bb.bx
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %.01346.i, ptr noundef nonnull align 8 dereferenceable(112) %i.ms)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit322
  %i.mt = load ptr, ptr %18, align 8, !tbaa !74   ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.by
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %bb.by
  %i.mv = load i64, ptr %i.by, align 8, !tbaa !76
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  %i.mx = load ptr, ptr %19, align 8, !tbaa !74   ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.bv
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  %i.mz = load i64, ptr %i.bv, align 8, !tbaa !76
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mx, i64 noundef %i.na) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.fv

bb.bz:                                            ; preds = %_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

bb.ca:                                            ; preds = %bb.bx, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit322
  %i.nc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nd = load ptr, ptr %18, align 8, !tbaa !74   ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.by
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.ca
  %i.nf = load i64, ptr %i.by, align 8, !tbaa !76
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329, %bb.bz
  %.pn175 = phi { ptr, i32 } [ %i.nb, %bb.bz ], [ %i.nc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ], [ %i.nc, %bb.ca ]
  %i.nh = load ptr, ptr %19, align 8, !tbaa !74   ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.bv
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %i.nj = load i64, ptr %i.bv, align 8, !tbaa !76
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %common.resume

bb.cb:                                            ; preds = %bb.at
  %i.nl = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 626) ; 0 uses
  %i.nm = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.nn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.nm, ptr noundef nonnull @.str.805)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %.01346.i, ptr noundef nonnull align 8 dereferenceable(112) %i.nn) #27
  unreachable

bb.cc:                                            ; preds = %bb.as
  %i.no = getelementptr inbounds nuw i8, ptr %i.cn, i64 248
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.no, align 8, !tbaa !277
  %i.np = icmp eq i8 %.sroa.0.0.copyload.i.i, 20
  br i1 %i.np, label %bb.cd, label %bb.dg

bb.cd:                                            ; preds = %bb.cc
  %i.nq = getelementptr inbounds nuw i8, ptr %.01346.i, i64 288
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !275
  %.not177 = icmp eq ptr %i.nr, null
  br i1 %.not177, label %bb.ce, label %bb.dg

bb.ce:                                            ; preds = %bb.cd
  %i.ns = call noundef ptr @_ZNK16AstIfaceRefDType13ifaceViaCellpEv(ptr noundef nonnull align 8 dereferenceable(304) %.01346.i)
  %.not178 = icmp eq ptr %i.ns, null
  br i1 %.not178, label %bb.dg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nt = call noundef ptr @_ZNK16AstIfaceRefDType13ifaceViaCellpEv(ptr noundef nonnull align 8 dereferenceable(304) %.01346.i)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 304
  %i.nv = load i16, ptr %i.nu, align 8
  %i.nw = and i16 %i.nv, 16
  %.not567 = icmp eq i16 %i.nw, 0
  br i1 %.not567, label %.thread, label %bb.cg

.thread:                                          ; preds = %bb.cf
  %i.nx = call noundef zeroext i1 @_ZN12LinkDotState14repairIfaceRefEP7VSymEntP6AstVarP16AstIfaceRefDTypeb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %i.ca, ptr noundef nonnull %i.cn, ptr noundef nonnull %.01346.i, i1 noundef zeroext false) ; 0 uses
  br label %.critedge

bb.cg:                                            ; preds = %bb.cf
  %i.ny = load i8, ptr %i.ab, align 8, !tbaa !187
  %i.nz = icmp eq i8 %i.ny, 0
  br i1 %i.nz, label %bb.ch, label %bb.co

bb.ch:                                            ; preds = %bb.cg
  %i.oa = getelementptr inbounds nuw i8, ptr %i.cn, i64 260
  %i.ob = load i64, ptr %i.oa, align 4
  %i.oc = and i64 %i.ob, 34359738368
  %.not568.a = icmp eq i64 %i.oc, 0
  br i1 %.not568.a, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.od = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 992), align 8, !tbaa !278, !range !144, !noundef !145
  %i.oe = trunc nuw i8 %i.od to i1
  %i.of = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 989), align 1, !range !144
  %i.og = trunc nuw i8 %i.of to i1
  %not. = xor i1 %i.oe, true
  %i.oh = select i1 %not., i1 true, i1 %i.og
  br i1 %i.oh, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %bb.ci
  %i.oi = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 21) ; 0 uses
  %i.oj = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.ok = icmp eq i8 %i.oj, 0
  br i1 %i.ok, label %bb.ck, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit336, !prof !227

bb.ck:                                            ; preds = %bb.cj
  %i.ol = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  %.not.i.i335 = icmp eq i32 %i.ol, 0
  br i1 %.not.i.i335, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit336, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.om = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit336

bb.cn:                                            ; preds = %bb.cl
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit336:         ; preds = %bb.cj, %bb.ck, %bb.cm
  %i.oo = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.51, ptr nonnull @.str.52, i32 481, ptr null) ; 2 uses
  %i.op = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oo, ptr noundef nonnull @.str.806, i64 noundef 48) ; 0 uses
  call void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.cn, ptr noundef nonnull align 8 dereferenceable(112) %i.oo)
  br label %bb.co

bb.co:                                            ; preds = %bb.ci, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit336, %bb.ch, %bb.cg
  %i.oq = call noundef zeroext i1 @_ZN12LinkDotState14repairIfaceRefEP7VSymEntP6AstVarP16AstIfaceRefDTypeb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %i.ca, ptr noundef nonnull %i.cn, ptr noundef nonnull %.01346.i, i1 noundef zeroext true)
  br i1 %i.oq, label %.critedge, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.or = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.os = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.ot = icmp eq i8 %i.os, 0
  br i1 %i.ot, label %bb.cq, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit338, !prof !227

bb.cq:                                            ; preds = %bb.cp
  %i.ou = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  %.not.i.i337 = icmp eq i32 %i.ou, 0
  br i1 %.not.i.i337, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit338, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ov = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit338

bb.ct:                                            ; preds = %bb.cr
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit338:         ; preds = %bb.cp, %bb.cq, %bb.cs
  %i.ox = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.51, ptr nonnull @.str.52, i32 481, ptr null) ; 2 uses
  %i.oy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ox, ptr noundef nonnull @.str.807, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.oz = getelementptr inbounds nuw i8, ptr %.01346.i, i64 208
  store ptr %i.ac, ptr %21, align 8, !tbaa !141, !alias.scope !774
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !74, !noalias !774 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.01346.i, i64 216
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !75, !noalias !774 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26, !noalias !774
  store i64 %i.pc, ptr %i.f, align 8, !tbaa !146, !noalias !774
  %i.pd = icmp ugt i64 %i.pc, 15
  br i1 %i.pd, label %.noexc.i.i340, label %._crit_edge.i.i.i339

.noexc.i.i340:                                    ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit338
  %i.pe = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.pe, ptr %21, align 8, !tbaa !74, !alias.scope !774
  %i.pf = load i64, ptr %i.f, align 8, !tbaa !146, !noalias !774
  store i64 %i.pf, ptr %i.ac, align 8, !tbaa !76, !alias.scope !774
  br label %._crit_edge.i.i.i339

._crit_edge.i.i.i339:                             ; preds = %.noexc.i.i340, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit338
  %i.pg = phi ptr [ %i.pe, %.noexc.i.i340 ], [ %i.ac, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit338 ] ; 2 uses
  switch i64 %i.pc, label %bb.cv [
    i64 1, label %bb.cu
    i64 0, label %_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit341
  ]

bb.cu:                                            ; preds = %._crit_edge.i.i.i339
  %i.ph = load i8, ptr %i.pa, align 1, !tbaa !76
  store i8 %i.ph, ptr %i.pg, align 1, !tbaa !76
  br label %_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit341

bb.cv:                                            ; preds = %._crit_edge.i.i.i339
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pg, ptr align 1 %i.pa, i64 %i.pc, i1 false)
  br label %_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit341

_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit341: ; preds = %._crit_edge.i.i.i339, %bb.cu, %bb.cv
  %i.pi = load i64, ptr %i.f, align 8, !tbaa !146, !noalias !774 ; 2 uses
  store i64 %i.pi, ptr %i.ad, align 8, !tbaa !75, !alias.scope !774
  %i.pj = load ptr, ptr %21, align 8, !tbaa !74, !alias.scope !774
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pi
  store i8 0, ptr %i.pk, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !774
  invoke void @_ZN7AstNode11prettyNameQERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit341
  %i.pl = load ptr, ptr %20, align 8, !tbaa !74
  %i.pm = load i64, ptr %i.ae, align 8, !tbaa !75
  %i.pn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ox, ptr noundef %i.pl, i64 noundef %i.pm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit343 unwind label %bb.cz ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit343: ; preds = %bb.cw
  %i.po = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pn, ptr noundef nonnull @.str.808, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit345 unwind label %bb.cz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit345: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit343
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.pp = getelementptr inbounds nuw i8, ptr %.01346.i, i64 88 ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !274, !noalias !775
  invoke void @_ZNK8FileLine8warnMoreB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %i.pq)
          to label %_ZNK7AstNode8warnMoreB5cxx11Ev.exit347 unwind label %bb.da

_ZNK7AstNode8warnMoreB5cxx11Ev.exit347:           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit345
  %i.pr = load ptr, ptr %22, align 8, !tbaa !74
  %i.ps = load i64, ptr %i.af, align 8, !tbaa !75
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pn, ptr noundef %i.pr, i64 noundef %i.ps)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit349 unwind label %bb.db ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit349: ; preds = %_ZNK7AstNode8warnMoreB5cxx11Ev.exit347
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pt, ptr noundef nonnull @.str.809, i64 noundef 81)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit349
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.pv = load ptr, ptr %i.pp, align 8, !tbaa !274, !noalias !776
  invoke void @_ZNK8FileLine8warnMoreB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(48) %i.pv)
          to label %_ZNK7AstNode8warnMoreB5cxx11Ev.exit353 unwind label %bb.dc

_ZNK7AstNode8warnMoreB5cxx11Ev.exit353:           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351
  %i.pw = load ptr, ptr %23, align 8, !tbaa !74
  %i.px = load i64, ptr %i.ag, align 8, !tbaa !75
  %i.py = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pt, ptr noundef %i.pw, i64 noundef %i.px)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit355 unwind label %bb.dd ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit355: ; preds = %_ZNK7AstNode8warnMoreB5cxx11Ev.exit353
  %i.pz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.py, ptr noundef nonnull @.str.810, i64 noundef 102)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357 unwind label %bb.dd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit355
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %.01346.i, ptr noundef nonnull align 8 dereferenceable(112) %i.py)
          to label %bb.cx unwind label %bb.dd

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357
  %i.qa = load ptr, ptr %23, align 8, !tbaa !74   ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %i.ah
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %bb.cx
  %i.qc = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.qe = load ptr, ptr %22, align 8, !tbaa !74   ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.ai
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360
  %i.qg = load i64, ptr %i.ai, align 8, !tbaa !76
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.qi = load ptr, ptr %20, align 8, !tbaa !74   ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.aj
  br i1 %i.qj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.qk = load i64, ptr %i.aj, align 8, !tbaa !76
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.ql) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  %i.qm = load ptr, ptr %21, align 8, !tbaa !74   ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.ac
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.qo = load i64, ptr %i.ac, align 8, !tbaa !76
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.qm, i64 noundef %i.qp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.fv

bb.cy:                                            ; preds = %_ZNK16AstIfaceRefDType9ifaceNameB5cxx11Ev.exit341
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

bb.cz:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit343, %bb.cw
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.da:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit345
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

bb.db:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit349, %_ZNK7AstNode8warnMoreB5cxx11Ev.exit347
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
end_hunk_0
begin_hunk_1_@_ZN18LinkDotFindVisitor5visitEP16AstIfaceRefDType:bb.a
  tail call void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18LinkDotFindVisitor5visitEP14AstMemberDType(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !141, !alias.scope !1175
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !74, !noalias !1175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = load i64, ptr %i.i, align 8, !tbaa !75, !noalias !1175 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !1175
  store i64 %i.j, ptr %i.a, align 8, !tbaa !146, !noalias !1175
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !74, !alias.scope !1175
  %i.m = load i64, ptr %i.a, align 8, !tbaa !146, !noalias !1175
  store i64 %i.m, ptr %i.g, align 8, !tbaa !76, !alias.scope !1175
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc.i.i ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNK14AstMemberDType4nameB5cxx11Ev.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !76
  store i8 %i.o, ptr %i.n, align 1, !tbaa !76
  br label %_ZNK14AstMemberDType4nameB5cxx11Ev.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNK14AstMemberDType4nameB5cxx11Ev.exit

_ZNK14AstMemberDType4nameB5cxx11Ev.exit:          ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.p = load i64, ptr %i.a, align 8, !tbaa !146, !noalias !1175 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !75, !alias.scope !1175
  %i.r = load ptr, ptr %2, align 8, !tbaa !74, !alias.scope !1175
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !1175
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !426
  %i.v = invoke noundef ptr @_ZN12LinkDotState9insertSymEP7VSymEntRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7AstNodeP13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(344) %i.c, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %1, ptr noundef %i.u)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZNK14AstMemberDType4nameB5cxx11Ev.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.g
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.g, align 8, !tbaa !76
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.e:                                             ; preds = %_ZNK14AstMemberDType4nameB5cxx11Ev.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.g
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !76
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18LinkDotFindVisitor5visitEP10AstNetlist(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  tail call void @_ZN12LinkDotState11insertDUnitEP10AstNetlist(ptr noundef nonnull align 8 dereferenceable(344) %i.d, ptr noundef %1)
  tail call void @_ZN7AstNode29iterateChildrenBackwardsConstER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !262  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.h = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.g, !prof !227

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  br label %bb.g

common.resume:                                    ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %.pn73.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %.pn66.pn, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  br label %common.resume

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.51, ptr nonnull @.str.52, i32 481, ptr null) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.659, i64 noundef 25) ; 0 uses
  tail call void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.m)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !262 ; 2 uses
  %.not61278 = icmp eq ptr %.pre, null
  br i1 %.not61278, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %i.o = phi ptr [ %.pre, %bb.g ], [ %i.f, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit

_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit:   ; preds = %bb.bc, %.lr.ph
  %.059279 = phi ptr [ %i.o, %.lr.ph ], [ %i.kc, %bb.bc ] ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.059279, i64 284
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !449
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %.critedge

.critedge:                                        ; preds = %.loopexit, %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit, %bb.g
  ret void

bb.h:                                             ; preds = %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit
  %i.ar = call noundef i32 @_ZL5debugv()
  %i.as = icmp sgt i32 %i.ar, 7
  br i1 %i.as, label %bb.i, label %bb.y, !prof !69

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.6, i32 noundef 1186)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %3, align 8, !tbaa !74
  %i.av = load i64, ptr %i.p, align 8, !tbaa !75
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.au, i64 noundef %i.av)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.j
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.660, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %.059279)
          to label %bb.k unwind label %bb.q       ; 0 uses

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.az = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.q
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bb = load i64, ptr %i.q, align 8, !tbaa !76
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !75  ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !76
  %.not65 = icmp eq i8 %i.bh, 10
  %i.bi = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.s
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i82: ; preds = %bb.m
  %i.bk = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.m
  %i.bl = load i64, ptr %i.s, align 8, !tbaa !76
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #24
  %.pre306 = load ptr, ptr %4, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  %i.bn = phi ptr [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i82 ], [ %.pre306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bo = icmp eq ptr %i.bn, %i.t
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.bp = load i64, ptr %i.t, align 8, !tbaa !76
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.not65, label %bb.t, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 10)
          to label %bb.t unwind label %bb.o       ; 0 uses

bb.o:                                             ; preds = %bb.i, %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.q:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.q
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.q
  %i.bx = load i64, ptr %i.q, align 8, !tbaa !76
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.bu, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.x

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.s:                                             ; preds = %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.cb = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.t
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.s
  %i.cd = load i64, ptr %i.t, align 8, !tbaa !76
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.r
  %.pn63 = phi { ptr, i32 } [ %i.bz, %bb.r ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.ca, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.x

bb.t:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %6, align 8, !tbaa !74
  %i.cg = load i64, ptr %i.u, align 8, !tbaa !75
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.cf, i64 noundef %i.cg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit93 unwind label %bb.w ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit93: ; preds = %bb.u
  %i.ci = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.v
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit93
  %i.ck = load i64, ptr %i.v, align 8, !tbaa !76
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.w:                                             ; preds = %bb.u
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.v
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.w
  %i.cq = load i64, ptr %i.v, align 8, !tbaa !76
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.v
  %.pn66 = phi { ptr, i32 } [ %i.cm, %bb.v ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.cn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.o
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.bs, %bb.o ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.h
  %12 = load i64, ptr %i.x, align 8, !tbaa !75
  %13 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 noundef 0, i64 noundef %12, ptr noundef nonnull @.str.56, i64 noundef 3) ; 0 uses
  %14 = load ptr, ptr %i.c, align 8, !tbaa !206   ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 336
  %16 = load i8, ptr %15, align 8, !tbaa !187
  %spec.select.i = icmp ult i8 %16, 2
  %i.cs = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 992), align 8, !range !144
  %i.ct = trunc nuw i8 %i.cs to i1
  %or.cond = select i1 %spec.select.i, i1 %i.ct, i1 false
  %i.cu = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 989), align 1, !range !144
  %i.cv = trunc nuw i8 %i.cu to i1
  %not. = xor i1 %or.cond, true
  %i.cw = select i1 %not., i1 true, i1 %i.cv
  br i1 %i.cw, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %.059279, i64 32
  %.045274 = load ptr, ptr %i.cx, align 8, !tbaa !335 ; 2 uses
  %.not69275 = icmp eq ptr %.045274, null
  br i1 %.not69275, label %.loopexit, label %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit

_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit:         ; preds = %bb.z, %_ZN9VNDeleter11pushDeletepEP7AstNode.exit
  %.045276 = phi ptr [ %.045, %_ZN9VNDeleter11pushDeletepEP7AstNode.exit ], [ %.045274, %bb.z ] ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.045276, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.cy, align 8, !tbaa !244
  %.not188 = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 68
  br i1 %.not188, label %bb.aa, label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.aa:                                            ; preds = %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %.045276, i64 248
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.cz, align 8, !tbaa !277
  %i.da = icmp eq i8 %.sroa.0.0.copyload.i.i, 20
  br i1 %i.da, label %bb.ab, label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %.045276, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !261 ; 2 uses
  %.not.i101 = icmp eq ptr %i.dc, null
  %i.dd = getelementptr inbounds nuw i8, ptr %.045276, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = select i1 %.not.i101, ptr %i.de, ptr %i.dc ; 6 uses
  %.not.i102 = icmp eq ptr %i.df, null
  br i1 %.not.i102, label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit, label %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit

_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %.sroa.0.0.copyload.i.i.i103 = load i16, ptr %i.dg, align 8, !tbaa !244
  switch i16 %.sroa.0.0.copyload.i.i.i103, label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit [
    i16 85, label %_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPT_PT0_.exit
    i16 75, label %_ZN7AstNode2asI20AstBracketArrayDType12AstNodeDTypeEEPKT_PKT0_.exit
    i16 99, label %_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit
  ]

_ZN7AstNode2asI20AstBracketArrayDType12AstNodeDTypeEEPKT_PKT0_.exit: ; preds = %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !262 ; 3 uses
  %.not.i113 = icmp eq ptr %i.di, null
  br i1 %.not.i113, label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit, label %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit115

_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit115: ; preds = %_ZN7AstNode2asI20AstBracketArrayDType12AstNodeDTypeEEPKT_PKT0_.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %.sroa.0.0.copyload.i.i.i114 = load i16, ptr %i.dj, align 8, !tbaa !244
  %i.dk = icmp eq i16 %.sroa.0.0.copyload.i.i.i114, 85
  br i1 %i.dk, label %_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPT_PT0_.exit, label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit: ; preds = %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 168
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !267 ; 2 uses
  %.not.i126 = icmp eq ptr %i.dm, null
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = select i1 %.not.i126, ptr %i.do, ptr %i.dm ; 3 uses
  %.not.i127 = icmp eq ptr %i.dp, null
  br i1 %.not.i127, label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit, label %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit129

_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit129: ; preds = %_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %.sroa.0.0.copyload.i.i.i128 = load i16, ptr %i.dq, align 8, !tbaa !244
  %i.dr = icmp eq i16 %.sroa.0.0.copyload.i.i.i128, 85
  br i1 %i.dr, label %_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPT_PT0_.exit, label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPT_PT0_.exit: ; preds = %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit, %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit129, %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit115
  %.2 = phi ptr [ %i.df, %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit ], [ %i.di, %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit115 ], [ %i.dp, %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit129 ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.2, i64 288
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !275
  %.not72 = icmp eq ptr %i.dt, null
  br i1 %.not72, label %bb.ac, label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.ac:                                            ; preds = %_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPT_PT0_.exit
  %i.du = call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29 ; 8 uses
  %i.dv = load ptr, ptr %i.y, align 8, !tbaa !274 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.dw = load ptr, ptr %.059279, align 8, !tbaa !52
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(306) %.059279)
          to label %bb.ad unwind label %bb.ay

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  %i.dz = load i64, ptr %i.z, align 8, !tbaa !75, !noalias !1185
  %i.ea = add i64 %i.dz, -4611686018427387899
  %i.eb = icmp ult i64 %i.ea, 5
  br i1 %i.eb, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #27
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ae
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ad
  %i.ec = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.661, i64 noundef 5)
          to label %.noexc136 unwind label %.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc136:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.aa, ptr %8, align 8, !tbaa !141, !alias.scope !1185
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !74 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 5 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

bb.af:                                            ; preds = %.noexc136
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !75 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add nuw nsw i64 %i.eh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ee, i64 %i.ej, i1 false)
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %.noexc136
  store ptr %i.ed, ptr %8, align 8, !tbaa !74, !alias.scope !1185
  %i.ek = load i64, ptr %i.ee, align 8, !tbaa !76
  store i64 %i.ek, ptr %i.aa, align 8, !tbaa !76, !alias.scope !1185
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !75
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.af
  %i.el = phi i64 [ %i.eh, %bb.af ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.el, ptr %i.ab, align 8, !tbaa !75, !alias.scope !1185
  store ptr %i.ee, ptr %i.ec, align 8, !tbaa !74
  store i64 0, ptr %i.em, align 8, !tbaa !75
  store i8 0, ptr %i.ee, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.en = getelementptr inbounds nuw i8, ptr %.045276, i64 152
  store ptr %i.ac, ptr %10, align 8, !tbaa !141, !alias.scope !1186
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !74, !noalias !1186 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.045276, i64 160
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !75, !noalias !1186 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !1186
  store i64 %i.eq, ptr %i.b, align 8, !tbaa !146, !noalias !1186
  %i.er = icmp ugt i64 %i.eq, 15
  br i1 %i.er, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ag
  %i.es = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc137 unwind label %bb.az ; 2 uses

.noexc137:                                        ; preds = %.noexc.i.i
  store ptr %i.es, ptr %10, align 8, !tbaa !74, !alias.scope !1186
  %i.et = load i64, ptr %i.b, align 8, !tbaa !146, !noalias !1186
  store i64 %i.et, ptr %i.ac, align 8, !tbaa !76, !alias.scope !1186
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc137, %bb.ag
  %i.eu = phi ptr [ %i.es, %.noexc137 ], [ %i.ac, %bb.ag ] ; 2 uses
  switch i64 %i.eq, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  %i.ev = load i8, ptr %i.eo, align 1, !tbaa !76
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !76
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr align 1 %i.eo, i64 %i.eq, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i
  %i.ew = load i64, ptr %i.b, align 8, !tbaa !146, !noalias !1186 ; 2 uses
  store i64 %i.ew, ptr %i.ad, align 8, !tbaa !75, !alias.scope !1186
  %i.ex = load ptr, ptr %10, align 8, !tbaa !74, !alias.scope !1186
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew
  store i8 0, ptr %i.ey, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !1186
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  %i.ez = load i64, ptr %i.ab, align 8, !tbaa !75, !noalias !1187 ; 4 uses
  %i.fa = load i64, ptr %i.ad, align 8, !tbaa !75, !noalias !1187 ; 4 uses
  %i.fb = add i64 %i.fa, %i.ez                    ; 2 uses
  %i.fc = load ptr, ptr %8, align 8, !tbaa !74, !noalias !1187 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.aa
  br i1 %i.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140: ; preds = %bb.aj
  %i.fe = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fe)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.aj
  %i.ff = load i64, ptr %i.aa, align 8, !tbaa !76, !noalias !1187
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140
end_hunk_1
begin_hunk_2_@_ZN18LinkDotFindVisitor5visitEP10AstNetlist:bb.a
  %i.hm = load i64, ptr %i.aa, align 8, !tbaa !76
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  %i.ho = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.ai
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.hq = load i64, ptr %i.ai, align 8, !tbaa !76
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.hs = getelementptr inbounds nuw i8, ptr %.2, i64 280
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !416
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 264
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !400
  %i.hv = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.hw = call noundef ptr @_ZN12LinkDotState14insertTopIfaceEP7AstCellRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(344) %i.hv, ptr noundef nonnull %i.du, ptr noundef nonnull align 8 dereferenceable(32) %i.w) ; 2 uses
  store ptr %i.hw, ptr %i.aj, align 8, !tbaa !422
  store ptr %i.hw, ptr %i.ak, align 8, !tbaa !419
  %i.hx = load ptr, ptr %i.du, align 8, !tbaa !52
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 312
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(152) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %0), !inline_history !0
  %i.ia = load ptr, ptr %i.am, align 8, !tbaa !334 ; 4 uses
  %i.ib = load ptr, ptr %i.an, align 8, !tbaa !58
  %.not.i.i182 = icmp eq ptr %i.ia, %i.ib
  br i1 %.not.i.i182, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  store ptr %i.du, ptr %i.ia, align 8, !tbaa !335
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr %i.ic, ptr %i.am, align 8, !tbaa !334
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.id = load ptr, ptr %i.al, align 8, !tbaa !57 ; 4 uses
  %i.ie = ptrtoint ptr %i.ia to i64
  %i.if = ptrtoint ptr %i.id to i64               ; 2 uses
  %i.ig = sub i64 %i.ie, %i.if                    ; 5 uses
  %i.ih = icmp eq i64 %i.ig, 9223372036854775800
  br i1 %i.ih, label %bb.av, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.ii = ashr exact i64 %i.ig, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ii, i64 1)
  %i.ij = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ii ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.ii
  %i.il = call i64 @llvm.umin.i64(i64 %i.ij, i64 1152921504606846975)
  %i.im = select i1 %i.ik, i64 1152921504606846975, i64 %i.il ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.im, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.in = shl nuw nsw i64 %i.im, 3
  %i.io = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.in) #29 ; 4 uses
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 %i.ig ; 2 uses
  store ptr %i.du, ptr %i.ip, align 8, !tbaa !335
  %i.iq = icmp sgt i64 %i.ig, 0
  br i1 %i.iq, label %bb.aw, label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.aw:                                            ; preds = %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.io, ptr align 8 %i.id, i64 %i.ig, i1 false)
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.aw, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.is = load ptr, ptr %i.an, align 8, !tbaa !58
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = sub i64 %i.it, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.iu) #24
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ax, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.io, ptr %i.al, align 8, !tbaa !57
  store ptr %i.ir, ptr %i.am, align 8, !tbaa !334
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.im
  store ptr %i.iv, ptr %i.an, align 8, !tbaa !58
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.ay:                                            ; preds = %bb.ac
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.ae
  %lpad.loopexit.split-lp384 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

bb.az:                                            ; preds = %.noexc.i.i
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

.loopexit.split-lp191.loopexit.split-lp:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %.critedge.i, %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.ba:                                            ; preds = %.noexc.i.i145
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

bb.bb:                                            ; preds = %bb.ar
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ja = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ag
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.bb
  %i.jc = load i64, ptr %i.ag, align 8, !tbaa !76
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162, %bb.ba
  %.pn73 = phi { ptr, i32 } [ %i.iy, %bb.ba ], [ %i.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ], [ %i.iz, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.je = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.ae
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.jg = load i64, ptr %i.ae, align 8, !tbaa !76
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %.loopexit.split-lp191.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  %.pn73.pn = phi { ptr, i32 } [ %.pn73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp191.loopexit.split-lp ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ] ; 2 uses
  %i.ji = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.ac
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.jk = load i64, ptr %i.ac, align 8, !tbaa !76
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %bb.az
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.ix, %bb.az ], [ %.pn73.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %.pn73.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.jm = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.aa
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.jo = load i64, ptr %i.aa, align 8, !tbaa !76
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  %.pn73.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %lpad.loopexit.split-lp384, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn73.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ] ; 2 uses
  %i.jq = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.ai
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %i.js = load i64, ptr %i.ai, align 8, !tbaa !76
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.ay
  %.pn73.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iw, %bb.ay ], [ %.pn73.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %.pn73.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef 272) #24
  br label %common.resume

_ZN9VNDeleter11pushDeletepEP7AstNode.exit:        ; preds = %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit, %_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit, %_ZN7AstNode2asI20AstBracketArrayDType12AstNodeDTypeEEPKT_PKT0_.exit, %bb.ab, %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit115, %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit129, %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.at, %_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPT_PT0_.exit, %bb.aa, %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %.045276, i64 8
  %.045 = load ptr, ptr %i.ju, align 8, !tbaa !335 ; 2 uses
  %.not69 = icmp eq ptr %.045, null
  br i1 %.not69, label %.loopexit.loopexit, label %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit, !llvm.loop !1184

.loopexit.loopexit:                               ; preds = %_ZN9VNDeleter11pushDeletepEP7AstNode.exit
  %.pre307 = load ptr, ptr %i.c, align 8, !tbaa !206
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.z, %bb.y
  %17 = phi ptr [ %.pre307, %.loopexit.loopexit ], [ %14, %bb.z ], [ %14, %bb.y ]
  %i.jv = call noundef ptr @_ZN12LinkDotState13insertTopCellEP13AstNodeModuleRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(344) %17, ptr noundef nonnull %.059279, ptr noundef nonnull align 8 dereferenceable(32) %i.w) ; 2 uses
  store ptr %i.jv, ptr %i.aj, align 8, !tbaa !422
  store ptr %i.jv, ptr %i.ak, align 8, !tbaa !419
  %i.jw = load ptr, ptr %.059279, align 8, !tbaa !52
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 312
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(152) %.059279, ptr noundef nonnull align 8 dereferenceable(32) %0), !inline_history !0
  %i.jz = load i64, ptr %i.x, align 8, !tbaa !75
  %i.ka = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 noundef 0, i64 noundef %i.jz, ptr noundef nonnull @.str.23, i64 noundef 0) ; 0 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.059279, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !418 ; 5 uses
  %cond = icmp eq ptr %i.kc, null
  br i1 %cond, label %.critedge, label %bb.bc

bb.bc:                                            ; preds = %.loopexit
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %.sroa.0.0.copyload.i.i.i178 = load i16, ptr %i.kd, align 8, !tbaa !244
  %i.ke = add i16 %.sroa.0.0.copyload.i.i.i178, -391
  %spec.select.i.i = icmp ult i16 %i.ke, -7
  br i1 %spec.select.i.i, label %bb.bd, label %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit, !prof !69

bb.bd:                                            ; preds = %bb.bc
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %i.kg = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.78, i32 noundef 1063) ; 0 uses
  %i.kh = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ki = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull @.str.79)
  %.sroa.0.0.copyload.i.i5.i180 = load i16, ptr %i.kf, align 8, !tbaa !244
  %i.kj = zext i16 %.sroa.0.0.copyload.i.i5.i180 to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.kj
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !245
  %i.km = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef %i.kl)
  %i.kn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef nonnull @.str.46)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.kc, ptr noundef nonnull align 8 dereferenceable(112) %i.kn) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18LinkDotFindVisitor5visitEP12AstNodeBlock(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef i32 @_ZL5debugv()
  %i.b = icmp sgt i32 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.r, !prof !69

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.6, i32 noundef 1482)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = load ptr, ptr %3, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !75
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.634, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %1)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.j = load ptr, ptr %3, align 8, !tbaa !74     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !76
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !75   ; 2 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !76
  %.not = icmp eq i8 %i.t, 10
  %i.u = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80: ; preds = %bb.f
  %i.x = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.x)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.f
  %i.y = load i64, ptr %i.v, align 8, !tbaa !76
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #24
  %.pre = load ptr, ptr %4, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  %i.aa = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 10)
          to label %bb.m unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.b, %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.j
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !76
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.ai, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.q

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.l:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.aq = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.l
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !76
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
end_hunk_2
