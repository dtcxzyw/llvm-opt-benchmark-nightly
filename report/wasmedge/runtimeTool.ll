Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/runtimeTool?download=true
inline.NumInlined: 5090
inline.NumDeleted: 3520
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8WasmEdge6Driver4ToolERNS0_17DriverToolOptionsE:bb.a
          to label %bb.gj unwind label %_ZNSt11unique_lockISt12shared_mutexED2Ev.exit3.i295

_ZNSt11unique_lockISt12shared_mutexED2Ev.exit3.i295: ; preds = %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i294
  %i.um = landingpad { ptr, i32 }
          catch ptr null
  %i.un = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.sa) #26 ; 0 uses
  br label %.body

bb.gj:                                            ; preds = %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i294
  %i.uo = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.sa) #26 ; 0 uses
  %i.up = load i8, ptr %28, align 4, !tbaa !393, !range !65, !noundef !66
  %i.uq = trunc nuw i8 %i.up to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br i1 %i.uq, label %bb.gk, label %bb.je

bb.gk:                                            ; preds = %bb.gj
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.us = load i8, ptr %i.ur, align 8, !tbaa !64, !range !65, !noundef !66
  %i.ut = trunc nuw i8 %i.us to i1
  br i1 %i.ut, label %bb.gw, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gm, %bb.gl
  %i.uu = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.sa) #26, !noalias !396
  switch i32 %i.uu, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.gm
    i32 35, label %.invoke
  ]

.invoke:                                          ; preds = %bb.fs, %bb.gm, %bb.gi, %bb.gg, %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #27
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.gm
  invoke void @_ZNK8WasmEdge2VM2VM21unsafeGetFunctionListB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.436") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1960) %23)
          to label %_ZNK8WasmEdge2VM2VM15getFunctionListB5cxx11Ev.exit.i unwind label %_ZNSt11shared_lockISt12shared_mutexED2Ev.exit2.i.i

_ZNSt11shared_lockISt12shared_mutexED2Ev.exit2.i.i: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.uv = landingpad { ptr, i32 }
          catch ptr null
  %i.uw = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.sa) #26 ; 0 uses
  br label %.body

_ZNK8WasmEdge2VM2VM15getFunctionListB5cxx11Ev.exit.i: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.ux = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.sa) #26 ; 0 uses
  %i.uy = load ptr, ptr %2, align 8, !tbaa !397   ; 5 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !397 ; 4 uses
  %.not1315.i = icmp eq ptr %i.uy, %i.va
  br i1 %.not1315.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESC_EvT_SE_RSaIT0_E.exit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK8WasmEdge2VM2VM15getFunctionListB5cxx11Ev.exit.i, %.thread.i299
  %.018.i = phi i1 [ %.212.i, %.thread.i299 ], [ false, %_ZNK8WasmEdge2VM2VM15getFunctionListB5cxx11Ev.exit.i ] ; 2 uses
  %.sroa.04.016.i = phi ptr [ %i.vz, %.thread.i299 ], [ %i.uy, %_ZNK8WasmEdge2VM2VM15getFunctionListB5cxx11Ev.exit.i ] ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.04.016.i, i64 32
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !400, !nonnull !66, !align !80 ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.04.016.i, i64 8
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !71
  %i.vf = icmp eq i64 %i.ve, 6
  br i1 %i.vf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i307, label %.thread.i299

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i307: ; preds = %.lr.ph.i
  %i.vg = load ptr, ptr %.sroa.04.016.i, align 8, !tbaa !70 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 1
  %i.vi = xor i32 %i.vh, 1635021663
  %i.vj = getelementptr i8, ptr %i.vg, i64 4
  %i.vk = load i16, ptr %i.vj, align 1
  %i.vl = zext i16 %i.vk to i32
  %i.vm = xor i32 %i.vl, 29810
  %i.vn = or i32 %i.vi, %i.vm
  %i.vo = icmp ne i32 %i.vn, 0
  %i.vp = zext i1 %i.vo to i32
  %i.vq = icmp eq i32 %i.vp, 0
  br i1 %i.vq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i309, label %.thread.i299

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i309: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i307
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vc, i64 32
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !83
  %i.vu = load ptr, ptr %i.vr, align 8, !tbaa !84
  %i.vv = icmp eq ptr %i.vt, %i.vu
  br i1 %i.vv, label %bb.gn, label %.thread.i299

