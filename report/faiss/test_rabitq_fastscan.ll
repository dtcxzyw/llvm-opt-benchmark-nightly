Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_rabitq_fastscan?download=true
inline.NumInlined: 477
inline.NumDeleted: 286
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5faiss17RaBitQHeapHandlerINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EEC2EPKNS_19IndexRaBitQFastScanEmmPfPlPKNS_10IDSelectorEPKNS_30FastScanDistancePostProcessingEb:bb.a
  %i.b = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.c = zext i1 %8 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.j, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %i.k, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.m, align 8, !tbaa !98
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %6, ptr %i.o, align 8, !tbaa !99
  store i8 1, ptr %i.f, align 8, !tbaa !100
  store i8 8, ptr %i.g, align 1, !tbaa !101
  store i8 0, ptr %i.h, align 2, !tbaa !102
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss17RaBitQHeapHandlerINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.p, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %4, ptr %i.q, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %5, ptr %i.r, align 8, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i64 %2, ptr %i.s, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %3, ptr %i.t, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %7, ptr %i.u, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 %i.c, ptr %i.v, align 8, !tbaa !108
  %i.w = tail call noundef i64 @_ZNK5faiss19IndexRaBitQFastScan31compute_per_vector_storage_sizeEv(ptr noundef nonnull align 8 dereferenceable(210) %1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.w, ptr %i.x, align 8, !tbaa !109
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !25
  %i.ab = add i64 %i.aa, 1
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ac, %i.af
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !110
  %i.ah = tail call noundef i64 @_ZNK5faiss13IndexFastScan16get_block_strideEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !112 ; 3 uses
  %i.am = add nsw i32 %i.al, 7
  %i.an = sdiv i32 %i.am, 8
  %i.ao = sext i32 %i.an to i64                   ; 3 uses
  %i.ap = icmp slt i32 %i.al, -14
  br i1 %i.ap, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.aq = icmp slt i32 %i.al, 1
  br i1 %i.aq, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc19

.noexc19:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #22 ; 4 uses
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !77
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.ao  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.as, ptr %i.at, align 8, !tbaa !78
  store i8 0, ptr %i.ar, align 1, !tbaa !75
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.av = add nsw i64 %i.ao, -1                   ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.noexc19
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.au, i8 0, i64 %i.av, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %bb.b, %.noexc19
  %.0.i.i.i.i.i = phi ptr [ %i.as, %bb.b ], [ %i.au, %.noexc19 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.0.i.i.i.i.i, ptr %i.ax, align 8, !tbaa !113
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !32
  %i.az = icmp ugt i64 %i.ay, 100
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EEC2EPKNS_19IndexRaBitQFastScanEmmPfPlPKNS_10IDSelectorEPKNS_30FastScanDistancePostProcessingEb.omp_outlined, ptr nonnull %0)
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.b)
  store i32 %i.b, ptr %i.a, align 4, !tbaa !48
  call void @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EEC2EPKNS_19IndexRaBitQFastScanEmmPfPlPKNS_10IDSelectorEPKNS_30FastScanDistancePostProcessingEb.omp_outlined(ptr nonnull %i.a, ptr nonnull poison, ptr nonnull %0) #15
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5faiss20simd_result_handlers20ResultHandlerCompareINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EE16set_block_originEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %i.a, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %2, ptr %i.b, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EE6handleEmmNS_16simd16uint16_tplILS3_0EEES6_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"struct.faiss::simd16uint16_tpl") align 8 %3, ptr noundef byval(%"struct.faiss::simd16uint16_tpl") align 8 %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i16], align 32              ; 6 uses
  %5 = alloca %"struct.faiss::rabitq_utils::QueryFactorsData", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !106
  %i.g = mul i64 %i.f, %1                         ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !107  ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !121  ; 2 uses
  %.not61 = icmp eq ptr %i.u, null
  br i1 %.not61, label %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, label %bb.c

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
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !122 ; 2 uses
  %.not62 = icmp eq ptr %i.aa, null
  br i1 %.not62, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit
  %.idx = shl i64 %1, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !76
  %i.ad = fdiv float 1.000000e+00, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !76
  br label %.thread

