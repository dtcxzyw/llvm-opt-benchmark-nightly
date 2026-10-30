Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/SkinnedMesh?download=true
inline.NumInlined: 2819
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNO5scene18SkinnedMeshBuilder8finalizeEv:bb.a

bb.d:                                             ; preds = %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE2atEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene15SSkinMeshBuffer10getWeightsEv) #30
  unreachable

_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit:    ; preds = %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE2atEm.exit
  %i.al = shl nuw nsw i32 %i.aj, 3
  %narrow.i = sub nuw nsw i32 24, %i.al
  %switch.offset.i = zext nneg i32 %narrow.i to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %switch.offset.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %.0.i = load ptr, ptr %i.ao, align 8, !tbaa !104 ; 2 uses
  %.not51 = icmp eq ptr %.0.i, null
  br i1 %.not51, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit
  tail call void @_ZN5scene15SSkinMeshBuffer15addWeightBufferEv(ptr noundef nonnull align 8 dereferenceable(288) %i.ah)
  %i.ap = load i32, ptr %i.ai, align 8, !tbaa !100 ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 3
  br i1 %i.aq, label %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit57, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene15SSkinMeshBuffer10getWeightsEv) #30
  unreachable

_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit57:  ; preds = %bb.e
  %i.ar = shl nuw nsw i32 %i.ap, 3
  %narrow.i54 = sub nuw nsw i32 24, %i.ar
  %switch.offset.i55 = zext nneg i32 %narrow.i54 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 %switch.offset.i55
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !101
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %.0.i56 = load ptr, ptr %i.au, align 8, !tbaa !104
  br label %bb.g

