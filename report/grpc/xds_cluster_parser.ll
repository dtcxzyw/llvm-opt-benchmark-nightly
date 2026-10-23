Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_cluster_parser?download=true
inline.NumInlined: 4181
inline.NumDeleted: 2063
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core15XdsResourceType12ResourceDataEEE12AssignStatusIRKNS0_6StatusEEEvOT_:bb.a
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #32
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split: ; preds = %bb.j, %bb.i, %bb.l
  %.pr = load i64, ptr %0, align 8, !tbaa !27
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split
  %i.ah = phi i64 [ %.pr, %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split ], [ %i.t, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit ]
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core15XdsResourceType12ResourceDataEEE11EnsureNotOkEv.exit, !prof !28

bb.n:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  tail call void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core15XdsResourceType12ResourceDataEEE11EnsureNotOkEv.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core15XdsResourceType12ResourceDataEEE11EnsureNotOkEv.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.n
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9grpc_core18XdsClusterResourceeqERKS0_(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(440) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %class.anon.555, align 8            ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %class.anon.551, align 8            ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i8 1, ptr %i.b, align 1, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.b, ptr %3, align 8, !tbaa !235
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !474
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJN9grpc_core18XdsClusterResource3EdsENS5_10LogicalDnsENS5_9AggregateEEEbRKSt7variantIJDpT_EESE_EUlOT_T0_E_JRKS9_IJS6_S7_S8_EEEEDcOSH_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.f = load i8, ptr %i.b, align 1, !tbaa !213, !range !45, !noundef !46
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br i1 %i.g, label %bb.b, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !143  ; 3 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !142  ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !142  ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp eq i64 %i.o, %i.u
  br i1 %i.v, label %bb.c, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i6.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.0.i8.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %.08.i7.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.z, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i8 1, ptr %i.a, align 1, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %i.a, ptr %2, align 8, !tbaa !235
  store ptr %.08.i7.i.i, ptr %i.w, align 8, !tbaa !238
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEEbRKSt7variantIJDpT_EESV_EUlOT_T0_E_JRKSQ_IJS4_bS8_SE_SM_SP_EEEEDcOSY_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(56) %.0.i8.i.i), !inline_history !472
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.x = load i8, ptr %i.a, align 1, !tbaa !213, !range !45, !noundef !46
  %i.y = trunc nuw i8 %i.x to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br i1 %i.y, label %bb.e, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i7.i.i, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i8.i.i, i64 56
  %.not.i.i.i = icmp eq ptr %i.z, %i.k
  br i1 %.not.i.i.i, label %.loopexit, label %bb.d, !llvm.loop !13

.loopexit:                                        ; preds = %bb.e, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !475 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null             ; 2 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !475 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.ae, null            ; 2 uses
  %brmerge.i = select i1 %.not.i.i, i1 true, i1 %.not.i6.i
  br i1 %brmerge.i, label %_ZN9grpc_core15LrsServersEqualERKSt10shared_ptrIKNS_19GrpcXdsServerTargetEES5_.exit, label %.split

.split:                                           ; preds = %.loopexit
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.ae), !inline_history !473
  br i1 %i.ai, label %bb.f, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

_ZN9grpc_core15LrsServersEqualERKSt10shared_ptrIKNS_19GrpcXdsServerTargetEES5_.exit: ; preds = %.loopexit
  %.not.i6.mux.i = select i1 %.not.i.i, i1 %.not.i6.i, i1 false
  br i1 %.not.i6.mux.i, label %bb.f, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.f:                                             ; preds = %.split, %_ZN9grpc_core15LrsServersEqualERKSt10shared_ptrIKNS_19GrpcXdsServerTargetEES5_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !200 ; 2 uses
  %i.am = icmp eq ptr %i.al, null                 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !200 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null                 ; 2 uses
  %brmerge.i11 = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %brmerge.i11, label %_ZN9grpc_core32LrsBackendMetricPropagationEqualERKNS_13RefCountedPtrIKNS_24BackendMetricPropagationEEES5_.exit, label %.split13

.split13:                                         ; preds = %bb.f
  %i.ap = call noundef zeroext i1 @_ZNK9grpc_core24BackendMetricPropagationeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.an)
  br i1 %i.ap, label %bb.g, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

