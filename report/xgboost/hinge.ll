Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/hinge?download=true
inline.NumInlined: 1043
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS2_3obj8HingeObj11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_:bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.l) #29
          to label %.noexc9 unwind label %bb.n

.noexc9:                                          ; preds = %bb.d
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !93
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.e, label %bb.o

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.n = load ptr, ptr %8, align 8, !tbaa !93
  store ptr null, ptr %8, align 8, !tbaa !93
  %i.o = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !93
  store ptr %i.n, ptr %0, align 8, !tbaa !93
  %.not.i.i10 = icmp eq ptr %i.o, null
  br i1 %.not.i.i10, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %.pr = load ptr, ptr %8, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.q = icmp eq i32 %i.g, %i.p
  br i1 %i.q, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @__cxa_begin_catch(ptr %i.f) #18 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #18 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i11, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.t) #29
          to label %.noexc12 unwind label %bb.l

.noexc12:                                         ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13:        ; preds = %bb.h
  %i.u = load ptr, ptr %0, align 8, !tbaa !93
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.v = load ptr, ptr %7, align 8, !tbaa !93
  store ptr null, ptr %7, align 8, !tbaa !93
  %i.w = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !93
  store ptr %i.v, ptr %0, align 8, !tbaa !93
  %.not.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i14, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %.pr21 = load ptr, ptr %7, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not.i16 = icmp eq ptr %.pr21, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  %i.y = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #18 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.p

bb.n:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #18 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.p

bb.p:                                             ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit, %bb.o, %bb.m
  ret void

