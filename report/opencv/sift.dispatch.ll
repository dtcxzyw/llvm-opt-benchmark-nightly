Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sift.dispatch?download=true
inline.NumInlined: 1019
inline.NumDeleted: 410
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK2cv9SIFT_Impl15buildDoGPyramidERKSt6vectorINS_3MatESaIS2_EERS4_:bb.a
  %i.x = sub nuw nsw i64 %i.o, %i.v
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.x)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.y = icmp ugt i64 %i.v, %i.o
  br i1 %i.y, label %bb.d, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [208 x i8], ptr %i.r, i64 %i.o ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, %i.z
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.z, %bb.d ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.q
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.z, ptr %i.p, align 8, !tbaa !75
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ab = load i32, ptr %i.i, align 4, !tbaa !73  ; 2 uses
  %i.ac = add nsw i32 %i.ab, 2
  %i.ad = mul nsw i32 %i.ac, %i.l
  store i32 0, ptr %4, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv23buildDoGPyramidComputerE, i64 16), ptr %5, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ab, ptr %i.af, align 8, !tbaa !86
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.ag, align 8, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.ah, align 8, !tbaa !87
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef -1.000000e+00)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #26
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.h:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.am, %bb.h ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv9SIFT_Impl21findScaleSpaceExtremaERKSt6vectorINS_3MatESaIS2_EES6_RS1_INS_8KeyPointESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(45) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %5 = alloca %"class.cv::TLSDataAccumulator", align 8 ; 12 uses
  %6 = alloca %"class.cv::Range", align 4         ; 6 uses
  %7 = alloca %"class.cv::findScaleSpaceExtremaComputer", align 8 ; 19 uses
  %8 = alloca %"class.std::vector.23", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv9SIFT_Impl21findScaleSpaceExtremaERKSt6vectorINS_3MatESaIS2_EES6_RS1_INS_8KeyPointESaIS7_EEE25__cv_trace_location_fn371)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = load ptr, ptr %1, align 8, !tbaa !15
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 208
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73   ; 2 uses
  %i.k = add nsw i32 %i.j, 3
  %i.l = sdiv i32 %i.h, %i.k                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !88
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = sitofp i32 %i.j to double
  %i.q = fdiv double %i.o, %i.p
  %i.r = fmul double %i.q, 2.550000e+02
  %i.s = call double @llvm.floor.f64(double %i.r)
  %i.t = fptosi double %i.s to i32
  %i.u = load ptr, ptr %3, align 8, !tbaa !42     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.u, ptr %i.v, align 8, !tbaa !39
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN2cv16TLSDataContainerC2Ev(ptr noundef nonnull align 8 dereferenceable(105) %5)
          to label %_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEEC2Ev.exit unwind label %bb.b

_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEEC2Ev.exit: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEEE, i64 16), ptr %5, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.y, align 8, !tbaa !192
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i8 0, i64 49, i1 false)
  %i.aa = icmp sgt i32 %i.l, 0
  br i1 %i.aa, label %.preheader49.lr.ph, label %._crit_edge56

.preheader49.lr.ph:                               ; preds = %_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEEC2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ap = load i32, ptr %i.i, align 4, !tbaa !73  ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %._crit_edge56, label %.preheader49

.preheader49:                                     ; preds = %.preheader49.lr.ph, %._crit_edge
  %i.ar = phi i32 [ %i.ax, %._crit_edge ], [ %i.ap, %.preheader49.lr.ph ] ; 3 uses
  %.03555 = phi i32 [ %i.ay, %._crit_edge ], [ 0, %.preheader49.lr.ph ] ; 3 uses
  %.not53 = icmp slt i32 %i.ar, 1
  br i1 %.not53, label %._crit_edge, label %.lr.ph

._crit_edge56:                                    ; preds = %._crit_edge, %.preheader49.lr.ph, %_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEEC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEE6gatherERS1_IPS4_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(105) %5, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %._crit_edge56
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !92
  %i.au = load ptr, ptr %8, align 8, !tbaa !93    ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64
  %.not = icmp eq ptr %i.at, %i.au
  br i1 %.not, label %._crit_edge59, label %.lr.ph58

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

._crit_edge:                                      ; preds = %bb.d, %.preheader49
  %i.ax = phi i32 [ %i.ar, %.preheader49 ], [ %i.bq, %bb.d ]
  %i.ay = add nuw nsw i32 %.03555, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %i.l
  br i1 %exitcond.not, label %._crit_edge56, label %.preheader49, !llvm.loop !185