bb.g:                                             ; preds = %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit57, %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit
  %.042 = phi ptr [ %.0.i, %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit ], [ %.0.i56, %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit57 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0124.0150, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !333
  %i.ax = load i16, ptr %.sroa.0124.0150, align 4, !tbaa !228
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0124.0150, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !334
  tail call void @_ZN5scene12WeightBuffer9addWeightEjtf(ptr noundef nonnull align 8 dereferenceable(112) %.042, i32 noundef %i.aw, i16 noundef zeroext %i.ax, float noundef %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0124.0150, i64 12 ; 2 uses
  %.not127 = icmp eq ptr %i.ba, %i.d
  br i1 %.not127, label %._crit_edge, label %.lr.ph

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.b
  %.promoted169 = phi ptr [ %i.r, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.b ] ; 3 uses
  %.promoted = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.b ] ; 2 uses
  %i.bb = phi ptr [ %.pre232, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.bc = phi ptr [ %.pre230, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.bd = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.f, %bb.b ]
  %.not128164 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not128164, label %bb.h, label %.lr.ph166

.lr.ph166:                                        ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  br label %bb.i

._crit_edge167:                                   ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit
  store ptr %i.gh, ptr %i.be, align 8
  %.pre235 = load ptr, ptr %0, align 8, !tbaa !186
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge167, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit
  %i.bf = phi ptr [ %.pre235, %._crit_edge167 ], [ %i.bd, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit ]
  %i.bg = phi ptr [ %i.gi, %._crit_edge167 ], [ %.promoted169, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit ] ; 3 uses
  %.lcssa151 = phi ptr [ %i.gj, %._crit_edge167 ], [ %.promoted, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit ]
  store ptr %.lcssa151, ptr %i.p, align 8
  store ptr %i.bg, ptr %2, align 8
  call void @_ZNK5scene11SkinnedMesh23calculateGlobalMatricesERSt6vectorIN4core8CMatrix4IfEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(152) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bh = load ptr, ptr %0, align 8, !tbaa !186   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !81
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 2 uses
  %.not191 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not191, label %._crit_edge184, label %.lr.ph183

bb.i:                                             ; preds = %.lr.ph166, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit
  %i.bm = phi ptr [ %.promoted169, %.lr.ph166 ], [ %i.gh, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 26 uses
  %.sroa.0120.0165 = phi ptr [ %i.bc, %.lr.ph166 ], [ %i.gk, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.bn = phi ptr [ %.promoted, %.lr.ph166 ], [ %i.gj, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %i.bo = phi ptr [ %.promoted169, %.lr.ph166 ], [ %i.gi, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 16 uses
  %i.bp = load ptr, ptr %.sroa.0120.0165, align 8, !tbaa !28 ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !112
  switch i8 %i.bs, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke [
    i8 1, label %bb.j
    i8 0, label %bb.n
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.loopexit349
  ], !prof !335

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bm, ptr noundef nonnull align 4 dereferenceable(64) %i.bq, i64 64, i1 false), !tbaa.struct !115
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.bu = ptrtoint ptr %i.bm to i64
  %i.bv = ptrtoint ptr %i.bo to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 4 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775744
  br i1 %i.bx, label %.invoke.sink.split, label %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

.invoke.sink.split:                               ; preds = %bb.l, %bb.p
  store ptr %i.bm, ptr %i.be, align 8
  store ptr %i.bn, ptr %i.p, align 8
  store ptr %i.bo, ptr %2, align 8
  br label %.invoke

.invoke:                                          ; preds = %.invoke.sink.split, %._crit_edge
  %i.by = phi ptr [ @.str.18, %._crit_edge ], [ @.str.13, %.invoke.sink.split ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.by) #32
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bz = ashr exact i64 %i.bw, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 144115188075855871)
  %i.cd = select i1 %i.cb, i64 144115188075855871, i64 %i.cc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 6
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #33
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cg, ptr noundef nonnull align 4 dereferenceable(64) %i.bq, i64 64, i1 false), !tbaa.struct !115
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.bm
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc60, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cf, %.noexc60 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bo, %.noexc60 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.015.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.01214.i.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !115
  %i.ch = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc60
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.noexc60 ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 64
  %.not.i35.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bw) #29
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.m, %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i
  %i.ck = getelementptr inbounds nuw [64 x i8], ptr %i.cf, i64 %i.cd
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.loopexit349: ; preds = %bb.i
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke: ; preds = %bb.i, %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.loopexit349
  %.str.12.sink = phi ptr [ @.str.11, %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.loopexit349 ], [ @.str.12, %bb.i ]
  store ptr %i.bm, ptr %i.be, align 8
  store ptr %i.bn, ptr %i.p, align 8
  store ptr %i.bo, ptr %2, align 8
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cl, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %.str.12.sink, ptr %i.cm, align 8, !tbaa !120
  invoke void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #32
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt26__throw_bad_variant_accessb.exit.i.i.cont:  ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 52
  %.sroa.0.0.copyload.i.i = load float, ptr %i.cn, align 4, !tbaa !113, !noalias !336 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %.sroa.12.0.copyload.i.i = load float, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !tbaa !113, !noalias !336 ; 3 uses
  %i.co = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !113, !noalias !336 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.co, %i.co
  %i.cp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cq = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload.i.i, float %.sroa.0.0.copyload.i.i, float %i.cp)
  %i.cr = extractelement <2 x float> %i.co, i64 1 ; 2 uses
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.cq)
  %i.ct = tail call float @llvm.fmuladd.f32(float %.sroa.12.0.copyload.i.i, float %.sroa.12.0.copyload.i.i, float %i.cs)
  %i.cu = fpext float %i.ct to double
  %i.cv = tail call double @llvm.sqrt.f64(double %i.cu)
  %i.cw = fdiv double 1.000000e+00, %i.cv
  %i.cx = fptrunc double %i.cw to float           ; 3 uses
  %i.cy = fmul float %.sroa.0.0.copyload.i.i, %i.cx ; 2 uses
  %i.cz = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x float> %i.co, %i.da           ; 4 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dd = fmul float %.sroa.12.0.copyload.i.i, %i.cx ; 3 uses
  %i.de = extractelement <2 x float> %i.db, i64 0 ; 3 uses
  %i.df = fmul float %i.de, 2.000000e+00          ; 2 uses
  %i.dg = fneg float %i.df                        ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.de, float 1.000000e+00)
  %i.di = extractelement <2 x float> %i.db, i64 1 ; 3 uses
  %i.dj = fmul float %i.di, 2.000000e+00          ; 4 uses
  %i.dk = fneg float %i.dj
  %i.dl = fmul float %i.cy, 2.000000e+00          ; 5 uses
  %i.dm = fmul float %i.dd, %i.dj                 ; 2 uses
  %i.dn = fmul float %i.dd, %i.df                 ; 2 uses
  %i.do = fneg float %i.dn
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.di, float %i.do)
  %i.dq = fneg float %i.dm
  %i.dr = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dl, i64 1 ; 2 uses
  %i.dt = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dq, i64 1
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dc, <2 x float> %i.du)
  %i.dw = fneg float %i.dl
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.cy, float 1.000000e+00) ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dm, i64 1
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dc, <2 x float> %i.dz)
  %i.eb = fmul float %i.dd, %i.dl                 ; 2 uses
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.di, float %i.dn)
  %i.ed = fneg float %i.eb
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.de, float %i.ed)
  %i.ef = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.dg, i64 1
  %i.eh = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.dx, i64 1
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.eh, <2 x float> %i.ej)
  %i.el = getelementptr inbounds nuw i8, ptr %i.bp, i64 68
  %i.em = load float, ptr %i.el, align 4, !tbaa !338, !noalias !336 ; 2 uses
  %i.en = insertelement <2 x float> poison, float %i.em, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %i.eo, %i.dv           ; 2 uses
  %i.eq = fmul float %i.em, %i.ec                 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.es = load float, ptr %i.er, align 4, !tbaa !339, !noalias !336 ; 2 uses
  %i.et = insertelement <2 x float> poison, float %i.es, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %i.eu, %i.ea           ; 3 uses
  %i.ew = fmul float %i.es, %i.ee                 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bp, i64 76
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !340, !noalias !336 ; 2 uses
  %i.ez = fmul float %i.ey, %i.dp                 ; 2 uses
  %i.fa = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x float> %i.fb, %i.ek           ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bp, i64 44
  %i.fe = load <2 x float>, ptr %i.bq, align 4, !tbaa !113, !noalias !336 ; 2 uses
  %i.ff = load <2 x float>, ptr %i.fd, align 4, !tbaa !113, !noalias !336 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i63, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store <2 x float> %i.ep, ptr %i.bm, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store float %i.eq, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.fg = insertelement <2 x float> %i.ev, float 0.000000e+00, i64 0
  store <2 x float> %i.fg, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.fh = extractelement <2 x float> %i.ev, i64 0
  store float %i.fh, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store float %i.ew, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  store float 0.000000e+00, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store float %i.ez, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store <2 x float> %i.fc, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.fi = extractelement <2 x float> %i.fe, i64 0
  store float %i.fi, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  store <2 x float> %i.ff, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 60
  store float 1.000000e+00, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !51
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.fk = ptrtoint ptr %i.bm to i64
  %i.fl = ptrtoint ptr %i.bo to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 4 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775744
  br i1 %i.fn, label %.invoke.sink.split, label %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.fo = ashr exact i64 %i.fm, 6                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fo ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.fo
  %i.fr = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 144115188075855871)
  %i.fs = select i1 %i.fq, i64 144115188075855871, i64 %i.fr ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ft = shl nuw nsw i64 %i.fs, 6
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #33
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fm ; 10 uses
  store <2 x float> %i.ep, ptr %i.fv, align 4
  %.sroa.7.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store float %i.eq, ptr %.sroa.7.0..sroa_idx91, align 4
  %.sroa.8.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx93, align 4
  %.sroa.9.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fw = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.fw, ptr %.sroa.9.0..sroa_idx95, align 4
  %.sroa.11.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  store float %i.ew, ptr %.sroa.11.0..sroa_idx99, align 4
  %.sroa.12.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.fv, i64 28
  store float 0.000000e+00, ptr %.sroa.12.0..sroa_idx101, align 4
  %.sroa.13.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  store float %i.ez, ptr %.sroa.13.0..sroa_idx103, align 4
  %.sroa.14.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.fv, i64 36
  %i.fx = extractelement <2 x float> %i.fc, i64 0
  store float %i.fx, ptr %.sroa.14.0..sroa_idx105, align 4
  %.sroa.15.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fy = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.ga = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> %i.fz, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.gb, ptr %.sroa.15.0..sroa_idx107, align 4
  %.sroa.19.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.gc = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.ff, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.gc, ptr %.sroa.19.0..sroa_idx115, align 4
  %.not13.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.bm
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc65, %.lr.ph.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fu, %.noexc65 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bo, %.noexc65 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.015.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.01214.i.i.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !115
  %i.gd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gd, %i.bm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc65
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.fu, %.noexc65 ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 64
  %.not.i35.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.fm) #29
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i
  %i.gg = getelementptr inbounds nuw [64 x i8], ptr %i.fu, i64 %i.fs
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.o, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.k
  %i.gh = phi ptr [ %i.fj, %bb.o ], [ %i.gf, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.cj, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.bt, %bb.k ] ; 2 uses
  %i.gi = phi ptr [ %i.bo, %bb.o ], [ %i.fu, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.cf, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.bo, %bb.k ] ; 2 uses
  %i.gj = phi ptr [ %i.bn, %bb.o ], [ %i.gg, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ck, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.bn, %bb.k ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0120.0165, i64 8 ; 2 uses
  %.not128 = icmp eq ptr %i.gk, %i.bb
  br i1 %.not128, label %._crit_edge167, label %bb.i

._crit_edge184:                                   ; preds = %._crit_edge180, %bb.h
  %.lcssa = phi ptr [ %i.bh, %bb.h ], [ %i.he, %._crit_edge180 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !26 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !26 ; 2 uses
  %.not129186 = icmp eq ptr %i.gm, %i.go
  br i1 %.not129186, label %._crit_edge190, label %.lr.ph189

.lr.ph183:                                        ; preds = %bb.h, %._crit_edge180
  %i.gp = phi ptr [ %i.hi, %._crit_edge180 ], [ %i.bl, %bb.h ]
  %.0181 = phi i64 [ %i.hd, %._crit_edge180 ], [ 0, %bb.h ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.0181
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !28 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 320 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 384 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 4, !tbaa !133, !range !44, !noundef !45
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph183
  %i.gw = getelementptr inbounds nuw [64 x i8], ptr %i.bg, i64 %.0181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.gs, ptr noundef nonnull align 4 dereferenceable(64) %i.gw, i64 64, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5scene15SSkinMeshBuffer17convertToTangentsEv:bb.a
_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ae = ashr exact i64 %i.ac, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 144115188075855871)
  %i.ai = select i1 %i.ag, i64 144115188075855871, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 6
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #33 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.042, i64 24, i1 false)
  %.sroa.743.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.n, ptr %.sroa.743.0..sroa_idx44, align 4
  %.sroa.946.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store <2 x float> %i.p, ptr %.sroa.946.0..sroa_idx47, align 4
  %.sroa.1352.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  store i16 0, ptr %.sroa.1352.0..sroa_idx53, align 4
  %i.am = getelementptr i8, ptr %i.al, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.t
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.ak, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.z, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i, i64 64, i1 false), !alias.scope !373
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !368

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !247
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.as) #29
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !166
  store ptr %i.ap, ptr %i.s, align 8, !tbaa !183
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.at, ptr %i.u, align 8, !tbaa !247
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.037.062, i64 40 ; 2 uses
  %.not57 = icmp eq ptr %i.au, %i.h
  br i1 %.not57, label %._crit_edge65, label %bb.c

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.026)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !159 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !374 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !374 ; 2 uses
  %.not59 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not59, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %.sroa.026.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !159 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre69 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !162 ; 2 uses
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre71 = load ptr, ptr %.phi.trans.insert70, align 8, !tbaa !182
  %i.bc = icmp eq ptr %.pre71, %.pre69
  br i1 %i.bc, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN5video17S3DVertex2TCoordsES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5video17S3DVertex2TCoordsES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  store ptr %.pre69, ptr %i.bd, align 8, !tbaa !182
  br label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE5clearEv.exit

