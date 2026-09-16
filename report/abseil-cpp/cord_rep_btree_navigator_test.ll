Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_rep_btree_navigator_test?download=true
inline.NumInlined: 3288
inline.NumDeleted: 1198
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN7testing8internal26ParameterizedTestSuiteInfoIN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestEE13RegisterTestsEv:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.au = load ptr, ptr %.sroa.0251.0462, align 8, !tbaa !38, !noalias !744
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !40, !noalias !744 ; 3 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !39, !alias.scope !745
  store i64 0, ptr %i.m, align 8, !tbaa !40, !alias.scope !745
  store i8 0, ptr %i.l, align 8, !tbaa !42, !alias.scope !745
  %i.aw = add i64 %i.av, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.aw)
          to label %bb.d unwind label %.loopexit279

bb.d:                                             ; preds = %bb.c
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !40, !alias.scope !745
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.av
  br i1 %i.az, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.au, i64 noundef %i.av)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit279 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !40, !alias.scope !745
  %i.bc = icmp eq i64 %i.bb, 4611686018427387903
  br i1 %i.bc, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #31
          to label %.cont.i.i unwind label %.loopexit.split-lp280

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.101, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit279 ; 0 uses

.loopexit279:                                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit281 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp280:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp282 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp280, %.loopexit279
  %lpad.phi283 = phi { ptr, i32 } [ %lpad.loopexit281, %.loopexit279 ], [ %lpad.loopexit.split-lp282, %.loopexit.split-lp280 ]
  %i.be = load ptr, ptr %6, align 8, !tbaa !38, !alias.scope !745 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.l
  br i1 %i.bf, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.bg = load i64, ptr %i.l, align 8, !tbaa !42, !alias.scope !745
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #34
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bi = load ptr, ptr %3, align 8, !tbaa !38    ; 6 uses
  %i.bj = icmp eq ptr %i.bi, %i.d
  %i.bk = load ptr, ptr %6, align 8, !tbaa !38    ; 5 uses
  %i.bl = icmp eq ptr %i.bk, %i.l                 ; 2 uses
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.bl, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.bl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bm = load i64, ptr %i.m, align 8, !tbaa !40  ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  switch i64 %i.bm, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !42
  store i8 %i.bo, ptr %i.bi, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bk, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.bp = load i64, ptr %i.m, align 8, !tbaa !40  ; 2 uses
  store i64 %i.bp, ptr %i.e, align 8, !tbaa !40
  %i.bq = load ptr, ptr %3, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store i8 0, ptr %i.br, align 1, !tbaa !42
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bk, ptr %3, align 8, !tbaa !38
  %i.bs = load <2 x i64>, ptr %i.m, align 8, !tbaa !42
  store <2 x i64> %i.bs, ptr %i.e, align 8, !tbaa !42
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !42
  store ptr %i.bk, ptr %3, align 8, !tbaa !38
  %i.bu = load <2 x i64>, ptr %i.m, align 8, !tbaa !42
  store <2 x i64> %i.bu, ptr %i.e, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bi, ptr %6, align 8, !tbaa !38
  store i64 %i.bt, ptr %i.l, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.l, ptr %6, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.bv = phi ptr [ %i.bi, %bb.i ], [ %i.l, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.m, align 8, !tbaa !40
  store i8 0, ptr %i.bv, align 1, !tbaa !42
  %i.bw = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.l
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.by = load i64, ptr %i.l, align 8, !tbaa !42
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ParamGeneratorImED2Ev.exit186

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.cj

bb.l:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !40
  %i.cb = load ptr, ptr %3, align 8, !tbaa !38
  store i8 0, ptr %i.cb, align 1, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = load i64, ptr %i.n, align 8, !tbaa !40  ; 2 uses
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !40
  %i.ce = sub i64 4611686018427387903, %i.cd
  %i.cf = icmp ult i64 %i.ce, %i.cc
  br i1 %i.cf, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #31
          to label %.noexc unwind label %.loopexit.split-lp285

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.cg, i64 noundef %i.cc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit284 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i32 0, ptr %i.p, align 8, !tbaa !747
  store ptr null, ptr %i.q, align 8, !tbaa !748
  store <2 x ptr> %i.ah, ptr %i.r, align 8, !tbaa !749
  store i64 0, ptr %i.s, align 8, !tbaa !750
  %i.ci = load ptr, ptr %5, align 8, !tbaa !62, !noalias !751 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !37, !noalias !751
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !751
  %i.cm = invoke noundef ptr %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_ZNK7testing8internal14ParamGeneratorImE5beginEv.exit unwind label %bb.v, !inline_history !729 ; 13 uses

_ZNK7testing8internal14ParamGeneratorImE5beginEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cn = load ptr, ptr %5, align 8, !tbaa !62, !noalias !752 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !37, !noalias !752
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !752
  %i.cr = invoke noundef ptr %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %_ZNK7testing8internal14ParamGeneratorImE3endEv.exit.preheader unwind label %bb.w, !inline_history !732 ; 7 uses

_ZNK7testing8internal14ParamGeneratorImE3endEv.exit.preheader: ; preds = %_ZNK7testing8internal14ParamGeneratorImE5beginEv.exit
  %i.cs = icmp eq ptr %i.cm, %i.cr
  %.not.i99 = icmp eq ptr %i.ao, null             ; 4 uses
  br i1 %i.cs, label %_ZNK7testing8internal13ParamIteratorImEneERKS2_.exit.a, label %_ZNK7testing8internal14ParamGeneratorImE3endEv.exit

_ZNK7testing8internal14ParamGeneratorImE3endEv.exit: ; preds = %_ZNK7testing8internal14ParamGeneratorImE3endEv.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %.034 = phi i64 [ %i.np, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ 0, %_ZNK7testing8internal14ParamGeneratorImE3endEv.exit.preheader ] ; 2 uses
  %.2 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.1463, %_ZNK7testing8internal14ParamGeneratorImE3endEv.exit.preheader ]
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.cr)
          to label %_ZNK7testing8internal13ParamIteratorImEneERKS2_.exit unwind label %bb.x, !inline_history !733

