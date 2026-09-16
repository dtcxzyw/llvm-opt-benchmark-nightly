Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/utf8_test?download=true
inline.NumInlined: 1967
inline.NumDeleted: 853
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_119WideToUtf8ParamTestEE13RegisterTestsEv:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.cr = load ptr, ptr %.sroa.0312.0773, align 8, !tbaa !35, !noalias !415
  %i.cs = load i64, ptr %i.co, align 8, !tbaa !37, !noalias !415 ; 3 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !36, !alias.scope !416
  store i64 0, ptr %i.q, align 8, !tbaa !37, !alias.scope !416
  store i8 0, ptr %i.p, align 8, !tbaa !39, !alias.scope !416
  %i.ct = add i64 %i.cs, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ct)
          to label %bb.d unwind label %.loopexit340

bb.d:                                             ; preds = %bb.c
  %i.cu = load i64, ptr %i.q, align 8, !tbaa !37, !alias.scope !416
  %i.cv = sub i64 4611686018427387903, %i.cu
  %i.cw = icmp ult i64 %i.cv, %i.cs
  br i1 %i.cw, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cr, i64 noundef %i.cs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit340 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cy = load i64, ptr %i.q, align 8, !tbaa !37, !alias.scope !416
  %i.cz = icmp eq i64 %i.cy, 4611686018427387903
  br i1 %i.cz, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #30
          to label %.cont.i.i unwind label %.loopexit.split-lp341

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.125, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit340 ; 0 uses

.loopexit340:                                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit342 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp341:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp343 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp341, %.loopexit340
  %lpad.phi344 = phi { ptr, i32 } [ %lpad.loopexit342, %.loopexit340 ], [ %lpad.loopexit.split-lp343, %.loopexit.split-lp341 ]
  %i.db = load ptr, ptr %7, align 8, !tbaa !35, !alias.scope !416 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.p
  br i1 %i.dc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.dd = load i64, ptr %i.p, align 8, !tbaa !39, !alias.scope !416
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #32
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.df = load ptr, ptr %4, align 8, !tbaa !35    ; 6 uses
  %i.dg = icmp eq ptr %i.df, %i.h
  %i.dh = load ptr, ptr %7, align 8, !tbaa !35    ; 5 uses
  %i.di = icmp eq ptr %i.dh, %i.p                 ; 2 uses
  br i1 %i.dg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.di, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.di, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dj = load i64, ptr %i.q, align 8, !tbaa !37  ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 16
  call void @llvm.assume(i1 %i.dk)
  switch i64 %i.dj, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !39
  store i8 %i.dl, ptr %i.df, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.dh, i64 %i.dj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.dm = load i64, ptr %i.q, align 8, !tbaa !37  ; 2 uses
  store i64 %i.dm, ptr %i.i, align 8, !tbaa !37
  %i.dn = load ptr, ptr %4, align 8, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm
  store i8 0, ptr %i.do, align 1, !tbaa !39
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.dh, ptr %4, align 8, !tbaa !35
  %i.dp = load <2 x i64>, ptr %i.q, align 8, !tbaa !39
  store <2 x i64> %i.dp, ptr %i.i, align 8, !tbaa !39
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dq = load i64, ptr %i.h, align 8, !tbaa !39
  store ptr %i.dh, ptr %4, align 8, !tbaa !35
  %i.dr = load <2 x i64>, ptr %i.q, align 8, !tbaa !39
  store <2 x i64> %i.dr, ptr %i.i, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.df, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.df, ptr %7, align 8, !tbaa !35
  store i64 %i.dq, ptr %i.p, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %7, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.ds = phi ptr [ %i.df, %bb.i ], [ %i.p, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.q, align 8, !tbaa !37
  store i8 0, ptr %i.ds, align 1, !tbaa !39
  %i.dt = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.p
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dv = load i64, ptr %i.p, align 8, !tbaa !39
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit230

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.dd

bb.l:                                             ; preds = %bb.b
  store i64 0, ptr %i.i, align 8, !tbaa !37
  %i.dy = load ptr, ptr %4, align 8, !tbaa !35
  store i8 0, ptr %i.dy, align 1, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dz = load i64, ptr %i.r, align 8, !tbaa !37  ; 2 uses
  %i.ea = load i64, ptr %i.i, align 8, !tbaa !37
  %i.eb = sub i64 4611686018427387903, %i.ea
  %i.ec = icmp ult i64 %i.eb, %i.dz
  br i1 %i.ec, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #30
          to label %.noexc unwind label %.loopexit.split-lp346

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.ed = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.ee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ed, i64 noundef %i.dz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit345 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i32 0, ptr %i.t, align 8, !tbaa !418
  store ptr null, ptr %i.u, align 8, !tbaa !419
  store <2 x ptr> %i.ce, ptr %i.v, align 8, !tbaa !420
  store i64 0, ptr %i.w, align 8, !tbaa !421
  %.val81 = load ptr, ptr %6, align 8, !tbaa !108 ; 2 uses
  %i.ef = load ptr, ptr %.val81, align 8, !tbaa !17, !noalias !422
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !422
  %i.ei = invoke noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %.val81)
          to label %_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE5beginEv.exit unwind label %bb.v, !inline_history !395 ; 13 uses

