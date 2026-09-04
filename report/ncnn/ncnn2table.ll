Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2table?download=true
inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3npy7pyparse10parse_dictENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.bg = load i8, ptr %i.ba, align 1, !tbaa !58
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !58
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr nonnull align 1 %i.ba, i64 %spec.select.i.i.i, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !217, !noalias !486 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !158, !alias.scope !486
  %i.bj = load ptr, ptr %4, align 8, !tbaa !149, !alias.scope !486
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !486
  %i.bl = load ptr, ptr %1, align 8, !tbaa !149   ; 6 uses
  %i.bm = icmp eq ptr %i.bl, %i.p
  %i.bn = load ptr, ptr %4, align 8, !tbaa !149   ; 6 uses
  %i.bo = icmp eq ptr %i.bn, %i.az                ; 2 uses
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i57: ; preds = %bb.o
  br i1 %i.bo, label %bb.p, label %.thread.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i51: ; preds = %bb.o
  br i1 %i.bo, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i52

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i57
  %i.bp = load i64, ptr %i.bi, align 8, !tbaa !158 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %.not21.i54 = icmp eq ptr %4, %1
  br i1 %.not21.i54, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59, label %bb.q, !prof !49

bb.q:                                             ; preds = %bb.p
  switch i64 %i.bp, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !58
  store i8 %i.br, ptr %i.bl, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bn, i64 %i.bp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55: ; preds = %bb.s, %bb.r, %bb.q
  %i.bs = load i64, ptr %i.bi, align 8, !tbaa !158 ; 2 uses
  store i64 %i.bs, ptr %i.ar, align 8, !tbaa !158
  %i.bt = load ptr, ptr %1, align 8, !tbaa !149
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !58
  %.pre.i56 = load ptr, ptr %4, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59

.thread.i58:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i57
  store ptr %i.bn, ptr %1, align 8, !tbaa !149
  %i.bv = load <2 x i64>, ptr %i.bi, align 8, !tbaa !58
  store <2 x i64> %i.bv, ptr %i.ar, align 8, !tbaa !58
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i51
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !58
  store ptr %i.bn, ptr %1, align 8, !tbaa !149
  %i.bx = load <2 x i64>, ptr %i.bi, align 8, !tbaa !58
  store <2 x i64> %i.bx, ptr %i.ar, align 8, !tbaa !58
  %.not.i53 = icmp eq ptr %i.bl, null
  br i1 %.not.i53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i52
  store ptr %i.bl, ptr %4, align 8, !tbaa !149
  store i64 %i.bw, ptr %i.az, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i52, %.thread.i58
  store ptr %i.az, ptr %4, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55, %bb.t, %bb.u
  %i.by = phi ptr [ %.pre.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55 ], [ %i.bl, %bb.t ], [ %i.az, %bb.u ], [ %i.bn, %bb.p ]
  store i64 0, ptr %i.bi, align 8, !tbaa !158
  store i8 0, ptr %i.by, align 1, !tbaa !58
  %i.bz = load ptr, ptr %4, align 8, !tbaa !149   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.az
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59
  call void @_ZdlPv(ptr noundef %i.bz) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.cb = load ptr, ptr %2, align 8, !tbaa !237   ; 2 uses
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !237 ; 2 uses
  %.not267 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not267, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.ae

bb.v:                                             ; preds = %bb.b
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.co

bb.w:                                             ; preds = %.noexc10.i.i, %bb.l
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.co

bb.x:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull @.str.45)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.cp, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
          to label %bb.cp unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cp) #20
  br label %bb.co

bb.aa:                                            ; preds = %bb.y
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

._crit_edge:                                      ; preds = %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %.pre = load ptr, ptr %5, align 8, !tbaa !487   ; 6 uses
  %.pre298 = load ptr, ptr %i.cl, align 8, !tbaa !487 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %.pre, %.pre298
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.ct = ptrtoint ptr %.pre298 to i64
  %i.cu = ptrtoint ptr %.pre to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = sdiv exact i64 %i.cv, 40
  %i.cx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = shl nuw nsw i64 %i.cx, 1
  %i.cz = xor i64 %i.cy, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_less_iterEEvT_SH_T0_T1_(ptr %.pre, ptr %.pre298, i64 noundef %i.cz)
          to label %.noexc63 unwind label %.loopexit.split-lp172

