Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/bernoulli_distribution_test?download=true
inline.NumInlined: 1852
inline.NumDeleted: 853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_113BernoulliTestEE13RegisterTestsEv:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.au = load ptr, ptr %.sroa.0252.0463, align 8, !tbaa !29, !noalias !380
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !31, !noalias !380 ; 3 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !30, !alias.scope !381
  store i64 0, ptr %i.m, align 8, !tbaa !31, !alias.scope !381
  store i8 0, ptr %i.l, align 8, !tbaa !33, !alias.scope !381
  %i.aw = add i64 %i.av, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.aw)
          to label %bb.d unwind label %.loopexit280

bb.d:                                             ; preds = %bb.c
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !31, !alias.scope !381
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.av
  br i1 %i.az, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.au, i64 noundef %i.av)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit280 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !31, !alias.scope !381
  %i.bc = icmp eq i64 %i.bb, 4611686018427387903
  br i1 %i.bc, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #26
          to label %.cont.i.i unwind label %.loopexit.split-lp281

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.70, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit280 ; 0 uses

.loopexit280:                                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit282 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp281:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp283 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp281, %.loopexit280
  %lpad.phi284 = phi { ptr, i32 } [ %lpad.loopexit282, %.loopexit280 ], [ %lpad.loopexit.split-lp283, %.loopexit.split-lp281 ]
  %i.be = load ptr, ptr %6, align 8, !tbaa !29, !alias.scope !381 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.l
  br i1 %i.bf, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.bg = load i64, ptr %i.l, align 8, !tbaa !33, !alias.scope !381
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #29
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bi = load ptr, ptr %3, align 8, !tbaa !29    ; 6 uses
  %i.bj = icmp eq ptr %i.bi, %i.d
  %i.bk = load ptr, ptr %6, align 8, !tbaa !29    ; 5 uses
  %i.bl = icmp eq ptr %i.bk, %i.l                 ; 2 uses
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.bl, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.bl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bm = load i64, ptr %i.m, align 8, !tbaa !31  ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  switch i64 %i.bm, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !33
  store i8 %i.bo, ptr %i.bi, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bk, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.bp = load i64, ptr %i.m, align 8, !tbaa !31  ; 2 uses
  store i64 %i.bp, ptr %i.e, align 8, !tbaa !31
  %i.bq = load ptr, ptr %3, align 8, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store i8 0, ptr %i.br, align 1, !tbaa !33
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bk, ptr %3, align 8, !tbaa !29
  %i.bs = load <2 x i64>, ptr %i.m, align 8, !tbaa !33
  store <2 x i64> %i.bs, ptr %i.e, align 8, !tbaa !33
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !33
  store ptr %i.bk, ptr %3, align 8, !tbaa !29
  %i.bu = load <2 x i64>, ptr %i.m, align 8, !tbaa !33
  store <2 x i64> %i.bu, ptr %i.e, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bi, ptr %6, align 8, !tbaa !29
  store i64 %i.bt, ptr %i.l, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.l, ptr %6, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.bv = phi ptr [ %i.bi, %bb.i ], [ %i.l, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.m, align 8, !tbaa !31
  store i8 0, ptr %i.bv, align 1, !tbaa !33
  %i.bw = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.l
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.by = load i64, ptr %i.l, align 8, !tbaa !33
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ParamGeneratorISt4pairIdmEED2Ev.exit187

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.cj

bb.l:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !31
  %i.cb = load ptr, ptr %3, align 8, !tbaa !29
  store i8 0, ptr %i.cb, align 1, !tbaa !33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = load i64, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !31
  %i.ce = sub i64 4611686018427387903, %i.cd
  %i.cf = icmp ult i64 %i.ce, %i.cc
  br i1 %i.cf, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #26
          to label %.noexc unwind label %.loopexit.split-lp286

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.cg, i64 noundef %i.cc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit285 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store i32 0, ptr %i.p, align 8, !tbaa !383
  store ptr null, ptr %i.q, align 8, !tbaa !384
  store <2 x ptr> %i.ah, ptr %i.r, align 8, !tbaa !385
  store i64 0, ptr %i.s, align 8, !tbaa !386
  %i.ci = load ptr, ptr %5, align 8, !tbaa !122, !noalias !387 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !28, !noalias !387
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !387
  %i.cm = invoke noundef ptr %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE5beginEv.exit unwind label %bb.v, !inline_history !365 ; 13 uses

_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE5beginEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cn = load ptr, ptr %5, align 8, !tbaa !122, !noalias !388 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !28, !noalias !388
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !388
  %i.cr = invoke noundef ptr %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader unwind label %bb.w, !inline_history !368 ; 7 uses

_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader: ; preds = %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE5beginEv.exit
  %i.cs = icmp eq ptr %i.cm, %i.cr
  %.not.i100 = icmp eq ptr %i.ao, null            ; 4 uses
  br i1 %i.cs, label %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader.split.us, label %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit

_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader.split.us: ; preds = %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %_ZN7testing8internal13ParamIteratorISt4pairIdmEED2Ev.exit91, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceISt4pairIdmEEEEclEPS5_.exit.i.i90

_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit: ; preds = %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %.035 = phi i64 [ %i.nn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ 0, %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader ] ; 2 uses
  %.2 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %.1464, %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader ]
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.cr)
          to label %_ZNK7testing8internal13ParamIteratorISt4pairIdmEEneERKS4_.exit.a unwind label %bb.x, !inline_history !369