_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE5beginEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %.val82 = load ptr, ptr %6, align 8, !tbaa !108 ; 2 uses
  %i.ej = load ptr, ptr %.val82, align 8, !tbaa !17, !noalias !423
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !423
  %i.em = invoke noundef ptr %i.el(ptr noundef nonnull align 8 dereferenceable(8) %.val82)
          to label %_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE3endEv.exit.preheader unwind label %bb.w, !inline_history !398 ; 7 uses

_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE3endEv.exit.preheader: ; preds = %_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE5beginEv.exit
  %i.en = icmp eq ptr %i.ei, %i.em
  %.not.i119 = icmp eq ptr %i.cl, null            ; 4 uses
  br i1 %i.en, label %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEneERKS4_.exit.a, label %_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE3endEv.exit

_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE3endEv.exit: ; preds = %_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE3endEv.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.034 = phi i64 [ %i.uj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ 0, %_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE3endEv.exit.preheader ] ; 2 uses
  %.2 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %.1774, %_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE3endEv.exit.preheader ]
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef zeroext i1 %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull align 8 dereferenceable(8) %i.em)
          to label %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEneERKS4_.exit unwind label %bb.x, !inline_history !399

_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEneERKS4_.exit: ; preds = %_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE3endEv.exit
  br i1 %i.er, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN12_GLOBAL__N_118WideToUtf8TestCaseEEEEclEPS5_.exit.i.i106, label %bb.y

_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEneERKS4_.exit.a: ; preds = %_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE3endEv.exit.preheader
  %.not.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i, label %_ZN7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit107, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN12_GLOBAL__N_118WideToUtf8TestCaseEEEEclEPS5_.exit.i.i106

_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN12_GLOBAL__N_118WideToUtf8TestCaseEEEEclEPS5_.exit.i.i106: ; preds = %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEneERKS4_.exit, %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEneERKS4_.exit.a
  %.2613 = phi i1 [ %.1774, %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEneERKS4_.exit.a ], [ %.2, %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEneERKS4_.exit ]
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !17
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.em) #29, !inline_history !400
  %i.ev = load ptr, ptr %i.ei, align 8, !tbaa !17
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) #29, !inline_history !400
  br label %_ZN7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit107