_ZN9grpc_core32LrsBackendMetricPropagationEqualERKNS_13RefCountedPtrIKNS_24BackendMetricPropagationEEES5_.exit: ; preds = %bb.f
  %.mux.i = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %.mux.i, label %bb.g, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.g:                                             ; preds = %.split13, %_ZN9grpc_core32LrsBackendMetricPropagationEqualERKNS_13RefCountedPtrIKNS_24BackendMetricPropagationEEES5_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.as = call noundef zeroext i1 @_ZNK9grpc_core16CommonTlsContexteqERKS0_(ptr noundef nonnull align 8 dereferenceable(194) %i.aq, ptr noundef nonnull align 8 dereferenceable(194) %i.ar)
  br i1 %i.as, label %bb.h, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !54 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !54
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.i, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.i:                                             ; preds = %bb.h
  %i.ba = icmp eq i64 %i.aw, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.i
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !52
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !52
  %bcmp.i.i = call i32 @bcmp(ptr %i.bc, ptr %i.bb, i64 %i.aw)
  %i.bd = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !158, !range !45, !noundef !46
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !158, !range !45, !noundef !46
  %i.bi = icmp eq i8 %i.bf, %i.bh
  br i1 %i.bi, label %_ZNK9grpc_core18XdsClusterResource18UpstreamTlsContexteqERKS1_.exit, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

_ZNK9grpc_core18XdsClusterResource18UpstreamTlsContexteqERKS1_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !159, !range !45, !noundef !46
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 297
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !159, !range !45, !noundef !46
  %i.bn = icmp eq i8 %i.bk, %i.bm
  br i1 %i.bn, label %bb.j, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.j:                                             ; preds = %_ZNK9grpc_core18XdsClusterResource18UpstreamTlsContexteqERKS1_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.sroa.0.0.copyload = load i64, ptr %i.bp, align 8, !tbaa !50
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !239
  %i.br = icmp eq i64 %i.bq, %.sroa.0.0.copyload
  br i1 %i.br, label %bb.k, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !118
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !118
  %i.bw = icmp eq i32 %i.bt, %i.bv
  br i1 %i.bw, label %bb.l, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !186, !range !45, !noundef !46 ; 2 uses
  %4 = trunc nuw i8 %i.by to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !186, !range !45, !noundef !46
  %i.cb = icmp eq i8 %i.by, %i.ca                 ; 2 uses
  %brmerge.not.i = and i1 %i.cb, %4
  br i1 %brmerge.not.i, label %.split14, label %_ZSteqIN9grpc_core22OutlierDetectionConfigES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit

.split14:                                         ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ce = call noundef zeroext i1 @_ZNK9grpc_core22OutlierDetectionConfigeqERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cd, ptr noundef nonnull align 8 dereferenceable(80) %i.cc)
  br i1 %i.ce, label %bb.m, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

_ZSteqIN9grpc_core22OutlierDetectionConfigES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit: ; preds = %bb.l
  br i1 %i.cb, label %bb.m, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.m:                                             ; preds = %.split14, %_ZSteqIN9grpc_core22OutlierDetectionConfigES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ch = load i32, ptr %i.cf, align 8, !tbaa !187
  %i.ci = load i32, ptr %i.cg, align 8, !tbaa !187
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.n, label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.cm = call noundef zeroext i1 @_ZNK9grpc_core14XdsMetadataMapeqERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %i.cl)
  br label %_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