.noexc63:                                         ; preds = %bb.ab
  %i.da = icmp sgt i64 %i.cv, 640
  br i1 %i.da, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.noexc63
  %i.db = getelementptr inbounds nuw i8, ptr %.pre, i64 640 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %.pre, ptr nonnull %i.db)
          to label %.noexc64 unwind label %.loopexit.split-lp172

.noexc64:                                         ; preds = %bb.ac
  %.not4.i.i.i.i = icmp eq ptr %i.db, %.pre298
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc64, %.noexc65
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.dc, %.noexc65 ], [ %i.db, %.noexc64 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i)
          to label %.noexc65 unwind label %.loopexit171

.noexc65:                                         ; preds = %.lr.ph.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, %.pre298
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !476

bb.ad:                                            ; preds = %.noexc63
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %.pre, ptr %.pre298)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit unwind label %.loopexit.split-lp172

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit: ; preds = %.noexc65, %._crit_edge.thread, %bb.ad, %._crit_edge, %.noexc64
  %i.dd = phi ptr [ %i.cd, %._crit_edge.thread ], [ %i.cs, %.noexc64 ], [ %i.cs, %bb.ad ], [ %i.cs, %._crit_edge ], [ %i.cs, %.noexc65 ] ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !245 ; 2 uses
  %i.df = load ptr, ptr %5, align 8, !tbaa !246   ; 3 uses
  %.not273 = icmp eq ptr %i.de, %i.df
  br i1 %.not273, label %._crit_edge271, label %.lr.ph270

.lr.ph270:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  br label %bb.bc

bb.ae:                                            ; preds = %.lr.ph, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %.sroa.0154.0268 = phi ptr [ %i.cb, %.lr.ph ], [ %i.gr, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.dq = load ptr, ptr %.sroa.0154.0268, align 8, !tbaa !149, !noalias !488
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0154.0268, i64 8 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !158, !noalias !488 ; 3 uses
  store ptr %i.ce, ptr %7, align 8, !tbaa !230, !alias.scope !489
  store i64 0, ptr %i.cf, align 8, !tbaa !158, !alias.scope !489
  store i8 0, ptr %i.ce, align 8, !tbaa !58, !alias.scope !489
  %i.dt = add i64 %i.ds, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.dt)
          to label %bb.af unwind label %.loopexit176

bb.af:                                            ; preds = %bb.ae
  %i.du = load i64, ptr %i.cf, align 8, !tbaa !158, !alias.scope !489
  %i.dv = icmp eq i64 %i.du, 4611686018427387903
  br i1 %i.dv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.af
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit176 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dx = load i64, ptr %i.cf, align 8, !tbaa !158, !alias.scope !489
  %i.dy = sub i64 4611686018427387903, %i.dx
  %i.dz = icmp ult i64 %i.dy, %i.ds
  br i1 %i.dz, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #38
          to label %.cont.i.i unwind label %.loopexit.split-lp177

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ea = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.dq, i64 noundef %i.ds)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit176 ; 0 uses

.loopexit176:                                     ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp177:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp177, %.loopexit176
  %lpad.phi180 = phi { ptr, i32 } [ %lpad.loopexit178, %.loopexit176 ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp177 ] ; 2 uses
  %i.eb = load ptr, ptr %7, align 8, !tbaa !149, !alias.scope !489 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ce
  br i1 %i.ec, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.ed = load i64, ptr %i.cf, align 8, !tbaa !158, !noalias !490
  %i.ee = icmp eq i64 %i.ed, 4611686018427387903
  br i1 %i.ee, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ah:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #38
          to label %.noexc69 unwind label %.loopexit.split-lp182

.noexc69:                                         ; preds = %bb.ah
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %.noexc70 unwind label %.loopexit181 ; 6 uses

