Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/haloexchange?download=true
inline.NumInlined: 946
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3gmx12HaloExchangeC2E7PbcType:bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gmx14DomainPairCommES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3gmx14DomainPairCommEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.af, %_ZSt8_DestroyIN3gmx14DomainPairCommEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3gmx17DomainCommForwardD2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #13
  br label %_ZN3gmx17DomainCommForwardD2Ev.exit.i.i.i.i

_ZN3gmx17DomainCommForwardD2Ev.exit.i.i.i.i:      ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i1.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i1.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN3gmx17DomainCommForwardD2Ev.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #13
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %_ZN3gmx17DomainCommForwardD2Ev.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEED2Ev.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #13
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEED2Ev.exit.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28   ; 3 uses
  %.not.i.i.i2.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i2.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx14DomainPairCommEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEED2Ev.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #13
  br label %_ZSt8_DestroyIN3gmx14DomainPairCommEEvPT_.exit.i.i

_ZSt8_DestroyIN3gmx14DomainPairCommEEvPT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEED2Ev.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 240 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gmx14DomainPairCommES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !86

_ZSt8_DestroyIPN3gmx14DomainPairCommES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3gmx14DomainPairCommEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPN3gmx14DomainPairCommES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN3gmx14DomainPairCommES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3gmx14DomainPairCommES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.ag = phi ptr [ %.pr, %_ZSt8_DestroyIPN3gmx14DomainPairCommES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN3gmx14DomainPairCommESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN3gmx14DomainPairCommES1_EvT_S3_RSaIT0_E.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !96
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #13
  br label %_ZNSt12_Vector_baseIN3gmx14DomainPairCommESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN3gmx14DomainPairCommESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx14DomainPairCommES1_EvT_S3_RSaIT0_E.exit, %bb.f
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx12HaloExchangeD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI12tmpi_status_SaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #13
  br label %_ZNSt6vectorI12tmpi_status_SaIS0_EED2Ev.exit

_ZNSt6vectorI12tmpi_status_SaIS0_EED2Ev.exit:     ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP9tmpi_req_SaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI12tmpi_status_SaIS0_EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #13
  br label %_ZNSt6vectorIP9tmpi_req_SaIS1_EED2Ev.exit.i

_ZNSt6vectorIP9tmpi_req_SaIS1_EED2Ev.exit.i:      ; preds = %bb.c, %_ZNSt6vectorI12tmpi_status_SaIS0_EED2Ev.exit
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZN3gmx15HaloMpiRequestsD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIP9tmpi_req_SaIS1_EED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #13
  br label %_ZN3gmx15HaloMpiRequestsD2Ev.exit

_ZN3gmx15HaloMpiRequestsD2Ev.exit:                ; preds = %_ZNSt6vectorIP9tmpi_req_SaIS1_EED2Ev.exit.i, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorIP9tmpi_req_SaIS1_EED2Ev.exit.i2, label %bb.e

bb.e:                                             ; preds = %_ZN3gmx15HaloMpiRequestsD2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #13
  br label %_ZNSt6vectorIP9tmpi_req_SaIS1_EED2Ev.exit.i2

_ZNSt6vectorIP9tmpi_req_SaIS1_EED2Ev.exit.i2:     ; preds = %bb.e, %_ZN3gmx15HaloMpiRequestsD2Ev.exit
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !30  ; 3 uses
  %.not.i.i.i1.i3 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1.i3, label %_ZN3gmx15HaloMpiRequestsD2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP9tmpi_req_SaIS1_EED2Ev.exit.i2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #13
  br label %_ZN3gmx15HaloMpiRequestsD2Ev.exit4

_ZN3gmx15HaloMpiRequestsD2Ev.exit4:               ; preds = %_ZNSt6vectorIP9tmpi_req_SaIS1_EED2Ev.exit.i2, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aj) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK3gmx18DomainCommBackward24packCoordinateSendBufferEPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEENS4_IS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !46, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1                  ; 5 uses
  br i1 %i.c, label %.preheader49, label %.loopexit