_ZSteqIN9grpc_core12experimental4JsonESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit: ; preds = %bb.d, %bb.h, %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %.split14, %.split13, %.split, %bb.b, %bb.n, %bb.m, %_ZSteqIN9grpc_core22OutlierDetectionConfigES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit, %bb.k, %bb.j, %_ZNK9grpc_core18XdsClusterResource18UpstreamTlsContexteqERKS1_.exit, %_ZN9grpc_core32LrsBackendMetricPropagationEqualERKNS_13RefCountedPtrIKNS_24BackendMetricPropagationEEES5_.exit, %_ZN9grpc_core15LrsServersEqualERKSt10shared_ptrIKNS_19GrpcXdsServerTargetEES5_.exit, %bb.a
  %i.cn = phi i1 [ false, %bb.m ], [ false, %_ZSteqIN9grpc_core22OutlierDetectionConfigES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit ], [ false, %bb.k ], [ false, %bb.j ], [ false, %_ZNK9grpc_core18XdsClusterResource18UpstreamTlsContexteqERKS1_.exit ], [ false, %_ZN9grpc_core32LrsBackendMetricPropagationEqualERKNS_13RefCountedPtrIKNS_24BackendMetricPropagationEEES5_.exit ], [ false, %_ZN9grpc_core15LrsServersEqualERKSt10shared_ptrIKNS_19GrpcXdsServerTargetEES5_.exit ], [ %i.cm, %bb.n ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.h ], [ false, %.split ], [ false, %.split13 ], [ false, %.split14 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ false, %bb.g ], [ false, %bb.d ]
  ret i1 %i.cn
}

declare noundef zeroext i1 @_ZNK9grpc_core14XdsMetadataMapeqERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJN9grpc_core18XdsClusterResource3EdsENS5_10LogicalDnsENS5_9AggregateEEEbRKSt7variantIJDpT_EESE_EUlOT_T0_E_JRKS9_IJS6_S7_S8_EEEEDcOSH_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !194
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !478, !nonnull !46, !align !172 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i8, ptr %i.e, align 8, !tbaa !194   ; 4 uses
  switch i8 %i.b, label %bb.l [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 -1, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_ZSt3getILm0EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

_ZSt3getILm0EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !54   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.c:                                             ; preds = %_ZSt3getILm0EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %1, align 8, !tbaa !52
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !52
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.o, ptr %i.n, i64 %i.i)
  %i.p = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  %i.q = zext i1 %i.p to i8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit: ; preds = %bb.b, %_ZSt3getILm0EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i, %bb.c, %bb.d
  %.sink.i.i.i.i = phi i8 [ 1, %bb.c ], [ 0, %_ZSt3getILm0EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i ], [ %i.q, %bb.d ], [ 0, %bb.b ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !479, !nonnull !46
  store i8 %.sink.i.i.i.i, ptr %i.r, align 1, !tbaa !213
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.s = icmp eq i8 %i.f, 1
  br i1 %i.s, label %_ZSt3getILm1EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SN_.exit

_ZSt3getILm1EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !54
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SN_.exit

bb.f:                                             ; preds = %_ZSt3getILm1EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SN_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %1, align 8, !tbaa !52
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !52
  %bcmp.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %i.aa, ptr %i.z, i64 %i.u)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i11, 0
  %i.ac = zext i1 %i.ab to i8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SN_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SN_.exit: ; preds = %bb.e, %_ZSt3getILm1EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i, %bb.f, %bb.g
  %.sink.i.i.i.i10 = phi i8 [ 1, %bb.f ], [ 0, %_ZSt3getILm1EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i ], [ %i.ac, %bb.g ], [ 0, %bb.e ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !479, !nonnull !46
  store i8 %.sink.i.i.i.i10, ptr %i.ad, align 1, !tbaa !213
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.ae = icmp eq i8 %i.f, 2
  br i1 %i.ae, label %_ZSt3getILm2EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESK_SN_.exit

_ZSt3getILm2EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !136 ; 3 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !139 ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !136
  %i.an = load ptr, ptr %1, align 8, !tbaa !139   ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp eq i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESK_SN_.exit

bb.i:                                             ; preds = %_ZSt3getILm2EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESK_SN_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.an, %bb.i ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.ah, %bb.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !54 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !54
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESK_SN_.exit

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ax = icmp eq i64 %i.at, 0
  br i1 %i.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.ay = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !52
  %i.az = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !52
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.az, ptr %i.ay, i64 %i.at)
  %i.ba = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESK_SN_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ag
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESK_SN_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !476

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESK_SN_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, %bb.h, %_ZSt3getILm2EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i, %bb.i
  %.sink.i.i.i.i12 = phi i8 [ 0, %bb.h ], [ 0, %_ZSt3getILm2EJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS9_.exit.i.i.i.i ], [ 1, %bb.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i ]
  %i.bd = load ptr, ptr %0, align 8, !tbaa !479, !nonnull !46
  store i8 %.sink.i.i.i.i12, ptr %i.bd, align 1, !tbaa !213
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.be = icmp eq i8 %i.f, -1
  %i.bf = load ptr, ptr %0, align 8, !tbaa !479, !nonnull !46
  %i.bg = zext i1 %i.be to i8
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !213
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  unreachable