bb.gn:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i309
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !83
  %i.vy = load ptr, ptr %i.vc, align 8, !tbaa !84
  %.not14.i = icmp eq ptr %i.vx, %i.vy
  br i1 %.not14.i, label %._crit_edge.thread.i, label %.thread.i299

.thread.i299:                                     ; preds = %bb.gn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i309, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i307, %.lr.ph.i
  %.212.i = phi i1 [ true, %bb.gn ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i309 ], [ %.018.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i307 ], [ %.018.i, %.lr.ph.i ] ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.04.016.i, i64 40 ; 2 uses
  %.not13.i = icmp eq ptr %i.vz, %i.va
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.thread.i299
  br i1 %.212.i, label %._crit_edge.i.i.i301, label %._crit_edge.thread.i

._crit_edge.i.i.i301:                             ; preds = %._crit_edge.i
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !389 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.wc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.wc, ptr %3, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.wc, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false)
  %i.wd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 6, ptr %i.wd, align 8, !tbaa !71
  %i.we = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.we, align 2, !tbaa !61
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !86 ; 6 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !87
  %.not.i.i.i302 = icmp eq ptr %i.wg, %i.wi
  br i1 %.not.i.i.i302, label %bb.gs, label %bb.go

bb.go:                                            ; preds = %._crit_edge.i.i.i301
  %i.wj = icmp eq ptr %i.wb, %i.wg
  br i1 %i.wj, label %bb.gp, label %bb.gr

bb.gp:                                            ; preds = %bb.go
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wg, i64 16 ; 3 uses
  store ptr %i.wk, ptr %i.wg, align 8, !tbaa !74
  %i.wl = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.wc
  br i1 %i.wm, label %bb.gq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.wk, ptr noundef nonnull align 8 dereferenceable(7) %i.wc, i64 7, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.gp
  store ptr %i.wl, ptr %i.wg, align 8, !tbaa !70
  %i.wn = load i64, ptr %i.wc, align 8, !tbaa !61
  store i64 %i.wn, ptr %i.wk, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.gq
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  store i64 6, ptr %i.wo, align 8, !tbaa !71
  store ptr %i.wc, ptr %3, align 8, !tbaa !70
  store i64 0, ptr %i.wd, align 8, !tbaa !71
  store i8 0, ptr %i.wc, align 8, !tbaa !61
  %i.wp = load ptr, ptr %i.wf, align 8, !tbaa !86
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 32
  store ptr %i.wq, ptr %i.wf, align 8, !tbaa !86
  br label %bb.gt

bb.gr:                                            ; preds = %bb.go
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.wa, ptr %i.wb, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.gt unwind label %bb.gu

bb.gs:                                            ; preds = %._crit_edge.i.i.i301
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.wa, ptr %i.wb, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.gt unwind label %bb.gu

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.wr = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.ws = icmp eq ptr %i.wr, %i.wc
  br i1 %i.ws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i303: ; preds = %bb.gt
  %i.wt = load i64, ptr %i.wc, align 8, !tbaa !61
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wr, i64 noundef %i.wu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i304: ; preds = %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.pre.i305 = load ptr, ptr %2, align 8, !tbaa !89
  %.pre23.i = load ptr, ptr %i.uz, align 8, !tbaa !90
  br label %._crit_edge.thread.i

bb.gu:                                            ; preds = %bb.gs, %bb.gr
  %i.wv = landingpad { ptr, i32 }
          catch ptr null
  %i.ww = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.wx = icmp eq ptr %i.ww, %i.wc
  br i1 %i.wx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %bb.gu
  %i.wy = load i64, ptr %i.wc, align 8, !tbaa !61
  %i.wz = add i64 %i.wy, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.wz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESaISC_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.body