.noexc70:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.cg, ptr %6, align 8, !tbaa !230, !alias.scope !490
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !149 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 5 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.ai:                                            ; preds = %.noexc70
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !158 ; 3 uses
  %i.el = icmp ult i64 %i.ek, 16
  call void @llvm.assume(i1 %i.el)
  %i.em = add nuw nsw i64 %i.ek, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.eh, i64 %i.em, i1 false)
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %.noexc70
  store ptr %i.eg, ptr %6, align 8, !tbaa !149, !alias.scope !490
  %i.en = load i64, ptr %i.eh, align 8, !tbaa !58
  store i64 %i.en, ptr %i.cg, align 8, !tbaa !58, !alias.scope !490
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.pre.i68 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !158
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.ai
  %i.eo = phi i64 [ %i.ek, %bb.ai ], [ %.pre.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %i.eo, ptr %i.ch, align 8, !tbaa !158, !alias.scope !490
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !149
  store i64 0, ptr %i.ep, align 8, !tbaa !158
  store i8 0, ptr %i.eh, align 8, !tbaa !58
  %i.eq = load ptr, ptr %6, align 8, !tbaa !149
  %i.er = load i64, ptr %i.ch, align 8, !tbaa !158
  %i.es = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.eq, i64 noundef 0, i64 noundef %i.er) #20 ; 2 uses
  %i.et = load ptr, ptr %6, align 8, !tbaa !149   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.cg
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.et) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.ev = load ptr, ptr %7, align 8, !tbaa !149   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ce
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  call void @_ZdlPv(ptr noundef %i.ev) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ex = icmp eq i64 %i.es, -1
  br i1 %i.ex, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.ey = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.47, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0154.0268)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.48)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.thread

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
          to label %bb.cp unwind label %bb.ap

.loopexit181:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp182:                            ; preds = %bb.ah
  %lpad.loopexit.split-lp184 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp182, %.loopexit181
  %lpad.phi185 = phi { ptr, i32 } [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit.split-lp184, %.loopexit.split-lp182 ] ; 2 uses
  %i.ez = load ptr, ptr %7, align 8, !tbaa !149   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ce
  br i1 %i.fa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ao, %bb.ag
  %.sink = phi ptr [ %i.eb, %bb.ag ], [ %i.ez, %bb.ao ]
  %.pn40.ph = phi { ptr, i32 } [ %lpad.phi180, %bb.ag ], [ %lpad.phi185, %bb.ao ]
  call void @_ZdlPv(ptr noundef %.sink) #37
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ao, %bb.ag
  %.pn40 = phi { ptr, i32 } [ %lpad.phi180, %bb.ag ], [ %lpad.phi185, %bb.ao ], [ %.pn40.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.cm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.thread: ; preds = %bb.ak
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ap:                                            ; preds = %bb.an, %bb.am
  %.022 = phi i1 [ false, %bb.an ], [ true, %bb.am ] ; 2 uses
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fd = load ptr, ptr %8, align 8, !tbaa !149   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.fd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  %i.fg = load ptr, ptr %9, align 8, !tbaa !149   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.thread: ; preds = %bb.al
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load ptr, ptr %9, align 8, !tbaa !149   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.thread
  call void @_ZdlPv(ptr noundef %i.fk) #37
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  call void @_ZdlPv(ptr noundef %i.fg) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.022, label %bb.aq, label %bb.cm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.022, label %bb.aq, label %bb.cm

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.thread
  %.pn44.pn159.ph = phi { ptr, i32 } [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.thread ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.thread ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.pn44.pn159 = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.pn44.pn159.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ey) #20
  br label %bb.cm

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i64 %i.es, ptr %10, align 8, !tbaa !248
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !230
  %i.fn = load ptr, ptr %.sroa.0154.0268, align 8, !tbaa !149 ; 2 uses
  %i.fo = load i64, ptr %i.dr, align 8, !tbaa !158 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 %i.fo, ptr %i.d, align 8, !tbaa !217
  %i.fp = icmp ugt i64 %i.fo, 15
  br i1 %i.fp, label %.noexc.i.i, label %._crit_edge.i.i.i86

.noexc.i.i:                                       ; preds = %bb.ar
  %i.fq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc87 unwind label %bb.az  ; 2 uses

.noexc87:                                         ; preds = %.noexc.i.i
  store ptr %i.fq, ptr %i.ci, align 8, !tbaa !149
  %i.fr = load i64, ptr %i.d, align 8, !tbaa !217
  store i64 %i.fr, ptr %i.cj, align 8, !tbaa !58
  br label %._crit_edge.i.i.i86

._crit_edge.i.i.i86:                              ; preds = %.noexc87, %bb.ar
  %i.fs = phi ptr [ %i.fq, %.noexc87 ], [ %i.cj, %bb.ar ] ; 2 uses
  switch i64 %i.fo, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %bb.au
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i86
  %i.ft = load i8, ptr %i.fn, align 1, !tbaa !58
  store i8 %i.ft, ptr %i.fs, align 1, !tbaa !58
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i.i86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fs, ptr align 1 %i.fn, i64 %i.fo, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i.i86
  %i.fu = load i64, ptr %i.d, align 8, !tbaa !217 ; 2 uses
  store i64 %i.fu, ptr %i.ck, align 8, !tbaa !158
  %i.fv = load ptr, ptr %i.ci, align 8, !tbaa !149
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fu
  store i8 0, ptr %i.fw, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.fx = load ptr, ptr %i.cl, align 8, !tbaa !245 ; 6 uses
  %i.fy = load ptr, ptr %i.cm, align 8, !tbaa !249
  %.not.i88 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not.i88, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fz = load i64, ptr %10, align 8, !tbaa !248
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !248
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 3 uses
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !230
  %i.gc = load ptr, ptr %i.ci, align 8, !tbaa !149 ; 2 uses
  %i.gd = load i64, ptr %i.ck, align 8, !tbaa !158 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.gd, ptr %i.c, align 8, !tbaa !217
  %i.ge = icmp ugt i64 %i.gd, 15
  br i1 %i.ge, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.av
  %i.gf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc89 unwind label %bb.ba  ; 2 uses

.noexc89:                                         ; preds = %.noexc.i.i.i
  store ptr %i.gf, ptr %i.ga, align 8, !tbaa !149
  %i.gg = load i64, ptr %i.c, align 8, !tbaa !217
  store i64 %i.gg, ptr %i.gb, align 8, !tbaa !58
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc89, %bb.av
  %i.gh = phi ptr [ %i.gf, %.noexc89 ], [ %i.gb, %bb.av ] ; 2 uses
  switch i64 %i.gd, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gi = load i8, ptr %i.gc, align 1, !tbaa !58
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !58
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr align 1 %i.gc, i64 %i.gd, i1 false)
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i