_ZNK7testing8internal13ParamIteratorImEneERKS2_.exit: ; preds = %_ZNK7testing8internal14ParamGeneratorImE3endEv.exit
  br i1 %i.cw, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceImEEEclEPS3_.exit.i.i89, label %bb.y

_ZNK7testing8internal13ParamIteratorImEneERKS2_.exit.a: ; preds = %_ZNK7testing8internal14ParamGeneratorImE3endEv.exit.preheader
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %_ZN7testing8internal13ParamIteratorImED2Ev.exit90, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceImEEEclEPS3_.exit.i.i89

_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceImEEEclEPS3_.exit.i.i89: ; preds = %_ZNK7testing8internal13ParamIteratorImEneERKS2_.exit, %_ZNK7testing8internal13ParamIteratorImEneERKS2_.exit.a
  %.2342 = phi i1 [ %.1463, %_ZNK7testing8internal13ParamIteratorImEneERKS2_.exit.a ], [ %.2, %_ZNK7testing8internal13ParamIteratorImEneERKS2_.exit ]
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !37
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) #32, !inline_history !734
  %i.da = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) #32, !inline_history !734
  br label %_ZN7testing8internal13ParamIteratorImED2Ev.exit90

_ZN7testing8internal13ParamIteratorImED2Ev.exit90: ; preds = %_ZNK7testing8internal13ParamIteratorImEneERKS2_.exit.a, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceImEEEclEPS3_.exit.i.i89
  %.2343606 = phi i1 [ %.2342, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceImEEEclEPS3_.exit.i.i89 ], [ %.1463, %_ZNK7testing8internal13ParamIteratorImEneERKS2_.exit.a ] ; 2 uses
  %i.dd = load ptr, ptr %i.q, align 8, !tbaa !748
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.dd)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internal13ParamIteratorImED2Ev.exit90
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #35
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZN7testing8internal13ParamIteratorImED2Ev.exit90
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.dg = load ptr, ptr %i.ac, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal14ParamGeneratorImED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %i.di = load atomic i64, ptr %i.dh acquire, align 8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 4294967297
  %i.dk = trunc i64 %i.di to i32                  ; 2 uses
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.dh, align 8, !tbaa !65
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 0, ptr %i.dl, align 4, !tbaa !66
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !37
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #32, !inline_history !735
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !37
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #32, !inline_history !735
  br label %_ZN7testing8internal14ParamGeneratorImED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = add nsw i32 %i.dk, -1
  store i32 %i.dt, ptr %i.dh, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.du = atomicrmw volatile add ptr %i.dh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.dk, %bb.s ], [ %i.du, %bb.t ]
  %i.dv = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dv, label %bb.u, label %_ZN7testing8internal14ParamGeneratorImED2Ev.exit, !prof !157

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #32
  br label %_ZN7testing8internal14ParamGeneratorImED2Ev.exit

_ZN7testing8internal14ParamGeneratorImED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0251.0462, i64 64 ; 2 uses
  %.not268 = icmp eq ptr %i.dw, %.val72
  br i1 %.not268, label %._crit_edge, label %.lr.ph

.loopexit284:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit286 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp285:                            ; preds = %bb.n
  %lpad.loopexit.split-lp287 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal13ParamIteratorImED2Ev.exit180

bb.w:                                             ; preds = %_ZNK7testing8internal14ParamGeneratorImE5beginEv.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal13ParamIteratorImED2Ev.exit177

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNK7testing8internal14ParamGeneratorImE3endEv.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.y:                                             ; preds = %_ZNK7testing8internal13ParamIteratorImEneERKS2_.exit
  %i.ea = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_ZNK7testing8internal13ParamIteratorImEdeEv.exit unwind label %.thread263, !inline_history !736 ; 3 uses