._crit_edge.thread.i:                             ; preds = %bb.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i304, %._crit_edge.i
  %.345.i = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i304 ], [ false, %._crit_edge.i ], [ true, %bb.gn ] ; 2 uses
  %i.xa = phi ptr [ %.pre23.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i304 ], [ %i.va, %._crit_edge.i ], [ %i.va, %bb.gn ] ; 2 uses
  %i.xb = phi ptr [ %.pre.i305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i304 ], [ %i.uy, %._crit_edge.i ], [ %i.uy, %bb.gn ] ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.xb, %i.xa
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESC_EvT_SE_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.thread.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.xh, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEEEvPT_.exit.i.i.i.i ], [ %i.xb, %._crit_edge.thread.i ] ; 3 uses
  %i.xc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.xe = icmp eq ptr %i.xc, %i.xd
  br i1 %i.xe, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.xf = load i64, ptr %i.xd, align 8, !tbaa !61
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xg) #30
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.xh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.xh, %i.xa
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !89
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESC_EvT_SE_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESC_EvT_SE_RSaIT0_E.exit.i.i: ; preds = %_ZNK8WasmEdge2VM2VM15getFunctionListB5cxx11Ev.exit.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge.thread.i
  %.345.i587 = phi i1 [ %.345.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i.i ], [ %.345.i, %._crit_edge.thread.i ], [ false, %_ZNK8WasmEdge2VM2VM15getFunctionListB5cxx11Ev.exit.i ]
  %i.xi = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.xb, %._crit_edge.thread.i ], [ %i.uy, %_ZNK8WasmEdge2VM2VM15getFunctionListB5cxx11Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.xi, null
  br i1 %.not.i.i1.i.i, label %"_ZZN8WasmEdge6Driver4ToolERNS0_17DriverToolOptionsEENK3$_0clEv.exit", label %bb.gv

bb.gv:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESC_EvT_SE_RSaIT0_E.exit.i.i
  %i.xj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !91
  %i.xl = ptrtoint ptr %i.xk to i64
  %i.xm = ptrtoint ptr %i.xi to i64
  %i.xn = sub i64 %i.xl, %i.xm
  call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef %i.xn) #30
  br label %"_ZZN8WasmEdge6Driver4ToolERNS0_17DriverToolOptionsEENK3$_0clEv.exit"

"_ZZN8WasmEdge6Driver4ToolERNS0_17DriverToolOptionsEENK3$_0clEv.exit": ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8WasmEdge3AST12FunctionTypeEESC_EvT_SE_RSaIT0_E.exit.i.i, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.gw

bb.gw:                                            ; preds = %"_ZZN8WasmEdge6Driver4ToolERNS0_17DriverToolOptionsEENK3$_0clEv.exit", %bb.gk
  %i.xo = phi i1 [ false, %bb.gk ], [ %.345.i587, %"_ZZN8WasmEdge6Driver4ToolERNS0_17DriverToolOptionsEENK3$_0clEv.exit" ]
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !92 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !86
  %i.xt = ptrtoint ptr %i.xs to i64
  %i.xu = ptrtoint ptr %i.xq to i64
  %i.xv = sub i64 %i.xt, %i.xu
  %i.xw = ashr exact i64 %i.xv, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %30, ptr noundef nonnull align 8 dereferenceable(40) %21)
          to label %bb.gx unwind label %.loopexit.split-lp.loopexit.split-lp

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  store i64 4, ptr %32, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr @.str.4, ptr %i.xx, align 8
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull align 8 dereferenceable(16) %32, i8 noundef zeroext 2)
          to label %_ZNSt10filesystem7__cxx116u8pathISt17basic_string_viewIcSt11char_traitsIcEENS0_4pathEcEES6_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNSt10filesystem7__cxx116u8pathISt17basic_string_viewIcSt11char_traitsIcEENS0_4pathEcEES6_RKT_.exit: ; preds = %bb.gx
  %i.xy = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114path17replace_extensionERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull align 8 dereferenceable(40) %31)
          to label %bb.gy unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.gy:                                            ; preds = %_ZNSt10filesystem7__cxx116u8pathISt17basic_string_viewIcSt11char_traitsIcEENS0_4pathEcEES6_RKT_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.xz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  store ptr %i.xz, ptr %29, align 8, !tbaa !74, !alias.scope !401
  %i.ya = load ptr, ptr %i.xy, align 8, !tbaa !70, !noalias !401 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !71, !noalias !401 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !401
  store i64 %i.yc, ptr %i.a, align 8, !tbaa !63, !noalias !401
  %i.yd = icmp ugt i64 %i.yc, 15
  br i1 %i.yd, label %.noexc.i.i315, label %._crit_edge.i.i.i314

