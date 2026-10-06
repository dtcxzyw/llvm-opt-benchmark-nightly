Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/fast_scan?download=true
inline.NumInlined: 24799
inline.NumDeleted: 4569
loop-unroll.NumCompletelyUnrolled: 733
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 1469
begin_hunk_0_@_ZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEb:bb.a
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #28, !noalias !617 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers11HeapHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %i.af, align 8, !tbaa !65, !noalias !617
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  invoke void @_ZN5faiss20simd_result_handlers11HeapHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEC2EmmlPfPlPKNS_10IDSelectorEPKf(ptr noundef nonnull align 8 dereferenceable(200) %i.ag, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef null)
          to label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit" unwind label %bb.i, !noalias !617

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 208) #29, !noalias !617
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %i.ai = shl nsw i64 %5, 1
  %i.aj = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #28, !noalias !618 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers16ReservoirHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %i.aj, align 8, !tbaa !65, !noalias !618
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  invoke void @_ZN5faiss20simd_result_handlers16ReservoirHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEC2EmmmmPfPlPKNS_10IDSelectorE(ptr noundef nonnull align 8 dereferenceable(216) %i.ak, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %i.ai, ptr noundef %6, ptr noundef %7, ptr noundef %8)
          to label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit" unwind label %bb.k, !noalias !618

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 224) #29, !noalias !618
  br label %common.resume

bb.l:                                             ; preds = %bb.b
  br i1 %i.a, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.am = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #28, !noalias !619 ; 21 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %i.am, align 8, !tbaa !65, !noalias !619
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 0, ptr %i.ar, align 8, !tbaa !81, !noalias !619
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %3, ptr %i.as, align 8, !tbaa !82, !noalias !619
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 %4, ptr %i.at, align 8, !tbaa !83, !noalias !619
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false), !noalias !619
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.au, i8 0, i64 49, i1 false), !noalias !619
  store ptr %8, ptr %i.aw, align 8, !tbaa !103, !noalias !619
  store i8 1, ptr %i.ao, align 8, !tbaa !88, !noalias !619
  store i8 4, ptr %i.ap, align 1, !tbaa !89, !noalias !619
  store i8 0, ptr %i.aq, align 2, !tbaa !90, !noalias !619
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss20simd_result_handlers19SingleResultHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EEE, i64 16), ptr %i.an, align 8, !tbaa !65, !noalias !619
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %i.ay = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.ay, label %.noexc.i.i.i.i14, label %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i6

.noexc.i.i.i.i14:                                 ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #30
          to label %.noexc.i.i15 unwind label %bb.o, !noalias !619

.noexc.i.i15:                                     ; preds = %.noexc.i.i.i.i14
  unreachable

_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i6: ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false), !noalias !619
  %.not.i.i.i.i.i.i.i.i7 = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i.i.i.i.i7, label %bb.n, label %.noexc14.i.i.i.i8

.noexc14.i.i.i.i8:                                ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i6
  %i.az = shl nuw nsw i64 %3, 1                   ; 2 uses
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #28
          to label %.noexc6.i.i9 unwind label %bb.o, !noalias !619 ; 5 uses

.noexc6.i.i9:                                     ; preds = %.noexc14.i.i.i.i8
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !92, !noalias !619
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !93, !noalias !619
  store i16 0, ptr %i.ba, align 2, !tbaa !95, !noalias !619
  %i.bd = getelementptr i8, ptr %i.ba, i64 2      ; 3 uses
  %i.be = add nsw i64 %3, -1                      ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i12, label %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i10

_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i10: ; preds = %.noexc6.i.i9
  %.idx.i.i.i.i.i.i.i.i.i.i.i11 = shl nuw nsw i64 %i.be, 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.bd, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i11, i1 false), !tbaa !95, !noalias !619
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i11
  br label %.lr.ph.i.i.i.i12

bb.n:                                             ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 152
  store ptr %6, ptr %i.bh, align 8, !tbaa !620, !noalias !619
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  store ptr %7, ptr %i.bi, align 8, !tbaa !105, !noalias !619
  br label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit"