.lr.ph:                                           ; preds = %.preheader49, %bb.d
  %i.az = phi i32 [ %i.bq, %bb.d ], [ %i.ar, %.preheader49 ]
  %.03454 = phi i32 [ %i.bp, %bb.d ], [ 1, %.preheader49 ] ; 4 uses
  %i.ba = add nuw nsw i32 %i.az, 2
  %i.bb = mul nuw nsw i32 %i.ba, %.03555
  %i.bc = add nsw i32 %i.bb, %.03454              ; 2 uses
  %9 = sext i32 %i.bc to i64
  %i.bd = load ptr, ptr %2, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw [208 x i8], ptr %i.bd, i64 %9 ; 3 uses
  %i.bf = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %i.be, i32 noundef 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bl = add nsw i32 %i.bi, -5
  store i32 5, ptr %6, align 4, !tbaa !10
  store i32 %i.bl, ptr %i.ab, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bm = load i32, ptr %i.i, align 4, !tbaa !73
  %i.bn = load double, ptr %i.ac, align 8, !tbaa !76
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29findScaleSpaceExtremaComputerE, i64 16), ptr %7, align 8, !tbaa !59
  store i32 %.03555, ptr %i.ad, align 8, !tbaa !96
  store i32 %.03454, ptr %i.ae, align 4, !tbaa !97
  store i32 %i.t, ptr %i.af, align 8, !tbaa !98
  store i32 %i.bc, ptr %i.ag, align 4, !tbaa !99
  store i32 %i.bg, ptr %i.ah, align 8, !tbaa !100
  store i32 %i.bk, ptr %i.ai, align 4, !tbaa !101
  store i32 %i.bm, ptr %i.aj, align 8, !tbaa !102
  %i.bo = load <2 x double>, ptr %i.m, align 8, !tbaa !74
  store <2 x double> %i.bo, ptr %i.ak, align 8, !tbaa !74
  store double %i.bn, ptr %i.al, align 8, !tbaa !103
  store ptr %1, ptr %i.am, align 8, !tbaa !87
  store ptr %2, ptr %i.an, align 8, !tbaa !87
  store ptr %5, ptr %i.ao, align 8, !tbaa !193
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef -1.000000e+00)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bp = add nuw nsw i32 %.03454, 1
  %i.bq = load i32, ptr %i.i, align 4, !tbaa !73  ; 3 uses
  %.not.not = icmp slt i32 %.03454, %i.bq
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !186

bb.e:                                             ; preds = %.lr.ph
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.l

._crit_edge59:                                    ; preds = %bb.j, %.preheader
  %.lcssa51 = phi ptr [ %i.au, %.preheader ], [ %i.cp, %bb.j ] ; 2 uses
  %.lcssa = phi i64 [ %i.av, %.preheader ], [ %i.cr, %bb.j ]
  %.not.i.i.i = icmp eq ptr %.lcssa51, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge59
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !104
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %.lcssa
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa51, i64 noundef %i.bw) #29
  br label %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit: ; preds = %._crit_edge59, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #26
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

.lr.ph58:                                         ; preds = %.preheader, %bb.j
  %i.cb = phi ptr [ %i.cp, %bb.j ], [ %i.au, %.preheader ]
  %.03357 = phi i64 [ %i.cn, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %i.cc = load ptr, ptr %i.v, align 8, !tbaa !194
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.03357
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !106 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !194
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !194
  %i.ci = load ptr, ptr %3, align 8, !tbaa !194   ; 2 uses
  %i.cj = ptrtoint ptr %i.cc to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  invoke void @_ZNSt6vectorIN2cv8KeyPointESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.cm, ptr %i.cf, ptr %i.ch)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.lr.ph58
  %i.cn = add nuw i64 %.03357, 1                  ; 2 uses
  %i.co = load ptr, ptr %i.as, align 8, !tbaa !92
  %i.cp = load ptr, ptr %8, align 8, !tbaa !93    ; 3 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3
  %i.cu = icmp ult i64 %i.cn, %i.ct
  br i1 %i.cu, label %.lr.ph58, label %._crit_edge59, !llvm.loop !187

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph58, %._crit_edge56
  %lpad.loopexit.split-lp81 = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %8, align 8, !tbaa !93    ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit47, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !104
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #29
  br label %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit47

_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit47: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.f, %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit47
  %.pn42.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp81, %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit47 ], [ %i.bs, %bb.f ], [ %i.br, %bb.e ]
  call void @_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %5) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %bb.l ], [ %i.aw, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn42.pn.pn
}

declare noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEE6gatherERS1_IPS4_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !115, !range !53, !noundef !54
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEE6gatherERS1_IPS4_SaIS6_EE, ptr noundef nonnull @.str.49, i32 noundef 110) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !48
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
end_hunk_0