_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE5clearEv.exit: ; preds = %bb.h, %._crit_edge, %_ZSt8_DestroyIPN5video17S3DVertex2TCoordsES1_EvT_S3_RSaIT0_E.exit.i.i
  store i32 2, ptr %i.a, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026)
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21
  %.sroa.022.060 = phi ptr [ %i.ay, %.lr.ph ], [ %i.cn, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21 ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.026, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.022.060, i64 12, i1 false), !tbaa.struct !179
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.022.060, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.026.12..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.be, i64 12, i1 false), !tbaa.struct !179
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.022.060, i64 24
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !130 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.022.060, i64 28
  %i.bi = load <2 x float>, ptr %i.bh, align 4    ; 2 uses
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !163 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183 ; 9 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !247
  %.not.i8 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i8, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 %i.bg, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  store <2 x float> %i.bi, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store i16 0, ptr %.sroa.13.0..sroa_idx, align 4
  %i.bp = getelementptr i8, ptr %i.bm, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !183
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21

bb.k:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !166 ; 5 uses
  %i.bt = ptrtoint ptr %i.bm to i64
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775744
  br i1 %i.bw, label %bb.l, label %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9: ; preds = %bb.k
  %i.bx = ashr exact i64 %i.bv, 6                 ; 3 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i10, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 144115188075855871)
  %i.cb = select i1 %i.bz, i64 144115188075855871, i64 %i.ca ; 3 uses
  %.not.i.i.i11 = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i11)
  %i.cc = shl nuw nsw i64 %i.cb, 6
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #33 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026, i64 24, i1 false)
  %.sroa.7.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i32 %i.bg, ptr %.sroa.7.0..sroa_idx27, align 4
  %.sroa.9.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  store <2 x float> %i.bi, ptr %.sroa.9.0..sroa_idx29, align 4
  %.sroa.13.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.ce, i64 36
  store i16 0, ptr %.sroa.13.0..sroa_idx33, align 4
  %i.cf = getelementptr i8, ptr %i.ce, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i.i12 = icmp eq ptr %i.bs, %i.bm
  br i1 %.not10.i.i.i.i.i12, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i17, label %.lr.ph.i.i.i.i.i13

.lr.ph.i.i.i.i.i13:                               ; preds = %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9, %.lr.ph.i.i.i.i.i13
  %.012.i.i.i.i.i14 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i13 ], [ %i.cd, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9 ] ; 2 uses
  %.0911.i.i.i.i.i15 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i13 ], [ %i.bs, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i14, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i15, i64 64, i1 false), !alias.scope !375
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i15, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i14, i64 64 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.cg, %i.bm
  br i1 %.not.i.i.i.i.i16, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i17, label %.lr.ph.i.i.i.i.i13, !llvm.loop !368

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i17: ; preds = %.lr.ph.i.i.i.i.i13, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9
  %.0.lcssa.i.i.i.i.i18 = phi ptr [ %i.cd, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9 ], [ %i.ch, %.lr.ph.i.i.i.i.i13 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i18, i64 64
  %.not.i23.i.i19 = icmp eq ptr %i.bs, null
  br i1 %.not.i23.i.i19, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i20, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i17
  %i.cj = load ptr, ptr %i.bn, align 8, !tbaa !247
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cl) #29
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i20

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i20: ; preds = %bb.m, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i17
  store ptr %i.cd, ptr %i.bk, align 8, !tbaa !166
  store ptr %i.ci, ptr %i.bl, align 8, !tbaa !183
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.cm, ptr %i.bn, align 8, !tbaa !247
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21: ; preds = %bb.j, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i20
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.022.060, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.cn, %i.ba
  br i1 %.not, label %._crit_edge, label %bb.i