bb.q:                                             ; preds = %bb.n, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.e, %bb.g ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.n, %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_ENKUlOSL_E_clINS_6common7Range1dEEEDaSP_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !95     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !96   ; 5 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge12.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !238, !nonnull !88, !align !89
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34   ; 15 uses
  %.not = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !88, !align !89 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr i8, ptr %i.h, i64 16       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 216 ; 2 uses
  br i1 %.not, label %._crit_edge12.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.t = load i64, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.preheader.lr.ph.split.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.a)
  %i.v = add i64 %i.f, -1                         ; 2 uses
  %i.w = shl i64 %i.f, 3
  %i.x = shl i64 %i.a, 2                          ; 2 uses
  %i.y = shl i64 %i.f, 2                          ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 10
  %mul.result = shl i64 %i.v, 3
  %mul.overflow = icmp ugt i64 %i.v, 2305843009213693951
  %n.vec = and i64 %i.f, 4611686018427387902      ; 3 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br label %.preheader

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  %i.z = load i64, ptr %i.k, align 8, !tbaa !34   ; 4 uses
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !75  ; 3 uses
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !34  ; 4 uses
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !75  ; 3 uses
  %i.af = load i64, ptr %i.q, align 8, !tbaa !34  ; 4 uses
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !72  ; 3 uses
  %i.ai = add i64 %i.f, -1                        ; 2 uses
  %i.aj = mul i64 %i.af, %i.a
  %i.ak = shl i64 %i.aj, 3
  %scevgep51 = getelementptr i8, ptr %i.ah, i64 %i.ak ; 3 uses
  %i.al = shl i64 %i.c, 3
  %i.am = add i64 %i.al, -8
  %i.an = mul i64 %i.af, %i.am
  %i.ao = shl i64 %i.f, 3
  %i.ap = getelementptr i8, ptr %i.ah, i64 %i.an
  %scevgep52 = getelementptr i8, ptr %i.ap, i64 %i.ao ; 3 uses
  %2 = shl i64 %i.af, 3                           ; 2 uses
  %scevgep53 = getelementptr i8, ptr %i.h, i64 20
  %i.aq = mul i64 %i.z, %i.a
  %i.ar = shl i64 %i.aq, 2
  %scevgep54 = getelementptr i8, ptr %i.ab, i64 %i.ar
  %i.as = shl i64 %i.c, 2
  %i.at = add i64 %i.as, -4                       ; 2 uses
  %i.au = mul i64 %i.z, %i.at
  %i.av = shl i64 %i.f, 2                         ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ab, i64 %i.au
  %scevgep55 = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ax = mul i64 %i.ac, %i.a
  %i.ay = shl i64 %i.ax, 2
  %scevgep56 = getelementptr i8, ptr %i.ae, i64 %i.ay
  %i.az = mul i64 %i.ac, %i.at
  %i.ba = getelementptr i8, ptr %i.ae, i64 %i.az
  %scevgep57 = getelementptr i8, ptr %i.ba, i64 %i.av
  %min.iters.check74 = icmp ult i64 %i.f, 12
  %ident.check44 = icmp ne i64 %i.ag, 1
  %ident.check45 = icmp ne i64 %i.aa, 1
  %ident.check46 = icmp ne i64 %i.ad, 1
  %mul.result48 = shl i64 %i.ai, 3
  %mul.overflow49 = icmp ugt i64 %i.ai, 2305843009213693951
  %i.bb = or i1 %ident.check44, %ident.check45
  %i.bc = or i1 %i.bb, %ident.check46
  %invariant.op = or i1 %mul.overflow49, %i.bc
  %bound058 = icmp ult ptr %scevgep51, %scevgep53
  %bound159 = icmp ult ptr %i.j, %scevgep52
  %found.conflict60 = and i1 %bound058, %bound159
  %bound061 = icmp ult ptr %scevgep51, %scevgep55
  %bound162 = icmp ult ptr %scevgep54, %scevgep52
  %found.conflict63 = and i1 %bound061, %bound162
  %stride.check64 = icmp slt i64 %2, 0
  %3 = or i1 %found.conflict63, %stride.check64
  %.mask.a = and i64 %i.z, 2305843009213693952
  %stride.check65 = icmp ne i64 %.mask.a, 0
  %i.bd = or i1 %3, %stride.check65
  %conflict.rdx66 = or i1 %found.conflict60, %i.bd
  %bound067 = icmp ult ptr %scevgep51, %scevgep57
  %bound168 = icmp ult ptr %scevgep56, %scevgep52
  %found.conflict69 = and i1 %bound067, %bound168
  %stride.check70 = icmp slt i64 %2, 0
  %4 = or i1 %found.conflict69, %stride.check70
  %.mask88 = and i64 %i.ac, 2305843009213693952
  %stride.check71 = icmp ne i64 %.mask88, 0
  %i.be = or i1 %4, %stride.check71
  %conflict.rdx72 = or i1 %conflict.rdx66, %i.be
  %n.vec76 = and i64 %i.f, 4611686018427387902    ; 3 uses
  %cmp.n86 = icmp eq i64 %i.f, %n.vec76
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.split.us.us, %.preheader.lr.ph.split.split.us
  %.0810.us = phi i64 [ %i.a, %.preheader.lr.ph.split.split.us ], [ %i.db, %._crit_edge.split.us.us ] ; 4 uses
  %i.bf = mul i64 %i.z, %.0810.us
  %i.bg = getelementptr [4 x i8], ptr %i.ab, i64 %i.bf ; 2 uses
  %i.bh = mul i64 %i.ac, %.0810.us
  %i.bi = getelementptr [4 x i8], ptr %i.ae, i64 %i.bh ; 2 uses
  %i.bj = mul i64 %i.af, %.0810.us
  %i.bk = getelementptr [8 x i8], ptr %i.ah, i64 %i.bj ; 4 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 %mul.result48
  %i.bm = icmp ult ptr %i.bl, %i.bk
  %.reass = or i1 %i.bm, %invariant.op
  %or.cond = select i1 %min.iters.check74, i1 true, i1 %.reass
  %brmerge = select i1 %or.cond, i1 true, i1 %conflict.rdx72
  br i1 %brmerge, label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %.preheader.us
  %i.bn = load float, ptr %i.j, align 8, !tbaa !58, !alias.scope !239
  %broadcast.splatinsert77 = insertelement <2 x float> poison, float %i.bn, i64 0 ; 2 uses
  %broadcast.splat78 = shufflevector <2 x float> %broadcast.splatinsert77, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fpext <2 x float> %broadcast.splat78 to <2 x double>
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph75
  %index80 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body79 ] ; 4 uses
  %i.bp = getelementptr [4 x i8], ptr %i.bg, i64 %index80
  %wide.load81 = load <2 x float>, ptr %i.bp, align 4, !tbaa !58, !alias.scope !240
  %i.bq = getelementptr [4 x i8], ptr %i.bi, i64 %index80
  %wide.load82 = load <2 x float>, ptr %i.bq, align 4, !tbaa !58, !alias.scope !241
  %i.br = fpext <2 x float> %wide.load82 to <2 x double>
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> splat (double 2.000000e+00), <2 x double> splat (double -1.000000e+00)) ; 2 uses
  %i.bt = fpext <2 x float> %wide.load81 to <2 x double>
  %i.bu = fmul <2 x double> %i.bs, %i.bt
  %i.bv = fcmp olt <2 x double> %i.bu, splat (double 1.000000e+00)
  %i.bw = fneg <2 x double> %i.bs
  %i.bx = fmul <2 x double> %i.bo, %i.bw
  %i.by = fptrunc <2 x double> %i.bx to <2 x float>
  %i.bz = getelementptr [8 x i8], ptr %i.bk, i64 %index80
  %i.ca = shufflevector <2 x i1> %i.bv, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cb = shufflevector <2 x float> %i.by, <2 x float> %broadcast.splatinsert77, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.cc = bitcast <4 x float> %i.cb to <4 x i32>
  %interleaved.vec83 = select <4 x i1> %i.ca, <4 x i32> %i.cc, <4 x i32> <i32 0, i32 8388608, i32 0, i32 8388608>
  store <4 x i32> %interleaved.vec83, ptr %i.bz, align 4, !tbaa !58, !alias.scope !242, !noalias !243
  %index.next84 = add nuw i64 %index80, 2         ; 2 uses
  %i.cd = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.cd, label %middle.block85, label %vector.body79, !llvm.loop !227