_ZN7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit107: ; preds = %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEneERKS4_.exit.a, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN12_GLOBAL__N_118WideToUtf8TestCaseEEEEclEPS5_.exit.i.i106
  %.2614961 = phi i1 [ %.2613, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN12_GLOBAL__N_118WideToUtf8TestCaseEEEEclEPS5_.exit.i.i106 ], [ %.1774, %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEneERKS4_.exit.a ] ; 2 uses
  %i.ey = load ptr, ptr %i.u, align 8, !tbaa !419
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.ey)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit107
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #33
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZN7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit107
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.val90 = load ptr, ptr %i.bz, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val90, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %.val90, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.fb, align 8, !tbaa !52
  %i.ff = getelementptr inbounds nuw i8, ptr %.val90, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !53
  %i.fg = load ptr, ptr %.val90, align 8, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %.val90) #29, !inline_history !1
  %i.fj = load ptr, ptr %.val90, align 8, !tbaa !17
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %.val90) #29, !inline_history !1
  br label %_ZN7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.fe, %bb.s ], [ %i.fo, %bb.t ]
  %i.fp = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fp, label %bb.u, label %_ZN7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit, !prof !54

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val90) #29
  br label %_ZN7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit

_ZN7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0312.0773, i64 64 ; 2 uses
  %.not329 = icmp eq ptr %i.fq, %.val77
  br i1 %.not329, label %._crit_edge, label %.lr.ph

.loopexit345:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit347 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.loopexit.split-lp346:                            ; preds = %bb.n
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit224

bb.w:                                             ; preds = %_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE5beginEv.exit
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit221

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNK7testing8internal14ParamGeneratorIN12_GLOBAL__N_118WideToUtf8TestCaseEE3endEv.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.y:                                             ; preds = %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEneERKS4_.exit
  %i.fu = load ptr, ptr %i.ei, align 8, !tbaa !17
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = invoke noundef nonnull align 8 dereferenceable(84) ptr %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEdeEv.exit unwind label %.thread324, !inline_history !401 ; 8 uses

_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEdeEv.exit: ; preds = %bb.y
  store i64 0, ptr %i.k, align 8, !tbaa !37
  %i.fy = load ptr, ptr %5, align 8, !tbaa !35
  store i8 0, ptr %i.fy, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store ptr %i.x, ptr %10, align 8, !tbaa !36
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !35 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.gb, ptr %i.b, align 8, !tbaa !38
  %i.gc = icmp ugt i64 %i.gb, 15
  br i1 %i.gc, label %.noexc.i.i264, label %._crit_edge.i.i.i256

.noexc.i.i264:                                    ; preds = %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEdeEv.exit
  %i.gd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc265 unwind label %bb.ah ; 2 uses

.noexc265:                                        ; preds = %.noexc.i.i264
  store ptr %i.gd, ptr %10, align 8, !tbaa !35
  %i.ge = load i64, ptr %i.b, align 8, !tbaa !38
  store i64 %i.ge, ptr %i.x, align 8, !tbaa !39
  br label %._crit_edge.i.i.i256

._crit_edge.i.i.i256:                             ; preds = %.noexc265, %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEdeEv.exit
  %i.gf = phi ptr [ %i.gd, %.noexc265 ], [ %i.x, %_ZNK7testing8internal13ParamIteratorIN12_GLOBAL__N_118WideToUtf8TestCaseEEdeEv.exit ] ; 2 uses
  switch i64 %i.gb, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i257
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i256
  %i.gg = load i8, ptr %i.fz, align 1, !tbaa !39
  store i8 %i.gg, ptr %i.gf, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i257

bb.aa:                                            ; preds = %._crit_edge.i.i.i256
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr align 1 %i.fz, i64 %i.gb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i257: ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i256
  %i.gh = load i64, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  store i64 %i.gh, ptr %i.y, align 8, !tbaa !37
  %i.gi = load ptr, ptr %10, align 8, !tbaa !35
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gh
  store i8 0, ptr %i.gj, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !89
  store i32 %i.gl, ptr %i.z, align 8, !tbaa !89
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fx, i64 40 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !36
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !35 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fx, i64 48 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.gp, ptr %i.a, align 8, !tbaa !38
  %i.gq = icmp ugt i64 %i.gp, 15
  br i1 %i.gq, label %.noexc.i7.i259, label %._crit_edge.i.i6.i258

.noexc.i7.i259:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i257
  %i.gr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i263 unwind label %bb.ad ; 2 uses

.noexc.i263:                                      ; preds = %.noexc.i7.i259
  store ptr %i.gr, ptr %i.aa, align 8, !tbaa !35
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.gs, ptr %i.ab, align 8, !tbaa !39
  br label %._crit_edge.i.i6.i258