_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i: ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i.i.i
  %i.gj = load i64, ptr %i.c, align 8, !tbaa !217 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !158
  %i.gl = load ptr, ptr %i.ga, align 8, !tbaa !149
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gj
  store i8 0, ptr %i.gm, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.gn = load ptr, ptr %i.cl, align 8, !tbaa !245
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  store ptr %i.go, ptr %i.cl, align 8, !tbaa !245
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE9push_backERKS7_.exit

bb.ay:                                            ; preds = %bb.au
  invoke void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.fx, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE9push_backERKS7_.exit unwind label %bb.ba

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE9push_backERKS7_.exit: ; preds = %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i, %bb.ay
  %i.gp = load ptr, ptr %i.ci, align 8, !tbaa !149 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.cj
  br i1 %i.gq, label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE9push_backERKS7_.exit
  call void @_ZdlPv(ptr noundef %i.gp) #37
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE9push_backERKS7_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0154.0268, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.gr, %i.cc
  br i1 %.not, label %._crit_edge, label %bb.ae

bb.az:                                            ; preds = %.noexc.i.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit93

bb.ba:                                            ; preds = %bb.ay, %.noexc.i.i.i
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %i.ci, align 8, !tbaa !149 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.cj
  br i1 %i.gv, label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91: ; preds = %bb.ba
  call void @_ZdlPv(ptr noundef %i.gu) #37
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit93