.thread:                                          ; preds = %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, %bb.e
  %i.ag = phi float [ %i.ad, %bb.e ], [ 1.000000e+00, %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit ]
  %i.ah = phi float [ %i.af, %bb.e ], [ 0.000000e+00, %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !115
  %i.ak = shl i64 %2, 5
  %i.al = add i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 2 uses
  %i.aq = icmp ult i64 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !23
  %i.av = sext i32 %i.as to i64                   ; 2 uses
  %i.aw = udiv i64 %i.al, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !111
  %i.az = mul i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !110
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  %i.be = urem i64 %i.al, %i.av
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !109
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
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !80  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !82
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #21
  br label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit

_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit: ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.ah
  %.098 = phi i64 [ 0, %.lr.ph ], [ %i.ir, %bb.ah ] ; 4 uses
  %i.bs = add i64 %.098, %i.al                    ; 6 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.098
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !123
  %i.bv = uitofp i16 %i.bu to float
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %i.ag, float %i.ah) ; 4 uses
  %i.bx = load i64, ptr %i.bf, align 8, !tbaa !109
  %i.by = mul i64 %i.bx, %.098
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.by ; 9 uses
  %i.ca = load i8, ptr %i.bj, align 8, !tbaa !108, !range !64, !noundef !65
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load ptr, ptr %i.am, align 8, !tbaa !103 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 209
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !125, !range !64, !noundef !65
  %i.cf = trunc nuw i8 %i.ce to i1                ; 2 uses
  br i1 %i.cb, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  br i1 %i.cf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !112
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !129
  %i.cl = zext nneg i8 %i.ck to i32
  %notmask.i = shl nsw i32 -1, %i.cl
  %i.cm = xor i32 %notmask.i, -1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = mul nsw i64 %i.cn, %i.ci
  %i.cp = fptosi float %i.bw to i64
  %i.cq = shl nsw i64 %i.cp, 1
  %i.cr = sub nsw i64 %i.co, %i.cq
  %i.cs = load float, ptr %i.m, align 4, !tbaa !130
  %i.ct = load float, ptr %i.bz, align 1, !tbaa !131
  %i.cu = fadd float %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cw = load float, ptr %i.cv, align 1, !tbaa !133
  %i.cx = fmul float %i.cw, 2.000000e+00
  %i.cy = sitofp i64 %i.cr to float
  %i.cz = load float, ptr %i.o, align 8, !tbaa !116
  %i.da = fneg float %i.cy
  %i.db = fmul float %i.cx, %i.da
  %i.dc = call float @llvm.fmuladd.f32(float %i.db, float %i.cz, float %i.cu)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dd = load float, ptr %i.l, align 8, !tbaa !134
  %i.de = fsub float %i.bw, %i.dd
  %i.df = load float, ptr %i.bz, align 1, !tbaa !131
  %i.dg = load float, ptr %i.m, align 4, !tbaa !130
  %i.dh = fadd float %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.dj = load float, ptr %i.di, align 1, !tbaa !133
  %i.dk = fmul float %i.dj, -2.000000e+00
  %i.dl = call float @llvm.fmuladd.f32(float %i.dk, float %i.de, float %i.dh)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i = phi float [ %i.dl, %bb.j ], [ %i.dc, %bb.i ] ; 3 uses
  %i.dm = load float, ptr %i.n, align 8, !tbaa !135 ; 2 uses
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