bb.n:                                             ; preds = %bb.a, %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE5clearEv.exit, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5scene11SkinnedMesh17calculateTangentsERN4core8vector3dIfEES4_S4_RKS3_S6_S6_RKNS1_8vector2dIfEESA_SA_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %9) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !178 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !178
  %i.e = load <2 x float>, ptr %4, align 4, !tbaa !113 ; 2 uses
  %i.f = load <2 x float>, ptr %5, align 4, !tbaa !113
  %i.g = fsub <2 x float> %i.e, %i.f              ; 5 uses
  %i.h = load <2 x float>, ptr %6, align 4, !tbaa !113
  %i.i = fsub <2 x float> %i.h, %i.e              ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !178
  %i.l = extractelement <2 x float> %i.g, i64 1   ; 2 uses
  %i.m = extractelement <2 x float> %i.i, i64 1
  %i.n = extractelement <2 x float> %i.i, i64 0
  %i.o = extractelement <2 x float> %i.g, i64 0
  %i.p = insertelement <2 x float> poison, float %i.b, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.k, i64 1
  %i.r = insertelement <2 x float> poison, float %i.d, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.b, i64 1
  %i.t = fsub <2 x float> %i.q, %i.s              ; 5 uses
  %i.u = fneg float %i.l
  %i.v = extractelement <2 x float> %i.t, i64 0   ; 2 uses
  %i.w = shufflevector <2 x float> %i.t, <2 x float> %i.i, <2 x i32> <i32 1, i32 2>
  %i.x = insertelement <2 x float> poison, float %i.u, i64 0
  %i.y = fneg <2 x float> %i.t
  %i.z = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 0, i32 2>
  %i.aa = fmul <2 x float> %i.w, %i.z
  %i.ab = shufflevector <2 x float> %i.i, <2 x float> %i.g, <2 x i32> <i32 1, i32 2>
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.t, <2 x float> %i.aa) ; 5 uses
  %i.ad = fneg float %i.o
  %i.ae = fmul float %i.m, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.n, float %i.l, float %i.ae) ; 4 uses
  store <2 x float> %i.ac, ptr %1, align 4, !tbaa !113
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store float %i.af, ptr %.sroa.436.0..sroa_idx, align 4, !tbaa !113
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %foldExtExtBinop = fmul <2 x float> %i.ac, %i.ac
  %i.ah = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ai = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ah)
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.aj) ; 2 uses
  %i.al = fcmp oeq float %i.ak, 0.000000e+00
  br i1 %i.al, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = fpext float %i.ak to double
  %i.an = tail call double @llvm.sqrt.f64(double %i.am)
  %i.ao = fdiv double 1.000000e+00, %i.an         ; 2 uses
  %i.ap = fpext <2 x float> %i.ac to <2 x double>
  %i.aq = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x double> %i.ar, %i.ap
  %i.at = fptrunc <2 x double> %i.as to <2 x float>
  store <2 x float> %i.at, ptr %1, align 4, !tbaa !113
  %i.au = fpext float %i.af to double
  %i.av = fmul double %i.ao, %i.au
  %i.aw = fptrunc double %i.av to float
  store float %i.aw, ptr %.sroa.436.0..sroa_idx, align 4, !tbaa !178
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.a, %bb.b
  %i.ax = load float, ptr %7, align 4, !tbaa !377 ; 2 uses
  %i.ay = load float, ptr %8, align 4, !tbaa !377
  %i.az = load float, ptr %9, align 4, !tbaa !377
  %i.ba = fsub float %i.ax, %i.ay                 ; 2 uses
  %i.bb = fsub float %i.az, %i.ax                 ; 2 uses
  %i.bc = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.g, %i.bd
  %i.bf = fmul float %i.v, %i.bb
  %i.bg = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.i, %i.bh
  %i.bj = extractelement <2 x float> %i.t, i64 1  ; 2 uses
  %i.bk = fmul float %i.bj, %i.ba
  %i.bl = fsub <2 x float> %i.be, %i.bi           ; 5 uses
  %i.bm = fsub float %i.bf, %i.bk                 ; 4 uses
  store <2 x float> %i.bl, ptr %3, align 4, !tbaa !113
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store float %i.bm, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !113
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 4
  %foldExtExtBinop143 = fmul <2 x float> %i.bl, %i.bl
  %i.bo = extractelement <2 x float> %foldExtExtBinop143, i64 1
  %i.bp = extractelement <2 x float> %i.bl, i64 0 ; 2 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bo)
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bq) ; 2 uses
  %i.bs = fcmp oeq float %i.br, 0.000000e+00
  br i1 %i.bs, label %_ZN4core8vector3dIfE9normalizeEv.exit88, label %bb.c

bb.c:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.bt = fpext float %i.br to double
  %i.bu = tail call double @llvm.sqrt.f64(double %i.bt)
  %i.bv = fdiv double 1.000000e+00, %i.bu         ; 2 uses
  %i.bw = fpext <2 x float> %i.bl to <2 x double>
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x double> %i.by, %i.bw
  %i.ca = fptrunc <2 x double> %i.bz to <2 x float>
  store <2 x float> %i.ca, ptr %3, align 4, !tbaa !113
  %i.cb = fpext float %i.bm to double
  %i.cc = fmul double %i.bv, %i.cb
  %i.cd = fptrunc double %i.cc to float
  store float %i.cd, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !178
  br label %_ZN4core8vector3dIfE9normalizeEv.exit88

_ZN4core8vector3dIfE9normalizeEv.exit88:          ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !378 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !378
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !378
  %i.ck = fsub float %i.cf, %i.ch                 ; 2 uses
  %i.cl = fsub float %i.cj, %i.cf                 ; 2 uses
  %i.cm = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.g, %i.cn
  %i.cp = fmul float %i.v, %i.cl
  %i.cq = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.i, %i.cr
  %i.ct = fmul float %i.bj, %i.ck
  %i.cu = fsub <2 x float> %i.co, %i.cs           ; 3 uses
  %i.cv = fsub float %i.cp, %i.ct                 ; 5 uses
  store <2 x float> %i.cu, ptr %2, align 4, !tbaa !113
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store float %i.cv, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !113
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cx = extractelement <2 x float> %i.cu, i64 1 ; 4 uses
  %i.cy = fmul float %i.cx, %i.cx
  %i.cz = extractelement <2 x float> %i.cu, i64 0 ; 4 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.cy)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.da) ; 2 uses
  %i.dc = fcmp oeq float %i.db, 0.000000e+00
  br i1 %i.dc, label %_ZN4core8vector3dIfE9normalizeEv.exit101, label %bb.d

bb.d:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit88
  %i.dd = fpext float %i.db to double
  %i.de = tail call double @llvm.sqrt.f64(double %i.dd)
  %i.df = fdiv double 1.000000e+00, %i.de         ; 3 uses
  %i.dg = fpext float %i.cz to double
  %i.dh = fmul double %i.df, %i.dg
  %i.di = fptrunc double %i.dh to float           ; 2 uses
  store float %i.di, ptr %2, align 4, !tbaa !180
  %i.dj = fpext float %i.cx to double
  %i.dk = fmul double %i.df, %i.dj
  %i.dl = fptrunc double %i.dk to float           ; 2 uses
  store float %i.dl, ptr %i.cw, align 4, !tbaa !181
  %i.dm = fpext float %i.cv to double
  %i.dn = fmul double %i.df, %i.dm
  %i.do = fptrunc double %i.dn to float           ; 2 uses
  store float %i.do, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !178
  br label %_ZN4core8vector3dIfE9normalizeEv.exit101