.noexc.i.i315:                                    ; preds = %bb.gy
  %i.ye = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc316 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc316:                                        ; preds = %.noexc.i.i315
  store ptr %i.ye, ptr %29, align 8, !tbaa !70, !alias.scope !401
  %i.yf = load i64, ptr %i.a, align 8, !tbaa !63, !noalias !401
  store i64 %i.yf, ptr %i.xz, align 8, !tbaa !61, !alias.scope !401
  br label %._crit_edge.i.i.i314

._crit_edge.i.i.i314:                             ; preds = %.noexc316, %bb.gy
  %i.yg = phi ptr [ %i.ye, %.noexc316 ], [ %i.xz, %bb.gy ] ; 2 uses
  switch i64 %i.yc, label %bb.ha [
    i64 1, label %bb.gz
    i64 0, label %bb.hb
  ]

bb.gz:                                            ; preds = %._crit_edge.i.i.i314
  %i.yh = load i8, ptr %i.ya, align 1, !tbaa !61
  store i8 %i.yh, ptr %i.yg, align 1, !tbaa !61
  br label %bb.hb

bb.ha:                                            ; preds = %._crit_edge.i.i.i314
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yg, ptr align 1 %i.ya, i64 %i.yc, i1 false)
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %._crit_edge.i.i.i314
  %i.yi = load i64, ptr %i.a, align 8, !tbaa !63, !noalias !401 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.yi, ptr %i.yj, align 8, !tbaa !71, !alias.scope !401
  %i.yk = load ptr, ptr %29, align 8, !tbaa !70, !alias.scope !401
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.yi
  store i8 0, ptr %i.yl, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !401
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !92 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !86
  %i.yq = ptrtoint ptr %i.yp to i64
  %i.yr = ptrtoint ptr %i.yn to i64
  %i.ys = sub i64 %i.yq, %i.yr
  %i.yt = ashr exact i64 %i.ys, 5
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !92 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !86
  %i.yy = ptrtoint ptr %i.yx to i64
  %i.yz = ptrtoint ptr %i.yv to i64
  %i.za = sub i64 %i.yy, %i.yz
  %i.zb = ashr exact i64 %i.za, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.zc = getelementptr inbounds nuw i8, ptr %i.si, i64 952
  store ptr %i.yv, ptr %1, align 8, !tbaa !403
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.zb, ptr %i.zd, align 8, !tbaa !404
  invoke void @_ZN8WasmEdge4Host4WASI7Environ4initEN5cxx204spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm18446744073709551615EEERSB_SC_SC_(ptr noundef nonnull align 8 dereferenceable(344) %i.zc, ptr %i.xq, i64 %i.xw, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr %i.yn, i64 %i.yt, ptr noundef nonnull byval(%"struct.cxx20::span") align 8 %1)
          to label %_ZN8WasmEdge4Host10WasiModule4initEN5cxx204spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm18446744073709551615EEERSA_SB_SB_.exit unwind label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ze = landingpad { ptr, i32 }
          catch ptr null
  %i.zf = extractvalue { ptr, i32 } %i.ze, 0
  call void @__clang_call_terminate(ptr %i.zf) #28
  unreachable