_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit: ; preds = %bb.m, %bb.l
  %.0.i = phi float [ %i.dp, %bb.l ], [ %.sroa.speculated.i, %bb.m ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !136
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.dv = load float, ptr %i.du, align 1, !tbaa !137
  %i.dw = load ptr, ptr %i.r, align 8, !tbaa !107 ; 2 uses
  %.not65 = icmp eq ptr %i.dw, null
  br i1 %.not65, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !121 ; 2 uses
  %.not66 = icmp eq ptr %i.dy, null
  br i1 %.not66, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw [56 x i8], ptr %i.dy, i64 %1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !139
  br label %bb.p

bb.p:                                             ; preds = %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit, %bb.n, %bb.o
  %i.ec = phi float [ %i.eb, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit ]
  %i.ed = load float, ptr %i.h, align 4, !tbaa !76 ; 2 uses
  %i.ee = fmul float %i.dv, %i.ec                 ; 2 uses
  br i1 %i.dt, label %.split, label %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit

.split:                                           ; preds = %bb.p
  %i.ef = fadd float %.0.i, %i.ee
  %i.eg = fcmp ogt float %i.ef, %i.ed
  br i1 %i.eg, label %bb.q, label %bb.ah

_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit: ; preds = %bb.p
  %i.eh = fsub float %.0.i, %i.ee                 ; 2 uses
  %i.ei = fcmp ogt float %i.eh, 0.000000e+00
  %.sroa.speculated.i71 = select i1 %i.ei, float %i.eh, float 0.000000e+00
  %i.ej = fcmp olt float %.sroa.speculated.i71, %i.ed
  br i1 %i.ej, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %.split, %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit
  %i.ek = invoke noundef float @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EE30compute_full_multibit_distanceEmm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.bs, i64 noundef %1)
          to label %bb.r unwind label %bb.w       ; 11 uses

bb.r:                                             ; preds = %bb.q
  %i.el = load float, ptr %i.h, align 4, !tbaa !76
  %i.em = fcmp ogt float %i.el, %i.ek
  br i1 %i.em, label %bb.s, label %bb.ah

bb.s:                                             ; preds = %bb.r
  %i.en = load i64, ptr %i.e, align 8, !tbaa !106 ; 4 uses
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
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !76
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.eq
  %i.et = load float, ptr %i.es, align 4, !tbaa !76 ; 4 uses
  %i.eu = getelementptr [4 x i8], ptr %i.h, i64 %i.eq
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !76 ; 5 uses
  %i.ew = getelementptr [8 x i8], ptr %i.k, i64 %i.eq
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !49 ; 3 uses
  %i.ey = fcmp ogt float %i.et, %i.ev
  br i1 %i.ey, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i:              ; preds = %bb.t
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.eq
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !49
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
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !49 ; 2 uses
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
  store float %.sink71.i, ptr %i.fp, align 4, !tbaa !76
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.056.i
  store i64 %.sink.i, ptr %i.fq, align 8, !tbaa !49
  %i.fr = shl i64 %.1.i, 1                        ; 3 uses
  %i.fs = or disjoint i64 %i.fr, 1
  %i.ft = icmp ugt i64 %i.fr, %i.en
  br i1 %i.ft, label %.sink.split, label %.lr.ph.i, !llvm.loop !140

bb.w:                                             ; preds = %bb.q
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %bb.g
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !112
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !129
  %i.ga = zext nneg i8 %i.fz to i32
  %notmask.i76 = shl nsw i32 -1, %i.ga
  %i.gb = xor i32 %notmask.i76, -1
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = mul nsw i64 %i.gc, %i.fx
  %i.ge = fptosi float %i.bw to i64
  %i.gf = shl nsw i64 %i.ge, 1
  %i.gg = sub nsw i64 %i.gd, %i.gf
  %i.gh = load float, ptr %i.m, align 4, !tbaa !130
  %i.gi = load float, ptr %i.bz, align 1, !tbaa !131
  %i.gj = fadd float %i.gh, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.gl = load float, ptr %i.gk, align 1, !tbaa !133
  %i.gm = fmul float %i.gl, 2.000000e+00
  %i.gn = sitofp i64 %i.gg to float
  %i.go = load float, ptr %i.o, align 8, !tbaa !116
  %i.gp = fneg float %i.gn
  %i.gq = fmul float %i.gm, %i.gp
  %i.gr = call float @llvm.fmuladd.f32(float %i.gq, float %i.go, float %i.gj)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.gs = load float, ptr %i.l, align 8, !tbaa !134
  %i.gt = fsub float %i.bw, %i.gs
  %i.gu = load float, ptr %i.bz, align 1, !tbaa !131
  %i.gv = load float, ptr %i.m, align 4, !tbaa !130
  %i.gw = fadd float %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.gy = load float, ptr %i.gx, align 1, !tbaa !133
  %i.gz = fmul float %i.gy, -2.000000e+00
  %i.ha = call float @llvm.fmuladd.f32(float %i.gz, float %i.gt, float %i.gw)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %storemerge.i73 = phi float [ %i.ha, %bb.z ], [ %i.gr, %bb.y ] ; 3 uses
  %i.hb = load float, ptr %i.n, align 8, !tbaa !135 ; 2 uses
  %i.hc = fcmp une float %i.hb, 0.000000e+00
  br i1 %i.hc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hd = fsub float %storemerge.i73, %i.hb
  %i.he = fmul float %i.hd, -5.000000e-01
  br label %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit77