_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit93: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91, %bb.az
  %.pn42 = phi { ptr, i32 } [ %i.gs, %bb.az ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91 ], [ %i.gt, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.cm

._crit_edge271:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %.lcssa193 = phi ptr [ %i.de, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit ], [ %i.lg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 2 uses
  %.lcssa = phi ptr [ %i.df, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa193
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge271, %_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ha, %_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %.lcssa, %._crit_edge271 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !149 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.gx) #37
  br label %_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ha, %.lcssa193
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !246
  br label %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %._crit_edge271
  %16 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %._crit_edge271 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %16, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %16) #37
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.cn

.loopexit171:                                     ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit173 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp172:                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %lpad.loopexit.split-lp174 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bc:                                            ; preds = %.lr.ph270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.hb = phi ptr [ %i.df, %.lr.ph270 ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ]
  %.020269 = phi i64 [ 0, %.lr.ph270 ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store ptr %i.dg, ptr %11, align 8, !tbaa !230
  store i64 0, ptr %i.dh, align 8, !tbaa !158
  store i8 0, ptr %i.dg, align 8, !tbaa !58
  %i.hc = getelementptr inbounds nuw [40 x i8], ptr %i.hb, i64 %.020269 ; 3 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !248 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %i.di, ptr %12, align 8, !tbaa !230
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !149 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !158 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.hh, ptr %i.b, align 8, !tbaa !217
  %i.hi = icmp ugt i64 %i.hh, 15
  br i1 %i.hi, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.bc
  %i.hj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc94 unwind label %bb.bh  ; 2 uses

.noexc94:                                         ; preds = %.noexc.i
  store ptr %i.hj, ptr %12, align 8, !tbaa !149
  %i.hk = load i64, ptr %i.b, align 8, !tbaa !217
  store i64 %i.hk, ptr %i.di, align 8, !tbaa !58
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc94, %bb.bc
  %i.hl = phi ptr [ %i.hj, %.noexc94 ], [ %i.di, %bb.bc ] ; 2 uses
  switch i64 %i.hh, label %bb.be [
    i64 1, label %bb.bd
    i64 0, label %bb.bf
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i
  %i.hm = load i8, ptr %i.hf, align 1, !tbaa !58
  store i8 %i.hm, ptr %i.hl, align 1, !tbaa !58
  br label %bb.bf

bb.be:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hl, ptr align 1 %i.hf, i64 %i.hh, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %._crit_edge.i.i
  %i.hn = load i64, ptr %i.b, align 8, !tbaa !217 ; 2 uses
  store i64 %i.hn, ptr %i.dj, align 8, !tbaa !158
  %i.ho = load ptr, ptr %12, align 8, !tbaa !149
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hn
  store i8 0, ptr %i.hp, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.hq = add nuw i64 %.020269, 1                 ; 4 uses
  %i.hr = load ptr, ptr %i.dd, align 8, !tbaa !245
  %i.hs = load ptr, ptr %5, align 8, !tbaa !246   ; 2 uses
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = sdiv exact i64 %i.hv, 40
  %i.hx = icmp ult i64 %i.hq, %i.hw
  br i1 %i.hx, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hy = getelementptr inbounds nuw [40 x i8], ptr %i.hs, i64 %i.hq
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !248
  br label %bb.bi

bb.bh:                                            ; preds = %.noexc.i
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %.0 = phi i64 [ %i.hz, %bb.bg ], [ -1, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.ib = load i64, ptr %i.ar, align 8, !tbaa !158, !noalias !491 ; 3 uses
  %i.ic = icmp ugt i64 %i.hd, %i.ib
  br i1 %i.ic, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i95

bb.bj:                                            ; preds = %bb.bi
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i64 noundef %i.hd, i64 noundef %i.ib) #38
          to label %.noexc99 unwind label %.loopexit.split-lp

.noexc99:                                         ; preds = %bb.bj
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i95: ; preds = %bb.bi
  %i.id = sub i64 %.0, %i.hd
  store ptr %i.dk, ptr %13, align 8, !tbaa !230, !alias.scope !491
  %i.ie = load ptr, ptr %1, align 8, !tbaa !149, !noalias !491
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hd ; 2 uses
  %i.ig = sub nuw i64 %i.ib, %i.hd
  %spec.select.i.i.i96 = call noundef i64 @llvm.umin.i64(i64 %i.id, i64 %i.ig) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !491
  store i64 %spec.select.i.i.i96, ptr %i.a, align 8, !tbaa !217, !noalias !491
  %i.ih = icmp ugt i64 %spec.select.i.i.i96, 15
  br i1 %i.ih, label %.noexc10.i.i98, label %._crit_edge.i.i.i97

.noexc10.i.i98:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i95
  %i.ii = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc100 unwind label %.loopexit ; 2 uses

.noexc100:                                        ; preds = %.noexc10.i.i98
  store ptr %i.ii, ptr %13, align 8, !tbaa !149, !alias.scope !491
  %i.ij = load i64, ptr %i.a, align 8, !tbaa !217, !noalias !491
  store i64 %i.ij, ptr %i.dk, align 8, !tbaa !58, !alias.scope !491
  br label %._crit_edge.i.i.i97

._crit_edge.i.i.i97:                              ; preds = %.noexc100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i95
  %i.ik = phi ptr [ %i.ii, %.noexc100 ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i95 ] ; 2 uses
  switch i64 %spec.select.i.i.i96, label %bb.bl [
    i64 1, label %bb.bk
    i64 0, label %bb.bm
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i.i97
  %i.il = load i8, ptr %i.if, align 1, !tbaa !58
  store i8 %i.il, ptr %i.ik, align 1, !tbaa !58
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ik, ptr align 1 %i.if, i64 %spec.select.i.i.i96, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %._crit_edge.i.i.i97
  %i.im = load i64, ptr %i.a, align 8, !tbaa !217, !noalias !491 ; 2 uses
  store i64 %i.im, ptr %i.dl, align 8, !tbaa !158, !alias.scope !491
  %i.in = load ptr, ptr %13, align 8, !tbaa !149, !alias.scope !491
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.im
  store i8 0, ptr %i.io, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !491
  %i.ip = load ptr, ptr %11, align 8, !tbaa !149  ; 6 uses
  %i.iq = icmp eq ptr %i.ip, %i.dg
  %i.ir = load ptr, ptr %13, align 8, !tbaa !149  ; 5 uses
  %i.is = icmp eq ptr %i.ir, %i.dk                ; 2 uses
  br i1 %i.iq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i108: ; preds = %bb.bm
  br i1 %i.is, label %bb.bn, label %.thread.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i102: ; preds = %bb.bm
  br i1 %i.is, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i103

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i108
  %i.it = load i64, ptr %i.dl, align 8, !tbaa !158 ; 3 uses
  %i.iu = icmp ult i64 %i.it, 16
  call void @llvm.assume(i1 %i.iu)
  switch i64 %i.it, label %bb.bp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i106
    i64 1, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.iv = load i8, ptr %i.ir, align 1, !tbaa !58
  store i8 %i.iv, ptr %i.ip, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i106

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ip, ptr align 1 %i.ir, i64 %i.it, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i106: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.iw = load i64, ptr %i.dl, align 8, !tbaa !158 ; 2 uses
  store i64 %i.iw, ptr %i.dh, align 8, !tbaa !158
  %i.ix = load ptr, ptr %11, align 8, !tbaa !149
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iw
  store i8 0, ptr %i.iy, align 1, !tbaa !58
  %.pre.i107 = load ptr, ptr %13, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit110

.thread.i109:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i108
  store ptr %i.ir, ptr %11, align 8, !tbaa !149
  %i.iz = load <2 x i64>, ptr %i.dl, align 8, !tbaa !58
  store <2 x i64> %i.iz, ptr %i.dh, align 8, !tbaa !58
  br label %bb.br

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i103: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i102
end_hunk_0
begin_hunk_1_@_ZN3npy7pyparse10parse_dictENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
  store i8 0, ptr %i.jo, align 1, !tbaa !58
  %.pre.i119 = load ptr, ptr %14, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122

.thread.i121:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120
  store ptr %i.jh, ptr %11, align 8, !tbaa !149
  %i.jp = load <2 x i64>, ptr %i.dn, align 8, !tbaa !58
  store <2 x i64> %i.jp, ptr %i.dh, align 8, !tbaa !58
  br label %bb.bx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i115: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i114
  %i.jq = load i64, ptr %i.dg, align 8, !tbaa !58
  store ptr %i.jh, ptr %11, align 8, !tbaa !149
  %i.jr = load <2 x i64>, ptr %i.dn, align 8, !tbaa !58
  store <2 x i64> %i.jr, ptr %i.dh, align 8, !tbaa !58
  %.not.i116 = icmp eq ptr %i.jf, null
  br i1 %.not.i116, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i115
  store ptr %i.jf, ptr %14, align 8, !tbaa !149
  store i64 %i.jq, ptr %i.dm, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i115, %.thread.i121
  store ptr %i.dm, ptr %14, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118, %bb.bw, %bb.bx
  %i.js = phi ptr [ %.pre.i119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118 ], [ %i.jf, %bb.bw ], [ %i.dm, %bb.bx ]
  store i64 0, ptr %i.dn, align 8, !tbaa !158
  store i8 0, ptr %i.js, align 1, !tbaa !58
  %i.jt = load ptr, ptr %14, align 8, !tbaa !149  ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.dm
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122
  call void @_ZdlPv(ptr noundef %i.jt) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.jv = load i64, ptr %i.dh, align 8, !tbaa !158 ; 2 uses
  %i.jw = load ptr, ptr %11, align 8, !tbaa !149
  %i.jx = getelementptr i8, ptr %i.jw, i64 %i.jv
  %i.jy = getelementptr i8, ptr %i.jx, i64 -1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !58
  %i.ka = icmp eq i8 %i.jz, 44
  br i1 %i.ka, label %bb.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.kb = add i64 %i.jv, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.kb, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #40
  unreachable

.loopexit:                                        ; preds = %.noexc10.i.i98
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp:                               ; preds = %bb.bj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.cl

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit: ; preds = %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZN3npy7pyparse18get_value_from_mapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit
  %i.kf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit unwind label %bb.ck ; 9 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit: ; preds = %bb.cc
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !149 ; 6 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 4 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  %i.kj = load ptr, ptr %15, align 8, !tbaa !149  ; 6 uses
  %i.kk = icmp eq ptr %i.kj, %i.do                ; 2 uses
  br i1 %i.ki, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i133: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit
  br i1 %i.kk, label %bb.cd, label %.thread.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i127: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit
  br i1 %i.kk, label %bb.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i128

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i133
  %i.kl = load i64, ptr %i.dp, align 8, !tbaa !158 ; 3 uses
  %i.km = icmp ult i64 %i.kl, 16
  call void @llvm.assume(i1 %i.km)
  %.not21.i130 = icmp eq ptr %15, %i.kf
  br i1 %.not21.i130, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135, label %bb.ce, !prof !49

bb.ce:                                            ; preds = %bb.cd
  switch i64 %i.kl, label %bb.cg [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131
    i64 1, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.kn = load i8, ptr %i.kj, align 1, !tbaa !58
  store i8 %i.kn, ptr %i.kg, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kg, ptr align 1 %i.kj, i64 %i.kl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.ko = load i64, ptr %i.dp, align 8, !tbaa !158 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 %i.ko, ptr %i.kp, align 8, !tbaa !158
  %i.kq = load ptr, ptr %i.kf, align 8, !tbaa !149
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ko
  store i8 0, ptr %i.kr, align 1, !tbaa !58
  %.pre.i132 = load ptr, ptr %15, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135

.thread.i134:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i133
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store ptr %i.kj, ptr %i.kf, align 8, !tbaa !149
  %i.kt = load i64, ptr %i.dp, align 8, !tbaa !158
  store i64 %i.kt, ptr %i.ks, align 8, !tbaa !158
  %i.ku = load i64, ptr %i.do, align 8, !tbaa !58
  store i64 %i.ku, ptr %i.kh, align 8, !tbaa !58
  br label %bb.ci

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i128: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i127
  %i.kv = load i64, ptr %i.kh, align 8, !tbaa !58
  store ptr %i.kj, ptr %i.kf, align 8, !tbaa !149
  %i.kw = load i64, ptr %i.dp, align 8, !tbaa !158
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !158
  %i.ky = load i64, ptr %i.do, align 8, !tbaa !58
  store i64 %i.ky, ptr %i.kh, align 8, !tbaa !58
  %.not.i129 = icmp eq ptr %i.kg, null
  br i1 %.not.i129, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i128
  store ptr %i.kg, ptr %15, align 8, !tbaa !149
  store i64 %i.kv, ptr %i.do, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i128, %.thread.i134
  store ptr %i.do, ptr %15, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135: ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131, %bb.ch, %bb.ci
  %i.kz = phi ptr [ %.pre.i132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131 ], [ %i.kg, %bb.ch ], [ %i.do, %bb.ci ], [ %i.kj, %bb.cd ]
  store i64 0, ptr %i.dp, align 8, !tbaa !158
  store i8 0, ptr %i.kz, align 1, !tbaa !58
  %i.la = load ptr, ptr %15, align 8, !tbaa !149  ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.do
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135
  call void @_ZdlPv(ptr noundef %i.la) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.lc = load ptr, ptr %12, align 8, !tbaa !149  ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.di
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  call void @_ZdlPv(ptr noundef %i.lc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.le = load ptr, ptr %11, align 8, !tbaa !149  ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.dg
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  call void @_ZdlPv(ptr noundef %i.le) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.lg = load ptr, ptr %i.dd, align 8, !tbaa !245 ; 2 uses
  %i.lh = load ptr, ptr %5, align 8, !tbaa !246   ; 3 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = sdiv exact i64 %i.lk, 40
  %i.lm = icmp ult i64 %i.hq, %i.ll
  br i1 %i.lm, label %bb.bc, label %._crit_edge271, !llvm.loop !485

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

bb.ck:                                            ; preds = %bb.cc
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lp = load ptr, ptr %15, align 8, !tbaa !149  ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.do
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.ck
  call void @_ZdlPv(ptr noundef %i.lp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.cj
  %.pn = phi { ptr, i32 } [ %i.ln, %bb.cj ], [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %i.lo, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.cb, %bb.ca
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %i.ke, %bb.cb ], [ %lpad.phi, %bb.ca ] ; 2 uses
  %i.lr = load ptr, ptr %12, align 8, !tbaa !149  ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.di
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.cl
  call void @_ZdlPv(ptr noundef %i.lr) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.bh
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ia, %bb.bh ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.pn.pn, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.lt = load ptr, ptr %11, align 8, !tbaa !149  ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.dg
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  call void @_ZdlPv(ptr noundef %i.lt) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit171, %.loopexit.split-lp172, %.body, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit93, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %.pn44.pn159, %bb.aq ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.pn42, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit93 ], [ %.pn40, %.body ], [ %lpad.loopexit173, %.loopexit171 ], [ %lpad.loopexit.split-lp174, %.loopexit.split-lp172 ]
  call void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.co

bb.cn:                                            ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, %bb.a
  ret void

bb.co:                                            ; preds = %bb.cm, %bb.aa, %bb.z, %bb.w, %bb.v
  %.pn44.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn, %bb.cm ], [ %i.co, %bb.w ], [ %i.cr, %bb.aa ], [ %i.cq, %bb.z ], [ %i.cn, %bb.v ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #20
  resume { ptr, i32 } %.pn44.pn.pn.pn.pn

bb.cp:                                            ; preds = %bb.an, %bb.y
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3npy7pyparse9parse_strERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !149    ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !58
  %i.d = icmp eq i8 %i.c, 39
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !158  ; 4 uses
  %i.g = getelementptr i8, ptr %i.b, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !58
  %i.j = icmp eq i8 %i.i, 39
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.k = icmp eq i64 %i.f, 0
  br i1 %i.k, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i64 noundef 1, i64 noundef 0) #38, !noalias !494
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = add i64 %i.f, -2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !230, !alias.scope !494
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add i64 %i.f, -1
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %i.o) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !494
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !217, !noalias !494
  %i.p = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.p, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !149, !alias.scope !494
  %i.r = load i64, ptr %i.a, align 8, !tbaa !217, !noalias !494
  store i64 %i.r, ptr %i.m, align 8, !tbaa !58, !alias.scope !494
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = phi ptr [ %i.q, %.noexc10.i.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !58
  store i8 %i.t, ptr %i.s, align 1, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.n, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.u = load i64, ptr %i.a, align 8, !tbaa !217, !noalias !494 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !158, !alias.scope !494
  %i.w = load ptr, ptr %0, align 8, !tbaa !149, !alias.scope !494
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !494
  ret void

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.56)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.y) #20
  resume { ptr, i32 } %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN3npy11parse_descrENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef align 8 %0) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !158  ; 2 uses
  %i.e = icmp ult i64 %i.d, 3
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.57)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #20
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !149    ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !58    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !58    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !230, !alias.scope !498
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 2 uses
  %i.n = add i64 %i.d, -2                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !498
  store i64 %i.n, ptr %i.b, align 8, !tbaa !217, !noalias !498
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i
end_hunk_1
