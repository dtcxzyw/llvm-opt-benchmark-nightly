Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/fast_scan?download=true
inline.NumInlined: 24799
inline.NumDeleted: 4569
loop-unroll.NumCompletelyUnrolled: 733
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 1469
begin_hunk_0_@_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED0Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss20simd_result_handlers12RangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11906 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11907
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28, !inline_history !13212
  br label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i.i

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11905 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11908
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28, !inline_history !13212
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.c, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4666 ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2.i.i, label %_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !4668
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28, !inline_history !13212
  br label %_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED2Ev.exit

_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EE7handlerEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EE15accumulate_loopEimiiPKhS9_im(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i64 noundef %8) unnamed_addr #2 comdat align 2 {
bb.a:
  %9 = alloca %"struct.faiss::NormTableScaler", align 4 ; 6 uses
  %10 = alloca %"struct.faiss::DummyScaler", align 1 ; 3 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 %7, ptr %9, align 4, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.b = trunc i32 %7 to i16
  %i.c = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %i.d = shufflevector <8 x i16> %i.c, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x i16> %i.d, ptr %i.a, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 20
  store <8 x i16> %i.d, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss32pq4_accumulate_loop_fixed_scalerILNS_9SIMDLevelE0ENS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELS1_0EEENS_15NormTableScalerILS1_0EEEEEvimiiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(36) %9, i64 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss32pq4_accumulate_loop_fixed_scalerILNS_9SIMDLevelE0ENS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELS1_0EEENS_11DummyScalerILS1_0EEEEEvimiiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %10, i64 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EE19accumulate_loop_qbsEimiPKhS9_im(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i64 noundef %7) unnamed_addr #2 comdat align 2 {
bb.a:
  %8 = alloca %"struct.faiss::NormTableScaler", align 4 ; 6 uses
  %9 = alloca %"struct.faiss::DummyScaler", align 1 ; 3 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i32 %6, ptr %8, align 4, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.b = trunc i32 %6 to i16
  %i.c = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %i.d = shufflevector <8 x i16> %i.c, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x i16> %i.d, ptr %i.a, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20
  store <8 x i16> %i.d, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss40pq4_accumulate_loop_qbs_fixed_scaler_256ILNS_9SIMDLevelE0ENS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELS1_0EEENS_15NormTableScalerILS1_0EEEEEvimiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(36) %8, i64 noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss40pq4_accumulate_loop_qbs_fixed_scaler_256ILNS_9SIMDLevelE0ENS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELS1_0EEENS_11DummyScalerILS1_0EEEEEvimiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EE3endEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11927 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !11906 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp ugt i64 %i.h, 384307168202282325
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
  unreachable

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit, label %.noexc36

.noexc36:                                         ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27 ; 6 uses
  %i.k = getelementptr i8, ptr %i.j, i64 %i.g     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.l = icmp eq i64 %i.g, 24
  br i1 %i.l, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit, label %bb.b