bb.ac:                                            ; preds = %bb.aa
  %i.hf = fcmp ogt float %storemerge.i73, 0.000000e+00
  %.sroa.speculated.i74 = select i1 %i.hf, float %storemerge.i73, float 0.000000e+00
  br label %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit77

_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit77: ; preds = %bb.ac, %bb.ab
  %.0.i75 = phi float [ %i.he, %bb.ab ], [ %.sroa.speculated.i74, %bb.ac ] ; 11 uses
  %i.hg = load float, ptr %i.h, align 4, !tbaa !76
  %i.hh = fcmp ogt float %i.hg, %.0.i75
  br i1 %i.hh, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit77
  %i.hi = load i64, ptr %i.e, align 8, !tbaa !106 ; 4 uses
  %i.hj = icmp ult i64 %i.hi, 2
  br i1 %i.hj, label %.sink.split, label %.lr.ph.preheader.i78

.lr.ph.preheader.i78:                             ; preds = %bb.ad
  %.phi.trans.insert.i79 = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.hi
  br label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %bb.ag, %.lr.ph.preheader.i78
  %i.hk = phi i64 [ %i.in, %bb.ag ], [ 3, %.lr.ph.preheader.i78 ]
  %i.hl = phi i64 [ %i.im, %bb.ag ], [ 2, %.lr.ph.preheader.i78 ] ; 7 uses
  %.056.i81 = phi i64 [ %.1.i86, %bb.ag ], [ 1, %.lr.ph.preheader.i78 ] ; 6 uses
  %i.hm = icmp eq i64 %i.hl, %i.hi
  br i1 %i.hm, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i90, label %bb.ae

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i90: ; preds = %.lr.ph.i80
  %.pre.i91 = load float, ptr %.phi.trans.insert.i79, align 4, !tbaa !76
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i88

bb.ae:                                            ; preds = %.lr.ph.i80
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.hl
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !76 ; 4 uses
  %i.hp = getelementptr [4 x i8], ptr %i.h, i64 %i.hl
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !76 ; 5 uses
  %i.hr = getelementptr [8 x i8], ptr %i.k, i64 %i.hl
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !49 ; 3 uses
  %i.ht = fcmp ogt float %i.ho, %i.hq
  br i1 %i.ht, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i88, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i82

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i82:            ; preds = %bb.ae
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.hl
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !49
  %i.hw = fcmp oeq float %i.ho, %i.hq
  %i.hx = icmp sgt i64 %i.hv, %i.hs
  %i.hy = and i1 %i.hw, %i.hx
  br i1 %i.hy, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i88, label %bb.af

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i88:     ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i82, %bb.ae, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i90
  %i.hz = phi float [ %.pre.i91, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i90 ], [ %i.ho, %bb.ae ], [ %i.ho, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i82 ] ; 3 uses
  %i.ia = fcmp ogt float %.0.i75, %i.hz
  br i1 %i.ia, label %.sink.split, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i89

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i89:          ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i88
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.hl
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !49 ; 2 uses
  %i.id = fcmp oeq float %.0.i75, %i.hz
  %i.ie = icmp sgt i64 %i.bs, %i.ic
  %i.if = and i1 %i.id, %i.ie
  br i1 %i.if, label %.sink.split, label %bb.ag

bb.af:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i82
  %i.ig = fcmp ogt float %.0.i75, %i.hq
  br i1 %i.ig, label %.sink.split, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i83

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i83:          ; preds = %bb.af
  %i.ih = fcmp oeq float %.0.i75, %i.hq
  %i.ii = icmp sgt i64 %i.bs, %i.hs
  %i.ij = and i1 %i.ih, %i.ii
  br i1 %i.ij, label %.sink.split, label %bb.ag