_ZN8WasmEdge4Host10WasiModule4initEN5cxx204spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm18446744073709551615EEERSA_SB_SB_.exit: ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.zg = load ptr, ptr %29, align 8, !tbaa !70   ; 2 uses
  %i.zh = icmp eq ptr %i.zg, %i.xz
  br i1 %i.zh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %_ZN8WasmEdge4Host10WasiModule4initEN5cxx204spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm18446744073709551615EEERSA_SB_SB_.exit
  %i.zi = load i64, ptr %i.xz, align 8, !tbaa !61
  %i.zj = add i64 %i.zi, 1
  call void @_ZdlPvm(ptr noundef %i.zg, i64 noundef %i.zj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %_ZN8WasmEdge4Host10WasiModule4initEN5cxx204spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm18446744073709551615EEERSA_SB_SB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  %i.zk = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 2 uses
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i321 = icmp eq ptr %i.zl, null
  br i1 %.not.i.i.i321, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i322, label %bb.hd

bb.hd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.zk, ptr noundef nonnull %i.zl) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i322

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i322: ; preds = %bb.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  %i.zm = load ptr, ptr %31, align 8, !tbaa !70   ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.zo = icmp eq ptr %i.zm, %i.zn
  br i1 %i.zo, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i322
  %i.zp = load i64, ptr %i.zn, align 8, !tbaa !61
  %i.zq = add i64 %i.zp, 1
  call void @_ZdlPvm(ptr noundef %i.zm, i64 noundef %i.zq) #30
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit326

_ZNSt10filesystem7__cxx114pathD2Ev.exit326:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.zr = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i327 = icmp eq ptr %i.zs, null
  br i1 %.not.i.i.i327, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328, label %bb.he

bb.he:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit326
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.zr, ptr noundef nonnull %i.zs) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328: ; preds = %bb.he, %_ZNSt10filesystem7__cxx114pathD2Ev.exit326
  %i.zt = load ptr, ptr %30, align 8, !tbaa !70   ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.zv = icmp eq ptr %i.zt, %i.zu
  br i1 %i.zv, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328
  %i.zw = load i64, ptr %i.zu, align 8, !tbaa !61
  %i.zx = add i64 %i.zw, 1
  call void @_ZdlPvm(ptr noundef %i.zt, i64 noundef %i.zx) #30
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit332

_ZNSt10filesystem7__cxx114pathD2Ev.exit332:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br i1 %i.xo, label %bb.hf, label %bb.ic

bb.hf:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit332
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  invoke void @_ZN8WasmEdge2VM2VM12asyncExecuteESt17basic_string_viewIcSt11char_traitsIcEEN5cxx204spanIKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEELm18446744073709551615EEENS7_IKNS_7ValTypeELm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::Async") align 8 %33, ptr noundef nonnull align 8 dereferenceable(1960) %23, i64 6, ptr nonnull @.str.5, ptr null, i64 0, ptr noundef nonnull byval(%"struct.cxx20::span.416") align 8 %34)
          to label %bb.hg unwind label %.loopexit.split-lp.loopexit.split-lp

bb.hg:                                            ; preds = %bb.hf
  %i.zy = load i8, ptr %i.ld, align 8, !tbaa !385, !range !65, !noundef !66
  %i.zz = trunc nuw i8 %i.zy to i1
  br i1 %i.zz, label %bb.hh, label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE6cancelEv.exit

bb.hh:                                            ; preds = %bb.hg
  %i.aaa = load ptr, ptr %33, align 8, !tbaa !97  ; 6 uses
  %.not.i.i.i333 = icmp eq ptr %i.aaa, null
  br i1 %.not.i.i.i333, label %bb.hi, label %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i

bb.hi:                                            ; preds = %bb.hh
  invoke void @_ZSt20__throw_future_errori(i32 noundef 3) #27
          to label %.noexc334 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc334:                                        ; preds = %bb.hi
  unreachable

_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i: ; preds = %bb.hh
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16 ; 6 uses
  %i.aac = load atomic i32, ptr %i.aab acquire, align 4
  %i.aad = and i32 %i.aac, 2147483647
  %i.aae = icmp eq i32 %i.aad, 1
  br i1 %i.aae, label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE6cancelEv.exit, label %bb.hj

