Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/structured_proto_test?download=true
inline.NumInlined: 1592
inline.NumDeleted: 876
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7testing8internal26ParameterizedTestSuiteInfoINS_13TestWithParamIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEEE13RegisterTestsEv:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.cn = load ptr, ptr %.sroa.0317.0823, align 8, !tbaa !23, !noalias !267
  %i.co = load i64, ptr %i.ck, align 8, !tbaa !25, !noalias !267 ; 3 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !24, !alias.scope !268
  store i64 0, ptr %i.o, align 8, !tbaa !25, !alias.scope !268
  store i8 0, ptr %i.n, align 8, !tbaa !27, !alias.scope !268
  %i.cp = add i64 %i.co, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cp)
          to label %bb.d unwind label %.loopexit355

bb.d:                                             ; preds = %bb.c
  %i.cq = load i64, ptr %i.o, align 8, !tbaa !25, !alias.scope !268
  %i.cr = sub i64 4611686018427387903, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.co
  br i1 %i.cs, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cn, i64 noundef %i.co)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit355 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cu = load i64, ptr %i.o, align 8, !tbaa !25, !alias.scope !268
  %i.cv = icmp eq i64 %i.cu, 4611686018427387903
  br i1 %i.cv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.cont.i.i unwind label %.loopexit.split-lp356

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.45, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit355 ; 0 uses

.loopexit355:                                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit357 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp356:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp358 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp356, %.loopexit355
  %lpad.phi359 = phi { ptr, i32 } [ %lpad.loopexit357, %.loopexit355 ], [ %lpad.loopexit.split-lp358, %.loopexit.split-lp356 ]
  %i.cx = load ptr, ptr %7, align 8, !tbaa !23, !alias.scope !268 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.n
  br i1 %i.cy, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.cz = load i64, ptr %i.n, align 8, !tbaa !27, !alias.scope !268
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #30
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.db = load ptr, ptr %4, align 8, !tbaa !23    ; 6 uses
  %i.dc = icmp eq ptr %i.db, %i.f
  %i.dd = load ptr, ptr %7, align 8, !tbaa !23    ; 5 uses
  %i.de = icmp eq ptr %i.dd, %i.n                 ; 2 uses
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.de, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.de, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.df = load i64, ptr %i.o, align 8, !tbaa !25  ; 3 uses
  %i.dg = icmp ult i64 %i.df, 16
  call void @llvm.assume(i1 %i.dg)
  switch i64 %i.df, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !27
  store i8 %i.dh, ptr %i.db, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.dd, i64 %i.df, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.di = load i64, ptr %i.o, align 8, !tbaa !25  ; 2 uses
  store i64 %i.di, ptr %i.g, align 8, !tbaa !25
  %i.dj = load ptr, ptr %4, align 8, !tbaa !23
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  store i8 0, ptr %i.dk, align 1, !tbaa !27
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.dd, ptr %4, align 8, !tbaa !23
  %i.dl = load <2 x i64>, ptr %i.o, align 8, !tbaa !27
  store <2 x i64> %i.dl, ptr %i.g, align 8, !tbaa !27
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dm = load i64, ptr %i.f, align 8, !tbaa !27
  store ptr %i.dd, ptr %4, align 8, !tbaa !23
  %i.dn = load <2 x i64>, ptr %i.o, align 8, !tbaa !27
  store <2 x i64> %i.dn, ptr %i.g, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.db, ptr %7, align 8, !tbaa !23
  store i64 %i.dm, ptr %i.n, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.n, ptr %7, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.do = phi ptr [ %i.db, %bb.i ], [ %i.n, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.o, align 8, !tbaa !25
  store i8 0, ptr %i.do, align 1, !tbaa !27
  %i.dp = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.n
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dr = load i64, ptr %i.n, align 8, !tbaa !27
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit233

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.dk

bb.l:                                             ; preds = %bb.b
  store i64 0, ptr %i.g, align 8, !tbaa !25
  %i.du = load ptr, ptr %4, align 8, !tbaa !23
  store i8 0, ptr %i.du, align 1, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dv = load i64, ptr %i.p, align 8, !tbaa !25  ; 2 uses
  %i.dw = load i64, ptr %i.g, align 8, !tbaa !25
  %i.dx = sub i64 4611686018427387903, %i.dw
  %i.dy = icmp ult i64 %i.dx, %i.dv
  br i1 %i.dy, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc unwind label %.loopexit.split-lp361

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.dz = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.ea = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.dz, i64 noundef %i.dv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit360 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i32 0, ptr %i.r, align 8, !tbaa !270
  store ptr null, ptr %i.s, align 8, !tbaa !271
  store <2 x ptr> %i.ca, ptr %i.t, align 8, !tbaa !272
  store i64 0, ptr %i.u, align 8, !tbaa !273
  %.val81 = load ptr, ptr %6, align 8, !tbaa !100 ; 2 uses
  %i.eb = load ptr, ptr %.val81, align 8, !tbaa !22, !noalias !274
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !274
  %i.ee = invoke noundef ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %.val81)
          to label %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE5beginEv.exit unwind label %bb.v, !inline_history !247 ; 13 uses