bb.m:                                             ; preds = %bb.k, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESK_SN_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SN_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core18XdsClusterResource3EdsENS6_10LogicalDnsENS6_9AggregateEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_RKSA_IJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEEbRKSt7variantIJDpT_EESV_EUlOT_T0_E_JRKSQ_IJS4_bS8_SE_SM_SP_EEEEDcOSY_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %class.anon.555, align 8            ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %class.anon.555, align 8            ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !148
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !486, !nonnull !46, !align !172 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !148   ; 7 uses
  switch i8 %i.d, label %bb.u [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.e
    i8 3, label %bb.h
    i8 4, label %bb.k
    i8 5, label %bb.q
    i8 -1, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i8 %i.h, 0
  %i.j = load ptr, ptr %0, align 8, !tbaa !487, !nonnull !46
  %..i.i.i.i = zext i1 %i.i to i8
  store i8 %..i.i.i.i, ptr %i.j, align 1, !tbaa !213
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES11_S14_.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK9grpc_core16CommonTlsContexteqERKS0_:bb.a
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp eq i64 %i.l, %i.r
  br i1 %i.s, label %bb.c, label %_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceeqERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK9grpc_core16CommonTlsContext28CertificateValidationContexteqERKS1_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.011.i.i.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.t = call noundef zeroext i1 @_ZNK9grpc_core13StringMatchereqERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %.0810.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(49) %.011.i.i.i.i.i.i)
  br i1 %i.t, label %bb.d, label %_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceeqERKS1_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 56
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNK9grpc_core16CommonTlsContext28CertificateValidationContexteqERKS1_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !493

_ZNK9grpc_core16CommonTlsContext28CertificateValidationContexteqERKS1_.exit: ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load i64, ptr %i.y, align 8, !tbaa !54   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceeqERKS1_.exit

bb.e:                                             ; preds = %_ZNK9grpc_core16CommonTlsContext28CertificateValidationContexteqERKS1_.exit
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.e
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !52
  %bcmp.i.i = call i32 @bcmp(ptr %i.af, ptr %i.ae, i64 %i.z)
  %i.ag = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceeqERKS1_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !54 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.f, label %_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceeqERKS1_.exit

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.ao = icmp eq i64 %i.ak, 0
  br i1 %i.ao, label %_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceeqERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !52
  %bcmp.i3.i = call i32 @bcmp(ptr %i.aq, ptr %i.ap, i64 %i.ak)
  %i.ar = icmp eq i32 %bcmp.i3.i, 0
  br label %_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceeqERKS1_.exit