.lr.ph.i.i.i.i12:                                 ; preds = %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i10, %.noexc6.i.i9
  %.0.i.i.i.i.i.ph.i.i.i.i13 = phi ptr [ %i.bg, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i10 ], [ %i.bd, %.noexc6.i.i9 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store ptr %.0.i.i.i.i.i.ph.i.i.i.i13, ptr %i.bj, align 8, !tbaa !616, !noalias !619
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 152
  store ptr %6, ptr %i.bk, align 8, !tbaa !620, !noalias !619
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  store ptr %7, ptr %i.bl, align 8, !tbaa !105, !noalias !619
  %i.bm = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 -1, i64 %i.bm, i1 false), !tbaa !101, !noalias !619
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ba, i8 -1, i64 %i.az, i1 false), !tbaa !95, !noalias !619
  br label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit"

bb.o:                                             ; preds = %.noexc14.i.i.i.i8, %.noexc.i.i.i.i14
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 168) #29, !noalias !619
  br label %common.resume

bb.p:                                             ; preds = %bb.l
  %i.bo = and i32 %2, 1
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bq = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #28, !noalias !621 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers11HeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %i.bq, align 8, !tbaa !65, !noalias !621
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  invoke void @_ZN5faiss20simd_result_handlers11HeapHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EEC2EmmlPfPlPKNS_10IDSelectorEPKf(ptr noundef nonnull align 8 dereferenceable(200) %i.br, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef null)
          to label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit" unwind label %bb.r, !noalias !621

bb.r:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 208) #29, !noalias !621
  br label %common.resume

bb.s:                                             ; preds = %bb.p
  %i.bt = shl nsw i64 %5, 1
  %i.bu = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #28, !noalias !622 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers16ReservoirHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %i.bu, align 8, !tbaa !65, !noalias !622
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  invoke void @_ZN5faiss20simd_result_handlers16ReservoirHandlerINS_4CMaxItiEELb0ELNS_9SIMDLevelE0EEC2EmmmmPfPlPKNS_10IDSelectorE(ptr noundef nonnull align 8 dereferenceable(216) %i.bv, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %i.bt, ptr noundef %6, ptr noundef %7, ptr noundef %8)
          to label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit" unwind label %bb.t, !noalias !622

bb.t:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 224) #29, !noalias !622
  br label %common.resume

bb.u:                                             ; preds = %bb.a
  br i1 %9, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  br i1 %i.a, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bx = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #28, !noalias !623 ; 21 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %i.bx, align 8, !tbaa !65, !noalias !623
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i64 0, ptr %i.cc, align 8, !tbaa !81, !noalias !623
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i64 %3, ptr %i.cd, align 8, !tbaa !82, !noalias !623
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i64 %4, ptr %i.ce, align 8, !tbaa !83, !noalias !623
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 104
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !noalias !623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.cf, i8 0, i64 49, i1 false), !noalias !623
  store ptr %8, ptr %i.ch, align 8, !tbaa !107, !noalias !623
  store i8 0, ptr %i.bz, align 8, !tbaa !88, !noalias !623
  store i8 8, ptr %i.ca, align 1, !tbaa !89, !noalias !623
  store i8 1, ptr %i.cb, align 2, !tbaa !90, !noalias !623
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss20simd_result_handlers19SingleResultHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEE, i64 16), ptr %i.by, align 8, !tbaa !65, !noalias !623
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 128 ; 2 uses
  %i.cj = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.cj, label %.noexc.i.i.i.i27, label %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i19

.noexc.i.i.i.i27:                                 ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #30
          to label %.noexc.i.i28 unwind label %bb.y, !noalias !623

.noexc.i.i28:                                     ; preds = %.noexc.i.i.i.i27
  unreachable

_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i19: ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false), !noalias !623
  %.not.i.i.i.i.i.i.i.i20 = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i.i.i.i.i20, label %bb.x, label %.noexc14.i.i.i.i21

.noexc14.i.i.i.i21:                               ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i19
  %i.ck = shl nuw nsw i64 %3, 1                   ; 2 uses
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #28
          to label %.noexc6.i.i22 unwind label %bb.y, !noalias !623 ; 4 uses

.noexc6.i.i22:                                    ; preds = %.noexc14.i.i.i.i21
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !92, !noalias !623
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 144
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !93, !noalias !623
  %i.co = getelementptr i8, ptr %i.cl, i64 2      ; 3 uses
  %i.cp = add nsw i64 %3, -1                      ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i.i.i.i25, label %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i23