_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE5beginEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %.val82 = load ptr, ptr %6, align 8, !tbaa !100 ; 2 uses
  %i.ef = load ptr, ptr %.val82, align 8, !tbaa !22, !noalias !275
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !275
  %i.ei = invoke noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %.val82)
          to label %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE3endEv.exit.preheader unwind label %bb.w, !inline_history !250 ; 7 uses

_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE3endEv.exit.preheader: ; preds = %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE5beginEv.exit
  %i.ej = icmp eq ptr %i.ee, %i.ei
  %.not.i119 = icmp eq ptr %i.ch, null            ; 4 uses
  br i1 %i.ej, label %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEneERKS7_.exit.a, label %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE3endEv.exit

_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE3endEv.exit: ; preds = %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE3endEv.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %.034 = phi i64 [ %i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ 0, %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE3endEv.exit.preheader ] ; 2 uses
  %.2 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ %.1824, %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE3endEv.exit.preheader ]
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !22
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEneERKS7_.exit unwind label %bb.x, !inline_history !251

_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEneERKS7_.exit: ; preds = %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE3endEv.exit
  br i1 %i.en, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEEEclEPS8_.exit.i.i106, label %bb.y

_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEneERKS7_.exit.a: ; preds = %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE3endEv.exit.preheader
  %.not.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i, label %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit107, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEEEclEPS8_.exit.i.i106

_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEEEclEPS8_.exit.i.i106: ; preds = %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEneERKS7_.exit, %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEneERKS7_.exit.a
  %.2653 = phi i1 [ %.1824, %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEneERKS7_.exit.a ], [ %.2, %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEneERKS7_.exit ]
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !22
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) #28, !inline_history !252
  %i.er = load ptr, ptr %i.ee, align 8, !tbaa !22
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.ee) #28, !inline_history !252
  br label %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit107

_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit107: ; preds = %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEneERKS7_.exit.a, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEEEclEPS8_.exit.i.i106
  %.26541020 = phi i1 [ %.2653, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEEEclEPS8_.exit.i.i106 ], [ %.1824, %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEneERKS7_.exit.a ] ; 2 uses
  %i.eu = load ptr, ptr %i.s, align 8, !tbaa !271
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.eu)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit107
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #31
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit107
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.val90 = load ptr, ptr %i.bv, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val90, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %.val90, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ex, align 8, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %.val90, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !63
  %i.fc = load ptr, ptr %.val90, align 8, !tbaa !22
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %.val90) #28, !inline_history !0
  %i.ff = load ptr, ptr %.val90, align 8, !tbaa !22
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %.val90) #28, !inline_history !0
  br label %_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.fa, %bb.s ], [ %i.fk, %bb.t ]
  %i.fl = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fl, label %bb.u, label %_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit, !prof !64

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val90) #28
  br label %_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit

_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0317.0823, i64 64 ; 2 uses
  %.not334 = icmp eq ptr %i.fm, %.val77
  br i1 %.not334, label %._crit_edge, label %.lr.ph

.loopexit360:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit362 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp361:                            ; preds = %bb.n
  %lpad.loopexit.split-lp363 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit227

bb.w:                                             ; preds = %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE5beginEv.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit224

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEE3endEv.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.y:                                             ; preds = %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEneERKS7_.exit
  %i.fq = load ptr, ptr %i.ee, align 8, !tbaa !22
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = invoke noundef nonnull align 8 dereferenceable(88) ptr %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEdeEv.exit unwind label %.thread329, !inline_history !253 ; 7 uses

_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEdeEv.exit: ; preds = %bb.y
  store i64 0, ptr %i.i, align 8, !tbaa !25
  %i.fu = load ptr, ptr %5, align 8, !tbaa !23
  store i8 0, ptr %i.fu, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr %i.v, ptr %10, align 8, !tbaa !24
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !23 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.fx, ptr %i.a, align 8, !tbaa !26
  %i.fy = icmp ugt i64 %i.fx, 15
  br i1 %i.fy, label %.noexc.i.i269, label %._crit_edge.i.i.i259

.noexc.i.i269:                                    ; preds = %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEdeEv.exit
  %i.fz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc270 unwind label %bb.ak ; 2 uses

.noexc270:                                        ; preds = %.noexc.i.i269
  store ptr %i.fz, ptr %10, align 8, !tbaa !23
  %i.ga = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.ga, ptr %i.v, align 8, !tbaa !27
  br label %._crit_edge.i.i.i259

._crit_edge.i.i.i259:                             ; preds = %.noexc270, %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEdeEv.exit
  %i.gb = phi ptr [ %i.fz, %.noexc270 ], [ %i.v, %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEdeEv.exit ] ; 2 uses
  switch i64 %i.fx, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i260
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i259
  %i.gc = load i8, ptr %i.fv, align 1, !tbaa !27
  store i8 %i.gc, ptr %i.gb, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i260

bb.aa:                                            ; preds = %._crit_edge.i.i.i259
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gb, ptr align 1 %i.fv, i64 %i.fx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i260: ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i259
  %i.gd = load i64, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  store i64 %i.gd, ptr %i.w, align 8, !tbaa !25
  %i.ge = load ptr, ptr %10, align 8, !tbaa !23
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gd
  store i8 0, ptr %i.gf, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.gg, i64 32, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ft, i64 64 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ft, i64 72 ; 4 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !47 ; 2 uses
  %i.gk = load ptr, ptr %i.gh, align 8, !tbaa !45 ; 2 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i261 = icmp eq ptr %i.gj, %i.gk
  br i1 %.not.i.i.i.i.i261, label %.noexc5.i266, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i260
  %i.go = icmp slt i64 %i.gn, 0
  br i1 %i.go, label %.noexc.i.i.i267, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i.i262, !prof !64

.noexc.i.i.i267:                                  ; preds = %bb.ab
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc.i268 unwind label %.loopexit.split-lp

.noexc.i268:                                      ; preds = %.noexc.i.i.i267
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i.i262: ; preds = %bb.ab
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #29
          to label %.noexc5.i266 unwind label %.loopexit

.noexc5.i266:                                     ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i.i262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i260
  %i.gq = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i260 ], [ %i.gp, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i.i262 ] ; 6 uses
  store ptr %i.gq, ptr %i.y, align 8, !tbaa !45
  store ptr %i.gq, ptr %i.z, align 8, !tbaa !47
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gn
  store ptr %i.gr, ptr %i.aa, align 8, !tbaa !46
  %i.gs = load ptr, ptr %i.gh, align 8, !tbaa !72 ; 3 uses
  %i.gt = load ptr, ptr %i.gi, align 8, !tbaa !72
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 4 uses
  %i.gx = icmp sgt i64 %i.gw, 1
  br i1 %i.gx, label %bb.ac, label %bb.ad, !prof !73