_ZNK7testing8internal13ParamIteratorISt4pairIdmEEneERKS4_.exit.a: ; preds = %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit
  br i1 %i.cw, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceISt4pairIdmEEEEclEPS5_.exit.i.i90, label %bb.y

_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceISt4pairIdmEEEEclEPS5_.exit.i.i90: ; preds = %_ZNK7testing8internal13ParamIteratorISt4pairIdmEEneERKS4_.exit.a, %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader.split.us
  %.2343 = phi i1 [ %.1464, %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader.split.us ], [ %.2, %_ZNK7testing8internal13ParamIteratorISt4pairIdmEEneERKS4_.exit.a ]
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) #27, !inline_history !370
  %i.da = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) #27, !inline_history !370
  br label %_ZN7testing8internal13ParamIteratorISt4pairIdmEED2Ev.exit91

_ZN7testing8internal13ParamIteratorISt4pairIdmEED2Ev.exit91: ; preds = %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader.split.us, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceISt4pairIdmEEEEclEPS5_.exit.i.i90
  %.2344607 = phi i1 [ %.2343, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceISt4pairIdmEEEEclEPS5_.exit.i.i90 ], [ %.1464, %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit.preheader.split.us ] ; 2 uses
  %i.dd = load ptr, ptr %i.q, align 8, !tbaa !384
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.dd)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internal13ParamIteratorISt4pairIdmEED2Ev.exit91
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #30
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZN7testing8internal13ParamIteratorISt4pairIdmEED2Ev.exit91
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.dg = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal14ParamGeneratorISt4pairIdmEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %i.di = load atomic i64, ptr %i.dh acquire, align 8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 4294967297
  %i.dk = trunc i64 %i.di to i32                  ; 2 uses
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.dh, align 8, !tbaa !64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 0, ptr %i.dl, align 4, !tbaa !65
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !28
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #27, !inline_history !371
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #27, !inline_history !371
  br label %_ZN7testing8internal14ParamGeneratorISt4pairIdmEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = add nsw i32 %i.dk, -1
  store i32 %i.dt, ptr %i.dh, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.du = atomicrmw volatile add ptr %i.dh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.dk, %bb.s ], [ %i.du, %bb.t ]
  %i.dv = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dv, label %bb.u, label %_ZN7testing8internal14ParamGeneratorISt4pairIdmEED2Ev.exit, !prof !116

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #27
  br label %_ZN7testing8internal14ParamGeneratorISt4pairIdmEED2Ev.exit

_ZN7testing8internal14ParamGeneratorISt4pairIdmEED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0252.0463, i64 64 ; 2 uses
  %.not269 = icmp eq ptr %i.dw, %.val73
  br i1 %.not269, label %._crit_edge, label %.lr.ph

.loopexit285:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit287 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp286:                            ; preds = %bb.n
  %lpad.loopexit.split-lp288 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal13ParamIteratorISt4pairIdmEED2Ev.exit181

bb.w:                                             ; preds = %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE5beginEv.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal13ParamIteratorISt4pairIdmEED2Ev.exit178

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNK7testing8internal14ParamGeneratorISt4pairIdmEE3endEv.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.y:                                             ; preds = %_ZNK7testing8internal13ParamIteratorISt4pairIdmEEneERKS4_.exit.a
  %i.ea = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_ZNK7testing8internal13ParamIteratorISt4pairIdmEEdeEv.exit unwind label %.thread264, !inline_history !372 ; 4 uses