_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i23: ; preds = %.noexc6.i.i22
  %.idx.i.i.i.i.i.i.i.i.i.i.i24 = shl nuw nsw i64 %i.cp, 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.co, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i24, i1 false), !tbaa !95, !noalias !623
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i24
  br label %.lr.ph.i.i.i.i25

bb.x:                                             ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i19
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 152
  store ptr %6, ptr %i.cs, align 8, !tbaa !624, !noalias !623
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bx, i64 160
  store ptr %7, ptr %i.ct, align 8, !tbaa !109, !noalias !623
  br label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit"

.lr.ph.i.i.i.i25:                                 ; preds = %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i23, %.noexc6.i.i22
  %.0.i.i.i.i.i.ph.i.i.i.i26 = phi ptr [ %i.cr, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i23 ], [ %i.co, %.noexc6.i.i22 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  store ptr %.0.i.i.i.i.i.ph.i.i.i.i26, ptr %i.cu, align 8, !tbaa !616, !noalias !623
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 152
  store ptr %6, ptr %i.cv, align 8, !tbaa !624, !noalias !623
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bx, i64 160
  store ptr %7, ptr %i.cw, align 8, !tbaa !109, !noalias !623
  %i.cx = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 -1, i64 %i.cx, i1 false), !tbaa !101, !noalias !623
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cl, i8 0, i64 %i.ck, i1 false), !tbaa !95, !noalias !623
  br label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit"

bb.y:                                             ; preds = %.noexc14.i.i.i.i21, %.noexc.i.i.i.i27
  %i.cy = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 168) #29, !noalias !623
  br label %common.resume

bb.z:                                             ; preds = %bb.v
  %i.cz = and i32 %2, 1
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.db = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #28, !noalias !625 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers11HeapHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %i.db, align 8, !tbaa !65, !noalias !625
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  invoke void @_ZN5faiss20simd_result_handlers11HeapHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEC2EmmlPfPlPKNS_10IDSelectorEPKf(ptr noundef nonnull align 8 dereferenceable(200) %i.dc, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef null)
          to label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit" unwind label %bb.ab, !noalias !625

bb.ab:                                            ; preds = %bb.aa
  %i.dd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 208) #29, !noalias !625
  br label %common.resume

bb.ac:                                            ; preds = %bb.z
  %i.de = shl nsw i64 %5, 1
  %i.df = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #28, !noalias !626 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers16ReservoirHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %i.df, align 8, !tbaa !65, !noalias !626
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  invoke void @_ZN5faiss20simd_result_handlers16ReservoirHandlerINS_4CMinItlEELb1ELNS_9SIMDLevelE0EEC2EmmmmPfPlPKNS_10IDSelectorE(ptr noundef nonnull align 8 dereferenceable(216) %i.dg, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %i.de, ptr noundef %6, ptr noundef %7, ptr noundef %8)
          to label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit" unwind label %bb.ad, !noalias !626

bb.ad:                                            ; preds = %bb.ac
  %i.dh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 224) #29, !noalias !626
  br label %common.resume

bb.ae:                                            ; preds = %bb.u
  br i1 %i.a, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.di = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #28, !noalias !627 ; 21 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %i.di, align 8, !tbaa !65, !noalias !627
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 17
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i64 0, ptr %i.dn, align 8, !tbaa !81, !noalias !627
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store i64 %3, ptr %i.do, align 8, !tbaa !82, !noalias !627
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store i64 %4, ptr %i.dp, align 8, !tbaa !83, !noalias !627
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 104
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false), !noalias !627
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.dq, i8 0, i64 49, i1 false), !noalias !627
  store ptr %8, ptr %i.ds, align 8, !tbaa !111, !noalias !627
  store i8 0, ptr %i.dk, align 8, !tbaa !88, !noalias !627
  store i8 4, ptr %i.dl, align 1, !tbaa !89, !noalias !627
  store i8 0, ptr %i.dm, align 2, !tbaa !90, !noalias !627
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss20simd_result_handlers19SingleResultHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EEE, i64 16), ptr %i.dj, align 8, !tbaa !65, !noalias !627
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 128 ; 2 uses
  %i.du = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.du, label %.noexc.i.i.i.i42, label %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i32

