Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/base64_test?download=true
inline.NumInlined: 1596
inline.NumDeleted: 734
begin_hunk_0_@_ZN7testing8internal26ParameterizedTestSuiteInfoI10Base64TestE13RegisterTestsEv:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  %i.ay = load ptr, ptr %.sroa.0234.0449, align 8, !tbaa !964, !noalias !2335
  %i.az = load i64, ptr %i.av, align 8, !tbaa !966, !noalias !2335 ; 3 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !965, !alias.scope !2336
  store i64 0, ptr %i.o, align 8, !tbaa !966, !alias.scope !2336
  store i8 0, ptr %i.n, align 8, !tbaa !968, !alias.scope !2336
  %i.ba = add i64 %i.az, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ba)
          to label %bb.d unwind label %.loopexit266

bb.d:                                             ; preds = %bb.c
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !966, !alias.scope !2336
  %i.bc = sub i64 4611686018427387903, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.az
  br i1 %i.bd, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.ay, i64 noundef %i.az)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit266 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bf = load i64, ptr %i.o, align 8, !tbaa !966, !alias.scope !2336
  %i.bg = icmp eq i64 %i.bf, 4611686018427387903
  br i1 %i.bg, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #24
          to label %.cont.i.i unwind label %.loopexit.split-lp267

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.96, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit266 ; 0 uses

.loopexit266:                                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit268 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp267:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp267, %.loopexit266
  %lpad.phi270 = phi { ptr, i32 } [ %lpad.loopexit268, %.loopexit266 ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp267 ]
  %i.bi = load ptr, ptr %6, align 8, !tbaa !964, !alias.scope !2336 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.n
  br i1 %i.bj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.bk = load i64, ptr %i.n, align 8, !tbaa !968, !alias.scope !2336
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #27
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bm = load ptr, ptr %3, align 8, !tbaa !964   ; 6 uses
  %i.bn = icmp eq ptr %i.bm, %i.d
  %i.bo = load ptr, ptr %6, align 8, !tbaa !964   ; 5 uses
  %i.bp = icmp eq ptr %i.bo, %i.n                 ; 2 uses
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.bp, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.bp, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bq = load i64, ptr %i.o, align 8, !tbaa !966 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  switch i64 %i.bq, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !968
  store i8 %i.bs, ptr %i.bm, align 1, !tbaa !968
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.bt = load i64, ptr %i.o, align 8, !tbaa !966 ; 2 uses
  store i64 %i.bt, ptr %i.e, align 8, !tbaa !966
  %i.bu = load ptr, ptr %3, align 8, !tbaa !964
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !968
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !964
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bo, ptr %3, align 8, !tbaa !964
  %i.bw = load <2 x i64>, ptr %i.o, align 8, !tbaa !968
  store <2 x i64> %i.bw, ptr %i.e, align 8, !tbaa !968
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !968
  store ptr %i.bo, ptr %3, align 8, !tbaa !964
  %i.by = load <2 x i64>, ptr %i.o, align 8, !tbaa !968
  store <2 x i64> %i.by, ptr %i.e, align 8, !tbaa !968
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bm, ptr %6, align 8, !tbaa !964
  store i64 %i.bx, ptr %i.n, align 8, !tbaa !968
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.n, ptr %6, align 8, !tbaa !964
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.bz = phi ptr [ %i.bm, %bb.i ], [ %i.n, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.o, align 8, !tbaa !966
  store i8 0, ptr %i.bz, align 1, !tbaa !968
  %i.ca = load ptr, ptr %6, align 8, !tbaa !964   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.n
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cc = load i64, ptr %i.n, align 8, !tbaa !968
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ParamGeneratorI16Base64TestVectorED2Ev.exit169

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ck

bb.l:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !966
  %i.cf = load ptr, ptr %3, align 8, !tbaa !964
  store i8 0, ptr %i.cf, align 1, !tbaa !968
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = load i64, ptr %i.p, align 8, !tbaa !966 ; 2 uses
  %i.ch = load i64, ptr %i.e, align 8, !tbaa !966
  %i.ci = sub i64 4611686018427387903, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.cg
  br i1 %i.cj, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #24
          to label %.noexc unwind label %.loopexit.split-lp272

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.ck = load ptr, ptr %i.q, align 8, !tbaa !964
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ck, i64 noundef %i.cg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit271 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 0, ptr %i.r, align 8, !tbaa !2338
  store ptr null, ptr %i.s, align 8, !tbaa !2339
  store <2 x ptr> %i.aj, ptr %i.t, align 8, !tbaa !2340
  store i64 0, ptr %i.u, align 8, !tbaa !2341
  %i.cm = load ptr, ptr %5, align 8, !tbaa !1077, !noalias !2342 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !80, !noalias !2342
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !2342
  %i.cq = invoke noundef ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE5beginEv.exit unwind label %bb.v, !inline_history !2239 ; 13 uses

_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE5beginEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cr = load ptr, ptr %5, align 8, !tbaa !1077, !noalias !2343 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !80, !noalias !2343
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !2343
  %i.cv = invoke noundef ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr)
          to label %_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE3endEv.exit.preheader unwind label %bb.w, !inline_history !2242 ; 7 uses