middle.block85:                                   ; preds = %vector.body79
  br i1 %cmp.n86, label %._crit_edge.split.us.us, label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader

_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader: ; preds = %.preheader.us, %middle.block85
  %.09.us.us.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec76, %middle.block85 ]
  br label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us

_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us: ; preds = %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader, %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us
  %.09.us.us = phi i64 [ %i.da, %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us ], [ %.09.us.us.ph, %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader ] ; 4 uses
  %i.ce = load float, ptr %i.j, align 8, !tbaa !58 ; 2 uses
  %i.cf = mul i64 %i.aa, %.09.us.us
  %i.cg = getelementptr [4 x i8], ptr %i.bg, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !58
  %i.ci = mul i64 %i.ad, %.09.us.us
  %i.cj = getelementptr [4 x i8], ptr %i.bi, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !58
  %i.cl = fpext float %i.ck to double
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double 2.000000e+00, double -1.000000e+00) ; 2 uses
  %i.cn = fpext float %i.ch to double
  %i.co = fmul double %i.cm, %i.cn
  %i.cp = fcmp olt double %i.co, 1.000000e+00     ; 2 uses
  %i.cq = fneg double %i.cm
  %i.cr = fpext float %i.ce to double
  %i.cs = fmul double %i.cr, %i.cq
  %i.ct = fptrunc double %i.cs to float
  %i.cu = mul i64 %i.ag, %.09.us.us
  %i.cv = getelementptr [8 x i8], ptr %i.bk, i64 %i.cu ; 2 uses
  %i.cw = bitcast float %i.ct to i32
  %i.cx = select i1 %i.cp, i32 %i.cw, i32 0
  %i.cy = bitcast float %i.ce to i32
  %i.cz = select i1 %i.cp, i32 %i.cy, i32 8388608
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !58
  %.sroa_idx9.i.us.us = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 %i.cz, ptr %.sroa_idx9.i.us.us, align 4, !tbaa !58
  %i.da = add nuw i64 %.09.us.us, 1               ; 2 uses
  %exitcond18.not = icmp eq i64 %i.da, %i.f
  br i1 %exitcond18.not, label %._crit_edge.split.us.us, label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us, !llvm.loop !228

._crit_edge.split.us.us:                          ; preds = %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us, %middle.block85
  %i.db = add nuw i64 %.0810.us, 1                ; 2 uses
  %exitcond19.not = icmp eq i64 %i.db, %i.c
  br i1 %exitcond19.not, label %._crit_edge12.split, label %.preheader.us, !llvm.loop !229

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge.split ] ; 3 uses
  %.0810 = phi i64 [ %i.a, %.preheader.preheader ], [ %i.ez, %._crit_edge.split ] ; 6 uses
  %i.dc = add i64 %i.a, %indvar
  %i.dd = shl i64 %i.dc, 3
  %i.de = shl i64 %indvar, 2                      ; 2 uses
  %i.df = add i64 %i.x, %i.de                     ; 2 uses
  %exitcond16.not = icmp eq i64 %.0810, %umax
  br i1 %exitcond16.not, label %bb.b, label %.lr.ph.split.split, !prof !246