.noexc.i.i.i.i42:                                 ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #30
          to label %.noexc.i.i43 unwind label %bb.ah, !noalias !627

.noexc.i.i43:                                     ; preds = %.noexc.i.i.i.i42
  unreachable

_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i32: ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i8 0, i64 24, i1 false), !noalias !627
  %.not.i.i.i.i.i.i.i.i33 = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i.i.i.i.i33, label %bb.ag, label %.noexc14.i.i.i.i34

.noexc14.i.i.i.i34:                               ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i32
  %i.dv = shl nuw nsw i64 %3, 1                   ; 2 uses
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #28
          to label %.noexc6.i.i35 unwind label %bb.ah, !noalias !627 ; 4 uses

.noexc6.i.i35:                                    ; preds = %.noexc14.i.i.i.i34
  store ptr %i.dw, ptr %i.dt, align 8, !tbaa !92, !noalias !627
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.di, i64 144
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !93, !noalias !627
  %i.dz = getelementptr i8, ptr %i.dw, i64 2      ; 3 uses
  %i.ea = add nsw i64 %3, -1                      ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.lr.ph.i.i.i.i38, label %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i36

_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i36: ; preds = %.noexc6.i.i35
  %.idx.i.i.i.i.i.i.i.i.i.i.i37 = shl nuw nsw i64 %i.ea, 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.dz, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i37, i1 false), !tbaa !95, !noalias !627
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i37
  br label %.lr.ph.i.i.i.i38

bb.ag:                                            ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.di, i64 152
  store ptr %6, ptr %i.ed, align 8, !tbaa !628, !noalias !627
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 160
  store ptr %7, ptr %i.ee, align 8, !tbaa !113, !noalias !627
  br label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit"

.lr.ph.i.i.i.i38:                                 ; preds = %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i36, %.noexc6.i.i35
  %.0.i.i.i.i.i.ph.i.i.i.i39 = phi ptr [ %i.ec, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i36 ], [ %i.dz, %.noexc6.i.i35 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.di, i64 136
  store ptr %.0.i.i.i.i.i.ph.i.i.i.i39, ptr %i.ef, align 8, !tbaa !616, !noalias !627
  %i.eg = getelementptr inbounds nuw i8, ptr %i.di, i64 152
  store ptr %6, ptr %i.eg, align 8, !tbaa !628, !noalias !627
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 160
  store ptr %7, ptr %i.eh, align 8, !tbaa !113, !noalias !627
  %i.ei = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 -1, i64 %i.ei, i1 false), !tbaa !101, !noalias !627
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.dw, i8 0, i64 %i.dv, i1 false), !tbaa !95, !noalias !627
  br label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit"

bb.ah:                                            ; preds = %.noexc14.i.i.i.i34, %.noexc.i.i.i.i42
  %i.ej = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 168) #29, !noalias !627
  br label %common.resume

bb.ai:                                            ; preds = %bb.ae
  %i.ek = and i32 %2, 1
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.em = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #28, !noalias !629 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers11HeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %i.em, align 8, !tbaa !65, !noalias !629
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  invoke void @_ZN5faiss20simd_result_handlers11HeapHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EEC2EmmlPfPlPKNS_10IDSelectorEPKf(ptr noundef nonnull align 8 dereferenceable(200) %i.en, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef null)
          to label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit" unwind label %bb.ak, !noalias !629

bb.ak:                                            ; preds = %bb.aj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 208) #29, !noalias !629
  br label %common.resume

bb.al:                                            ; preds = %bb.ai
  %i.ep = shl nsw i64 %5, 1
  %i.eq = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #28, !noalias !630 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers16ReservoirHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %i.eq, align 8, !tbaa !65, !noalias !630
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  invoke void @_ZN5faiss20simd_result_handlers16ReservoirHandlerINS_4CMinItiEELb0ELNS_9SIMDLevelE0EEC2EmmmmPfPlPKNS_10IDSelectorE(ptr noundef nonnull align 8 dereferenceable(216) %i.er, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %i.ep, ptr noundef %6, ptr noundef %7, ptr noundef %8)
          to label %"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit" unwind label %bb.am, !noalias !630

bb.am:                                            ; preds = %bb.al
  %i.es = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef 224) #29, !noalias !630
  br label %common.resume