bb.ag:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i83, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i89
  %.sink71.i84 = phi float [ %i.hz, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i89 ], [ %i.hq, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i83 ]
  %.sink.i85 = phi i64 [ %i.ic, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i89 ], [ %i.hs, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i83 ]
  %.1.i86 = phi i64 [ %i.hl, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i89 ], [ %i.hk, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i83 ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.056.i81
  store float %.sink71.i84, ptr %i.ik, align 4, !tbaa !76
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.056.i81
  store i64 %.sink.i85, ptr %i.il, align 8, !tbaa !49
  %i.im = shl i64 %.1.i86, 1                      ; 3 uses
  %i.in = or disjoint i64 %i.im, 1
  %i.io = icmp ugt i64 %i.im, %i.hi
  br i1 %i.io, label %.sink.split, label %.lr.ph.i80, !llvm.loop !140

.sink.split:                                      ; preds = %bb.ag, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i83, %bb.af, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i89, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i88, %bb.v, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i, %bb.u, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, %bb.ad, %bb.s
  %.0.lcssa.i87.sink123 = phi i64 [ %.056.i, %bb.u ], [ 1, %bb.s ], [ 1, %bb.ad ], [ %.1.i, %bb.v ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i ], [ %.1.i86, %bb.ag ], [ %.056.i81, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i89 ], [ %.056.i81, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i83 ], [ %.056.i81, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i88 ], [ %.056.i81, %bb.af ] ; 2 uses
  %.0.i75.sink = phi float [ %i.ek, %bb.v ], [ %i.ek, %bb.s ], [ %.0.i75, %bb.ad ], [ %i.ek, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i ], [ %i.ek, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %i.ek, %bb.u ], [ %i.ek, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ], [ %.0.i75, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i88 ], [ %.0.i75, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i89 ], [ %.0.i75, %bb.af ], [ %.0.i75, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i83 ], [ %.0.i75, %bb.ag ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.0.lcssa.i87.sink123
  store float %.0.i75.sink, ptr %i.ip, align 4, !tbaa !76
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0.lcssa.i87.sink123
  store i64 %i.bs, ptr %i.iq, align 8, !tbaa !49
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %.split, %_ZN5faiss12rabitq_utils30compute_1bit_adjusted_distanceEfRKNS0_14SignBitFactorsERKNS0_16QueryFactorsDataEbmm.exit77, %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit, %bb.r
  %i.ir = add nuw nsw i64 %.098, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ir, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !141

bb.ai:                                            ; preds = %bb.w, %bb.d
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.fu, %bb.w ]
  %i.is = load ptr, ptr %i.q, align 8, !tbaa !80  ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i93, label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit94, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !82
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.ix) #21
  br label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit94

_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit94: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EE3endEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  %i.e = icmp ugt i64 %i.d, 100
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EE3endEv.omp_outlined, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.b)
  store i32 %i.b, ptr %i.a, align 4, !tbaa !48
  call void @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EE3endEv.omp_outlined(ptr nonnull %i.a, ptr nonnull poison, ptr nonnull %0) #15
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !75
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #21
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %or.cond = fcmp uno float %3, %4
  br i1 %or.cond, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit

_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit: ; preds = %bb.a
  %i.a = insertelement <2 x float> poison, float %4, i64 0
  %i.b = insertelement <2 x float> %i.a, float %3, i64 1 ; 2 uses
  %i.c = bitcast <2 x float> %i.b to <2 x i32>    ; 2 uses
  %i.d = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.b)
  %i.e = sub <2 x i32> zeroinitializer, %i.c
  %i.f = fneg <2 x float> %i.d
  %i.g = bitcast <2 x float> %i.f to <2 x i32>
  %i.h = icmp slt <2 x i32> %i.c, zeroinitializer
  %i.i = select <2 x i1> %i.h, <2 x i32> %i.e, <2 x i32> %i.g ; 2 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0     ; 3 uses
  %i.k = extractelement <2 x i32> %i.i, i64 1     ; 3 uses
  %.not.i.i = icmp ult i32 %i.k, %i.j
  %i.l = sub nuw i32 %i.k, %i.j
  %i.m = sub nuw i32 %i.j, %i.k
  %i.n = select i1 %.not.i.i, i32 %i.m, i32 %i.l
  %i.o = icmp ult i32 %i.n, 5
  br i1 %i.o, label %bb.b, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread

bb.b:                                             ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.p

_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread: ; preds = %bb.a, %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 8, ptr %i.u, align 8, !tbaa !142
  %i.v = fpext float %3 to double
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, double noundef %i.v)
          to label %_ZNSolsEf.exit unwind label %bb.g ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSolsEf.exit
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 8, ptr %i.ac, align 8, !tbaa !142
  %i.ad = fpext float %4 to double
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, double noundef %i.ad)
          to label %_ZNSolsEf.exit14 unwind label %bb.i ; 0 uses

_ZNSolsEf.exit14:                                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSolsEf.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %8, align 8, !tbaa !67    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !75
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ak = load ptr, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load i64, ptr %i.al, align 8, !tbaa !75
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ap = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !72
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24    ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %6, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !72
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.au, ptr %i.x, align 8, !tbaa !72
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  %i.t = load i64, ptr %i.d, align 8, !tbaa !75, !alias.scope !196
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #21
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !72
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !72
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !75
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #15
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !72
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !72
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !143
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5faiss5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_test_rabitq_fastscan.cpp() #18 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !184
  %i.b = call noalias noundef nonnull dereferenceable(59) ptr @_Znwm(i64 noundef 59) #22 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !67
  store i64 58, ptr %i.a, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.b, ptr noundef nonnull align 1 dereferenceable(58) @.str.2, i64 58, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 58, ptr %i.c, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  store i8 0, ptr %i.d, align 1, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !184
  %i.f = invoke noalias noundef nonnull dereferenceable(59) ptr @_Znwm(i64 noundef 59) #22
          to label %.noexc11.i unwind label %bb.g ; 3 uses

.noexc11.i:                                       ; preds = %bb.a
  store ptr %i.f, ptr %0, align 8, !tbaa !67
  store i64 58, ptr %i.e, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.f, ptr noundef nonnull align 1 dereferenceable(58) %i.b, i64 58, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 58, ptr %i.g, align 8, !tbaa !186
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 58
  store i8 0, ptr %i.h, align 1, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 39, ptr %i.i, align 8, !tbaa !197
  %i.j = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %.noexc11.i
  %i.k = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 39)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 39)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI52RaBitQFastScan_HeapHandlerUsesBbsLocalAuxOffset_TestEE, i64 16), ptr %i.m, align 8, !tbaa !72
  %i.n = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %0, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef nonnull %i.m)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.e
  br i1 %i.p, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.e, align 8, !tbaa !75
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #21
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i

_ZN7testing8internal12CodeLocationD2Ev.exit.i:    ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.s = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !75
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #21
  br label %__cxx_global_var_init.exit

bb.g:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit14.i

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %.noexc11.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.e
  br i1 %i.z, label %_ZN7testing8internal12CodeLocationD2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !75
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #21
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit14.i

_ZN7testing8internal12CodeLocationD2Ev.exit14.i:  ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i, %bb.g
  %.pn.pn.i = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i ], [ %i.x, %bb.h ]
  %i.ac = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit14.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !75
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %.pn.pn.i