._crit_edge.i.i6.i258:                            ; preds = %.noexc.i263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i257
  %i.gt = phi ptr [ %i.gr, %.noexc.i263 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i257 ] ; 2 uses
  switch i64 %i.gp, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ae
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i6.i258
  %i.gu = load i8, ptr %i.gn, align 1, !tbaa !39
  store i8 %i.gu, ptr %i.gt, align 1, !tbaa !39
  br label %bb.ae

bb.ac:                                            ; preds = %._crit_edge.i.i6.i258
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr align 1 %i.gn, i64 %i.gp, i1 false)
  br label %bb.ae

bb.ad:                                            ; preds = %.noexc.i7.i259
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.x
  br i1 %i.gx, label %.body266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260: ; preds = %bb.ad
  %i.gy = load i64, ptr %i.x, align 8, !tbaa !39
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #32
  br label %.body266

bb.ae:                                            ; preds = %._crit_edge.i.i6.i258, %bb.ab, %bb.ac
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  store i64 %i.ha, ptr %i.ac, align 8, !tbaa !37
  %i.hb = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.ha
  store i8 0, ptr %i.hc, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fx, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.hd, i64 12, i1 false)
  store i64 %.034, ptr %i.ae, align 8, !tbaa !62
  invoke void %i.cj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.he = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.ab
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110: ; preds = %bb.af
  %i.hg = load i64, ptr %i.ab, align 8, !tbaa !39
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110
  %i.hi = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.x
  br i1 %i.hj, label %_ZN7testing13TestParamInfoIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.hk = load i64, ptr %i.x, align 8, !tbaa !39
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #32
  br label %_ZN7testing13TestParamInfoIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit

_ZN7testing13TestParamInfoIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %.val92 = load ptr, ptr %9, align 8
  %.val93 = load i64, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.hm = icmp eq i64 %.val93, 0
  br i1 %i.hm, label %_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_119WideToUtf8ParamTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN7testing13TestParamInfoIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit, %.preheader.i
  %.091.i = phi i64 [ %i.hs, %.preheader.i ], [ 0, %_ZN7testing13TestParamInfoIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.val92, i64 %.091.i
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !39  ; 2 uses
  %i.hp = zext i8 %i.ho to i32
  %i.hq = call i32 @isalnum(i32 noundef %i.hp) #34
  %i.hr = icmp ne i32 %i.hq, 0
  %.not.i112 = icmp eq i8 %i.ho, 95
  %or.cond.i = or i1 %.not.i112, %i.hr            ; 2 uses
  %i.hs = add nuw i64 %.091.i, 1                  ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.hs, %.val93
  %or.cond.not = select i1 %or.cond.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.preheader.i, label %_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_119WideToUtf8ParamTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !402

_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_119WideToUtf8ParamTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.preheader.i, %_ZN7testing13TestParamInfoIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit
  %.1.i = phi i1 [ false, %_ZN7testing13TestParamInfoIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev.exit ], [ %or.cond.i, %.preheader.i ]
  %i.ht = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %.1.i)
          to label %bb.ag unwind label %.loopexit

bb.ag:                                            ; preds = %_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_119WideToUtf8ParamTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.ht, label %bb.au, label %bb.aj

.thread324:                                       ; preds = %bb.y
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN12_GLOBAL__N_118WideToUtf8TestCaseEEEEclEPS5_.exit.i.i220

bb.ah:                                            ; preds = %.noexc.i.i264
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body266

bb.ai:                                            ; preds = %bb.ae
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN7testing13TestParamInfoIN12_GLOBAL__N_118WideToUtf8TestCaseEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #29
  br label %.body266

.body266:                                         ; preds = %bb.ad, %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.hw, %bb.ai ], [ %i.hv, %bb.ah ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260 ], [ %i.gv, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

.loopexit:                                        ; preds = %_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_119WideToUtf8ParamTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i150, %.noexc.i, %bb.bp
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
end_hunk_0