_ZN4core8vector3dIfE9normalizeEv.exit101:         ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit88, %bb.d
  %i.dp = phi float [ %i.cz, %_ZN4core8vector3dIfE9normalizeEv.exit88 ], [ %i.di, %bb.d ] ; 3 uses
  %i.dq = phi float [ %i.cv, %_ZN4core8vector3dIfE9normalizeEv.exit88 ], [ %i.do, %bb.d ] ; 3 uses
  %i.dr = phi float [ %i.cx, %_ZN4core8vector3dIfE9normalizeEv.exit88 ], [ %i.dl, %bb.d ] ; 3 uses
  %i.ds = load float, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !178 ; 2 uses
  %i.dt = load float, ptr %i.bn, align 4, !tbaa !181 ; 2 uses
  %i.du = fneg float %i.dt
  %i.dv = fmul float %i.dq, %i.du
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.ds, float %i.dv)
  %i.dx = load float, ptr %3, align 4, !tbaa !180 ; 2 uses
  %i.dy = fneg float %i.ds
  %i.dz = fmul float %i.dp, %i.dy
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dx, float %i.dz)
  %i.eb = fneg float %i.dx
  %i.ec = fmul float %i.dr, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.dt, float %i.ec)
  %i.ee = load float, ptr %1, align 4, !tbaa !180
  %i.ef = load float, ptr %i.ag, align 4, !tbaa !181
  %i.eg = fmul float %i.ea, %i.ef
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.ee, float %i.eg)
  %i.ei = load float, ptr %.sroa.436.0..sroa_idx, align 4, !tbaa !178
  %i.ej = tail call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.ei, float %i.eh)
  %i.ek = fcmp olt float %i.ej, 0.000000e+00
  br i1 %i.ek, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit101
  %i.el = fneg float %i.dp
  store float %i.el, ptr %2, align 4, !tbaa !180
  %i.em = fneg float %i.dr
  store float %i.em, ptr %i.cw, align 4, !tbaa !181
  %i.en = fneg float %i.dq
  store float %i.en, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !178
  %i.eo = load <2 x float>, ptr %3, align 4, !tbaa !113
  %i.ep = fneg <2 x float> %i.eo
  store <2 x float> %i.ep, ptr %3, align 4, !tbaa !113
  %i.eq = load float, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !178
  %i.er = fneg float %i.eq
  store float %i.er, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !178
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4core8vector3dIfE9normalizeEv.exit101
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene5IMesh14getTextureSlotEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 %1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene13IAnimatedMeshD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene13IAnimatedMeshD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene13IAnimatedMeshD1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene13IAnimatedMeshD0Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene5IMesh11getMeshTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene5IMeshD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene5IMeshD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene5IMeshD1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene5IMeshD0Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(24) ptr @_ZNK5scene11SkinnedMesh14getBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11SkinnedMesh14setBoundingBoxERKN4core8aabbox3dIfEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !125
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene11SkinnedMesh11getMeshTypeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene11SkinnedMesh15needsHwSkinningEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 147
  %i.b = load i8, ptr %i.a, align 1, !tbaa !82, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.e = load i8, ptr %i.d, align 1, !range !44
  %i.f = trunc nuw i8 %i.e to i1
  %not. = xor i1 %i.c, true
  %i.g = select i1 %not., i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene11SkinnedMesh4Keys15updateTransformEfRN4core9TransformE(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(40) %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional.161", align 4 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !116    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116  ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.b, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = lshr i64 %.016.i.i.i, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i.i, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !140
  %i.m = fcmp olt float %i.l, %1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.016.i.i.i, %i.o
  %.sroa.011.1.i.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i.i ; 11 uses
  %.1.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.j  ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.i, !llvm.loop !379

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.r = icmp eq ptr %.sroa.011.1.i.i.i, %i.a
  br i1 %i.r, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i, label %bb.c
end_hunk_1
begin_hunk_2_@_ZNK5scene11SkinnedMesh4Keys15updateTransformEfRN4core9TransformE:bb.a
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -12
  %.sroa.024.0.copyload26.i26 = load <2 x float>, ptr %i.cb, align 4, !tbaa !113
  %.sroa.5.0..sroa_idx28.i27 = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -4
  %.sroa.5.sroa.0.0.copyload34.i28 = load float, ptr %.sroa.5.0..sroa_idx28.i27, align 4, !tbaa !113
  br label %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44

bb.o:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -12
  %.sroa.07.0.copyload.i29 = load <2 x float>, ptr %i.cd, align 4, !tbaa !113
  %.sroa.28.0..sroa_idx.i30 = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -4
  %.sroa.28.0.copyload.i31 = load float, ptr %.sroa.28.0..sroa_idx.i30, align 4, !tbaa !113
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i23, i64 4
  %.sroa.05.0.copyload.i32 = load <2 x float>, ptr %i.ce, align 4, !tbaa !113
  %.sroa.26.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i23, i64 12
  %.sroa.26.0.copyload.i34 = load float, ptr %.sroa.26.0..sroa_idx.i33, align 4, !tbaa !113
  %i.cf = load float, ptr %i.cc, align 4, !tbaa !140 ; 2 uses
  %i.cg = fsub float %1, %i.cf
  %i.ch = load float, ptr %.sroa.011.1.i.i.i23, align 4, !tbaa !140
  %i.ci = fsub float %i.ch, %i.cf
  %i.cj = fdiv float %i.cg, %i.ci
  %i.ck = fpext float %i.cj to double             ; 3 uses
  %i.cl = fsub double 1.000000e+00, %i.ck         ; 2 uses
  %i.cm = fpext <2 x float> %.sroa.07.0.copyload.i29 to <2 x double>
  %i.cn = fpext <2 x float> %.sroa.05.0.copyload.i32 to <2 x double>
  %i.co = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cp, %i.cn
  %i.cr = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.cs, <2 x double> %i.cq)
  %i.cu = fptrunc <2 x double> %i.ct to <2 x float>
  %i.cv = fpext float %.sroa.28.0.copyload.i31 to double
  %i.cw = fpext float %.sroa.26.0.copyload.i34 to double
  %i.cx = fmul double %i.cw, %i.ck
  %i.cy = call double @llvm.fmuladd.f64(double %i.cv, double %i.cl, double %i.cx)
  %i.cz = fptrunc double %i.cy to float
  br label %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44

_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44: ; preds = %bb.o, %bb.n, %bb.l, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7
  %.sroa.024.2.i11 = phi <2 x float> [ %.sroa.024.0.copyload26.i26, %bb.n ], [ %.sroa.024.0.copyload.i8, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7 ], [ %.sroa.024.0.copyload25.i41, %bb.l ], [ %i.cu, %bb.o ]
  %.sroa.5.sroa.0.2.i12 = phi float [ %.sroa.5.sroa.0.0.copyload34.i28, %bb.n ], [ %.sroa.5.sroa.0.0.copyload.i10, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7 ], [ %.sroa.5.sroa.0.0.copyload33.i43, %bb.l ], [ %i.cz, %bb.o ]
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 28
  store <2 x float> %.sroa.024.2.i11, ptr %i.da, align 4, !tbaa !113
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %.sroa.5.sroa.0.2.i12, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !113
  br label %.critedge47