bb.hj:                                            ; preds = %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i
  %i.aaf = load ptr, ptr %i.aaa, align 8, !tbaa !99
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeE:bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %.0195, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.a, %i.cz
  %i.db = icmp slt i64 %i.da, 1
  br i1 %i.db, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.39) #27
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.dc = icmp eq i8 %i.cq, 123
  br i1 %i.dc, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.40) #27
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.dd = load i8, ptr %i.cy, align 1, !tbaa !61
  switch i8 %i.dd, label %_ZN3fmt3v116detail11parse_alignEc.exit97.thread [
    i8 60, label %_ZN3fmt3v116detail11parse_alignEc.exit97
    i8 62, label %bb.cb
    i8 94, label %bb.cc
  ]

bb.cb:                                            ; preds = %bb.ca
  br label %_ZN3fmt3v116detail11parse_alignEc.exit97

bb.cc:                                            ; preds = %bb.ca
  br label %_ZN3fmt3v116detail11parse_alignEc.exit97

_ZN3fmt3v116detail11parse_alignEc.exit97:         ; preds = %bb.ca, %bb.cb, %bb.cc
  %.0.i96 = phi i16 [ 1, %bb.ca ], [ 3, %bb.cc ], [ 2, %bb.cb ]
  %i.de = icmp eq i32 %.sroa.0146.0, 0
  br i1 %i.de, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit99, label %_ZN3fmt3v116detail11parse_alignEc.exit97.thread

_ZN3fmt3v116detail11parse_alignEc.exit97.thread:  ; preds = %bb.ca, %_ZN3fmt3v116detail11parse_alignEc.exit97
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.39) #27
  unreachable

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit99: ; preds = %_ZN3fmt3v116detail11parse_alignEc.exit97
  %i.df = trunc nuw nsw i64 %i.cw to i8
  %i.dg = add nuw nsw i8 %i.df, 1
  store i8 %i.dg, ptr %i.s, align 1, !tbaa !192
  %cond = icmp eq i64 %i.cw, 0
  br i1 %cond, label %bb.cd, label %.lr.ph.i

bb.cd:                                            ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit99
  %i.dh = load i8, ptr %.0195, align 1, !tbaa !61
  store i8 %i.dh, ptr %i.r, align 1, !tbaa !61
  store i8 0, ptr %i.v, align 4, !tbaa !61
  br label %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit

.lr.ph.i:                                         ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit99
  %i.di = load i8, ptr %.0195, align 1, !tbaa !61
  store i8 %i.di, ptr %i.r, align 1, !tbaa !61
  %i.dj = getelementptr inbounds nuw i8, ptr %.0195, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !61
  store i8 %i.dk, ptr %i.w, align 4, !tbaa !61
  %exitcond.not.i.1 = icmp eq i64 %i.cw, 1
  br i1 %exitcond.not.i.1, label %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.0195, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !61
  store i8 %i.dm, ptr %i.x, align 1, !tbaa !61
  %exitcond.not.i.2 = icmp eq i64 %i.cw, 2
  br i1 %exitcond.not.i.2, label %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.dn = getelementptr inbounds nuw i8, ptr %.0195, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !61
  store i8 %i.do, ptr %i.y, align 2, !tbaa !61
  br label %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit

_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.2, %.lr.ph.i.3, %bb.cd
  %i.dp = load i16, ptr %i.l, align 1
  %i.dq = and i16 %i.dp, -16
  %i.dr = or disjoint i16 %i.dq, %.0.i96
  store i16 %i.dr, ptr %i.l, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit72, %_ZN3fmt3v116detail15parse_precisionIcEEPKT_S5_S5_RiRNS1_7arg_refIS3_EERNS0_26basic_format_parse_contextIS3_EE.exit, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit68, %bb.y, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit64, %bb.o, %_ZN3fmt3v116detail11parse_alignEc.exit61
  %.1196 = phi ptr [ %i.ds, %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %i.ad, %_ZN3fmt3v116detail11parse_alignEc.exit61 ], [ %i.ai, %bb.o ], [ %i.am, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit64 ], [ %i.as, %bb.y ], [ %i.au, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit68 ], [ %i.ba, %_ZN3fmt3v116detail15parse_precisionIcEEPKT_S5_S5_RiRNS1_7arg_refIS3_EERNS0_26basic_format_parse_contextIS3_EE.exit ], [ %i.be, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit72 ] ; 4 uses
  %.sroa.0146.1 = phi i32 [ 1, %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit ], [ 1, %_ZN3fmt3v116detail11parse_alignEc.exit61 ], [ 2, %bb.o ], [ 3, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit64 ], [ 4, %bb.y ], [ 5, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit68 ], [ 6, %_ZN3fmt3v116detail15parse_precisionIcEEPKT_S5_S5_RiRNS1_7arg_refIS3_EERNS0_26basic_format_parse_contextIS3_EE.exit ], [ 7, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit72 ]
  %i.dt = icmp eq ptr %.1196, %1
  br i1 %i.dt, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.du = load i8, ptr %.1196, align 1, !tbaa !61
  br label %bb.d, !llvm.loop !563

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit.sink.split: ; preds = %bb.bs, %bb.bp, %bb.bm, %bb.bj, %.loopexit204, %.loopexit203, %.loopexit202, %.loopexit201, %.loopexit200, %bb.ap, %.loopexit, %bb.aj
  %.sink = phi i8 [ 3, %bb.bp ], [ 3, %bb.aj ], [ 4, %.loopexit ], [ 5, %bb.ap ], [ 6, %.loopexit200 ], [ 1, %.loopexit201 ], [ 2, %.loopexit202 ], [ 3, %.loopexit203 ], [ 4, %.loopexit204 ], [ 7, %bb.bj ], [ 2, %bb.bm ], [ 1, %bb.bs ]
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %.sink, ptr %i.dv, align 8, !tbaa !205
  %i.dw = getelementptr inbounds nuw i8, ptr %.0195, i64 1
  br label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit: ; preds = %bb.bv, %bb.ce, %bb.j, %bb.p, %bb.ab, %bb.ag, %bb.d, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit.sink.split, %bb.u, %bb.ak, %bb.an, %bb.aq, %bb.at, %bb.aw, %bb.az, %bb.bc, %bb.bf, %bb.bk, %bb.bn, %bb.bq, %bb.bt, %bb.c
  %.1 = phi ptr [ %0, %bb.c ], [ %.0195, %bb.bt ], [ %.0195, %bb.bc ], [ %.0195, %bb.bf ], [ %.0195, %bb.bk ], [ %.0195, %bb.bn ], [ %.0195, %bb.u ], [ %.0195, %bb.bq ], [ %i.dw, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit.sink.split ], [ %.0195, %bb.ak ], [ %.0195, %bb.an ], [ %.0195, %bb.aq ], [ %.0195, %bb.at ], [ %.0195, %bb.aw ], [ %.0195, %bb.az ], [ %.0195, %bb.ab ], [ %.0195, %bb.p ], [ %.0195, %bb.j ], [ %.1196, %bb.ce ], [ %.0195, %bb.bv ], [ %.0195, %bb.d ], [ %.0195, %bb.ag ]
  ret ptr %.1
}

; Function Attrs: noreturn
declare void @_ZN3fmt3v1112report_errorEPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v116detail18parse_dynamic_specIcEEPKT_S5_S5_RiRNS1_7arg_refIS3_EERNS0_26basic_format_parse_contextIS3_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #9 comdat {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::dynamic_spec_id_handler", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !61      ; 3 uses
  %i.b = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.e = xor i64 %i.d, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.g = sub i64 %i.c, %i.d
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.a to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i31 = icmp eq ptr %i.j, %1
  br i1 %.not34.i31, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !21

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %.0.i33 = phi ptr [ %i.p, %bb.c ], [ %0, %bb.b ]
  %.027.i32 = phi i32 [ %i.q, %bb.c ], [ 0, %bb.b ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !61    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !21

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !21

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i32, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.q, %bb.c ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i33, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.e, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !61
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ugt i64 %i.ae, 2147483647
  %.not16 = icmp eq i32 %.lcssa, -1
  %or.cond25 = select i1 %i.af, i1 true, i1 %.not16
  br i1 %or.cond25, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.not16.old = icmp eq i32 %.lcssa, -1
  br i1 %.not16.old, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !73
  br label %bb.p

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.42) #27
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.ag = icmp eq i8 %i.a, 123
  br i1 %i.ag, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %4, ptr %5, align 8, !tbaa !564
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ai, align 8, !tbaa !565
  %.not = icmp eq ptr %i.ah, %1
  br i1 %.not, label %_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !61
  switch i8 %i.aj, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = call noundef ptr @_ZN3fmt3v116detail15do_parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_(ptr noundef nonnull %i.ah, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !226 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE7on_autoEv.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.45) #27
  unreachable