_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceeqERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b, %bb.a, %bb.g, %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZNK9grpc_core16CommonTlsContext28CertificateValidationContexteqERKS1_.exit
  %i.as = phi i1 [ false, %_ZNK9grpc_core16CommonTlsContext28CertificateValidationContexteqERKS1_.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ true, %bb.f ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %i.ar, %bb.g ], [ false, %bb.a ], [ false, %bb.b ], [ false, %.lr.ph.i.i.i.i.i.i ]
  ret i1 %i.as
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS6_28CertificateValidationContext15SystemRootCertsEEEbRKSt7variantIJDpT_EESF_EUlOT_T0_E_JRKSA_IJS4_S7_S9_EEEEDcOSI_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(65) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !171
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !496, !nonnull !46, !align !172 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !171   ; 4 uses
  switch i8 %i.b, label %bb.i [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.g
    i8 -1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.f, 0
  %i.h = load ptr, ptr %0, align 8, !tbaa !497, !nonnull !46
  %..i.i.i.i = zext i1 %i.g to i8
  store i8 %..i.i.i.i, ptr %i.h, align 1, !tbaa !213
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i8 %i.f, 1
  br i1 %i.i, label %_ZSt3getILm1EJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS2_28CertificateValidationContext15SystemRootCertsEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSA_.exit.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS7_28CertificateValidationContext15SystemRootCertsEEEbRKSt7variantIJDpT_EESG_EUlOT_T0_E_RKSB_IJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SO_.exit

_ZSt3getILm1EJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS2_28CertificateValidationContext15SystemRootCertsEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSA_.exit.i.i.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS7_28CertificateValidationContext15SystemRootCertsEEEbRKSt7variantIJDpT_EESG_EUlOT_T0_E_RKSB_IJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SO_.exit

bb.d:                                             ; preds = %_ZSt3getILm1EJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS2_28CertificateValidationContext15SystemRootCertsEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSA_.exit.i.i.i.i
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.p = load ptr, ptr %1, align 8, !tbaa !52
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !52
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.k)
  %i.r = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS7_28CertificateValidationContext15SystemRootCertsEEEbRKSt7variantIJDpT_EESG_EUlOT_T0_E_RKSB_IJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SO_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !54   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !54
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS7_28CertificateValidationContext15SystemRootCertsEEEbRKSt7variantIJDpT_EESG_EUlOT_T0_E_RKSB_IJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SO_.exit

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS7_28CertificateValidationContext15SystemRootCertsEEEbRKSt7variantIJDpT_EESG_EUlOT_T0_E_RKSB_IJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SO_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !52
  %bcmp.i3.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ab, ptr %i.aa, i64 %i.v)
  %i.ac = icmp eq i32 %bcmp.i3.i.i.i.i.i, 0
  %i.ad = zext i1 %i.ac to i8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS7_28CertificateValidationContext15SystemRootCertsEEEbRKSt7variantIJDpT_EESG_EUlOT_T0_E_RKSB_IJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SO_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS7_28CertificateValidationContext15SystemRootCertsEEEbRKSt7variantIJDpT_EESG_EUlOT_T0_E_RKSB_IJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SO_.exit: ; preds = %bb.c, %_ZSt3getILm1EJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS2_28CertificateValidationContext15SystemRootCertsEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSA_.exit.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, %bb.e, %bb.f
  %.sink.i.i.i.i = phi i8 [ 0, %_ZSt3getILm1EJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS2_28CertificateValidationContext15SystemRootCertsEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSA_.exit.i.i.i.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i ], [ 1, %bb.e ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i ], [ %i.ad, %bb.f ], [ 0, %bb.c ]
  %i.ae = load ptr, ptr %0, align 8, !tbaa !497, !nonnull !46
  store i8 %.sink.i.i.i.i, ptr %i.ae, align 1, !tbaa !213
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.af = icmp eq i8 %i.f, 2
  %i.ag = load ptr, ptr %0, align 8, !tbaa !497, !nonnull !46
  %..i.i.i.i10 = zext i1 %i.af to i8
  store i8 %..i.i.i.i10, ptr %i.ag, align 1, !tbaa !213
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.ah = icmp eq i8 %i.f, -1
  %i.ai = load ptr, ptr %0, align 8, !tbaa !497, !nonnull !46
  %i.aj = zext i1 %i.ah to i8
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !213
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS7_28CertificateValidationContext15SystemRootCertsEEEbRKSt7variantIJDpT_EESG_EUlOT_T0_E_RKSB_IJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SO_.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK9grpc_core13StringMatchereqERKS0_(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9grpc_core22OutlierDetectionConfigeqERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !50
  %i.a = load i64, ptr %0, align 8, !tbaa !239
  %i.b = icmp eq i64 %i.a, %.sroa.02.0.copyload
  br i1 %i.b, label %bb.b, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload = load i64, ptr %i.d, align 8, !tbaa !50
  %i.e = load i64, ptr %i.c, align 8, !tbaa !239
  %i.f = icmp eq i64 %i.e, %.sroa.01.0.copyload
  br i1 %i.f, label %bb.c, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8, !tbaa !50
  %i.i = load i64, ptr %i.g, align 8, !tbaa !239
  %i.j = icmp eq i64 %i.i, %.sroa.0.0.copyload
  br i1 %i.j, label %bb.d, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !507
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !507
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i8, ptr %i.p, align 4, !tbaa !508, !range !45, !noundef !46 ; 2 uses
  %2 = trunc nuw i8 %i.q to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.s = load i8, ptr %i.r, align 4, !tbaa !508, !range !45, !noundef !46
  %i.t = icmp eq i8 %i.q, %i.s                    ; 2 uses
  %brmerge.not.i = and i1 %i.t, %2
  br i1 %brmerge.not.i, label %bb.f, label %_ZSteqIN9grpc_core22OutlierDetectionConfig19SuccessRateEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !510
  %i.x = load i32, ptr %i.u, align 4, !tbaa !510
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.g, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !511
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !511
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !512
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !512
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %.split, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

.split:                                           ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !513
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load i32, ptr %i.al, align 8, !tbaa !513
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %bb.i, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

_ZSteqIN9grpc_core22OutlierDetectionConfig19SuccessRateEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit: ; preds = %bb.e
  br i1 %i.t, label %bb.i, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.i:                                             ; preds = %.split, %_ZSteqIN9grpc_core22OutlierDetectionConfig19SuccessRateEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !514, !range !45, !noundef !46 ; 2 uses
  %3 = trunc nuw i8 %i.ap to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !514, !range !45, !noundef !46
  %i.as = icmp eq i8 %i.ap, %i.ar                 ; 2 uses
  %brmerge.not.i9 = and i1 %i.as, %3
  br i1 %brmerge.not.i9, label %bb.j, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load i32, ptr %i.au, align 8, !tbaa !516
  %i.aw = load i32, ptr %i.at, align 8, !tbaa !516
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.k, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !517
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !517
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.l, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !518
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !518
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !519
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !519
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br label %_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

_ZSteqIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %.split, %_ZSteqIN9grpc_core22OutlierDetectionConfig19SuccessRateEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bn = phi i1 [ false, %_ZSteqIN9grpc_core22OutlierDetectionConfig19SuccessRateEjectionES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %.split ], [ false, %bb.j ], [ %i.as, %bb.i ], [ %i.bm, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %i.bn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #28 = { nofree nounwind }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { cold }
attributes #34 = { cold nounwind }
attributes #35 = { noreturn }
attributes #36 = { builtin nounwind }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !138}
!1 = distinct !{ptr @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev, null, null, null}
!2 = distinct !{!2, !138}
!3 = distinct !{!3, !138}
!4 = distinct !{null}
!5 = distinct !{!5, !138}
!6 = distinct !{null}
!7 = distinct !{null, null, null}
!8 = distinct !{!8, !138}
!9 = distinct !{!9, !138}
!10 = distinct !{!10, !138}
!11 = distinct !{ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev, null}
!12 = distinct !{null, null, null, null}
!13 = distinct !{!13, !138}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"bool", !18, i64 0}
!23 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !18, i64 0, !22, i64 32}
!24 = !{!23, !22, i64 32}
!25 = !{!"long", !18, i64 0}
!26 = !{!"_ZTSN4absl12lts_202505126StatusE", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!"any pointer", !18, i64 0}
!30 = !{!"p1 _ZTSN9grpc_core9XdsClientE", !29, i64 0}
!31 = !{!"p1 _ZTSN9grpc_core12XdsBootstrap9XdsServerE", !29, i64 0}
!32 = !{!"p1 _ZTS11upb_DefPool", !29, i64 0}
!33 = !{!"p1 _ZTS9upb_Arena", !29, i64 0}
!34 = !{!"_ZTSN9grpc_core15XdsResourceType13DecodeContextE", !30, i64 0, !31, i64 8, !32, i64 16, !33, i64 24}
!35 = !{!34, !33, i64 24}
!36 = !{!"p1 _ZTS18upb_MiniTableField", !29, i64 0}
!37 = !{!"short", !18, i64 0}
!38 = !{!"_ZTS13upb_MiniTable", !36, i64 0, !37, i64 8, !37, i64 10, !18, i64 12, !18, i64 13, !18, i64 14, !18, i64 15}
!39 = !{!38, !37, i64 8}
!40 = !{!"p1 omnipotent char", !29, i64 0}
!41 = !{!"_ZTS9upb_Arena", !40, i64 0, !40, i64 8}
!42 = !{!41, !40, i64 8}
!43 = !{!41, !40, i64 0}
!44 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!49 = !{!48, !40, i64 0}
!50 = !{!25, !25, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0, !25, i64 8, !18, i64 16}
!52 = !{!51, !40, i64 0}
!53 = !{!18, !18, i64 0}
!54 = !{!51, !25, i64 8}
!55 = !{!"p1 _ZTSN9grpc_core18XdsClusterResourceE", !29, i64 0}
!56 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !29, i64 0}
!57 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !56, i64 0}
!58 = !{!"_ZTSSt12__shared_ptrIKN9grpc_core18XdsClusterResourceELN9__gnu_cxx12_Lock_policyE2EE", !55, i64 0, !57, i64 8}
!59 = !{!58, !55, i64 0}
!60 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!61 = !{!57, !56, i64 0}
!62 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 8, !19, i64 12}
!63 = !{!62, !19, i64 8}
!64 = !{!62, !19, i64 12}
!65 = !{!"vtable pointer", !17, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!19, !19, i64 0}
!68 = !{!"_ZTSN9grpc_core15XdsResourceType12ResourceDataE"}
!69 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core18XdsClusterResource3EdsENS3_10LogicalDnsENS3_9AggregateEEEE", !18, i64 0, !18, i64 32}
!70 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJN9grpc_core18XdsClusterResource3EdsENS3_10LogicalDnsENS3_9AggregateEEEE", !69, i64 0}
!71 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJN9grpc_core18XdsClusterResource3EdsENS3_10LogicalDnsENS3_9AggregateEEEE", !70, i64 0}
!72 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJN9grpc_core18XdsClusterResource3EdsENS3_10LogicalDnsENS3_9AggregateEEEE", !71, i64 0}
!73 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJN9grpc_core18XdsClusterResource3EdsENS3_10LogicalDnsENS3_9AggregateEEEE", !72, i64 0}
!74 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJN9grpc_core18XdsClusterResource3EdsENS3_10LogicalDnsENS3_9AggregateEEEE", !73, i64 0}
!75 = !{!"_ZTSSt7variantIJN9grpc_core18XdsClusterResource3EdsENS1_10LogicalDnsENS1_9AggregateEEE", !74, i64 0}
!76 = !{!"p1 _ZTSN9grpc_core12experimental4JsonE", !29, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN9grpc_core12experimental4JsonESaIS2_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!"_ZTSNSt12_Vector_baseIN9grpc_core12experimental4JsonESaIS2_EE12_Vector_implE", !77, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseIN9grpc_core12experimental4JsonESaIS2_EE", !78, i64 0}
!80 = !{!"_ZTSSt6vectorIN9grpc_core12experimental4JsonESaIS2_EE", !79, i64 0}
!81 = !{!"p1 _ZTSN9grpc_core19GrpcXdsServerTargetE", !29, i64 0}
!82 = !{!"_ZTSSt12__shared_ptrIKN9grpc_core19GrpcXdsServerTargetELN9__gnu_cxx12_Lock_policyE2EE", !81, i64 0, !57, i64 8}
!83 = !{!"_ZTSSt10shared_ptrIKN9grpc_core19GrpcXdsServerTargetEE", !82, i64 0}
!84 = !{!"p1 _ZTSN9grpc_core24BackendMetricPropagationE", !29, i64 0}
!85 = !{!"_ZTSN9grpc_core13RefCountedPtrIKNS_24BackendMetricPropagationEEE", !84, i64 0}
!86 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS4_28CertificateValidationContext15SystemRootCertsEEEE", !18, i64 0, !18, i64 64}
!87 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS4_28CertificateValidationContext15SystemRootCertsEEEE", !86, i64 0}
!88 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS4_28CertificateValidationContext15SystemRootCertsEEEE", !87, i64 0}
!89 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS4_28CertificateValidationContext15SystemRootCertsEEEE", !88, i64 0}
!90 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS4_28CertificateValidationContext15SystemRootCertsEEEE", !89, i64 0}
!91 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS4_28CertificateValidationContext15SystemRootCertsEEEE", !90, i64 0}
!92 = !{!"_ZTSSt7variantIJSt9monostateN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceENS2_28CertificateValidationContext15SystemRootCertsEEE", !91, i64 0}
!93 = !{!"p1 _ZTSN9grpc_core13StringMatcherE", !29, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN9grpc_core13StringMatcherESaIS1_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!"_ZTSNSt12_Vector_baseIN9grpc_core13StringMatcherESaIS1_EE12_Vector_implE", !94, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIN9grpc_core13StringMatcherESaIS1_EE", !95, i64 0}
!97 = !{!"_ZTSSt6vectorIN9grpc_core13StringMatcherESaIS1_EE", !96, i64 0}
!98 = !{!"_ZTSN9grpc_core16CommonTlsContext28CertificateValidationContextE", !92, i64 0, !97, i64 72}
!99 = !{!"_ZTSN9grpc_core16CommonTlsContext33CertificateProviderPluginInstanceE", !51, i64 0, !51, i64 32}
!100 = !{!"_ZTSN9grpc_core16CommonTlsContextE", !98, i64 0, !99, i64 96}
!101 = !{!"_ZTSN9grpc_core18XdsClusterResource18UpstreamTlsContextE", !100, i64 0, !51, i64 160, !22, i64 192, !22, i64 193}
!102 = !{!"_ZTSN9grpc_core8DurationE", !25, i64 0}
!103 = !{!"_ZTSSt22_Optional_payload_baseIN9grpc_core22OutlierDetectionConfigEE", !18, i64 0, !22, i64 72}
!104 = !{!"_ZTSSt17_Optional_payloadIN9grpc_core22OutlierDetectionConfigELb1ELb1ELb1EE", !103, i64 0}
!105 = !{!"_ZTSSt14_Optional_baseIN9grpc_core22OutlierDetectionConfigELb1ELb1EE", !104, i64 0}
!106 = !{!"_ZTSSt8optionalIN9grpc_core22OutlierDetectionConfigEE", !105, i64 0}
!107 = !{!"_ZTSN9grpc_core18XdsHealthStatusSetE", !19, i64 0}
!108 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !25, i64 0}
!109 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !25, i64 0, !108, i64 8, !18, i64 16}
!110 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !109, i64 0}
!111 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !110, i64 0}
!112 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEE", !111, i64 0}
!113 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEEE", !112, i64 0}
!114 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEEE", !113, i64 0}
!115 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISA_EENS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKS7_SD_EEEE", !114, i64 0}
!116 = !{!"_ZTSN9grpc_core14XdsMetadataMapE", !115, i64 0}
!117 = !{!"_ZTSN9grpc_core18XdsClusterResourceE", !68, i64 0, !75, i64 8, !80, i64 48, !83, i64 72, !85, i64 88, !22, i64 96, !101, i64 104, !102, i64 304, !19, i64 312, !106, i64 320, !107, i64 400, !116, i64 408}
!118 = !{!117, !19, i64 312}
!119 = !{!"_ZTSSt14_Rb_tree_color", !18, i64 0}
!120 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !29, i64 0}
!121 = !{!"_ZTSSt18_Rb_tree_node_base", !119, i64 0, !120, i64 8, !120, i64 16, !120, i64 24}
!122 = !{!"_ZTSSt15_Rb_tree_header", !121, i64 0, !25, i64 32}
!123 = !{!122, !119, i64 0}
!124 = !{!122, !120, i64 8}
!125 = !{!122, !120, i64 16}
!126 = !{!122, !120, i64 24}
!127 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!129 = !{!"p1 _ZTSN9grpc_core16ValidationErrorsE", !29, i64 0}
!130 = !{!"_ZTSN9grpc_core16ValidationErrors11ScopedFieldE", !129, i64 0}
!131 = !{!130, !129, i64 0}
!132 = !{i64 1866712}
!133 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !25, i64 0, !40, i64 8}
!134 = !{!133, !25, i64 0}
end_hunk_1
