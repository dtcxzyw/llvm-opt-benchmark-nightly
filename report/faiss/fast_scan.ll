Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/fast_scan?download=true
inline.NumInlined: 24799
inline.NumDeleted: 4569
loop-unroll.NumCompletelyUnrolled: 733
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 1469
begin_hunk_0_@_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EEC2EPKNS_19IndexRaBitQFastScanEmmPfPlPKNS_10IDSelectorEPKNS_30FastScanDistancePostProcessingEb.omp_outlined:bb.a
  store i64 -1, ptr %i.af, align 8, !tbaa !78
  %i.ag = add nuw i64 %.045.i, 1                  ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.ag, %i.u
  br i1 %exitcond51.not.i, label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit, label %.lr.ph46.i, !llvm.loop !14501

_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit: ; preds = %.lr.ph46.i, %middle.block
  %.pre = load i64, ptr %i.b, align 8, !tbaa !78
  br label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit

_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit: ; preds = %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit, %.lr.ph.split
  %i.ah = phi i64 [ %.pre, %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit ], [ %i.v, %.lr.ph.split ] ; 2 uses
  %.not.not = icmp slt i64 %.016, %i.ah
  br i1 %.not.not, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !14502

._crit_edge:                                      ; preds = %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #23

; Function Attrs: nounwind
declare !callback !14504 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #23

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EE5beginEPKf(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EE3endEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14482
  %i.e = icmp ugt i64 %i.d, 100
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EE3endEv.omp_outlined, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.b)
  store i32 %i.b, ptr %i.a, align 4, !tbaa !41
  call void @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EE3endEv.omp_outlined(ptr nonnull %i.a, ptr nonnull poison, ptr nonnull %0) #23
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14495 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14496
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14495 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14496
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28, !inline_history !14498
  br label %_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EE6handleEmmNS_16simd16uint16_tplILS3_0EEES6_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"struct.faiss::simd16uint16_tpl") align 8 %3, ptr noundef byval(%"struct.faiss::simd16uint16_tpl") align 8 %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i16], align 32              ; 6 uses
  %5 = alloca %"struct.faiss::rabitq_utils::QueryFactorsData", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14480
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14483
  %i.g = mul i64 %i.f, %1                         ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14481
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !14506
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14484 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14512 ; 2 uses
  %.not59 = icmp eq ptr %i.u, null
  br i1 %.not59, label %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !142 ; 2 uses
  %.not60 = icmp eq ptr %i.aa, null
  br i1 %.not60, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit
  %.idx = shl i64 %1, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !144
  %i.ad = fdiv float 1.000000e+00, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !144
  br label %.thread

.thread:                                          ; preds = %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, %bb.e
  %i.ag = phi float [ %i.ad, %bb.e ], [ 1.000000e+00, %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit ]
  %i.ah = phi float [ %i.af, %bb.e ], [ 0.000000e+00, %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !6017
  %i.ak = shl i64 %2, 5
  %i.al = add i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14472 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14469 ; 2 uses
  %i.aq = icmp ult i64 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !14491
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14515
  %i.av = sext i32 %i.as to i64                   ; 2 uses
  %i.aw = udiv i64 %i.al, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !14493
  %i.az = mul i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !14492
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  %i.be = urem i64 %i.al, %i.av
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !14486
  %i.bh = mul i64 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %6 = sub nuw i64 %i.ap, %i.al
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bk = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 7 uses
  %i.bl = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 7 uses
  %7 = call i64 @llvm.umax.i64(i64 %6, i64 1)
  %umax = call i64 @llvm.umin.i64(i64 %7, i64 32)
  br label %bb.g

._crit_edge:                                      ; preds = %bb.ah, %.thread
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !14516 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !14517
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #28
  br label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit

_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit: ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.ah
  %.094 = phi i64 [ 0, %.lr.ph ], [ %i.ir, %bb.ah ] ; 4 uses
  %i.bs = add i64 %.094, %i.al                    ; 6 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.094
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !69
  %i.bv = uitofp i16 %i.bu to float
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %i.ag, float %i.ah) ; 4 uses
  %i.bx = load i64, ptr %i.bf, align 8, !tbaa !14486
  %i.by = mul i64 %i.bx, %.094
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.by ; 9 uses
  %i.ca = load i8, ptr %i.bj, align 8, !tbaa !14485, !range !160, !noundef !161
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load ptr, ptr %i.am, align 8, !tbaa !14472 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 209
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !14518, !range !160, !noundef !161
  %i.cf = trunc nuw i8 %i.ce to i1                ; 2 uses
  br i1 %i.cb, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  br i1 %i.cf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !14494
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !14522
  %i.cl = zext nneg i8 %i.ck to i32
  %notmask.i = shl nsw i32 -1, %i.cl
  %i.cm = xor i32 %notmask.i, -1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = mul nsw i64 %i.cn, %i.ci
  %i.cp = fptosi float %i.bw to i64
  %i.cq = shl nsw i64 %i.cp, 1
  %i.cr = sub nsw i64 %i.co, %i.cq
  %i.cs = load float, ptr %i.m, align 4, !tbaa !14523
  %i.ct = load float, ptr %i.bz, align 1, !tbaa !14524
  %i.cu = fadd float %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cw = load float, ptr %i.cv, align 1, !tbaa !14526
  %i.cx = fmul float %i.cw, 2.000000e+00
  %i.cy = sitofp i64 %i.cr to float
  %i.cz = load float, ptr %i.o, align 8, !tbaa !14506
  %i.da = fneg float %i.cy
  %i.db = fmul float %i.cx, %i.da
  %i.dc = call float @llvm.fmuladd.f32(float %i.db, float %i.cz, float %i.cu)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dd = load float, ptr %i.l, align 8, !tbaa !14527
  %i.de = fsub float %i.bw, %i.dd
  %i.df = load float, ptr %i.bz, align 1, !tbaa !14524
  %i.dg = load float, ptr %i.m, align 4, !tbaa !14523
  %i.dh = fadd float %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.dj = load float, ptr %i.di, align 1, !tbaa !14526
  %i.dk = fmul float %i.dj, -2.000000e+00
  %i.dl = call float @llvm.fmuladd.f32(float %i.dk, float %i.de, float %i.dh)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i = phi float [ %i.dl, %bb.j ], [ %i.dc, %bb.i ] ; 3 uses
  %i.dm = load float, ptr %i.n, align 8, !tbaa !14528 ; 2 uses
  %i.dn = fcmp une float %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.do = fsub float %storemerge.i, %i.dm
  %i.dp = fmul float %i.do, -5.000000e-01
  br label %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit

bb.m:                                             ; preds = %bb.k
  %i.dq = fcmp ogt float %storemerge.i, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.dq, float %storemerge.i, float 0.000000e+00
  br label %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit

_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi float [ %i.dp, %bb.l ], [ %.sroa.speculated.i, %bb.m ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !14529
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.dv = load float, ptr %i.du, align 1, !tbaa !14530
  %i.dw = load ptr, ptr %i.r, align 8, !tbaa !14484 ; 2 uses
  %.not63 = icmp eq ptr %i.dw, null
  br i1 %.not63, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !14512 ; 2 uses
  %.not64 = icmp eq ptr %i.dy, null
  br i1 %.not64, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw [56 x i8], ptr %i.dy, i64 %1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !14532
  br label %bb.p

bb.p:                                             ; preds = %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit, %bb.n, %bb.o
  %i.ec = phi float [ %i.eb, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit ]
  %i.ed = load float, ptr %i.h, align 4, !tbaa !144 ; 2 uses
  %i.ee = fmul float %i.dv, %i.ec                 ; 2 uses
  br i1 %i.dt, label %.split, label %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit

.split:                                           ; preds = %bb.p
  %i.ef = fadd float %.0.i, %i.ee
  %i.eg = fcmp ogt float %i.ef, %i.ed
  br i1 %i.eg, label %bb.q, label %bb.ah

_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit: ; preds = %bb.p
  %i.eh = fsub float %.0.i, %i.ee                 ; 2 uses
  %i.ei = fcmp ogt float %i.eh, 0.000000e+00
  %.sroa.speculated.i67 = select i1 %i.ei, float %i.eh, float 0.000000e+00
  %i.ej = fcmp olt float %.sroa.speculated.i67, %i.ed
  br i1 %i.ej, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %.split, %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit
  %i.ek = invoke noundef float @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EE30compute_full_multibit_distanceEmm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.bs, i64 noundef %1)
          to label %bb.r unwind label %bb.w       ; 11 uses

bb.r:                                             ; preds = %bb.q
  %i.el = load float, ptr %i.h, align 4, !tbaa !144
  %i.em = fcmp ogt float %i.el, %i.ek
  br i1 %i.em, label %bb.s, label %bb.ah

bb.s:                                             ; preds = %bb.r
  %i.en = load i64, ptr %i.e, align 8, !tbaa !14483 ; 4 uses
  %i.eo = icmp ult i64 %i.en, 2
  br i1 %i.eo, label %.sink.split, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.en
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %i.ep = phi i64 [ %i.fs, %bb.v ], [ 3, %.lr.ph.preheader.i ]
  %i.eq = phi i64 [ %i.fr, %bb.v ], [ 2, %.lr.ph.preheader.i ] ; 7 uses
  %.056.i = phi i64 [ %.1.i, %bb.v ], [ 1, %.lr.ph.preheader.i ] ; 6 uses
  %i.er = icmp eq i64 %i.eq, %i.en
  br i1 %i.er, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i, label %bb.t

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !144
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.eq
  %i.et = load float, ptr %i.es, align 4, !tbaa !144 ; 4 uses
  %i.eu = getelementptr [4 x i8], ptr %i.h, i64 %i.eq
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !144 ; 5 uses
  %i.ew = getelementptr [8 x i8], ptr %i.k, i64 %i.eq
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !78 ; 3 uses
  %i.ey = fcmp ogt float %i.et, %i.ev
  br i1 %i.ey, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i:              ; preds = %bb.t
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.eq
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !78
  %i.fb = fcmp oeq float %i.et, %i.ev
  %i.fc = icmp sgt i64 %i.fa, %i.ex
  %i.fd = and i1 %i.fb, %i.fc
  br i1 %i.fd, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, label %bb.u

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i:       ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i, %bb.t, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i
  %i.fe = phi float [ %.pre.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i ], [ %i.et, %bb.t ], [ %i.et, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i ] ; 3 uses
  %i.ff = fcmp ogt float %i.ek, %i.fe
  br i1 %i.ff, label %.sink.split, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i:            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.eq
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !78 ; 2 uses
  %i.fi = fcmp oeq float %i.ek, %i.fe
  %i.fj = icmp sgt i64 %i.bs, %i.fh
  %i.fk = and i1 %i.fi, %i.fj
  br i1 %i.fk, label %.sink.split, label %bb.v

bb.u:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i
  %i.fl = fcmp ogt float %i.ek, %i.ev
  br i1 %i.fl, label %.sink.split, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i:            ; preds = %bb.u
  %i.fm = fcmp oeq float %i.ek, %i.ev
  %i.fn = icmp sgt i64 %i.bs, %i.ex
  %i.fo = and i1 %i.fm, %i.fn
  br i1 %i.fo, label %.sink.split, label %bb.v