"_ZZN5faiss27make_fast_scan_scanner_implILNS_9SIMDLevelE0EEESt10unique_ptrINS_19FastScanCodeScannerESt14default_deleteIS3_EEbimmlPfPlPKNS_10IDSelectorEbENK3$_0clINS_4CMaxItlEELb1EEES6_v.exit": ; preds = %bb.al, %bb.aj, %bb.ag, %.lr.ph.i.i.i.i38, %bb.ac, %bb.aa, %bb.x, %.lr.ph.i.i.i.i25, %bb.s, %bb.q, %.lr.ph.i.i.i.i12, %bb.n, %bb.j, %bb.h, %.lr.ph.i.i.i.i, %bb.e
  %.sink.i31.sink = phi ptr [ %i.bx, %.lr.ph.i.i.i.i25 ], [ %i.bu, %bb.s ], [ %i.aj, %bb.j ], [ %i.af, %bb.h ], [ %i.b, %bb.e ], [ %i.b, %.lr.ph.i.i.i.i ], [ %i.bq, %bb.q ], [ %i.am, %bb.n ], [ %i.am, %.lr.ph.i.i.i.i12 ], [ %i.db, %bb.aa ], [ %i.bx, %bb.x ], [ %i.df, %bb.ac ], [ %i.em, %bb.aj ], [ %i.di, %bb.ag ], [ %i.eq, %bb.al ], [ %i.di, %.lr.ph.i.i.i.i38 ]
  store ptr %.sink.i31.sink, ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %0, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEE, i64 16), ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29, !inline_history !117
  br label %_ZN5faiss20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EEE, i64 16), ptr %0, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5faiss20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEE, i64 16), ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29, !inline_history !631
  br label %_ZN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED2Ev.exit

_ZN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EE7handlerEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EE15accumulate_loopEimiiPKhS9_im(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i64 noundef %8) unnamed_addr #2 comdat align 2 {
bb.a:
  %9 = alloca %"struct.faiss::NormTableScaler", align 4 ; 6 uses
  %10 = alloca %"struct.faiss::DummyScaler", align 1 ; 3 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store i32 %7, ptr %9, align 4, !tbaa !121
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.b = trunc i32 %7 to i16
  %i.c = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %i.d = shufflevector <8 x i16> %i.c, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x i16> %i.d, ptr %i.a, align 4, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 20
  store <8 x i16> %i.d, ptr %i.e, align 4, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss32pq4_accumulate_loop_fixed_scalerILNS_9SIMDLevelE0ENS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELS1_0EEENS_15NormTableScalerILS1_0EEEEEvimiiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(160) %i.f, ptr noundef nonnull align 4 dereferenceable(36) %9, i64 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss32pq4_accumulate_loop_fixed_scalerILNS_9SIMDLevelE0ENS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELS1_0EEENS_11DummyScalerILS1_0EEEEEvimiiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %10, i64 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss12ScannerMixInINS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELNS_9SIMDLevelE0EEELS5_0EE19accumulate_loop_qbsEimiPKhS9_im(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i64 noundef %7) unnamed_addr #2 comdat align 2 {
bb.a:
  %8 = alloca %"struct.faiss::NormTableScaler", align 4 ; 6 uses
  %9 = alloca %"struct.faiss::DummyScaler", align 1 ; 3 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store i32 %6, ptr %8, align 4, !tbaa !121
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.b = trunc i32 %6 to i16
  %i.c = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %i.d = shufflevector <8 x i16> %i.c, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x i16> %i.d, ptr %i.a, align 4, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20
  store <8 x i16> %i.d, ptr %i.e, align 4, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss40pq4_accumulate_loop_qbs_fixed_scaler_256ILNS_9SIMDLevelE0ENS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELS1_0EEENS_15NormTableScalerILS1_0EEEEEvimiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(160) %i.f, ptr noundef nonnull align 4 dereferenceable(36) %8, i64 noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5faiss40pq4_accumulate_loop_qbs_fixed_scaler_256ILNS_9SIMDLevelE0ENS_20simd_result_handlers19SingleResultHandlerINS_4CMaxItlEELb1ELS1_0EEENS_11DummyScalerILS1_0EEEEEvimiPKhSA_RT0_RKT1_m(i32 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