_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE3endEv.exit.preheader: ; preds = %_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE5beginEv.exit
  %i.cw = icmp eq ptr %i.cq, %i.cv
  %.not.i82 = icmp eq ptr %i.as, null             ; 4 uses
  br i1 %i.cw, label %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEneERKS3_.exit.a, label %_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE3endEv.exit

_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE3endEv.exit: ; preds = %_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE3endEv.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %.034 = phi i64 [ %i.nw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ 0, %_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE3endEv.exit.preheader ] ; 2 uses
  %.2 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.1450, %_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE3endEv.exit.preheader ]
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !80
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEneERKS3_.exit unwind label %bb.x, !inline_history !2243

_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEneERKS3_.exit: ; preds = %_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE3endEv.exit
  br i1 %i.da, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceI16Base64TestVectorEEEclEPS4_.exit.i.i72, label %bb.y

_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEneERKS3_.exit.a: ; preds = %_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE3endEv.exit.preheader
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %_ZN7testing8internal13ParamIteratorI16Base64TestVectorED2Ev.exit73, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceI16Base64TestVectorEEEclEPS4_.exit.i.i72

_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceI16Base64TestVectorEEEclEPS4_.exit.i.i72: ; preds = %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEneERKS3_.exit, %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEneERKS3_.exit.a
  %.2329 = phi i1 [ %.1450, %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEneERKS3_.exit.a ], [ %.2, %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEneERKS3_.exit ]
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !80
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.cv) #25, !call_target !1095, !inline_history !2244
  %i.de = load ptr, ptr %i.cq, align 8, !tbaa !80
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #25, !call_target !1095, !inline_history !2244
  br label %_ZN7testing8internal13ParamIteratorI16Base64TestVectorED2Ev.exit73

_ZN7testing8internal13ParamIteratorI16Base64TestVectorED2Ev.exit73: ; preds = %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEneERKS3_.exit.a, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceI16Base64TestVectorEEEclEPS4_.exit.i.i72
  %.2330598 = phi i1 [ %.2329, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceI16Base64TestVectorEEEclEPS4_.exit.i.i72 ], [ %.1450, %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEneERKS3_.exit.a ] ; 2 uses
  %i.dh = load ptr, ptr %i.s, align 8, !tbaa !2339
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.dh)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internal13ParamIteratorI16Base64TestVectorED2Ev.exit73
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZN7testing8internal13ParamIteratorI16Base64TestVectorED2Ev.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dk = load ptr, ptr %i.ae, align 8, !tbaa !973 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal14ParamGeneratorI16Base64TestVectorED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.dl, align 8, !tbaa !976
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !977
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !80
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25, !call_target !982, !inline_history !24
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !80
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25, !call_target !991, !inline_history !24
  br label %_ZN7testing8internal14ParamGeneratorI16Base64TestVectorED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !968
  %.not.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !974
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.do, %bb.s ], [ %i.dy, %bb.t ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.u, label %_ZN7testing8internal14ParamGeneratorI16Base64TestVectorED2Ev.exit, !prof !1033

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25
  br label %_ZN7testing8internal14ParamGeneratorI16Base64TestVectorED2Ev.exit

_ZN7testing8internal14ParamGeneratorI16Base64TestVectorED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0234.0449, i64 64 ; 2 uses
  %.not255 = icmp eq ptr %i.ea, %i.al
  br i1 %.not255, label %._crit_edge, label %.lr.ph

.loopexit271:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit273 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp272:                            ; preds = %bb.n
  %lpad.loopexit.split-lp274 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal13ParamIteratorI16Base64TestVectorED2Ev.exit163

bb.w:                                             ; preds = %_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE5beginEv.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal13ParamIteratorI16Base64TestVectorED2Ev.exit160

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNK7testing8internal14ParamGeneratorI16Base64TestVectorE3endEv.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.y:                                             ; preds = %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEneERKS3_.exit
  %i.ee = load ptr, ptr %i.cq, align 8, !tbaa !80
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEdeEv.exit unwind label %.thread250, !inline_history !2245 ; 3 uses

_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEdeEv.exit: ; preds = %bb.y
  store i64 0, ptr %i.g, align 8, !tbaa !966
  %i.ei = load ptr, ptr %4, align 8, !tbaa !964
  store i8 0, ptr %i.ei, align 1, !tbaa !968
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false), !tbaa.struct !1074
  store i64 %.034, ptr %i.v, align 8, !tbaa !1037
  invoke void %i.aq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEdeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ej = load i64, ptr %i.w, align 8, !tbaa !966 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %_ZN7testing8internal26ParameterizedTestSuiteInfoI10Base64TestE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.z
  %i.el = load ptr, ptr %8, align 8, !tbaa !964
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.preheader.i
  %.0911.i = phi i64 [ 0, %.preheader.i ], [ %i.er, %bb.aa ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0911.i
  %i.en = load i8, ptr %i.em, align 1, !tbaa !968 ; 2 uses
  %i.eo = zext i8 %i.en to i32
  %i.ep = call i32 @isalnum(i32 noundef %i.eo) #28
  %i.eq = icmp ne i32 %i.ep, 0
  %.not.i75 = icmp eq i8 %i.en, 95
  %or.cond.i = or i1 %.not.i75, %i.eq             ; 2 uses
  %i.er = add nuw i64 %.0911.i, 1                 ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.er, %i.ej
  %or.cond.not = select i1 %or.cond.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %bb.aa, label %_ZN7testing8internal26ParameterizedTestSuiteInfoI10Base64TestE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !2246

_ZN7testing8internal26ParameterizedTestSuiteInfoI10Base64TestE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.aa, %bb.z
  %.1.i = phi i1 [ false, %bb.z ], [ %or.cond.i, %bb.aa ]
  %i.es = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %.1.i)
          to label %bb.ab unwind label %.loopexit