.critedge47:                                      ; preds = %bb.i, %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene11SkinnedMesh7ChannelIN4core10quaternionEE3getEf(ptr dead_on_unwind noalias writable sret(%"class.std::optional.161") align 4 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, float noundef %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !117    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117  ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.b
  %i.i = udiv exact i64 %i.g, 20
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %i.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.j = lshr i64 %.016.i.i, 1                    ; 3 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %.sroa.011.015.i.i, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !143
  %i.m = fcmp olt float %i.l, %2                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.016.i.i, %i.o
  %.sroa.011.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i ; 10 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.j    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit, !llvm.loop !380

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.r = icmp eq ptr %.sroa.011.1.i.i, %i.a
  br i1 %i.r, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread, label %bb.c

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread: ; preds = %bb.b, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !244
  br label %bb.j

bb.c:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit
  %i.t = icmp eq ptr %.sroa.011.1.i.i, %i.c
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.c, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !244
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i8, ptr %i.v, align 8, !tbaa !242, !range !44, !noundef !45
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !244
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -20
  %i.aa = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -16
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.aa, align 4, !tbaa !113 ; 4 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -8
  %.sroa.22.0.copyload = load <2 x float>, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !113 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ab, align 4, !tbaa !113 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 12
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !113 ; 4 uses
  %i.ac = load float, ptr %i.z, align 4, !tbaa !143 ; 2 uses
  %i.ad = fsub float %2, %i.ac
  %i.ae = load float, ptr %.sroa.011.1.i.i, align 4, !tbaa !143
  %i.af = fsub float %i.ae, %i.ac
  %i.ag = fdiv float %i.ad, %i.af                 ; 4 uses
  %.sroa.047.0.vec.extract.i.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0
  %.sroa.036.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.ah = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ai = tail call float @llvm.fmuladd.f32(float %.sroa.047.0.vec.extract.i.i, float %.sroa.036.0.vec.extract.i.i, float %i.ah)
  %.sroa.10.8.vec.extract.i.i = extractelement <2 x float> %.sroa.22.0.copyload, i64 0
  %.sroa.6.8.vec.extract.i.i = extractelement <2 x float> %.sroa.2.0.copyload, i64 0
  %i.aj = tail call float @llvm.fmuladd.f32(float %.sroa.10.8.vec.extract.i.i, float %.sroa.6.8.vec.extract.i.i, float %i.ai)
  %.sroa.10.12.vec.extract.i.i = extractelement <2 x float> %.sroa.22.0.copyload, i64 1
  %.sroa.6.12.vec.extract.i.i = extractelement <2 x float> %.sroa.2.0.copyload, i64 1
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %.sroa.10.12.vec.extract.i.i, float %.sroa.6.12.vec.extract.i.i, float %i.aj) ; 3 uses
  %i.al = fcmp olt float %i.ak, 0.000000e+00      ; 3 uses
  %i.am = fneg <2 x float> %.sroa.01.0.copyload
  %i.an = fneg <2 x float> %.sroa.22.0.copyload
  %i.ao = fneg float %i.ak
  %.sroa.047.0.i.i = select i1 %i.al, <2 x float> %i.am, <2 x float> %.sroa.01.0.copyload ; 2 uses
  %.sroa.10.0.i.i = select i1 %i.al, <2 x float> %i.an, <2 x float> %.sroa.22.0.copyload ; 2 uses
  %.020.i.i = select i1 %i.al, float %i.ao, float %i.ak ; 2 uses
  %i.ap = fcmp ugt float %.020.i.i, 9.990000e-01
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call float @acosf(float noundef %.020.i.i) #31 ; 3 uses
  %i.ar = tail call float @sinf(float noundef %i.aq) #31
  %i.as = fdiv float 1.000000e+00, %i.ar          ; 2 uses
  %i.at = fsub float 1.000000e+00, %i.ag
  %i.au = fmul float %i.at, %i.aq
  %i.av = tail call float @sinf(float noundef %i.au) #31
  %i.aw = fmul float %i.ag, %i.aq
  %i.ax = tail call float @sinf(float noundef %i.aw) #31
  %i.ay = fmul float %i.av, %i.as
  %i.az = fmul float %i.as, %i.ax
  %i.ba = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = fmul <2 x float> %.sroa.047.0.i.i, %i.bb
  %i.bd = fmul <2 x float> %.sroa.10.0.i.i, %i.bb
  %i.be = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fmul <2 x float> %.sroa.0.0.copyload, %i.bf
  %i.bh = fmul <2 x float> %.sroa.2.0.copyload, %i.bf
  %i.bi = fadd <2 x float> %i.bc, %i.bg
  %i.bj = fadd <2 x float> %i.bd, %i.bh
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit

bb.i:                                             ; preds = %bb.g
  %i.bk = fsub float 1.000000e+00, %i.ag
  %i.bl = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bn = fmul <2 x float> %.sroa.0.0.copyload, %i.bm
  %i.bo = fmul <2 x float> %.sroa.2.0.copyload, %i.bm
  %i.bp = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fmul <2 x float> %i.bq, %.sroa.10.0.i.i
  %i.bs = fadd <2 x float> %i.bo, %i.br           ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.bu = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.bv = fmul <2 x float> %i.bq, %.sroa.047.0.i.i
  %i.bw = fadd <2 x float> %i.bn, %i.bv           ; 4 uses
  %foldExtExtBinop26 = fmul <2 x float> %i.bw, %i.bw
  %i.bx = extractelement <2 x float> %foldExtExtBinop26, i64 1
  %i.by = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bz)
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.ca)
  %i.cc = fpext float %i.cb to double
  %i.cd = tail call double @llvm.sqrt.f64(double %i.cc)
  %i.ce = fdiv double 1.000000e+00, %i.cd
  %i.cf = fptrunc double %i.ce to float
  %i.cg = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = fmul <2 x float> %i.bw, %i.ch
  %i.cj = fmul <2 x float> %i.bs, %i.ch
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit

_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit: ; preds = %bb.h, %bb.i
  %.sroa.0.4.vec.insert.i29.sink.i.i = phi <2 x float> [ %i.ci, %bb.i ], [ %i.bi, %bb.h ]
  %.sroa.3.12.vec.insert.i31.sink.i.i = phi <2 x float> [ %i.cj, %bb.i ], [ %i.bj, %bb.h ]
  store <2 x float> %.sroa.0.4.vec.insert.i29.sink.i.i, ptr %0, align 4, !tbaa !113
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i31.sink.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !113
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread, %bb.d, %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit, %bb.f
  %.sink = phi i8 [ 1, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread ], [ 1, %bb.d ], [ 1, %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit ], [ 1, %bb.f ], [ 0, %bb.a ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 4, !tbaa !249
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5video9SMaterialneERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !381
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i32, ptr %i.c, align 8, !tbaa !381
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !382
  %i.h = load i32, ptr %i.e, align 4, !tbaa !382
  %.not50 = icmp eq i32 %i.g, %i.h
  br i1 %.not50, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load float, ptr %i.i, align 8, !tbaa !383
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load float, ptr %i.k, align 8, !tbaa !383
  %i.m = fcmp une float %i.j, %i.l
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.o = load float, ptr %i.n, align 4, !tbaa !384
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.q = load float, ptr %i.p, align 4, !tbaa !384
  %i.r = fcmp une float %i.o, %i.q
  br i1 %i.r, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.t = load i8, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.v = load i8, ptr %i.u, align 2
  %i.w = xor i8 %i.v, %i.t                        ; 3 uses
  %i.x = and i8 %i.w, 3
  %or.cond44 = icmp eq i8 %i.x, 0
  br i1 %or.cond44, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.z = load i16, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = and i8 %i.w, 124
  %i.ad = icmp eq i8 %i.ac, 0
  %or.cond = icmp eq i16 %i.z, %i.ab
  %or.cond51 = and i1 %i.ad, %or.cond
  br i1 %or.cond51, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load float, ptr %i.ae, align 8, !tbaa !385
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !385
  %i.ai = fcmp une float %i.af, %i.ah
  br i1 %i.ai, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !386
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.am = load float, ptr %i.al, align 4, !tbaa !386
  %i.an = fcmp une float %i.ak, %i.am
  br i1 %i.an, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !387
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !387
  %i.as = fcmp une float %i.ap, %i.ar
  %i.at = icmp slt i8 %i.w, 0
  %or.cond43 = or i1 %i.at, %i.as
  br i1 %or.cond43, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.au = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.au, label %.critedge, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
  br i1 %i.ax, label %.critedge, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az)
  br i1 %i.ba, label %.critedge, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
  br label %.critedge

