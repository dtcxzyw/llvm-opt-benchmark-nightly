Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/log_basic_test?download=true
inline.NumInlined: 3636
inline.NumDeleted: 1537
begin_hunk_0_@_ZN7testing8internal26ParameterizedTestSuiteInfoIN17absl_log_internal12BasicLogTestEE13RegisterTestsEv:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.ay = load ptr, ptr %.sroa.0234.0449, align 8, !tbaa !41, !noalias !833
  %i.az = load i64, ptr %i.av, align 8, !tbaa !34, !noalias !833 ; 3 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !31, !alias.scope !834
  store i64 0, ptr %i.o, align 8, !tbaa !34, !alias.scope !834
  store i8 0, ptr %i.n, align 8, !tbaa !35, !alias.scope !834
  %i.ba = add i64 %i.az, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ba)
          to label %bb.d unwind label %.loopexit266

bb.d:                                             ; preds = %bb.c
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !34, !alias.scope !834
  %i.bc = sub i64 4611686018427387903, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.az
  br i1 %i.bd, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.ay, i64 noundef %i.az)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit266 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bf = load i64, ptr %i.o, align 8, !tbaa !34, !alias.scope !834
  %i.bg = icmp eq i64 %i.bf, 4611686018427387903
  br i1 %i.bg, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #36
          to label %.cont.i.i unwind label %.loopexit.split-lp267

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.74, i64 noundef 1)
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
  %i.bi = load ptr, ptr %6, align 8, !tbaa !41, !alias.scope !834 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.n
  br i1 %i.bj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.bk = load i64, ptr %i.n, align 8, !tbaa !35, !alias.scope !834
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #37
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bm = load ptr, ptr %3, align 8, !tbaa !41    ; 6 uses
  %i.bn = icmp eq ptr %i.bm, %i.d
  %i.bo = load ptr, ptr %6, align 8, !tbaa !41    ; 5 uses
  %i.bp = icmp eq ptr %i.bo, %i.n                 ; 2 uses
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.bp, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.bp, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bq = load i64, ptr %i.o, align 8, !tbaa !34  ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  switch i64 %i.bq, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !35
  store i8 %i.bs, ptr %i.bm, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.bt = load i64, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  store i64 %i.bt, ptr %i.e, align 8, !tbaa !34
  %i.bu = load ptr, ptr %3, align 8, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !35
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bo, ptr %3, align 8, !tbaa !41
  %i.bw = load <2 x i64>, ptr %i.o, align 8, !tbaa !35
  store <2 x i64> %i.bw, ptr %i.e, align 8, !tbaa !35
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !35
  store ptr %i.bo, ptr %3, align 8, !tbaa !41
  %i.by = load <2 x i64>, ptr %i.o, align 8, !tbaa !35
  store <2 x i64> %i.by, ptr %i.e, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bm, ptr %6, align 8, !tbaa !41
  store i64 %i.bx, ptr %i.n, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.n, ptr %6, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.bz = phi ptr [ %i.bm, %bb.i ], [ %i.n, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.o, align 8, !tbaa !34
  store i8 0, ptr %i.bz, align 1, !tbaa !35
  %i.ca = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.n
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cc = load i64, ptr %i.n, align 8, !tbaa !35
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit169

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ck

bb.l:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !34
  %i.cf = load ptr, ptr %3, align 8, !tbaa !41
  store i8 0, ptr %i.cf, align 1, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = load i64, ptr %i.p, align 8, !tbaa !34  ; 2 uses
  %i.ch = load i64, ptr %i.e, align 8, !tbaa !34
  %i.ci = sub i64 4611686018427387903, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.cg
  br i1 %i.cj, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #36
          to label %.noexc unwind label %.loopexit.split-lp272

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.ck = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ck, i64 noundef %i.cg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit271 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  store i32 0, ptr %i.r, align 8, !tbaa !835
  store ptr null, ptr %i.s, align 8, !tbaa !836
  store <2 x ptr> %i.aj, ptr %i.t, align 8, !tbaa !837
  store i64 0, ptr %i.u, align 8, !tbaa !838
  %i.cm = load ptr, ptr %5, align 8, !tbaa !218, !noalias !839 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !44, !noalias !839
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !839
  %i.cq = invoke noundef ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE5beginEv.exit unwind label %bb.v, !inline_history !818 ; 13 uses

_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE5beginEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cr = load ptr, ptr %5, align 8, !tbaa !218, !noalias !840 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !44, !noalias !840
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !840
  %i.cv = invoke noundef ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr)
          to label %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader unwind label %bb.w, !inline_history !821 ; 7 uses