_ZNK7testing8internal13ParamIteratorImEdeEv.exit: ; preds = %bb.y
  store i64 0, ptr %i.g, align 8, !tbaa !40
  %i.ee = load ptr, ptr %4, align 8, !tbaa !38
  store i8 0, ptr %i.ee, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !41
  store i64 %i.ef, ptr %9, align 8, !tbaa !754
  store i64 %.034, ptr %i.t, align 8, !tbaa !755
  invoke void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %_ZNK7testing8internal13ParamIteratorImEdeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %.val76 = load ptr, ptr %8, align 8
  %.val77 = load i64, ptr %i.u, align 8, !tbaa !40 ; 2 uses
  %i.eg = icmp eq i64 %.val77, 0
  br i1 %i.eg, label %_ZN7testing8internal26ParameterizedTestSuiteInfoIN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %.091.i = phi i64 [ %i.em, %.preheader.i ], [ 0, %bb.z ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val76, i64 %.091.i
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !42  ; 2 uses
  %i.ej = zext i8 %i.ei to i32
  %i.ek = call i32 @isalnum(i32 noundef %i.ej) #37
  %i.el = icmp ne i32 %i.ek, 0
  %.not.i92 = icmp eq i8 %i.ei, 95
  %or.cond.i = or i1 %.not.i92, %i.el             ; 2 uses
  %i.em = add nuw i64 %.091.i, 1                  ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.em, %.val77
  %or.cond.not = select i1 %or.cond.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.preheader.i, label %_ZN7testing8internal26ParameterizedTestSuiteInfoIN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !737

_ZN7testing8internal26ParameterizedTestSuiteInfoIN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.preheader.i, %bb.z
  %.1.i = phi i1 [ false, %bb.z ], [ %or.cond.i, %.preheader.i ]
  %i.en = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %.1.i)
          to label %bb.aa unwind label %.loopexit

bb.aa:                                            ; preds = %_ZN7testing8internal26ParameterizedTestSuiteInfoIN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.en, label %bb.an, label %bb.ac

.thread263:                                       ; preds = %bb.y
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceImEEEclEPS3_.exit.i.i176

bb.ab:                                            ; preds = %_ZNK7testing8internal13ParamIteratorImEdeEv.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

.loopexit:                                        ; preds = %_ZN7testing8internal26ParameterizedTestSuiteInfoIN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i130, %.noexc.i, %bb.bi
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef 585)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.102, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit269 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ad
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.103, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %.loopexit269 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.es = load ptr, ptr %8, align 8, !tbaa !38
  %i.et = load i64, ptr %i.u, align 8, !tbaa !40
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.es, i64 noundef %i.et)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit269 ; 6 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull @.str.104, i64 noundef 102)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %.loopexit269 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  br i1 %.not.i99, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !37
  %i.ex = getelementptr i8, ptr %i.ew, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %i.eu, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !53
  %i.fc = or i32 %i.fb, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ez, i32 noundef %i.fc)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %.loopexit269

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.fd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #32
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull %i.ao, i64 noundef %i.fd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %.loopexit269 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %bb.ae, %bb.af
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull @.str.105, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104 unwind label %.loopexit269 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, i32 noundef %i.aq)
          to label %bb.ag unwind label %.loopexit269 ; 4 uses

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef nonnull @.str.56, i64 noundef 0)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %.loopexit269 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %bb.ag
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !37
  %i.fj = getelementptr i8, ptr %i.fi, i64 -24
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.fg, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 240
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !89 ; 6 uses
  %.not.i.i.i209 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i209, label %bb.ah, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc210 unwind label %.loopexit.split-lp270

.noexc210:                                        ; preds = %bb.ah
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !95
  %.not.i1.i.i = icmp eq i8 %i.fp, 0
  br i1 %.not.i1.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 67
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fn)
          to label %.noexc211 unwind label %.loopexit269

.noexc211:                                        ; preds = %bb.aj
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !37
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke noundef signext i8 %i.fu(ptr noundef nonnull align 8 dereferenceable(570) %i.fn, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit269, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc211, %bb.ai
  %.0.i.i.i = phi i8 [ %i.fr, %bb.ai ], [ %i.fv, %.noexc211 ]
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, i8 noundef signext %.0.i.i.i)
          to label %.noexc213 unwind label %.loopexit269

.noexc213:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit269 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc213
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.an

bb.ak:                                            ; preds = %bb.ac
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit269:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104, %bb.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.ae, %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102, %bb.ag, %bb.aj, %.noexc211, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc213
  %lpad.loopexit271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp270:                            ; preds = %bb.ah
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp270, %.loopexit269
  %lpad.phi273 = phi { ptr, i32 } [ %lpad.loopexit271, %.loopexit269 ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp270 ]
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %10) #32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn = phi { ptr, i32 } [ %lpad.phi273, %bb.al ], [ %i.fy, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

end_hunk_0