.preheader49:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !50
  %6 = load <3 x i32>, ptr %i.d, align 4, !tbaa !98
  %7 = sitofp <3 x i32> %6 to <3 x float>         ; 6 uses
  %8 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> zeroinitializer
  %9 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %i.k, <2 x float> zeroinitializer)
  %10 = extractelement <3 x float> %7, i64 0
  %i.l = tail call float @llvm.fmuladd.f32(float %10, float %i.f, float 0.000000e+00)
  %i.m = load <2 x float>, ptr %i.g, align 4, !tbaa !50
  %11 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.m, <2 x float> %9)
  %13 = extractelement <3 x float> %7, i64 1
  %i.n = tail call float @llvm.fmuladd.f32(float %13, float %i.i, float %i.l)
  %i.o = load <2 x float>, ptr %i.j, align 4, !tbaa !50
  %14 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %i.o, <2 x float> %12)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load float, ptr %i.q, align 4, !tbaa !50
  %15 = extractelement <3 x float> %7, i64 2
  %i.s = tail call float @llvm.fmuladd.f32(float %15, float %i.r, float %i.n)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader49, %bb.a
  %.sroa.24.0 = phi float [ %i.s, %.preheader49 ], [ 0.000000e+00, %bb.a ] ; 12 uses
  %i.t = phi <2 x float> [ %i.p, %.preheader49 ], [ zeroinitializer, %bb.a ] ; 13 uses
  %i.u = extractelement <2 x float> %i.t, i64 0   ; 24 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !51
  %.not = icmp eq i32 %i.w, 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.y = load i8, ptr %i.x, align 1, !tbaa !52, !range !47, !noundef !48
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i.i.i.i.i.i.i.i.i6.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !28 ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i.i.i.i.i.i.i.i.i7.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !53 ; 9 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i8.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i6.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i.i.i7.i.i.i.i.i.i ; 8 uses
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %.loopexit
  br i1 %i.z, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i8.i.i.i.i.i.i, label %"_ZN3gmx25dispatchTemplatedFunctionIZNKS_18DomainCommBackward24packCoordinateSendBufferEPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EEE3$_0JbNS_12_GLOBAL__N_118NumAtomsPerClusterEEEEDaOT_bDpT0_.exit", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.02315.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i6.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ee, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !55 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56 ; 2 uses
  %.not710.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, %i.ah
  br i1 %.not710.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ai = sext i32 %i.af to i64
  %i.aj = sext i32 %.02315.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aj, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next19.7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 96
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 8 uses
  %i.al = getelementptr inbounds [12 x i8], ptr %4, i64 %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 26 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ak, i64 12, i1 false), !tbaa.struct !99
  %i.am = load float, ptr %i.al, align 4, !tbaa !50
  %i.an = fadd float %i.u, %i.am
  store float %i.an, ptr %i.al, align 4, !tbaa !50
  %i.ao = load float, ptr %i.ac, align 4, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !50
  %i.ar = fsub float %i.ao, %i.aq
  store float %i.ar, ptr %i.ap, align 4, !tbaa !50
  %i.as = load float, ptr %i.ad, align 4, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !50
  %i.av = fsub float %i.as, %i.au
  store float %i.av, ptr %i.at, align 4, !tbaa !50
  %i.aw = getelementptr i8, ptr %i.ak, i64 12
  %i.ax = getelementptr i8, ptr %i.al, i64 12     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ax, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.aw, i64 12, i1 false), !tbaa.struct !99
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !50
  %i.az = fadd float %i.u, %i.ay
  store float %i.az, ptr %i.ax, align 4, !tbaa !50
  %i.ba = load float, ptr %i.ac, align 4, !tbaa !50
  %i.bb = getelementptr i8, ptr %i.al, i64 16     ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !50
  %i.bd = fsub float %i.ba, %i.bc
  store float %i.bd, ptr %i.bb, align 4, !tbaa !50
  %i.be = load float, ptr %i.ad, align 4, !tbaa !50
  %i.bf = getelementptr i8, ptr %i.al, i64 20     ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !50
  %i.bh = fsub float %i.be, %i.bg
  store float %i.bh, ptr %i.bf, align 4, !tbaa !50
  %i.bi = getelementptr i8, ptr %i.ak, i64 24
  %i.bj = getelementptr i8, ptr %i.al, i64 24     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.bi, i64 12, i1 false), !tbaa.struct !99
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !50
  %i.bl = fadd float %i.u, %i.bk
  store float %i.bl, ptr %i.bj, align 4, !tbaa !50
  %i.bm = load float, ptr %i.ac, align 4, !tbaa !50
  %i.bn = getelementptr i8, ptr %i.al, i64 28     ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !50
  %i.bp = fsub float %i.bm, %i.bo
  store float %i.bp, ptr %i.bn, align 4, !tbaa !50
  %i.bq = load float, ptr %i.ad, align 4, !tbaa !50
  %i.br = getelementptr i8, ptr %i.al, i64 32     ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !50
  %i.bt = fsub float %i.bq, %i.bs
  store float %i.bt, ptr %i.br, align 4, !tbaa !50
  %i.bu = getelementptr i8, ptr %i.ak, i64 36
  %i.bv = getelementptr i8, ptr %i.al, i64 36     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bv, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.bu, i64 12, i1 false), !tbaa.struct !99
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !50
  %i.bx = fadd float %i.u, %i.bw
  store float %i.bx, ptr %i.bv, align 4, !tbaa !50
  %i.by = load float, ptr %i.ac, align 4, !tbaa !50
  %i.bz = getelementptr i8, ptr %i.al, i64 40     ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !50
  %i.cb = fsub float %i.by, %i.ca
  store float %i.cb, ptr %i.bz, align 4, !tbaa !50
  %i.cc = load float, ptr %i.ad, align 4, !tbaa !50
  %i.cd = getelementptr i8, ptr %i.al, i64 44     ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !50
  %i.cf = fsub float %i.cc, %i.ce
  store float %i.cf, ptr %i.cd, align 4, !tbaa !50
  %i.cg = getelementptr i8, ptr %i.ak, i64 48
  %i.ch = getelementptr i8, ptr %i.al, i64 48     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ch, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cg, i64 12, i1 false), !tbaa.struct !99
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !50
  %i.cj = fadd float %i.u, %i.ci
  store float %i.cj, ptr %i.ch, align 4, !tbaa !50
  %i.ck = load float, ptr %i.ac, align 4, !tbaa !50
  %i.cl = getelementptr i8, ptr %i.al, i64 52     ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !50
  %i.cn = fsub float %i.ck, %i.cm
  store float %i.cn, ptr %i.cl, align 4, !tbaa !50
  %i.co = load float, ptr %i.ad, align 4, !tbaa !50
  %i.cp = getelementptr i8, ptr %i.al, i64 56     ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !50
  %i.cr = fsub float %i.co, %i.cq
  store float %i.cr, ptr %i.cp, align 4, !tbaa !50
  %i.cs = getelementptr i8, ptr %i.ak, i64 60
  %i.ct = getelementptr i8, ptr %i.al, i64 60     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ct, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cs, i64 12, i1 false), !tbaa.struct !99
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !50
  %i.cv = fadd float %i.u, %i.cu
  store float %i.cv, ptr %i.ct, align 4, !tbaa !50
  %i.cw = load float, ptr %i.ac, align 4, !tbaa !50
  %i.cx = getelementptr i8, ptr %i.al, i64 64     ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !50
  %i.cz = fsub float %i.cw, %i.cy
  store float %i.cz, ptr %i.cx, align 4, !tbaa !50
  %i.da = load float, ptr %i.ad, align 4, !tbaa !50
  %i.db = getelementptr i8, ptr %i.al, i64 68     ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !50
  %i.dd = fsub float %i.da, %i.dc
  store float %i.dd, ptr %i.db, align 4, !tbaa !50
  %i.de = getelementptr i8, ptr %i.ak, i64 72
  %i.df = getelementptr i8, ptr %i.al, i64 72     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.de, i64 12, i1 false), !tbaa.struct !99
  %i.dg = load float, ptr %i.df, align 4, !tbaa !50
  %i.dh = fadd float %i.u, %i.dg
  store float %i.dh, ptr %i.df, align 4, !tbaa !50
  %i.di = load float, ptr %i.ac, align 4, !tbaa !50
  %i.dj = getelementptr i8, ptr %i.al, i64 76     ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !50
  %i.dl = fsub float %i.di, %i.dk
  store float %i.dl, ptr %i.dj, align 4, !tbaa !50
  %i.dm = load float, ptr %i.ad, align 4, !tbaa !50
  %i.dn = getelementptr i8, ptr %i.al, i64 80     ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !50
  %i.dp = fsub float %i.dm, %i.do
  store float %i.dp, ptr %i.dn, align 4, !tbaa !50
  %i.dq = getelementptr i8, ptr %i.ak, i64 84
  %i.dr = getelementptr i8, ptr %i.al, i64 84     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dr, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.dq, i64 12, i1 false), !tbaa.struct !99
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !50
  %i.dt = fadd float %i.u, %i.ds
  store float %i.dt, ptr %i.dr, align 4, !tbaa !50
  %i.du = load float, ptr %i.ac, align 4, !tbaa !50
  %i.dv = getelementptr i8, ptr %i.al, i64 88     ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !50
  %i.dx = fsub float %i.du, %i.dw
  store float %i.dx, ptr %i.dv, align 4, !tbaa !50
  %i.dy = load float, ptr %i.ad, align 4, !tbaa !50
  %i.dz = getelementptr i8, ptr %i.al, i64 92     ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !50
  %i.eb = fsub float %i.dy, %i.ea
  store float %i.eb, ptr %i.dz, align 4, !tbaa !50
  %indvars.iv.next19.7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ec = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ah, %i.ec
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = trunc nsw i64 %indvars.iv.next19.7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.02315.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.ed, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.03.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ee, %.val1.i.i.i.i.i.i.i.i.i.i7.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN3gmx25dispatchTemplatedFunctionIZNKS_18DomainCommBackward24packCoordinateSendBufferEPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EEE3$_0JbNS_12_GLOBAL__N_118NumAtomsPerClusterEEEEDaOT_bDpT0_.exit", label %bb.e

bb.f:                                             ; preds = %bb.c
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i8.i.i.i.i.i.i, label %"_ZN3gmx25dispatchTemplatedFunctionIZNKS_18DomainCommBackward24packCoordinateSendBufferEPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EEE3$_0JbNS_12_GLOBAL__N_118NumAtomsPerClusterEEEEDaOT_bDpT0_.exit", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.f
end_hunk_0