_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader: ; preds = %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE5beginEv.exit
  %i.cw = icmp eq ptr %i.cq, %i.cv
  %.not.i82 = icmp eq ptr %i.as, null             ; 4 uses
  br i1 %i.cw, label %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader.split.us, label %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit

_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader.split.us: ; preds = %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit73, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052618LogSeverityAtLeastEEEEclEPS6_.exit.i.i72

_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit: ; preds = %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %.034 = phi i64 [ %i.ny, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ 0, %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader ] ; 2 uses
  %.2 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.1450, %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader ]
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEEneERKS5_.exit.a unwind label %bb.x, !inline_history !822

_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEEneERKS5_.exit.a: ; preds = %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit
  br i1 %i.da, label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052618LogSeverityAtLeastEEEEclEPS6_.exit.i.i72, label %bb.y

_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052618LogSeverityAtLeastEEEEclEPS6_.exit.i.i72: ; preds = %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEEneERKS5_.exit.a, %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader.split.us
  %.2329 = phi i1 [ %.1450, %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader.split.us ], [ %.2, %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEEneERKS5_.exit.a ]
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !44
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.cv) #35, !inline_history !823
  %i.de = load ptr, ptr %i.cq, align 8, !tbaa !44
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #35, !inline_history !823
  br label %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit73