bb.b:                                             ; preds = %.noexc36
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.b
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !13213
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !13214

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc36, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %.sroa.12.0 = phi ptr [ null, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ], [ %i.k, %.noexc36 ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.039.0 = phi ptr [ null, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ], [ %i.j, %.noexc36 ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !57
  %.not = icmp eq i64 %i.p, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre71 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !11905 ; 4 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit
  %.pre = load i64, ptr %.pre71, align 8, !tbaa !78
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.q = shl nuw nsw i64 %i.af, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit, %._crit_edge.loopexit
  %.lcssa50 = phi i64 [ %i.q, %._crit_edge.loopexit ], [ 0, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre71, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %.pre71, i64 %.lcssa50, i1 false)
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !11905 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !78
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !11927 ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !11906 ; 3 uses
  %.not65 = icmp eq ptr %i.u, %i.v
  br i1 %.not65, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %._crit_edge
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv i64 %i.y, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %umax = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.ab = phi i64 [ %.pre, %.lr.ph ], [ %i.ae, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.pre71, i64 %indvars.iv.next ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !78
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !78
  %i.af = load i64, ptr %i.o, align 8, !tbaa !57  ; 2 uses
  %i.ag = icmp ugt i64 %i.af, %indvars.iv.next
  br i1 %i.ag, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !13215

._crit_edge56:                                    ; preds = %bb.d, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !57
  %i.aj = shl i64 %i.ai, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.t, i64 %i.aj, i1 false)
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !11905 ; 3 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !78
  %i.al = load i64, ptr %i.o, align 8, !tbaa !57
  %.not66 = icmp eq i64 %i.al, 0
  br i1 %.not66, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %._crit_edge56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph55, %bb.d
  %.02753 = phi i64 [ 0, %.lr.ph55 ], [ %i.ax, %bb.d ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.02753 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11918
  %i.ar = load i64, ptr %i.aa, align 8, !tbaa !11926
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !78 ; 2 uses
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.039.0, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !tbaa.struct !13213
  %i.ax = add nuw i64 %.02753, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %umax
  br i1 %exitcond.not, label %._crit_edge56, label %bb.d, !llvm.loop !13216

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.ay = load i64, ptr %i.o, align 8, !tbaa !57
  %i.az = icmp ugt i64 %i.ay, %indvars.iv.next69
  br i1 %i.az, label %bb.f, label %._crit_edge64, !llvm.loop !13217

._crit_edge64:                                    ; preds = %.loopexit, %._crit_edge56
  %.not.i.i.i = icmp eq ptr %.sroa.039.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge64
  %i.ba = ptrtoint ptr %.sroa.12.0 to i64
  %i.bb = ptrtoint ptr %.sroa.039.0 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.039.0, i64 noundef %i.bc) #28
  br label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit: ; preds = %._crit_edge64, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph63, %.loopexit
  %indvars.iv68 = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next69, %.loopexit ] ; 4 uses
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !142
  %.idx = shl nuw nsw i64 %indvars.iv68, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !144
  %i.bg = fdiv float 1.000000e+00, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !144
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !13218, !nonnull !161, !align !2019
  %i.bk = load i64, ptr %i.ao, align 8, !tbaa !11926
  %i.bl = add i64 %i.bk, %indvars.iv68
  %i.bm = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5faiss24RangeSearchPartialResult10new_resultEl(ptr noundef nonnull align 8 dereferenceable(72) %i.bj, i64 noundef %i.bl)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv68
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !78 ; 2 uses
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next69 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !78
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph59, label %.loopexit

.lr.ph59:                                         ; preds = %bb.g, %bb.h
  %.057 = phi i64 [ %i.bz, %bb.h ], [ %i.bo, %bb.g ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.039.0, i64 %.057 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !11920
  %i.bv = uitofp i16 %i.bu to float
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bg, float %i.bi)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !11921
  invoke void @_ZN5faiss16RangeQueryResult3addEfl(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, float noundef %i.bw, i64 noundef %i.by)
          to label %bb.h unwind label %.thread

bb.h:                                             ; preds = %.lr.ph59
  %i.bz = add nuw i64 %.057, 1                    ; 2 uses
  %i.ca = load i64, ptr %i.bp, align 8, !tbaa !78
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph59, label %.loopexit, !llvm.loop !13220

.thread:                                          ; preds = %.lr.ph59
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %.sroa.039.0, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit38, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.pn47 = phi { ptr, i32 } [ %i.cc, %.thread ], [ %i.cd, %bb.i ]
  %i.ce = ptrtoint ptr %.sroa.12.0 to i64
  %i.cf = ptrtoint ptr %.sroa.039.0 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.039.0, i64 noundef %i.cg) #28
  br label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit38

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit38: ; preds = %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn47, %bb.j ], [ %i.cd, %bb.i ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss20simd_result_handlers12RangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss20simd_result_handlers12RangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11906 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11907
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11905 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11908
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !4666 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !4668
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss20simd_result_handlers12RangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11906 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11907
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28, !inline_history !11909
  br label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11905 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11908
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28, !inline_history !11909
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMaxItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !4666 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2.i, label %_ZN5faiss20simd_result_handlers12RangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !4668
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28, !inline_history !11909
  br label %_ZN5faiss20simd_result_handlers12RangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss20simd_result_handlers12RangeHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #28
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN5faiss24RangeSearchPartialResult10new_resultEl(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #1

declare void @_ZN5faiss16RangeQueryResult3addEfl(ptr noundef nonnull align 8 dereferenceable(40), float noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss32pq4_accumulate_loop_fixed_scalerILNS_9SIMDLevelE0ENS_20simd_result_handlers19PartialRangeHandlerINS_4CMaxItlEELb1ELS1_0EEENS_15NormTableScalerILS1_0EEEEEvimiiPKhSA_RT0_RKT1_m(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(224) %6, ptr noundef nonnull align 4 dereferenceable(36) %7, i64 noundef %8) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.faiss::simd_result_handlers::FixedStorageHandler", align 8 ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED0Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss20simd_result_handlers12RangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12554 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12555
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28, !inline_history !13838
  br label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i.i

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11905 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11908
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28, !inline_history !13838
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.c, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4666 ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2.i.i, label %_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !4668
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28, !inline_history !13838
  br label %_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED2Ev.exit

_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEELS5_0EE7handlerEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEELS5_0EE15accumulate_loopEimiiPKhS9_im(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i64 noundef %8) unnamed_addr #2 comdat align 2 {
bb.a:
  %9 = alloca %"struct.faiss::NormTableScaler", align 4 ; 6 uses
  %10 = alloca %"struct.faiss::DummyScaler", align 1 ; 3 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 %7, ptr %9, align 4, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.b = trunc i32 %7 to i16
  %i.c = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %i.d = shufflevector <8 x i16> %i.c, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x i16> %i.d, ptr %i.a, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 20
  store <8 x i16> %i.d, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss32pq4_accumulate_loop_fixed_scalerILNS_9SIMDLevelE0ENS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELS1_0EEENS_15NormTableScalerILS1_0EEEEEvimiiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(36) %9, i64 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss32pq4_accumulate_loop_fixed_scalerILNS_9SIMDLevelE0ENS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELS1_0EEENS_11DummyScalerILS1_0EEEEEvimiiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %10, i64 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss12ScannerMixInINS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEELS5_0EE19accumulate_loop_qbsEimiPKhS9_im(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i64 noundef %7) unnamed_addr #2 comdat align 2 {
bb.a:
  %8 = alloca %"struct.faiss::NormTableScaler", align 4 ; 6 uses
  %9 = alloca %"struct.faiss::DummyScaler", align 1 ; 3 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i32 %6, ptr %8, align 4, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.b = trunc i32 %6 to i16
  %i.c = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %i.d = shufflevector <8 x i16> %i.c, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x i16> %i.d, ptr %i.a, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20
  store <8 x i16> %i.d, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss40pq4_accumulate_loop_qbs_fixed_scaler_256ILNS_9SIMDLevelE0ENS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELS1_0EEENS_15NormTableScalerILS1_0EEEEEvimiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(36) %8, i64 noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss40pq4_accumulate_loop_qbs_fixed_scaler_256ILNS_9SIMDLevelE0ENS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELS1_0EEENS_11DummyScalerILS1_0EEEEEvimiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EE3endEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12571 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !12554 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp ugt i64 %i.h, 384307168202282325
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
  unreachable

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit, label %.noexc36

.noexc36:                                         ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27 ; 6 uses
  %i.k = getelementptr i8, ptr %i.j, i64 %i.g     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.l = icmp eq i64 %i.g, 24
  br i1 %i.l, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit, label %bb.b

bb.b:                                             ; preds = %.noexc36
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.b
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !13213
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !13839

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc36, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %.sroa.12.0 = phi ptr [ null, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ], [ %i.k, %.noexc36 ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.039.0 = phi ptr [ null, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ], [ %i.j, %.noexc36 ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !57
  %.not = icmp eq i64 %i.p, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre71 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !11905 ; 4 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit
  %.pre = load i64, ptr %.pre71, align 8, !tbaa !78
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.q = shl nuw nsw i64 %i.af, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit, %._crit_edge.loopexit
  %.lcssa50 = phi i64 [ %i.q, %._crit_edge.loopexit ], [ 0, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EEC2EmRKS8_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre71, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %.pre71, i64 %.lcssa50, i1 false)
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !11905 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !78
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !12571 ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !12554 ; 3 uses
  %.not65 = icmp eq ptr %i.u, %i.v
  br i1 %.not65, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %._crit_edge
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv i64 %i.y, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %umax = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.ab = phi i64 [ %.pre, %.lr.ph ], [ %i.ae, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.pre71, i64 %indvars.iv.next ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !78
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !78
  %i.af = load i64, ptr %i.o, align 8, !tbaa !57  ; 2 uses
  %i.ag = icmp ugt i64 %i.af, %indvars.iv.next
  br i1 %i.ag, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !13840

._crit_edge56:                                    ; preds = %bb.d, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !57
  %i.aj = shl i64 %i.ai, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.t, i64 %i.aj, i1 false)
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !11905 ; 3 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !78
  %i.al = load i64, ptr %i.o, align 8, !tbaa !57
  %.not66 = icmp eq i64 %i.al, 0
  br i1 %.not66, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %._crit_edge56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph55, %bb.d
  %.02753 = phi i64 [ 0, %.lr.ph55 ], [ %i.ax, %bb.d ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.02753 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !12562
  %i.ar = load i64, ptr %i.aa, align 8, !tbaa !12570
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !78 ; 2 uses
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.039.0, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !tbaa.struct !13213
  %i.ax = add nuw i64 %.02753, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %umax
  br i1 %exitcond.not, label %._crit_edge56, label %bb.d, !llvm.loop !13841

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.ay = load i64, ptr %i.o, align 8, !tbaa !57
  %i.az = icmp ugt i64 %i.ay, %indvars.iv.next69
  br i1 %i.az, label %bb.f, label %._crit_edge64, !llvm.loop !13842

._crit_edge64:                                    ; preds = %.loopexit, %._crit_edge56
  %.not.i.i.i = icmp eq ptr %.sroa.039.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge64
  %i.ba = ptrtoint ptr %.sroa.12.0 to i64
  %i.bb = ptrtoint ptr %.sroa.039.0 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.039.0, i64 noundef %i.bc) #28
  br label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit: ; preds = %._crit_edge64, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph63, %.loopexit
  %indvars.iv68 = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next69, %.loopexit ] ; 4 uses
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !142
  %.idx = shl nuw nsw i64 %indvars.iv68, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !144
  %i.bg = fdiv float 1.000000e+00, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !144
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !13843, !nonnull !161, !align !2019
  %i.bk = load i64, ptr %i.ao, align 8, !tbaa !12570
  %i.bl = add i64 %i.bk, %indvars.iv68
  %i.bm = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5faiss24RangeSearchPartialResult10new_resultEl(ptr noundef nonnull align 8 dereferenceable(72) %i.bj, i64 noundef %i.bl)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv68
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !78 ; 2 uses
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next69 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !78
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph59, label %.loopexit

.lr.ph59:                                         ; preds = %bb.g, %bb.h
  %.057 = phi i64 [ %i.bz, %bb.h ], [ %i.bo, %bb.g ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.039.0, i64 %.057 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !12564
  %i.bv = uitofp i16 %i.bu to float
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bg, float %i.bi)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !12565
  invoke void @_ZN5faiss16RangeQueryResult3addEfl(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, float noundef %i.bw, i64 noundef %i.by)
          to label %bb.h unwind label %.thread

bb.h:                                             ; preds = %.lr.ph59
  %i.bz = add nuw i64 %.057, 1                    ; 2 uses
  %i.ca = load i64, ptr %i.bp, align 8, !tbaa !78
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph59, label %.loopexit, !llvm.loop !13845

.thread:                                          ; preds = %.lr.ph59
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %.sroa.039.0, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit38, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.pn47 = phi { ptr, i32 } [ %i.cc, %.thread ], [ %i.cd, %bb.i ]
  %i.ce = ptrtoint ptr %.sroa.12.0 to i64
  %i.cf = ptrtoint ptr %.sroa.039.0 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.039.0, i64 noundef %i.cg) #28
  br label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit38

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit38: ; preds = %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn47, %bb.j ], [ %i.cd, %bb.i ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss20simd_result_handlers12RangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss20simd_result_handlers12RangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12554 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12555
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11905 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11908
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !4666 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !4668
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss20simd_result_handlers12RangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12554 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12555
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28, !inline_history !12556
  br label %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i

_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11905 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11908
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28, !inline_history !12556
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %_ZNSt6vectorIN5faiss20simd_result_handlers12RangeHandlerINS0_4CMinItlEELb1ELNS0_9SIMDLevelE0EE7TripletESaIS7_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !4666 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2.i, label %_ZN5faiss20simd_result_handlers12RangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !4668
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28, !inline_history !12556
  br label %_ZN5faiss20simd_result_handlers12RangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss20simd_result_handlers12RangeHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss32pq4_accumulate_loop_fixed_scalerILNS_9SIMDLevelE0ENS_20simd_result_handlers19PartialRangeHandlerINS_4CMinItlEELb1ELS1_0EEENS_15NormTableScalerILS1_0EEEEEvimiiPKhSA_RT0_RKT1_m(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(224) %6, ptr noundef nonnull align 4 dereferenceable(36) %7, i64 noundef %8) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.faiss::simd_result_handlers::FixedStorageHandler", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_1