bb.v:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i
  %.sink71.i = phi float [ %i.fe, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %i.ev, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ]
  %.sink.i = phi i64 [ %i.fh, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %i.ex, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ]
  %.1.i = phi i64 [ %i.eq, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %i.ep, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.056.i
  store float %.sink71.i, ptr %i.fp, align 4, !tbaa !144
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.056.i
  store i64 %.sink.i, ptr %i.fq, align 8, !tbaa !78
  %i.fr = shl i64 %.1.i, 1                        ; 3 uses
  %i.fs = or disjoint i64 %i.fr, 1
  %i.ft = icmp ugt i64 %i.fr, %i.en
  br i1 %i.ft, label %.sink.split, label %.lr.ph.i, !llvm.loop !14533

bb.w:                                             ; preds = %bb.q
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %bb.g
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !14494
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !14522
  %i.ga = zext nneg i8 %i.fz to i32
  %notmask.i72 = shl nsw i32 -1, %i.ga
  %i.gb = xor i32 %notmask.i72, -1
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = mul nsw i64 %i.gc, %i.fx
  %i.ge = fptosi float %i.bw to i64
  %i.gf = shl nsw i64 %i.ge, 1
  %i.gg = sub nsw i64 %i.gd, %i.gf
  %i.gh = load float, ptr %i.m, align 4, !tbaa !14523
  %i.gi = load float, ptr %i.bz, align 1, !tbaa !14524
  %i.gj = fadd float %i.gh, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.gl = load float, ptr %i.gk, align 1, !tbaa !14526
  %i.gm = fmul float %i.gl, 2.000000e+00
  %i.gn = sitofp i64 %i.gg to float
  %i.go = load float, ptr %i.o, align 8, !tbaa !14506
  %i.gp = fneg float %i.gn
  %i.gq = fmul float %i.gm, %i.gp
  %i.gr = call float @llvm.fmuladd.f32(float %i.gq, float %i.go, float %i.gj)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.gs = load float, ptr %i.l, align 8, !tbaa !14527
  %i.gt = fsub float %i.bw, %i.gs
  %i.gu = load float, ptr %i.bz, align 1, !tbaa !14524
  %i.gv = load float, ptr %i.m, align 4, !tbaa !14523
  %i.gw = fadd float %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.gy = load float, ptr %i.gx, align 1, !tbaa !14526
  %i.gz = fmul float %i.gy, -2.000000e+00
  %i.ha = call float @llvm.fmuladd.f32(float %i.gz, float %i.gt, float %i.gw)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %storemerge.i69 = phi float [ %i.ha, %bb.z ], [ %i.gr, %bb.y ] ; 3 uses
  %i.hb = load float, ptr %i.n, align 8, !tbaa !14528 ; 2 uses
  %i.hc = fcmp une float %i.hb, 0.000000e+00
  br i1 %i.hc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hd = fsub float %storemerge.i69, %i.hb
  %i.he = fmul float %i.hd, -5.000000e-01
  br label %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit73

bb.ac:                                            ; preds = %bb.aa
  %i.hf = fcmp ogt float %storemerge.i69, 0.000000e+00
  %.sroa.speculated.i70 = select i1 %i.hf, float %storemerge.i69, float 0.000000e+00
  br label %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit73

_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit73: ; preds = %bb.ab, %bb.ac
  %.0.i71 = phi float [ %i.he, %bb.ab ], [ %.sroa.speculated.i70, %bb.ac ] ; 11 uses
  %i.hg = load float, ptr %i.h, align 4, !tbaa !144
  %i.hh = fcmp ogt float %i.hg, %.0.i71
  br i1 %i.hh, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit73
  %i.hi = load i64, ptr %i.e, align 8, !tbaa !14483 ; 4 uses
  %i.hj = icmp ult i64 %i.hi, 2
  br i1 %i.hj, label %.sink.split, label %.lr.ph.preheader.i74

.lr.ph.preheader.i74:                             ; preds = %bb.ad
  %.phi.trans.insert.i75 = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.hi
  br label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %bb.ag, %.lr.ph.preheader.i74
  %i.hk = phi i64 [ %i.in, %bb.ag ], [ 3, %.lr.ph.preheader.i74 ]
  %i.hl = phi i64 [ %i.im, %bb.ag ], [ 2, %.lr.ph.preheader.i74 ] ; 7 uses
  %.056.i77 = phi i64 [ %.1.i82, %bb.ag ], [ 1, %.lr.ph.preheader.i74 ] ; 6 uses
  %i.hm = icmp eq i64 %i.hl, %i.hi
  br i1 %i.hm, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i86, label %bb.ae

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i86: ; preds = %.lr.ph.i76
  %.pre.i87 = load float, ptr %.phi.trans.insert.i75, align 4, !tbaa !144
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i84

bb.ae:                                            ; preds = %.lr.ph.i76
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.hl
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !144 ; 4 uses
  %i.hp = getelementptr [4 x i8], ptr %i.h, i64 %i.hl
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !144 ; 5 uses
  %i.hr = getelementptr [8 x i8], ptr %i.k, i64 %i.hl
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !78 ; 3 uses
  %i.ht = fcmp ogt float %i.ho, %i.hq
  br i1 %i.ht, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i84, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i78

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i78:            ; preds = %bb.ae
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.hl
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !78
  %i.hw = fcmp oeq float %i.ho, %i.hq
  %i.hx = icmp sgt i64 %i.hv, %i.hs
  %i.hy = and i1 %i.hw, %i.hx
  br i1 %i.hy, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i84, label %bb.af

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i84:     ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i78, %bb.ae, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i86
  %i.hz = phi float [ %.pre.i87, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i86 ], [ %i.ho, %bb.ae ], [ %i.ho, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i78 ] ; 3 uses
  %i.ia = fcmp ogt float %.0.i71, %i.hz
  br i1 %i.ia, label %.sink.split, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i85

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i85:          ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i84
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.hl
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !78 ; 2 uses
  %i.id = fcmp oeq float %.0.i71, %i.hz
  %i.ie = icmp sgt i64 %i.bs, %i.ic
  %i.if = and i1 %i.id, %i.ie
  br i1 %i.if, label %.sink.split, label %bb.ag

bb.af:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i78
  %i.ig = fcmp ogt float %.0.i71, %i.hq
  br i1 %i.ig, label %.sink.split, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i79

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i79:          ; preds = %bb.af
  %i.ih = fcmp oeq float %.0.i71, %i.hq
  %i.ii = icmp sgt i64 %i.bs, %i.hs
  %i.ij = and i1 %i.ih, %i.ii
  br i1 %i.ij, label %.sink.split, label %bb.ag

bb.ag:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i79, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i85
  %.sink71.i80 = phi float [ %i.hz, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i85 ], [ %i.hq, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i79 ]
  %.sink.i81 = phi i64 [ %i.ic, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i85 ], [ %i.hs, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i79 ]
  %.1.i82 = phi i64 [ %i.hl, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i85 ], [ %i.hk, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i79 ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.056.i77
  store float %.sink71.i80, ptr %i.ik, align 4, !tbaa !144
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.056.i77
  store i64 %.sink.i81, ptr %i.il, align 8, !tbaa !78
  %i.im = shl i64 %.1.i82, 1                      ; 3 uses
  %i.in = or disjoint i64 %i.im, 1
  %i.io = icmp ugt i64 %i.im, %i.hi
  br i1 %i.io, label %.sink.split, label %.lr.ph.i76, !llvm.loop !14533

.sink.split:                                      ; preds = %bb.ag, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i79, %bb.af, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i85, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i84, %bb.v, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i, %bb.u, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, %bb.ad, %bb.s
  %.0.lcssa.i83.sink119 = phi i64 [ %.056.i, %bb.u ], [ 1, %bb.s ], [ 1, %bb.ad ], [ %.1.i, %bb.v ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i ], [ %.1.i82, %bb.ag ], [ %.056.i77, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i85 ], [ %.056.i77, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i79 ], [ %.056.i77, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i84 ], [ %.056.i77, %bb.af ] ; 2 uses
  %.0.i71.sink = phi float [ %i.ek, %bb.v ], [ %i.ek, %bb.s ], [ %.0.i71, %bb.ad ], [ %i.ek, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i ], [ %i.ek, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %i.ek, %bb.u ], [ %i.ek, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ], [ %.0.i71, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i84 ], [ %.0.i71, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i85 ], [ %.0.i71, %bb.af ], [ %.0.i71, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i79 ], [ %.0.i71, %bb.ag ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.0.lcssa.i83.sink119
  store float %.0.i71.sink, ptr %i.ip, align 4, !tbaa !144
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0.lcssa.i83.sink119
  store i64 %i.bs, ptr %i.iq, align 8, !tbaa !78
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %.split, %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit73, %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit, %bb.r
  %i.ir = add nuw nsw i64 %.094, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ir, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !14534

bb.ai:                                            ; preds = %bb.w, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.fu, %bb.w ]
  %i.is = load ptr, ptr %i.q, align 8, !tbaa !14516 ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i89, label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit90, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !14517
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.ix) #28
  br label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit90

_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit90: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EE3endEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14482 ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.h, ptr %i.b, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 1, ptr %i.c, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.i = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !78
  %i.k = call i64 @llvm.smin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !78
  %i.l = load i64, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not14 = icmp sgt i64 %i.l, %i.k
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit
  %.015 = phi i64 [ %i.l, %.lr.ph ], [ %i.cn, %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit ] ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !14480
  %i.q = load i64, ptr %i.n, align 8, !tbaa !14483 ; 10 uses
  %i.r = mul i64 %i.q, %.015                      ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r ; 8 uses
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !14481
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r ; 8 uses
  %.not46.i = icmp eq i64 %i.q, 0
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, %.lr.ph.i
  %.041.i = phi i64 [ 0, %.lr.ph.i ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %.03740.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bt, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %i.x = load float, ptr %i.s, align 4, !tbaa !144
  %i.y = load i64, ptr %i.u, align 8, !tbaa !78   ; 2 uses
  %i.z = sub nuw i64 %i.q, %.03740.i              ; 5 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.z ; 3 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !144 ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !78 ; 3 uses
  %i.ae = icmp ult i64 %i.z, 2
  br i1 %i.ae, label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.g
  %i.af = phi i64 [ %i.bi, %bb.g ], [ 3, %bb.d ]
  %i.ag = phi i64 [ %i.bh, %bb.g ], [ 2, %bb.d ]  ; 7 uses
  %.062.i.i = phi i64 [ %.1.i.i, %bb.g ], [ 1, %bb.d ] ; 6 uses
  %i.ah = icmp eq i64 %i.ag, %i.z
  br i1 %i.ah, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i, label %bb.e

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load float, ptr %i.aa, align 4, !tbaa !144
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ag
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !144 ; 4 uses
  %i.ak = getelementptr [4 x i8], ptr %i.s, i64 %i.ag
  %i.al = load float, ptr %i.ak, align 4, !tbaa !144 ; 5 uses
  %i.am = getelementptr [8 x i8], ptr %i.u, i64 %i.ag
  %i.an = load i64, ptr %i.am, align 8, !tbaa !78 ; 3 uses
  %i.ao = fcmp ogt float %i.aj, %i.al
  br i1 %i.ao, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i:            ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ag
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !78
  %i.ar = fcmp oeq float %i.aj, %i.al
  %i.as = icmp sgt i64 %i.aq, %i.an
  %i.at = and i1 %i.ar, %i.as
  br i1 %i.at, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %bb.f

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i:     ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i, %bb.e, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i
  %i.au = phi float [ %.pre.i.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i ], [ %i.aj, %bb.e ], [ %i.aj, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i ] ; 3 uses
  %i.av = fcmp ogt float %i.ab, %i.au
  br i1 %i.av, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i:          ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ag
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !78 ; 2 uses
  %i.ay = fcmp oeq float %i.ab, %i.au
  %i.az = icmp sgt i64 %i.ad, %i.ax
  %i.ba = and i1 %i.ay, %i.az
  br i1 %i.ba, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %bb.g

bb.f:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i
  %i.bb = fcmp ogt float %i.ab, %i.al
  br i1 %i.bb, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i:          ; preds = %bb.f
  %i.bc = fcmp oeq float %i.ab, %i.al
  %i.bd = icmp sgt i64 %i.ad, %i.an
  %i.be = and i1 %i.bc, %i.bd
  br i1 %i.be, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i
  %.sink79.i.i = phi float [ %i.au, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.al, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ]
  %.sink.i.i = phi i64 [ %i.ax, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.an, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.ag, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.af, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.062.i.i
  store float %.sink79.i.i, ptr %i.bf, align 4, !tbaa !144
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.062.i.i
  store i64 %.sink.i.i, ptr %i.bg, align 8, !tbaa !78
  %i.bh = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.bi = or disjoint i64 %i.bh, 1
  %i.bj = icmp ugt i64 %i.bh, %i.z
  br i1 %i.bj, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !14535

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i: ; preds = %bb.g, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i, %bb.f, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.g ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i ], [ %.062.i.i, %bb.f ]
  %.pre68.i.i = load float, ptr %i.aa, align 4, !tbaa !144
  %.pre69.i.i = load i64, ptr %i.ac, align 8, !tbaa !78
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, %bb.d
  %i.bk = phi i64 [ %i.ad, %bb.d ], [ %.pre69.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %i.bl = phi float [ %i.ab, %bb.d ], [ %.pre68.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.d ], [ %.0.lcssa.ph.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.0.lcssa.i.i
  store float %i.bl, ptr %i.bm, align 4, !tbaa !144
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.0.lcssa.i.i
  store i64 %i.bk, ptr %i.bn, align 8, !tbaa !78
  %i.bo = xor i64 %.041.i, -1
  %i.bp = add i64 %i.q, %i.bo                     ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bp
  store float %i.x, ptr %i.bq, align 4, !tbaa !144
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bp
  store i64 %i.y, ptr %i.br, align 8, !tbaa !78
  %.not.i = icmp ne i64 %i.y, -1
  %i.bs = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.041.i, %i.bs         ; 2 uses
  %i.bt = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !14536

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 8 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q
  %i.bv = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = shl i64 %.0.lcssa.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.s, ptr align 4 %i.bw, i64 %i.bx, i1 false)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.q
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bv
  %i.ca = shl i64 %.0.lcssa.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.u, ptr align 8 %i.bz, i64 %i.ca, i1 false)
  %i.cb = icmp ult i64 %.0.lcssa.i, %i.q
  br i1 %i.cb, label %.lr.ph44.i.preheader, label %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i
  %i.cc = sub nuw i64 %i.q, %.0.lcssa.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader28, label %vector.ph

end_hunk_0
begin_hunk_1_@_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EEC2EPKNS_19IndexRaBitQFastScanEmmPfPlPKNS_10IDSelectorEPKNS_30FastScanDistancePostProcessingEb.omp_outlined:bb.a
  store <2 x i64> splat (i64 -1), ptr %i.ac, align 8, !tbaa !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !15188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit, label %.lr.ph46.i.preheader22

.lr.ph46.i.preheader22:                           ; preds = %.lr.ph46.i.preheader, %middle.block
  %.045.i.ph = phi i64 [ 0, %.lr.ph46.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader22, %.lr.ph46.i
  %.045.i = phi i64 [ %i.ag, %.lr.ph46.i ], [ %.045.i.ph, %.lr.ph46.i.preheader22 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.045.i
  store float f0xFF7FFFFF, ptr %i.ae, align 4, !tbaa !144
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.045.i
  store i64 -1, ptr %i.af, align 8, !tbaa !78
  %i.ag = add nuw i64 %.045.i, 1                  ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.ag, %i.u
  br i1 %exitcond51.not.i, label %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit, label %.lr.ph46.i, !llvm.loop !15189

_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit: ; preds = %.lr.ph46.i, %middle.block
  %.pre = load i64, ptr %i.b, align 8, !tbaa !78
  br label %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit

_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit: ; preds = %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit, %.lr.ph.split
  %i.ah = phi i64 [ %.pre, %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit ], [ %i.v, %.lr.ph.split ] ; 2 uses
  %.not.not = icmp slt i64 %.016, %i.ah
  br i1 %.not.not, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !15190

._crit_edge:                                      ; preds = %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EE5beginEPKf(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EE3endEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15179
  %i.e = icmp ugt i64 %i.d, 100
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EE3endEv.omp_outlined, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.b)
  store i32 %i.b, ptr %i.a, align 4, !tbaa !41
  call void @_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EE3endEv.omp_outlined(ptr nonnull %i.a, ptr nonnull poison, ptr nonnull %0) #23
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14495 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14496
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14495 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14496
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28, !inline_history !15186
  br label %_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EE6handleEmmNS_16simd16uint16_tplILS3_0EEES6_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"struct.faiss::simd16uint16_tpl") align 8 %3, ptr noundef byval(%"struct.faiss::simd16uint16_tpl") align 8 %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i16], align 32              ; 6 uses
  %5 = alloca %"struct.faiss::rabitq_utils::QueryFactorsData", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15177
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15180
  %i.g = mul i64 %i.f, %1                         ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15178
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !14506
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15181 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14512 ; 2 uses
  %.not59 = icmp eq ptr %i.u, null
  br i1 %.not59, label %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !142 ; 2 uses
  %.not60 = icmp eq ptr %i.aa, null
  br i1 %.not60, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit
  %.idx = shl i64 %1, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !144
  %i.ad = fdiv float 1.000000e+00, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !144
  br label %.thread

.thread:                                          ; preds = %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, %bb.e
  %i.ag = phi float [ %i.ad, %bb.e ], [ 1.000000e+00, %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit ]
  %i.ah = phi float [ %i.af, %bb.e ], [ 0.000000e+00, %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !9938
  %i.ak = shl i64 %2, 5
  %i.al = add i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15175 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14469 ; 2 uses
  %i.aq = icmp ult i64 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !14491
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14515
  %i.av = sext i32 %i.as to i64                   ; 2 uses
  %i.aw = udiv i64 %i.al, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !15185
  %i.az = mul i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !15184
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  %i.be = urem i64 %i.al, %i.av
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !15183
  %i.bh = mul i64 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %6 = sub nuw i64 %i.ap, %i.al
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bk = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 7 uses
  %i.bl = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 7 uses
  %7 = call i64 @llvm.umax.i64(i64 %6, i64 1)
  %umax = call i64 @llvm.umin.i64(i64 %7, i64 32)
  br label %bb.g

._crit_edge:                                      ; preds = %bb.ah, %.thread
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !14516 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !14517
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #28
  br label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit

_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit: ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.ah
  %.094 = phi i64 [ 0, %.lr.ph ], [ %i.ir, %bb.ah ] ; 4 uses
  %i.bs = add i64 %.094, %i.al                    ; 6 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.094
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !69
  %i.bv = uitofp i16 %i.bu to float
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %i.ag, float %i.ah) ; 4 uses
  %i.bx = load i64, ptr %i.bf, align 8, !tbaa !15183
  %i.by = mul i64 %i.bx, %.094
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.by ; 9 uses
  %i.ca = load i8, ptr %i.bj, align 8, !tbaa !15182, !range !160, !noundef !161
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load ptr, ptr %i.am, align 8, !tbaa !15175 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 209
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !14518, !range !160, !noundef !161
  %i.cf = trunc nuw i8 %i.ce to i1                ; 2 uses
  br i1 %i.cb, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  br i1 %i.cf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !14494
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !14522
  %i.cl = zext nneg i8 %i.ck to i32
  %notmask.i = shl nsw i32 -1, %i.cl
  %i.cm = xor i32 %notmask.i, -1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = mul nsw i64 %i.cn, %i.ci
  %i.cp = fptosi float %i.bw to i64
  %i.cq = shl nsw i64 %i.cp, 1
  %i.cr = sub nsw i64 %i.co, %i.cq
  %i.cs = load float, ptr %i.m, align 4, !tbaa !14523
  %i.ct = load float, ptr %i.bz, align 1, !tbaa !14524
  %i.cu = fadd float %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cw = load float, ptr %i.cv, align 1, !tbaa !14526
  %i.cx = fmul float %i.cw, 2.000000e+00
  %i.cy = sitofp i64 %i.cr to float
  %i.cz = load float, ptr %i.o, align 8, !tbaa !14506
  %i.da = fneg float %i.cy
  %i.db = fmul float %i.cx, %i.da
  %i.dc = call float @llvm.fmuladd.f32(float %i.db, float %i.cz, float %i.cu)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dd = load float, ptr %i.l, align 8, !tbaa !14527
  %i.de = fsub float %i.bw, %i.dd
  %i.df = load float, ptr %i.bz, align 1, !tbaa !14524
  %i.dg = load float, ptr %i.m, align 4, !tbaa !14523
  %i.dh = fadd float %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.dj = load float, ptr %i.di, align 1, !tbaa !14526
  %i.dk = fmul float %i.dj, -2.000000e+00
  %i.dl = call float @llvm.fmuladd.f32(float %i.dk, float %i.de, float %i.dh)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i = phi float [ %i.dl, %bb.j ], [ %i.dc, %bb.i ] ; 3 uses
  %i.dm = load float, ptr %i.n, align 8, !tbaa !14528 ; 2 uses
  %i.dn = fcmp une float %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.do = fsub float %storemerge.i, %i.dm
  %i.dp = fmul float %i.do, -5.000000e-01
  br label %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit

bb.m:                                             ; preds = %bb.k
  %i.dq = fcmp ogt float %storemerge.i, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.dq, float %storemerge.i, float 0.000000e+00
  br label %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit

_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi float [ %i.dp, %bb.l ], [ %.sroa.speculated.i, %bb.m ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !14529
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.dv = load float, ptr %i.du, align 1, !tbaa !14530
  %i.dw = load ptr, ptr %i.r, align 8, !tbaa !15181 ; 2 uses
  %.not63 = icmp eq ptr %i.dw, null
  br i1 %.not63, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !14512 ; 2 uses
  %.not64 = icmp eq ptr %i.dy, null
  br i1 %.not64, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw [56 x i8], ptr %i.dy, i64 %1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !14532
  br label %bb.p

bb.p:                                             ; preds = %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit, %bb.n, %bb.o
  %i.ec = phi float [ %i.eb, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit ]
  %i.ed = load float, ptr %i.h, align 4, !tbaa !144 ; 2 uses
  %i.ee = fmul float %i.dv, %i.ec                 ; 2 uses
  br i1 %i.dt, label %.split, label %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit

.split:                                           ; preds = %bb.p
  %i.ef = fadd float %.0.i, %i.ee
  %i.eg = fcmp ogt float %i.ef, %i.ed
  br i1 %i.eg, label %bb.q, label %bb.ah

_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit: ; preds = %bb.p
  %i.eh = fsub float %.0.i, %i.ee                 ; 2 uses
  %i.ei = fcmp ogt float %i.eh, 0.000000e+00
  %.sroa.speculated.i67 = select i1 %i.ei, float %i.eh, float 0.000000e+00
  %i.ej = fcmp olt float %.sroa.speculated.i67, %i.ed
  br i1 %i.ej, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %.split, %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit
  %i.ek = invoke noundef float @_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EE30compute_full_multibit_distanceEmm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.bs, i64 noundef %1)
          to label %bb.r unwind label %bb.w       ; 11 uses

bb.r:                                             ; preds = %bb.q
  %i.el = load float, ptr %i.h, align 4, !tbaa !144
  %i.em = fcmp olt float %i.el, %i.ek
  br i1 %i.em, label %bb.s, label %bb.ah

bb.s:                                             ; preds = %bb.r
  %i.en = load i64, ptr %i.e, align 8, !tbaa !15180 ; 4 uses
  %i.eo = icmp ult i64 %i.en, 2
  br i1 %i.eo, label %.sink.split, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.en
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %i.ep = phi i64 [ %i.fs, %bb.v ], [ 3, %.lr.ph.preheader.i ]
  %i.eq = phi i64 [ %i.fr, %bb.v ], [ 2, %.lr.ph.preheader.i ] ; 7 uses
  %.056.i = phi i64 [ %.1.i, %bb.v ], [ 1, %.lr.ph.preheader.i ] ; 6 uses
  %i.er = icmp eq i64 %i.eq, %i.en
  br i1 %i.er, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i, label %bb.t

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !144
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.eq
  %i.et = load float, ptr %i.es, align 4, !tbaa !144 ; 4 uses
  %i.eu = getelementptr [4 x i8], ptr %i.h, i64 %i.eq
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !144 ; 5 uses
  %i.ew = getelementptr [8 x i8], ptr %i.k, i64 %i.eq
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !78 ; 3 uses
  %i.ey = fcmp olt float %i.et, %i.ev
  br i1 %i.ey, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i:              ; preds = %bb.t
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.eq
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !78
  %i.fb = fcmp oeq float %i.et, %i.ev
  %i.fc = icmp slt i64 %i.fa, %i.ex
  %i.fd = and i1 %i.fb, %i.fc
  br i1 %i.fd, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i, label %bb.u

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i:       ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i, %bb.t, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i
  %i.fe = phi float [ %.pre.i, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i ], [ %i.et, %bb.t ], [ %i.et, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i ] ; 3 uses
  %i.ff = fcmp olt float %i.ek, %i.fe
  br i1 %i.ff, label %.sink.split, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i:            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.eq
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !78 ; 2 uses
  %i.fi = fcmp oeq float %i.ek, %i.fe
  %i.fj = icmp slt i64 %i.bs, %i.fh
  %i.fk = and i1 %i.fi, %i.fj
  br i1 %i.fk, label %.sink.split, label %bb.v

bb.u:                                             ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i
  %i.fl = fcmp olt float %i.ek, %i.ev
  br i1 %i.fl, label %.sink.split, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i:            ; preds = %bb.u
  %i.fm = fcmp oeq float %i.ek, %i.ev
  %i.fn = icmp slt i64 %i.bs, %i.ex
  %i.fo = and i1 %i.fm, %i.fn
  br i1 %i.fo, label %.sink.split, label %bb.v

bb.v:                                             ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i
  %.sink71.i = phi float [ %i.fe, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i ], [ %i.ev, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i ]
  %.sink.i = phi i64 [ %i.fh, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i ], [ %i.ex, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i ]
  %.1.i = phi i64 [ %i.eq, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i ], [ %i.ep, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.056.i
  store float %.sink71.i, ptr %i.fp, align 4, !tbaa !144
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.056.i
  store i64 %.sink.i, ptr %i.fq, align 8, !tbaa !78
  %i.fr = shl i64 %.1.i, 1                        ; 3 uses
  %i.fs = or disjoint i64 %i.fr, 1
  %i.ft = icmp ugt i64 %i.fr, %i.en
  br i1 %i.ft, label %.sink.split, label %.lr.ph.i, !llvm.loop !15191

bb.w:                                             ; preds = %bb.q
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %bb.g
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !14494
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !14522
  %i.ga = zext nneg i8 %i.fz to i32
  %notmask.i72 = shl nsw i32 -1, %i.ga
  %i.gb = xor i32 %notmask.i72, -1
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = mul nsw i64 %i.gc, %i.fx
  %i.ge = fptosi float %i.bw to i64
  %i.gf = shl nsw i64 %i.ge, 1
  %i.gg = sub nsw i64 %i.gd, %i.gf
  %i.gh = load float, ptr %i.m, align 4, !tbaa !14523
  %i.gi = load float, ptr %i.bz, align 1, !tbaa !14524
  %i.gj = fadd float %i.gh, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.gl = load float, ptr %i.gk, align 1, !tbaa !14526
  %i.gm = fmul float %i.gl, 2.000000e+00
  %i.gn = sitofp i64 %i.gg to float
  %i.go = load float, ptr %i.o, align 8, !tbaa !14506
  %i.gp = fneg float %i.gn
  %i.gq = fmul float %i.gm, %i.gp
  %i.gr = call float @llvm.fmuladd.f32(float %i.gq, float %i.go, float %i.gj)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.gs = load float, ptr %i.l, align 8, !tbaa !14527
  %i.gt = fsub float %i.bw, %i.gs
  %i.gu = load float, ptr %i.bz, align 1, !tbaa !14524
  %i.gv = load float, ptr %i.m, align 4, !tbaa !14523
  %i.gw = fadd float %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.gy = load float, ptr %i.gx, align 1, !tbaa !14526
  %i.gz = fmul float %i.gy, -2.000000e+00
  %i.ha = call float @llvm.fmuladd.f32(float %i.gz, float %i.gt, float %i.gw)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %storemerge.i69 = phi float [ %i.ha, %bb.z ], [ %i.gr, %bb.y ] ; 3 uses
  %i.hb = load float, ptr %i.n, align 8, !tbaa !14528 ; 2 uses
  %i.hc = fcmp une float %i.hb, 0.000000e+00
  br i1 %i.hc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hd = fsub float %storemerge.i69, %i.hb
  %i.he = fmul float %i.hd, -5.000000e-01
  br label %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit73

bb.ac:                                            ; preds = %bb.aa
  %i.hf = fcmp ogt float %storemerge.i69, 0.000000e+00
  %.sroa.speculated.i70 = select i1 %i.hf, float %storemerge.i69, float 0.000000e+00
  br label %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit73

_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit73: ; preds = %bb.ab, %bb.ac
  %.0.i71 = phi float [ %i.he, %bb.ab ], [ %.sroa.speculated.i70, %bb.ac ] ; 11 uses
  %i.hg = load float, ptr %i.h, align 4, !tbaa !144
  %i.hh = fcmp olt float %i.hg, %.0.i71
  br i1 %i.hh, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit73
  %i.hi = load i64, ptr %i.e, align 8, !tbaa !15180 ; 4 uses
  %i.hj = icmp ult i64 %i.hi, 2
  br i1 %i.hj, label %.sink.split, label %.lr.ph.preheader.i74

.lr.ph.preheader.i74:                             ; preds = %bb.ad
  %.phi.trans.insert.i75 = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.hi
  br label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %bb.ag, %.lr.ph.preheader.i74
  %i.hk = phi i64 [ %i.in, %bb.ag ], [ 3, %.lr.ph.preheader.i74 ]
  %i.hl = phi i64 [ %i.im, %bb.ag ], [ 2, %.lr.ph.preheader.i74 ] ; 7 uses
  %.056.i77 = phi i64 [ %.1.i82, %bb.ag ], [ 1, %.lr.ph.preheader.i74 ] ; 6 uses
  %i.hm = icmp eq i64 %i.hl, %i.hi
  br i1 %i.hm, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i86, label %bb.ae

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i86: ; preds = %.lr.ph.i76
  %.pre.i87 = load float, ptr %.phi.trans.insert.i75, align 4, !tbaa !144
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i84

bb.ae:                                            ; preds = %.lr.ph.i76
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.hl
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !144 ; 4 uses
  %i.hp = getelementptr [4 x i8], ptr %i.h, i64 %i.hl
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !144 ; 5 uses
  %i.hr = getelementptr [8 x i8], ptr %i.k, i64 %i.hl
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !78 ; 3 uses
  %i.ht = fcmp olt float %i.ho, %i.hq
  br i1 %i.ht, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i84, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i78

_ZN5faiss4CMinIflE4cmp2Effll.exit.i78:            ; preds = %bb.ae
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.hl
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !78
  %i.hw = fcmp oeq float %i.ho, %i.hq
  %i.hx = icmp slt i64 %i.hv, %i.hs
  %i.hy = and i1 %i.hw, %i.hx
  br i1 %i.hy, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i84, label %bb.af

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i84:     ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i78, %bb.ae, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i86
  %i.hz = phi float [ %.pre.i87, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i86 ], [ %i.ho, %bb.ae ], [ %i.ho, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i78 ] ; 3 uses
  %i.ia = fcmp olt float %.0.i71, %i.hz
  br i1 %i.ia, label %.sink.split, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i85

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i85:          ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i84
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.hl
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !78 ; 2 uses
  %i.id = fcmp oeq float %.0.i71, %i.hz
  %i.ie = icmp slt i64 %i.bs, %i.ic
  %i.if = and i1 %i.id, %i.ie
  br i1 %i.if, label %.sink.split, label %bb.ag

bb.af:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i78
  %i.ig = fcmp olt float %.0.i71, %i.hq
  br i1 %i.ig, label %.sink.split, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i79

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i79:          ; preds = %bb.af
  %i.ih = fcmp oeq float %.0.i71, %i.hq
  %i.ii = icmp slt i64 %i.bs, %i.hs
  %i.ij = and i1 %i.ih, %i.ii
  br i1 %i.ij, label %.sink.split, label %bb.ag

bb.ag:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i79, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i85
  %.sink71.i80 = phi float [ %i.hz, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i85 ], [ %i.hq, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i79 ]
  %.sink.i81 = phi i64 [ %i.ic, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i85 ], [ %i.hs, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i79 ]
  %.1.i82 = phi i64 [ %i.hl, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i85 ], [ %i.hk, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i79 ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.056.i77
  store float %.sink71.i80, ptr %i.ik, align 4, !tbaa !144
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.056.i77
  store i64 %.sink.i81, ptr %i.il, align 8, !tbaa !78
  %i.im = shl i64 %.1.i82, 1                      ; 3 uses
  %i.in = or disjoint i64 %i.im, 1
  %i.io = icmp ugt i64 %i.im, %i.hi
  br i1 %i.io, label %.sink.split, label %.lr.ph.i76, !llvm.loop !15191

.sink.split:                                      ; preds = %bb.ag, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i79, %bb.af, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i85, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i84, %bb.v, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i, %bb.u, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i, %bb.ad, %bb.s
  %.0.lcssa.i83.sink119 = phi i64 [ %.056.i, %bb.u ], [ 1, %bb.s ], [ 1, %bb.ad ], [ %.1.i, %bb.v ], [ %.056.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i ], [ %.056.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i ], [ %.056.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i ], [ %.1.i82, %bb.ag ], [ %.056.i77, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i85 ], [ %.056.i77, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i79 ], [ %.056.i77, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i84 ], [ %.056.i77, %bb.af ] ; 2 uses
  %.0.i71.sink = phi float [ %i.ek, %bb.v ], [ %i.ek, %bb.s ], [ %.0.i71, %bb.ad ], [ %i.ek, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i ], [ %i.ek, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i ], [ %i.ek, %bb.u ], [ %i.ek, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i ], [ %.0.i71, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i84 ], [ %.0.i71, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i85 ], [ %.0.i71, %bb.af ], [ %.0.i71, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i79 ], [ %.0.i71, %bb.ag ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.0.lcssa.i83.sink119
  store float %.0.i71.sink, ptr %i.ip, align 4, !tbaa !144
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0.lcssa.i83.sink119
  store i64 %i.bs, ptr %i.iq, align 8, !tbaa !78
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %.split, %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit73, %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit, %bb.r
  %i.ir = add nuw nsw i64 %.094, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ir, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !15192

bb.ai:                                            ; preds = %bb.w, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.fu, %bb.w ]
  %i.is = load ptr, ptr %i.q, align 8, !tbaa !14516 ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i89, label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit90, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !14517
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.ix) #28
  br label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit90

_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit90: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss17RaBitQHeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EE3endEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15179 ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.h, ptr %i.b, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 1, ptr %i.c, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.i = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !78
  %i.k = call i64 @llvm.smin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !78
  %i.l = load i64, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not14 = icmp sgt i64 %i.l, %i.k
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5faiss12heap_reorderINS_4CMinIflEEEEmmPNT_1TEPNS3_2TIE.exit
  %.015 = phi i64 [ %i.l, %.lr.ph ], [ %i.cn, %_ZN5faiss12heap_reorderINS_4CMinIflEEEEmmPNT_1TEPNS3_2TIE.exit ] ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !15177
  %i.q = load i64, ptr %i.n, align 8, !tbaa !15180 ; 10 uses
  %i.r = mul i64 %i.q, %.015                      ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r ; 8 uses
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !15178
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r ; 8 uses
  %.not46.i = icmp eq i64 %i.q, 0
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, %.lr.ph.i
  %.041.i = phi i64 [ 0, %.lr.ph.i ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %.03740.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bt, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %i.x = load float, ptr %i.s, align 4, !tbaa !144
  %i.y = load i64, ptr %i.u, align 8, !tbaa !78   ; 2 uses
  %i.z = sub nuw i64 %i.q, %.03740.i              ; 5 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.z ; 3 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !144 ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !78 ; 3 uses
  %i.ae = icmp ult i64 %i.z, 2
  br i1 %i.ae, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.g
  %i.af = phi i64 [ %i.bi, %bb.g ], [ 3, %bb.d ]
  %i.ag = phi i64 [ %i.bh, %bb.g ], [ 2, %bb.d ]  ; 7 uses
  %.062.i.i = phi i64 [ %.1.i.i, %bb.g ], [ 1, %bb.d ] ; 6 uses
  %i.ah = icmp eq i64 %i.ag, %i.z
  br i1 %i.ah, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i, label %bb.e

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load float, ptr %i.aa, align 4, !tbaa !144
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ag
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !144 ; 4 uses
  %i.ak = getelementptr [4 x i8], ptr %i.s, i64 %i.ag
  %i.al = load float, ptr %i.ak, align 4, !tbaa !144 ; 5 uses
  %i.am = getelementptr [8 x i8], ptr %i.u, i64 %i.ag
  %i.an = load i64, ptr %i.am, align 8, !tbaa !78 ; 3 uses
  %i.ao = fcmp olt float %i.aj, %i.al
  br i1 %i.ao, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i:            ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ag
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !78
  %i.ar = fcmp oeq float %i.aj, %i.al
  %i.as = icmp slt i64 %i.aq, %i.an
  %i.at = and i1 %i.ar, %i.as
  br i1 %i.at, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i, label %bb.f

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i:     ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i, %bb.e, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i
  %i.au = phi float [ %.pre.i.i, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i ], [ %i.aj, %bb.e ], [ %i.aj, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i ] ; 3 uses
  %i.av = fcmp olt float %i.ab, %i.au
  br i1 %i.av, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i:          ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ag
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !78 ; 2 uses
  %i.ay = fcmp oeq float %i.ab, %i.au
  %i.az = icmp slt i64 %i.ad, %i.ax
  %i.ba = and i1 %i.ay, %i.az
  br i1 %i.ba, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %bb.g

bb.f:                                             ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i
  %i.bb = fcmp olt float %i.ab, %i.al
  br i1 %i.bb, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i:          ; preds = %bb.f
  %i.bc = fcmp oeq float %i.ab, %i.al
  %i.bd = icmp slt i64 %i.ad, %i.an
  %i.be = and i1 %i.bc, %i.bd
  br i1 %i.be, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i
  %.sink79.i.i = phi float [ %i.au, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %i.al, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ]
  %.sink.i.i = phi i64 [ %i.ax, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %i.an, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.ag, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %i.af, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.062.i.i
  store float %.sink79.i.i, ptr %i.bf, align 4, !tbaa !144
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.062.i.i
  store i64 %.sink.i.i, ptr %i.bg, align 8, !tbaa !78
  %i.bh = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.bi = or disjoint i64 %i.bh, 1
  %i.bj = icmp ugt i64 %i.bh, %i.z
  br i1 %i.bj, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !15193

_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i: ; preds = %bb.g, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i, %bb.f, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.g ], [ %.062.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i ], [ %.062.i.i, %bb.f ]
  %.pre68.i.i = load float, ptr %i.aa, align 4, !tbaa !144
  %.pre69.i.i = load i64, ptr %i.ac, align 8, !tbaa !78
  br label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i, %bb.d
  %i.bk = phi i64 [ %i.ad, %bb.d ], [ %.pre69.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %i.bl = phi float [ %i.ab, %bb.d ], [ %.pre68.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.d ], [ %.0.lcssa.ph.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.0.lcssa.i.i
  store float %i.bl, ptr %i.bm, align 4, !tbaa !144
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.0.lcssa.i.i
  store i64 %i.bk, ptr %i.bn, align 8, !tbaa !78
  %i.bo = xor i64 %.041.i, -1
  %i.bp = add i64 %i.q, %i.bo                     ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bp
  store float %i.x, ptr %i.bq, align 4, !tbaa !144
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bp
  store i64 %i.y, ptr %i.br, align 8, !tbaa !78
  %.not.i = icmp ne i64 %i.y, -1
  %i.bs = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.041.i, %i.bs         ; 2 uses
  %i.bt = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !15194

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 8 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q
  %i.bv = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = shl i64 %.0.lcssa.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.s, ptr align 4 %i.bw, i64 %i.bx, i1 false)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.q
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bv
  %i.ca = shl i64 %.0.lcssa.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.u, ptr align 8 %i.bz, i64 %i.ca, i1 false)
  %i.cb = icmp ult i64 %.0.lcssa.i, %i.q
  br i1 %i.cb, label %.lr.ph44.i.preheader, label %_ZN5faiss12heap_reorderINS_4CMinIflEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i
  %i.cc = sub nuw i64 %i.q, %.0.lcssa.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader28, label %vector.ph

end_hunk_1