_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE7on_autoEv.exit.i: ; preds = %bb.k
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !226
  store i32 1, ptr %3, align 8, !tbaa !195
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.am, ptr %.sroa.42.0..sroa_idx.i.i, align 8
  br label %_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit

_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit: ; preds = %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE7on_autoEv.exit.i, %bb.j, %bb.h
  %.022 = phi ptr [ %i.ah, %bb.h ], [ %i.ak, %bb.j ], [ %i.ah, %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE7on_autoEv.exit.i ] ; 3 uses
  %.not15 = icmp eq ptr %.022, %1
  br i1 %.not15, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit
  %i.ap = load i8, ptr %.022, align 1, !tbaa !61
  %i.aq = icmp eq i8 %i.ap, 125
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.022, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit
  call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.43) #27
  unreachable

bb.p:                                             ; preds = %bb.f, %bb.g, %bb.n
  %.0 = phi ptr [ %i.ar, %bb.n ], [ %.lcssa.i, %bb.f ], [ %0, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v116detail15do_parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !61      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !21

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !61    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !21

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !21

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !61
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !61
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.43) #27
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !568, !nonnull !66, !align !80 ; 2 uses
  store i32 1, ptr %i.ak, align 8, !tbaa !195
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %.021, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.al = load ptr, ptr %2, align 8, !tbaa !569, !nonnull !66, !align !80
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !226
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.44) #27
  unreachable

_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.am, align 8, !tbaa !226
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ap = and i8 %i.c, -33
  %i.aq = add i8 %i.ap, -65
  %or.cond10.i = icmp ult i8 %i.aq, 26
  %i.ar = icmp eq i8 %i.c, 95
  %i.as = or i1 %i.ar, %or.cond10.i
  br i1 %i.as, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.at = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.at  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.au, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.43) #27
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.av, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !566

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.aw = phi ptr [ %i.av, %.critedge4 ], [ %i.au, %.critedge4.preheader ] ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !61  ; 3 uses
  %i.ay = and i8 %i.ax, -33
  %i.az = add i8 %i.ay, -65
  %or.cond10.i32 = icmp ult i8 %i.az, 26
  %i.ba = icmp eq i8 %i.ax, 95
  %i.bb = or i1 %i.ba, %or.cond10.i32
  %i.bc = add i8 %i.ax, -48
  %or.cond31 = icmp ult i8 %i.bc, 10
  %or.cond38 = or i1 %or.cond31, %i.bb
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !566

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !566

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.aw, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bd = ptrtoint ptr %.lcssa40 to i64
  %i.be = ptrtoint ptr %0 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !568, !nonnull !66, !align !80 ; 3 uses
  store i32 2, ptr %i.bh, align 8, !tbaa !195
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %0, ptr %.sroa.45.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.bf, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !61
  %i.bi = load ptr, ptr %2, align 8, !tbaa !569, !nonnull !66, !align !80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i32 -1, ptr %i.bj, align 8, !tbaa !226
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS1_13width_checkerENS0_16basic_format_argINS0_7contextEEEEEiT0_(ptr noundef byval(%"class.fmt::v11::basic_format_arg") align 16 %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !202
  switch i32 %i.b, label %bb.t [
    i32 15, label %bb.s
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.g
    i32 5, label %bb.h
end_hunk_1