bb.ab:                                            ; preds = %_ZN7testing8internal26ParameterizedTestSuiteInfoI10Base64TestE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.es, label %bb.ao, label %bb.ad

.thread250:                                       ; preds = %bb.y
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceI16Base64TestVectorEEEclEPS4_.exit.i.i159

bb.ac:                                            ; preds = %_ZNK7testing8internal13ParamIteratorI16Base64TestVectorEdeEv.exit
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

.loopexit:                                        ; preds = %_ZN7testing8internal26ParameterizedTestSuiteInfoI10Base64TestE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i113, %.noexc.i, %bb.bj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 583)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ae
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.98, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ex = load ptr, ptr %8, align 8, !tbaa !964
  %i.ey = load i64, ptr %i.w, align 8, !tbaa !966
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ex, i64 noundef %i.ey)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit256 ; 6 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull @.str.99, i64 noundef 102)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  br i1 %.not.i82, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !80
  %i.fc = getelementptr i8, ptr %i.fb, i64 -24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds i8, ptr %i.ez, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !2344
  %i.fh = or i32 %i.fg, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fe, i32 noundef %i.fh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %.loopexit256

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.fi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #25
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull %i.as, i64 noundef %i.fi)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %bb.af, %bb.ag
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull @.str.100, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, i32 noundef %i.au)
          to label %bb.ah unwind label %.loopexit256 ; 4 uses

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull @.str.34, i64 noundef 0)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89 unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89: ; preds = %bb.ah
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !80
  %i.fo = getelementptr i8, ptr %i.fn, i64 -24
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds i8, ptr %i.fl, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 240
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1689 ; 6 uses
  %.not.i.i.i192 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i192, label %bb.ai, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc193 unwind label %.loopexit.split-lp257

.noexc193:                                        ; preds = %bb.ai
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 56
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !1695
  %.not.i1.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i1.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 67
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !968
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fs)
          to label %.noexc194 unwind label %.loopexit256

.noexc194:                                        ; preds = %bb.ak
  %i.fx = load ptr, ptr %i.fs, align 8, !tbaa !80
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = invoke noundef signext i8 %i.fz(ptr noundef nonnull align 8 dereferenceable(570) %i.fs, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit256, !inline_history !54

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc194, %bb.aj
  %.0.i.i.i = phi i8 [ %i.fw, %bb.aj ], [ %i.ga, %.noexc194 ]
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i8 noundef signext %.0.i.i.i)
          to label %.noexc196 unwind label %.loopexit256

.noexc196:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gb)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit256 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc196
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ao

bb.al:                                            ; preds = %bb.ad
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit256:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87, %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.af, %bb.ag, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85, %bb.ah, %bb.ak, %.noexc194, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc196
  %lpad.loopexit258 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp257:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp257, %.loopexit256
  %lpad.phi260 = phi { ptr, i32 } [ %lpad.loopexit258, %.loopexit256 ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp257 ]
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %10) #25
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %lpad.phi260, %bb.am ], [ %i.gd, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
end_hunk_0