.critedge:                                        ; preds = %.preheader.3, %.preheader.preheader, %.preheader.1, %.preheader.2, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.g ], [ true, %.preheader.preheader ], [ true, %.preheader.2 ], [ true, %.preheader.1 ], [ %i.bd, %.preheader.3 ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !238
  %i.b = load ptr, ptr %1, align 8, !tbaa !238
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i16, ptr %i.e, align 8
  %i.g = xor i16 %i.f, %i.d
  %i.h = and i16 %i.g, 4095
  %or.cond28 = icmp eq i16 %i.h, 0
  br i1 %or.cond28, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !388
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = load i8, ptr %i.k, align 2, !tbaa !388
  %.not21 = icmp eq i8 %i.j, %i.l
  br i1 %.not21, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !389
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !389
  %.not22 = icmp eq i8 %i.n, %i.p
  br i1 %.not22, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i8, ptr %i.q, align 4, !tbaa !390
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !390
  %.not23 = icmp eq i8 %i.r, %i.t
  br i1 %.not23, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.v = load i8, ptr %i.u, align 1, !tbaa !391
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.x = load i8, ptr %i.w, align 1, !tbaa !391
  %.not29 = icmp eq i8 %i.v, %i.x
  br i1 %.not29, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !250  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !250 ; 3 uses
  %.not24 = icmp eq ptr %i.z, %i.ab
  br i1 %.not24, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not25 = icmp eq ptr %i.z, null
  %.not26 = icmp eq ptr %i.ab, null
  %or.cond = or i1 %.not25, %.not26
  br i1 %or.cond, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call noundef zeroext i1 @_ZNK4core8CMatrix4IfEeqERKS1_(ptr noundef nonnull align 4 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(64) %i.ab)
  %i.ad = xor i1 %i.ac, true
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g, %bb.i, %bb.h, %bb.f
  %.0 = phi i1 [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.g ], [ %i.ad, %bb.i ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ]
end_hunk_2
begin_hunk_3_@_ZNSt6vectorItSaItEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPtS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -2
  %i.ae = load i16, ptr %1, align 2, !tbaa !175
  store i16 %i.ae, ptr %i.ad, align 2, !tbaa !175
  br label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !276

bb.k:                                             ; preds = %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 2
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i16, ptr %2, align 2, !tbaa !175
  store i16 %i.ag, ptr %1, align 2, !tbaa !175
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 2
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 2
  br i1 %i.al, label %bb.n, label %bb.o, !prof !276

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.h, ptr align 2 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !194
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_tET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 2
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_tET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i16, ptr %i.ai, align 2, !tbaa !175
  store i16 %i.an, ptr %i.h, align 2, !tbaa !175
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_tET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_tET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !194
  %i.ar = icmp sgt i64 %i.m, 2
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !276

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_tET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.aq, ptr align 2 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !194
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_tET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load i16, ptr %1, align 2, !tbaa !175
  store i16 %i.as, ptr %i.aq, align 2, !tbaa !175
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !194
  %i.av = icmp sgt i64 %i.m, 2
  br i1 %i.av, label %bb.t, label %bb.u, !prof !276

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 2
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i16, ptr %2, align 2, !tbaa !175
  store i16 %i.ax, ptr %1, align 2, !tbaa !175
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !196   ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 1                 ; 4 uses
  %i.bc = sub nsw i64 4611686018427387903, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #32
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 4611686018427387903)
  %i.bh = select i1 %i.bf, i64 4611686018427387903, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #33
  br label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 2
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !276