_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit73: ; preds = %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader.split.us, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052618LogSeverityAtLeastEEEEclEPS6_.exit.i.i72
  %.2330598 = phi i1 [ %.2329, %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052618LogSeverityAtLeastEEEEclEPS6_.exit.i.i72 ], [ %.1450, %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit.preheader.split.us ] ; 2 uses
  %i.dh = load ptr, ptr %i.s, align 8, !tbaa !836
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.dh)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit73
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #39
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.dk = load ptr, ptr %i.ae, align 8, !tbaa !67 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.dl, align 8, !tbaa !69
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !70
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #35, !inline_history !824
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !44
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #35, !inline_history !824
  br label %_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !71
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.do, %bb.s ], [ %i.dy, %bb.t ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.u, label %_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit, !prof !72

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #35
  br label %_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit

_ZN7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
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
  br label %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit163

bb.w:                                             ; preds = %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE5beginEv.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEED2Ev.exit160

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNK7testing8internal14ParamGeneratorIN4absl12lts_2026052618LogSeverityAtLeastEE3endEv.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.y:                                             ; preds = %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEEneERKS5_.exit.a
  %i.ee = load ptr, ptr %i.cq, align 8, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef nonnull align 4 dereferenceable(4) ptr %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEEdeEv.exit unwind label %.thread250, !inline_history !825 ; 3 uses

_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEEdeEv.exit: ; preds = %bb.y
  store i64 0, ptr %i.g, align 8, !tbaa !34
  %i.ei = load ptr, ptr %4, align 8, !tbaa !41
  store i8 0, ptr %i.ei, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !53
  store i32 %i.ej, ptr %9, align 8, !tbaa !842
  store i64 %.034, ptr %i.v, align 8, !tbaa !843
  invoke void %i.aq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEEdeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ek = load i64, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %_ZN7testing8internal26ParameterizedTestSuiteInfoIN17absl_log_internal12BasicLogTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.z
  %i.em = load ptr, ptr %8, align 8, !tbaa !41
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.preheader.i
  %.0911.i = phi i64 [ 0, %.preheader.i ], [ %i.es, %bb.aa ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.0911.i
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !35  ; 2 uses
  %i.ep = zext i8 %i.eo to i32
  %i.eq = call i32 @isalnum(i32 noundef %i.ep) #43
  %i.er = icmp ne i32 %i.eq, 0
  %.not.i75 = icmp eq i8 %i.eo, 95
  %or.cond.i = or i1 %.not.i75, %i.er             ; 2 uses
  %i.es = add nuw i64 %.0911.i, 1                 ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.es, %i.ek
  %or.cond.not = select i1 %or.cond.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %bb.aa, label %_ZN7testing8internal26ParameterizedTestSuiteInfoIN17absl_log_internal12BasicLogTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !826

_ZN7testing8internal26ParameterizedTestSuiteInfoIN17absl_log_internal12BasicLogTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.aa, %bb.z
  %.1.i = phi i1 [ false, %bb.z ], [ %or.cond.i, %bb.aa ]
  %i.et = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %.1.i)
          to label %bb.ab unwind label %.loopexit

bb.ab:                                            ; preds = %_ZN7testing8internal26ParameterizedTestSuiteInfoIN17absl_log_internal12BasicLogTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.et, label %bb.ao, label %bb.ad

.thread250:                                       ; preds = %bb.y
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN7testing8internal22ParamIteratorInterfaceIN4absl12lts_2026052618LogSeverityAtLeastEEEEclEPS6_.exit.i.i159

bb.ac:                                            ; preds = %_ZNK7testing8internal13ParamIteratorIN4absl12lts_2026052618LogSeverityAtLeastEEdeEv.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

.loopexit:                                        ; preds = %_ZN7testing8internal26ParameterizedTestSuiteInfoIN17absl_log_internal12BasicLogTestEE16IsValidParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i113, %.noexc.i, %bb.bj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef 3, ptr noundef nonnull @.str.44, i32 noundef 585)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.75, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ae
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.76, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ey = load ptr, ptr %8, align 8, !tbaa !41
  %i.ez = load i64, ptr %i.w, align 8, !tbaa !34
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ey, i64 noundef %i.ez)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit256 ; 6 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.77, i64 noundef 102)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  br i1 %.not.i82, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.fc = load ptr, ptr %i.fa, align 8, !tbaa !44
  %i.fd = getelementptr i8, ptr %i.fc, i64 -24
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds i8, ptr %i.fa, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !190
  %i.fi = or i32 %i.fh, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ff, i32 noundef %i.fi)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %.loopexit256

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.fj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #35
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull %i.as, i64 noundef %i.fj)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %bb.af, %bb.ag
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.78, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i32 noundef %i.au)
          to label %bb.ah unwind label %.loopexit256 ; 4 uses

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.30, i64 noundef 0)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89 unwind label %.loopexit256 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89: ; preds = %bb.ah
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !44
  %i.fp = getelementptr i8, ptr %i.fo, i64 -24
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds i8, ptr %i.fm, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 240
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !238 ; 6 uses
  %.not.i.i.i192 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i192, label %bb.ai, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc193 unwind label %.loopexit.split-lp257

.noexc193:                                        ; preds = %bb.ai
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !244
  %.not.i1.i.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i1.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 67
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !35
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ft)
          to label %.noexc194 unwind label %.loopexit256

.noexc194:                                        ; preds = %bb.ak
  %i.fy = load ptr, ptr %i.ft, align 8, !tbaa !44
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = invoke noundef signext i8 %i.ga(ptr noundef nonnull align 8 dereferenceable(570) %i.ft, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit256, !inline_history !16

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc194, %bb.aj
  %.0.i.i.i = phi i8 [ %i.fx, %bb.aj ], [ %i.gb, %.noexc194 ]
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, i8 noundef signext %.0.i.i.i)
          to label %.noexc196 unwind label %.loopexit256

.noexc196:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gc)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit256 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc196
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.ao

bb.al:                                            ; preds = %bb.ad
  %i.ge = landingpad { ptr, i32 }
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
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %10) #35
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %lpad.phi260, %bb.am ], [ %i.ge, %bb.al ]
end_hunk_0