__cxx_global_var_init.exit:                       ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  store ptr %i.n, ptr @_ZN52RaBitQFastScan_HeapHandlerUsesBbsLocalAuxOffset_Test10test_info_E, align 8, !tbaa !199
  %i.ag = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN52RaBitQFastScan_HeapHandlerUsesBbsLocalAuxOffset_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #16

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn }
attributes #24 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !13, i64 25}
!11 = !{!"_ZTSN5faiss5IndexE", !7, i64 8, !12, i64 16, !13, i64 24, !13, i64 25, !14, i64 28, !15, i64 32}
!12 = !{!"long", !8, i64 0}
!13 = !{!"bool", !8, i64 0}
!14 = !{!"_ZTSN5faiss10MetricTypeE", !8, i64 0}
!15 = !{!"float", !8, i64 0}
!16 = !{!11, !12, i64 16}
!17 = !{!18, !12, i64 88}
!18 = !{!"_ZTSN5faiss13IndexFastScanE", !11, i64 0, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !19, i64 104, !21, i64 128}
!19 = !{!"_ZTSN5faiss12AlignedTableIhLi32EEE", !20, i64 0, !12, i64 16}
!20 = !{!"_ZTSN5faiss22AlignedTableTightAllocIhLi32EEE", !21, i64 0, !12, i64 8}
!21 = !{!"p1 omnipotent char", !22, i64 0}
!22 = !{!"any pointer", !8, i64 0}
!23 = !{!20, !21, i64 0}
!24 = !{!19, !12, i64 16}
!25 = !{!18, !12, i64 96}
!26 = !{!18, !7, i64 44}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !7, i64 0}
!30 = !{!"_ZTSN5faiss30FastScanDistancePostProcessingE", !7, i64 0, !31, i64 8, !12, i64 16, !8, i64 24, !13, i64 25}
!31 = !{!"p1 _ZTSN5faiss12rabitq_utils16QueryFactorsDataE", !22, i64 0}
!32 = !{!33, !12, i64 144}
!33 = !{!"_ZTSN5faiss17RaBitQHeapHandlerINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EEE", !34, i64 0, !42, i64 120, !40, i64 128, !37, i64 136, !12, i64 144, !12, i64 152, !43, i64 160, !13, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !44, i64 200}
!34 = !{!"_ZTSN5faiss20simd_result_handlers20ResultHandlerCompareINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EEE", !35, i64 0, !13, i64 88, !12, i64 96, !12, i64 104, !41, i64 112}
!35 = !{!"_ZTSN5faiss17SIMDResultHandlerILNS_9SIMDLevelE0EEE", !36, i64 0}
!36 = !{!"_ZTSN5faiss24SIMDResultHandlerToFloatE", !13, i64 8, !8, i64 9, !13, i64 10, !12, i64 16, !12, i64 24, !12, i64 32, !37, i64 40, !38, i64 48, !21, i64 56, !39, i64 64, !40, i64 72, !12, i64 80}
!37 = !{!"p1 long", !22, i64 0}
!38 = !{!"p1 int", !22, i64 0}
!39 = !{!"p1 short", !22, i64 0}
!40 = !{!"p1 float", !22, i64 0}
!41 = !{!"p1 _ZTSN5faiss10IDSelectorE", !22, i64 0}
!42 = !{!"p1 _ZTSN5faiss19IndexRaBitQFastScanE", !22, i64 0}
!43 = !{!"p1 _ZTSN5faiss30FastScanDistancePostProcessingE", !22, i64 0}
!44 = !{!"_ZTSSt6vectorIhSaIhEE", !45, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!48 = !{!7, !7, i64 0}
!49 = !{!12, !12, i64 0}
!50 = !{!51, !53}
!51 = distinct !{!51, !52, !"_ZN7testing8internal11CmpHelperEQIliEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!52 = distinct !{!52, !"_ZN7testing8internal11CmpHelperEQIliEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!53 = distinct !{!53, !54, !"_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!54 = distinct !{!54, !"_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!55 = !{!56, !13, i64 0}
!56 = !{!"_ZTSN7testing15AssertionResultE", !13, i64 0, !57, i64 8}
!57 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !58, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !59, i64 0}
!59 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !60, i64 0}
!60 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !61, i64 0}
!61 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !62, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !63, i64 0}
!63 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!63, !63, i64 0}
!67 = !{!68, !21, i64 0}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !69, i64 0, !12, i64 8, !8, i64 16}
!69 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"vtable pointer", !9, i64 0}
!74 = distinct !{null, null, null}
!75 = !{!8, !8, i64 0}
!76 = !{!15, !15, i64 0}
!77 = !{!47, !21, i64 0}
!78 = !{!47, !21, i64 16}
!79 = !{ptr @_ZN5faiss17RaBitQHeapHandlerINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EED2Ev}
!80 = !{!81, !40, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!82 = !{!81, !40, i64 16}
!83 = !{!84, !86, i64 32}
!84 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !85, i64 24, !86, i64 28, !86, i64 32, !87, i64 40, !88, i64 48, !8, i64 64, !7, i64 192, !89, i64 200, !90, i64 208}
!85 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!86 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!87 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!88 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !12, i64 8}
!89 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!90 = !{!"_ZTSSt6locale", !91, i64 0}
!91 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!92 = distinct !{!92, !28}
!93 = !{!20, !12, i64 8}
!94 = !{!21, !21, i64 0}
!95 = !{!36, !12, i64 16}
!96 = !{!36, !12, i64 24}
!97 = !{!36, !12, i64 32}
!98 = !{!34, !13, i64 88}
!99 = !{!34, !41, i64 112}
!100 = !{!36, !13, i64 8}
!101 = !{!36, !8, i64 9}
!102 = !{!36, !13, i64 10}
!103 = !{!33, !42, i64 120}
!104 = !{!33, !40, i64 128}
!105 = !{!33, !37, i64 136}
!106 = !{!33, !12, i64 152}
!107 = !{!33, !43, i64 160}
!108 = !{!33, !13, i64 168}
!109 = !{!33, !12, i64 176}
!110 = !{!33, !12, i64 184}
!111 = !{!33, !12, i64 192}
!112 = !{!11, !7, i64 8}
!113 = !{!47, !21, i64 8}
!114 = !{!34, !12, i64 96}
!115 = !{!34, !12, i64 104}
!116 = !{!117, !15, i64 24}
!117 = !{!"_ZTSN5faiss12rabitq_utils16QueryFactorsDataE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !118, i64 32}
!118 = !{!"_ZTSSt6vectorIfSaIfEE", !119, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !120, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !81, i64 0}
!121 = !{!30, !31, i64 8}
!122 = !{!36, !40, i64 72}
!123 = !{!124, !124, i64 0}
!124 = !{!"short", !8, i64 0}
!125 = !{!126, !13, i64 209}
!126 = !{!"_ZTSN5faiss19IndexRaBitQFastScanE", !18, i64 0, !127, i64 136, !118, i64 184, !8, i64 208, !13, i64 209}
!127 = !{!"_ZTSN5faiss14RaBitQuantizerE", !128, i64 0, !40, i64 24, !14, i64 32, !12, i64 40}
!128 = !{!"_ZTSN5faiss9QuantizerE", !12, i64 8, !12, i64 16}
!129 = !{!126, !8, i64 208}
!130 = !{!117, !15, i64 12}
!131 = !{!132, !15, i64 0}
!132 = !{!"_ZTSN5faiss12rabitq_utils14SignBitFactorsE", !15, i64 0, !15, i64 4}
!133 = !{!132, !15, i64 4}
!134 = !{!117, !15, i64 8}
!135 = !{!117, !15, i64 16}
!136 = !{!11, !14, i64 28}
!137 = !{!138, !15, i64 8}
!138 = !{!"_ZTSN5faiss12rabitq_utils23SignBitFactorsWithErrorE", !132, i64 0, !15, i64 8}
!139 = !{!117, !15, i64 28}
!140 = distinct !{!140, !28}
!141 = distinct !{!141, !28}
!142 = !{!84, !12, i64 8}
!143 = !{!144, !12, i64 8}
!144 = !{!"_ZTSSi", !12, i64 8}
!145 = distinct !{!145, !28, !146, !147}
!146 = !{!"llvm.loop.isvectorized", i32 1}
!147 = !{!"llvm.loop.unroll.runtime.disable"}
!148 = distinct !{!148, !28, !147, !146}
!149 = distinct !{!149, !150}
!150 = !{!"llvm.loop.unswitch.partial.disable"}
!151 = !{!152}
!152 = !{i64 2, i64 -1, i64 -1, i1 true}
!153 = !{!126, !12, i64 176}
!154 = !{!155}
!155 = distinct !{!155, !156}
!156 = distinct !{!156, !"LVerDomain"}
!157 = !{!158}
!158 = distinct !{!158, !156}
!159 = distinct !{!159, !28, !146, !147}
!160 = !{!"branch_weights", i32 4, i32 28}
!161 = distinct !{!161, !28, !146, !147}
!162 = !{!163}
!163 = distinct !{!163, !164}
!164 = distinct !{!164, !"LVerDomain"}
!165 = !{!166}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !28, !146, !147}
end_hunk_1