bb.z:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bk, ptr align 2 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 2
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i16, ptr %i.ay, align 2, !tbaa !175
  store i16 %i.bp, ptr %i.bk, align 2, !tbaa !175
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 2
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !276

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bq, ptr align 2 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 2
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i16, ptr %2, align 2, !tbaa !175
  store i16 %i.bt, ptr %i.bq, align 2, !tbaa !175
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 2
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !276

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bu, ptr align 2 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 2
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i16, ptr %1, align 2, !tbaa !175
  store i16 %i.by, ptr %i.bu, align 2, !tbaa !175
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #29
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !196
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !194
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !195
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{null}
!1 = distinct !{!1, !127}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !127}
!5 = distinct !{!5, !127}
!6 = distinct !{!6, !127}
!7 = distinct !{!7, !127}
!8 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEED1Ev, null, null, null, null}
!9 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED1Ev, null, null, null, null}
!10 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"vtable pointer", !14, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"any pointer", !15, i64 0}
!22 = !{!"any p2 pointer", !21, i64 0}
!23 = !{!"p2 _ZTSN5scene11SkinnedMesh6SJointE", !22, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p2 _ZTSN5scene15SSkinMeshBufferE", !22, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTSN5scene11SkinnedMesh6SJointE", !21, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTSN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameE", !21, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 0}
!32 = !{!30, !29, i64 16}
!33 = !{!"p1 _ZTSN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameE", !21, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!34, !33, i64 0}
!36 = !{!34, !33, i64 16}
!37 = !{!"p1 int", !21, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!38, !37, i64 0}
!40 = !{!38, !37, i64 16}
!41 = !{!"bool", !15, i64 0}
!42 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !15, i64 0, !41, i64 32}
!43 = !{!42, !41, i64 32}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!"p1 omnipotent char", !21, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !46, i64 0}
!48 = !{!"long", !15, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !47, i64 0, !48, i64 8, !15, i64 16}
!50 = !{!49, !46, i64 0}
!51 = !{!15, !15, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIPN5scene11SkinnedMesh6SJointESaIS3_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!53 = !{!52, !23, i64 0}
!54 = !{!52, !23, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!56 = !{!55, !25, i64 0}
!57 = !{!55, !25, i64 16}
!58 = !{!"p1 _ZTSN5scene15SSkinMeshBufferE", !21, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"_ZTS17IReferenceCounted", !16, i64 8}
!61 = !{!60, !16, i64 8}
!62 = !{ptr @_ZN5scene11SkinnedMeshD1Ev}
!63 = !{!"_ZTSN5scene5IMeshE"}
!64 = !{!"_ZTSN5scene13IAnimatedMeshE", !63, i64 0}
!65 = !{!"p1 _ZTSSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE", !21, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE12_Vector_implE", !55, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE", !67, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !38, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !69, i64 0}
!71 = !{!"_ZTSSt6vectorIjSaIjEE", !70, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIPN5scene11SkinnedMesh6SJointESaIS3_EE12_Vector_implE", !52, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIPN5scene11SkinnedMesh6SJointESaIS3_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EE", !73, i64 0}
!75 = !{!"float", !15, i64 0}
!76 = !{!"_ZTSN4core8vector3dIfEE", !75, i64 0, !75, i64 4, !75, i64 8}
!77 = !{!"_ZTSN4core8aabbox3dIfEE", !76, i64 0, !76, i64 12}
!78 = !{!"_ZTSN5scene11SkinnedMesh12SourceFormatE", !15, i64 0}
!79 = !{!"_ZTSN5scene11SkinnedMeshE", !64, i64 0, !65, i64 8, !68, i64 16, !71, i64 40, !74, i64 64, !77, i64 88, !77, i64 112, !75, i64 136, !75, i64 140, !41, i64 144, !41, i64 145, !41, i64 146, !41, i64 147, !78, i64 148}
!80 = !{!79, !75, i64 136}
!81 = !{!52, !23, i64 8}
!82 = !{!79, !41, i64 147}
!83 = !{!"_ZTSN5scene11IMeshBufferE"}
!84 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE", !21, i64 0}
!85 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE", !21, i64 0}
!86 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE", !21, i64 0}
!87 = !{!"p1 _ZTSN5scene12CIndexBufferItEE", !21, i64 0}
!88 = !{!"_ZTSN4core8CMatrix4IfEE", !15, i64 0}
!89 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !15, i64 0}
!90 = !{!"_ZTSN5video6SColorE", !16, i64 0}
!91 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !15, i64 0}
!92 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !15, i64 0}
!93 = !{!"_ZTSN5video13E_COLOR_PLANEE", !15, i64 0}
!94 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !15, i64 0}
!95 = !{!"_ZTSN5video8E_ZWRITEE", !15, i64 0}
!96 = !{!"_ZTSN5video9SMaterialE", !15, i64 0, !89, i64 96, !90, i64 100, !75, i64 104, !75, i64 108, !75, i64 112, !75, i64 116, !75, i64 120, !91, i64 124, !92, i64 124, !93, i64 125, !94, i64 125, !41, i64 126, !41, i64 126, !95, i64 126, !41, i64 126, !41, i64 126, !41, i64 126, !41, i64 126}
!97 = !{!"_ZTSN5video13E_VERTEX_TYPEE", !15, i64 0}
!98 = !{!"_ZTSN5scene16E_PRIMITIVE_TYPEE", !15, i64 0}
!99 = !{!"_ZTSN5scene15SSkinMeshBufferE", !83, i64 0, !84, i64 8, !85, i64 16, !86, i64 24, !87, i64 32, !88, i64 40, !96, i64 104, !97, i64 232, !77, i64 236, !98, i64 260, !41, i64 264}
!100 = !{!99, !97, i64 232}
!101 = !{!21, !21, i64 0}
!102 = !{!"p1 _ZTSN5scene12WeightBufferE", !21, i64 0}
!103 = !{!"_ZTS7irr_ptrIN5scene12WeightBufferEE", !102, i64 0}
!104 = !{!103, !102, i64 0}
!105 = !{!79, !41, i64 144}
!106 = !{!"p1 _ZTSSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEE", !21, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseISt7variantIJN4core9TransformENS1_8CMatrix4IfEEEESaIS5_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!107, !106, i64 0}
!109 = !{!107, !106, i64 8}
!110 = !{!107, !106, i64 16}
!111 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN4core9TransformENS2_8CMatrix4IfEEEEE", !15, i64 0, !15, i64 64}
!112 = !{!111, !15, i64 64}
!113 = !{!75, !75, i64 0}
!114 = !{i64 0, i64 4, !113, i64 4, i64 4, !113, i64 8, i64 4, !113, i64 12, i64 4, !113, i64 16, i64 4, !113, i64 20, i64 4, !113, i64 24, i64 4, !113, i64 28, i64 4, !113, i64 32, i64 4, !113, i64 36, i64 4, !113}
!115 = !{i64 0, i64 64, !51}
!116 = !{!29, !29, i64 0}
!117 = !{!33, !33, i64 0}
!118 = !{!"_ZTSSt9exception"}
!119 = !{!"_ZTSSt18bad_variant_access", !118, i64 0, !46, i64 8}
!120 = !{!119, !46, i64 8}
!121 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !21, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE17_Vector_impl_dataE", !121, i64 0, !121, i64 8, !121, i64 16}
!123 = !{!122, !121, i64 8}
!124 = !{!122, !121, i64 0}
!125 = !{i64 0, i64 4, !113, i64 4, i64 4, !113, i64 8, i64 4, !113, i64 12, i64 4, !113, i64 16, i64 4, !113, i64 20, i64 4, !113}
!126 = !{!77, !75, i64 20}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !{!37, !37, i64 0}
!129 = !{!79, !65, i64 8}
!130 = !{!16, !16, i64 0}
!131 = !{!122, !121, i64 16}
!132 = !{!"_ZTSSt22_Optional_payload_baseIN4core8CMatrix4IfEEE", !15, i64 0, !41, i64 64}
!133 = !{!132, !41, i64 64}
!134 = !{!55, !25, i64 8}
!135 = !{!38, !37, i64 8}
!136 = !{!"_ZTSN5scene18E_HARDWARE_MAPPINGE", !15, i64 0}
!137 = !{!"_ZTSN5scene8HWBufferE", !136, i64 8, !21, i64 16, !16, i64 24}
!138 = !{!137, !136, i64 8}
!139 = !{!"_ZTSN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameE", !75, i64 0, !76, i64 4}
!140 = !{!139, !75, i64 0}
!141 = !{!"_ZTSN4core10quaternionE", !75, i64 0, !75, i64 4, !75, i64 8, !75, i64 12}
!142 = !{!"_ZTSN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameE", !75, i64 0, !141, i64 4}
!143 = !{!142, !75, i64 0}
!144 = !{!"p1 long", !21, i64 0}
!145 = !{!"_ZTSSt18_Bit_iterator_base", !144, i64 0, !16, i64 8}
!146 = !{!145, !144, i64 0}
!147 = !{!145, !16, i64 8}
!148 = !{!"_ZTSSt13_Bit_iterator", !145, i64 0}
!149 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !148, i64 0, !148, i64 16, !144, i64 32}
!150 = !{!149, !144, i64 32}
!151 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorIjSaIjEEE", !15, i64 0, !41, i64 24}
!152 = !{!151, !41, i64 24}
!153 = !{!48, !48, i64 0}
!154 = !{!77, !75, i64 12}
!155 = !{!77, !75, i64 16}
!156 = !{!77, !75, i64 0}
!157 = !{!77, !75, i64 4}
!158 = !{!77, !75, i64 8}
!159 = !{!99, !85, i64 16}
!160 = !{!"p1 _ZTSN5video17S3DVertex2TCoordsE", !21, i64 0}
!161 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE17_Vector_impl_dataE", !160, i64 0, !160, i64 8, !160, i64 16}
!162 = !{!161, !160, i64 0}
!163 = !{!99, !84, i64 8}
!164 = !{!"p1 _ZTSN5video17S3DVertexTangentsE", !21, i64 0}
!165 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE17_Vector_impl_dataE", !164, i64 0, !164, i64 8, !164, i64 16}
!166 = !{!165, !164, i64 0}
!167 = !{!99, !86, i64 24}
!168 = !{!"p1 _ZTSN5video9S3DVertexE", !21, i64 0}
!169 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE17_Vector_impl_dataE", !168, i64 0, !168, i64 8, !168, i64 16}
!170 = !{!169, !168, i64 0}
!171 = !{!"p1 _ZTSN5scene12WeightBuffer13VertexWeightsE", !21, i64 0}
!172 = !{!"_ZTSNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EE17_Vector_impl_dataE", !171, i64 0, !171, i64 8, !171, i64 16}
!173 = !{!172, !171, i64 0}
!174 = !{!"short", !15, i64 0}
!175 = !{!174, !174, i64 0}
!176 = !{!99, !41, i64 264}
!177 = !{!169, !168, i64 8}
end_hunk_3