bb.ac:                                            ; preds = %.noexc5.i266
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.gq, ptr align 1 %i.gs, i64 %i.gw, i1 false)
  br label %bb.ag

bb.ad:                                            ; preds = %.noexc5.i266
  %i.gy = icmp eq i64 %i.gw, 1
  br i1 %i.gy, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gz = load i8, ptr %i.gs, align 1, !tbaa !27
  store i8 %i.gz, ptr %i.gq, align 1, !tbaa !27
  br label %bb.ag

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i.i262
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i267
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ha = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.v
  br i1 %i.hb, label %.body271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i263: ; preds = %bb.af
  %i.hc = load i64, ptr %i.v, align 8, !tbaa !27
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #30
  br label %.body271

bb.ag:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.he = getelementptr inbounds i8, ptr %i.gq, i64 %i.gw
  store ptr %i.he, ptr %i.z, align 8, !tbaa !47
  store i64 %.034, ptr %i.ab, align 8, !tbaa !281
  invoke void %i.cf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.hf = load ptr, ptr %i.y, align 8, !tbaa !45  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hg = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hj) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit.i.i

_ZNSt6vectorIcSaIcEED2Ev.exit.i.i:                ; preds = %bb.ai, %bb.ah
  %i.hk = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.v
  br i1 %i.hl, label %_ZN7testing13TestParamInfoIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i.i
  %i.hm = load i64, ptr %i.v, align 8, !tbaa !27
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #30
  br label %_ZN7testing13TestParamInfoIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit

_ZN7testing13TestParamInfoIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %.val92 = load ptr, ptr %9, align 8
  %.val93 = load i64, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  %i.ho = icmp eq i64 %.val93, 0
  br i1 %i.ho, label %_ZN7testing8internal26ParameterizedTestSuiteInfoINS_13TestWithParamIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN7testing13TestParamInfoIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit, %.preheader.i
  %.091.i = phi i64 [ %i.hu, %.preheader.i ], [ 0, %_ZN7testing13TestParamInfoIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.val92, i64 %.091.i
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !27  ; 2 uses
  %i.hr = zext i8 %i.hq to i32
  %i.hs = call i32 @isalnum(i32 noundef %i.hr) #32
  %i.ht = icmp ne i32 %i.hs, 0
  %.not.i112 = icmp eq i8 %i.hq, 95
  %or.cond.i = or i1 %.not.i112, %i.ht            ; 2 uses
  %i.hu = add nuw i64 %.091.i, 1                  ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.hu, %.val93
  %or.cond.not = select i1 %or.cond.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.preheader.i, label %_ZN7testing8internal26ParameterizedTestSuiteInfoINS_13TestWithParamIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !254

_ZN7testing8internal26ParameterizedTestSuiteInfoINS_13TestWithParamIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.preheader.i, %_ZN7testing13TestParamInfoIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit
  %.1.i = phi i1 [ false, %_ZN7testing13TestParamInfoIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEED2Ev.exit ], [ %or.cond.i, %.preheader.i ]
  %i.hv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %.1.i)
          to label %bb.aj unwind label %.loopexit335

bb.aj:                                            ; preds = %_ZN7testing8internal26ParameterizedTestSuiteInfoINS_13TestWithParamIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.hv, label %bb.ax, label %bb.am

.thread329:                                       ; preds = %bb.y
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052612log_internal12_GLOBAL__N_123StructuredProtoTestCaseEEEEclEPS8_.exit.i.i223

bb.ak:                                            ; preds = %.noexc.i.i269
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body271
end_hunk_0