.lr.ph.split.split:                               ; preds = %.preheader
  %i.dg = load ptr, ptr %i.i, align 8, !tbaa !98  ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %.0810 ; 3 uses
  %i.di = load i64, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.dj = mul i64 %i.di, %.0810
  %i.dk = load i64, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.dl = load ptr, ptr %i.m, align 8, !tbaa !75  ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.dl, i64 %i.dj ; 3 uses
  %i.dn = load i64, ptr %i.n, align 8, !tbaa !34  ; 2 uses
  %i.do = mul i64 %i.dn, %.0810
  %i.dp = load i64, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.dq = load ptr, ptr %i.p, align 8, !tbaa !75  ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.dq, i64 %i.do ; 3 uses
  %i.ds = load i64, ptr %i.q, align 8, !tbaa !34  ; 2 uses
  %i.dt = mul i64 %i.ds, %.0810
  %i.du = load i64, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %i.dv = load ptr, ptr %i.s, align 8, !tbaa !72  ; 2 uses
  %i.dw = getelementptr [8 x i8], ptr %i.dv, i64 %i.dt ; 7 uses
  br i1 %min.iters.check, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.split
  %ident.check = icmp ne i64 %i.du, 1
  %ident.check27 = icmp ne i64 %i.dk, 1
  %ident.check28 = icmp ne i64 %i.dp, 1
  %i.dx = getelementptr i8, ptr %i.dw, i64 %mul.result
  %i.dy = icmp ult ptr %i.dx, %i.dw
  %i.dz = or i1 %i.dy, %mul.overflow
  %i.ea = or i1 %ident.check, %ident.check27
  %i.eb = or i1 %i.ea, %ident.check28
  %i.ec = or i1 %i.eb, %i.dz
  br i1 %i.ec, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.dv, i64 %i.w
  %i.ed = mul i64 %i.ds, %i.dd
  %scevgep29 = getelementptr i8, ptr %scevgep, i64 %i.ed ; 3 uses
  %i.ee = getelementptr i8, ptr %i.dg, i64 %i.x
  %i.ef = getelementptr i8, ptr %i.ee, i64 4
  %scevgep30 = getelementptr i8, ptr %i.ef, i64 %i.de
  %scevgep31 = getelementptr i8, ptr %i.dl, i64 %i.y
  %i.eg = mul i64 %i.di, %i.df
  %scevgep32 = getelementptr i8, ptr %scevgep31, i64 %i.eg
  %scevgep33 = getelementptr i8, ptr %i.dq, i64 %i.y
  %i.eh = mul i64 %i.dn, %i.df
  %scevgep34 = getelementptr i8, ptr %scevgep33, i64 %i.eh
  %bound0 = icmp ult ptr %i.dw, %scevgep30
  %bound1 = icmp ult ptr %i.dh, %scevgep29
  %found.conflict = and i1 %bound0, %bound1
  %bound035 = icmp ult ptr %i.dw, %scevgep32
  %bound136 = icmp ult ptr %i.dm, %scevgep29
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  %bound038 = icmp ult ptr %i.dw, %scevgep34
  %bound139 = icmp ult ptr %i.dr, %scevgep29
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx, %found.conflict40
  br i1 %conflict.rdx41, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ei = load float, ptr %i.dh, align 4, !tbaa !58, !alias.scope !247
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.ei, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fpext <2 x float> %broadcast.splat to <2 x double>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ek = getelementptr [4 x i8], ptr %i.dm, i64 %index
  %wide.load = load <2 x float>, ptr %i.ek, align 4, !tbaa !58, !alias.scope !248
  %i.el = getelementptr [4 x i8], ptr %i.dr, i64 %index
  %wide.load42 = load <2 x float>, ptr %i.el, align 4, !tbaa !58, !alias.scope !249
  %i.em = fpext <2 x float> %wide.load42 to <2 x double>
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> splat (double 2.000000e+00), <2 x double> splat (double -1.000000e+00)) ; 2 uses
  %i.eo = fpext <2 x float> %wide.load to <2 x double>
  %i.ep = fmul <2 x double> %i.en, %i.eo
  %i.eq = fcmp olt <2 x double> %i.ep, splat (double 1.000000e+00)
  %i.er = fneg <2 x double> %i.en
  %i.es = fmul <2 x double> %i.ej, %i.er
  %i.et = fptrunc <2 x double> %i.es to <2 x float>
  %i.eu = getelementptr [8 x i8], ptr %i.dw, i64 %index
  %i.ev = shufflevector <2 x i1> %i.eq, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ew = shufflevector <2 x float> %i.et, <2 x float> %broadcast.splatinsert, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.ex = bitcast <4 x float> %i.ew to <4 x i32>
  %interleaved.vec = select <4 x i1> %i.ev, <4 x i32> %i.ex, <4 x i32> <i32 0, i32 8388608, i32 0, i32 8388608>
  store <4 x i32> %interleaved.vec, ptr %i.eu, align 4, !tbaa !58, !alias.scope !250, !noalias !251
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.split, %middle.block
  %.09.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.split ], [ %n.vec, %middle.block ]
  br label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i

end_hunk_0