_ZNK7testing8internal13ParamIteratorISt4pairIdmEEdeEv.exit: ; preds = %bb.y
  store i64 0, ptr %i.g, align 8, !tbaa !31
  %i.ee = load ptr, ptr %4, align 8, !tbaa !29
  store i8 0, ptr %i.ee, align 1, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i64 16, i1 false)
  store i64 %.035, ptr %i.t, align 8, !tbaa !39
  invoke void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %_ZNK7testing8internal13ParamIteratorISt4pairIdmEEdeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.val77 = load ptr, ptr %8, align 8
  %.val78 = load i64, ptr %i.u, align 8, !tbaa !31 ; 2 uses
  %i.ef = icmp eq i64 %.val78, 0
  br i1 %i.ef, label %_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_113BernoulliTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %.091.i = phi i64 [ %i.el, %.preheader.i ], [ 0, %bb.z ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val77, i64 %.091.i
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !33  ; 2 uses
  %i.ei = zext i8 %i.eh to i32
  %i.ej = call i32 @isalnum(i32 noundef %i.ei) #31
  %i.ek = icmp ne i32 %i.ej, 0
  %.not.i93 = icmp eq i8 %i.eh, 95
  %or.cond.i = or i1 %.not.i93, %i.ek             ; 2 uses
  %i.el = add nuw i64 %.091.i, 1                  ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.el, %.val78
  %or.cond.not = select i1 %or.cond.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.preheader.i, label %_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_113BernoulliTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !373

_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_113BernoulliTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.preheader.i, %bb.z
  %.1.i = phi i1 [ false, %bb.z ], [ %or.cond.i, %.preheader.i ]
  %i.em = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %.1.i)
          to label %bb.aa unwind label %.loopexit

bb.aa:                                            ; preds = %_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_113BernoulliTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.em, label %bb.an, label %bb.ac

.thread264:                                       ; preds = %bb.y
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceISt4pairIdmEEEEclEPS5_.exit.i.i177

bb.ab:                                            ; preds = %_ZNK7testing8internal13ParamIteratorISt4pairIdmEEdeEv.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

.loopexit:                                        ; preds = %_ZN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_113BernoulliTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i131, %.noexc.i, %bb.bi
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef 3, ptr noundef nonnull @.str.41, i32 noundef 585)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.71, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit270 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ad
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.72, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %.loopexit270 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.er = load ptr, ptr %8, align 8, !tbaa !29
  %i.es = load i64, ptr %i.u, align 8, !tbaa !31
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.er, i64 noundef %i.es)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit270 ; 6 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull @.str.73, i64 noundef 102)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99 unwind label %.loopexit270 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  br i1 %.not.i100, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !28
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds i8, ptr %i.et, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !49
  %i.fb = or i32 %i.fa, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ey, i32 noundef %i.fb)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103 unwind label %.loopexit270

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  %i.fc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #27
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull %i.ao, i64 noundef %i.fc)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103 unwind label %.loopexit270 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103: ; preds = %bb.ae, %bb.af
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull @.str.74, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105 unwind label %.loopexit270 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i32 noundef %i.aq)
          to label %bb.ag unwind label %.loopexit270 ; 4 uses

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef nonnull @.str.24, i64 noundef 0)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107 unwind label %.loopexit270 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107: ; preds = %bb.ag
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !28
  %i.fi = getelementptr i8, ptr %i.fh, i64 -24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr %i.ff, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 240
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !104 ; 6 uses
  %.not.i.i.i210 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i210, label %bb.ah, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc211 unwind label %.loopexit.split-lp271

.noexc211:                                        ; preds = %bb.ah
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !110
  %.not.i1.i.i = icmp eq i8 %i.fo, 0
  br i1 %.not.i1.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 67
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fm)
          to label %.noexc212 unwind label %.loopexit270

.noexc212:                                        ; preds = %bb.aj
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = invoke noundef signext i8 %i.ft(ptr noundef nonnull align 8 dereferenceable(570) %i.fm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit270, !inline_history !7

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc212, %bb.ai
  %.0.i.i.i = phi i8 [ %i.fq, %bb.ai ], [ %i.fu, %.noexc212 ]
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, i8 noundef signext %.0.i.i.i)
          to label %.noexc214 unwind label %.loopexit270

.noexc214:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit270 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc214
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.an

bb.ak:                                            ; preds = %bb.ac
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit270:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105, %bb.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.ae, %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103, %bb.ag, %bb.aj, %.noexc212, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc214
  %lpad.loopexit272 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp271:                            ; preds = %bb.ah
  %lpad.loopexit.split-lp273 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp271, %.loopexit270
  %lpad.phi274 = phi { ptr, i32 } [ %lpad.loopexit272, %.loopexit270 ], [ %lpad.loopexit.split-lp273, %.loopexit.split-lp271 ]
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %10) #27
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn = phi { ptr, i32 } [ %lpad.phi274, %bb.al ], [ %i.fx, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.an:                                            ; preds = %bb.aa, %_ZNSolsEPFRSoS_E.exit
end_hunk_0
