Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/selectivesearchsegmentation?download=true
inline.NumInlined: 2286
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImpl3getEii:bb.a
  %i.bw = fdiv float %i.bs, %i.bv
  %i.bx = fsub float 1.000000e+00, %i.bw          ; 2 uses
  %i.by = fcmp ogt float %i.bx, 1.000000e+00
  %.sroa.speculated8 = select i1 %i.by, float 1.000000e+00, float %i.bx ; 2 uses
  %i.bz = fcmp olt float %.sroa.speculated8, 0.000000e+00
  %.sroa.speculated = select i1 %i.bz, float 0.000000e+00, float %.sroa.speculated8
  ret float %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImpl5mergeEii(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8ximgproc12segmentation45createSelectiveSearchSegmentationStrategySizeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr.29") align 8 captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #28, !noalias !272 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !81, !noalias !272
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !82, !noalias !272
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !65, !noalias !272
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplC2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.d)
          to label %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, !noalias !272

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 272) #27, !noalias !272
  resume { ptr, i32 } %i.e

_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation39SelectiveSearchSegmentationStrategySizeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !1
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategyFillImpl8setImageERKNS_11_InputArrayES5_S5_i(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.std::vector.42", align 8    ; 8 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.c = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !285
  %i.d = icmp eq i32 %i.c, 65536
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33, !noalias !285
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.f)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.g = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.h = icmp eq i32 %i.g, 65536
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33, !noalias !286
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.j)
          to label %_ZNK2cv11_InputArray6getMatEi.exit43 unwind label %bb.q

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit43 unwind label %bb.q

_ZNK2cv11_InputArray6getMatEi.exit43:             ; preds = %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.f unwind label %bb.r       ; 0 uses

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit43
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.m = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc44 unwind label %bb.t

.noexc44:                                         ; preds = %bb.f
  %i.n = icmp eq i32 %i.m, 65536
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc44
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33, !noalias !287
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.p)
          to label %bb.i unwind label %bb.t

bb.h:                                             ; preds = %.noexc44
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !79
  %i.u = mul nsw i32 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.u, ptr %i.v, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.x, align 4, !tbaa !50
  store i32 16842752, ptr %8, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.y, align 8, !tbaa !33
  %i.z = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.aa = load double, ptr %i.b, align 8, !tbaa !55
  %i.ab = fptosi double %i.aa to i32              ; 3 uses
  %i.ac = add i32 %i.ab, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ad = sext i32 %i.ac to i64                   ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not70 = icmp eq i32 %i.ac, 0
  br i1 %.not70, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ag = icmp slt i32 %i.ab, -1
  br i1 %i.ag, label %bb.m, label %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #29
          to label %.noexc59 unwind label %bb.v

.noexc59:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %11 = call i64 @llvm.umin.i64(i64 %i.ad, i64 384307168202282325) ; 2 uses
  %i.ah = mul nuw nsw i64 %11, 24
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #28
          to label %.noexc60 unwind label %bb.v   ; 5 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %12 = mul nuw nsw i64 %i.ad, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ai, i8 0, i64 %12, i1 false)
  store ptr %i.ai, ptr %9, align 8, !tbaa !133
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ad ; 2 uses
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !134
  %13 = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %11 ; 2 uses
  store ptr %13, ptr %i.af, align 8, !tbaa !135
  %14 = ptrtoint ptr %13 to i64
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit: ; preds = %bb.k, %.noexc60
  %15 = phi i64 [ 0, %bb.k ], [ %14, %.noexc60 ]
  %i.ak = phi ptr [ null, %bb.k ], [ %i.aj, %.noexc60 ] ; 2 uses
  %.pr.i = phi ptr [ null, %bb.k ], [ %i.ai, %.noexc60 ] ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !116 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !79 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph75.split, label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge, %.lr.ph75, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !136 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !137 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 4                 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %i.ad
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge76
  %i.bc = sub nuw nsw i64 %i.ad, %i.ba
  invoke void @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 noundef %i.bc)
          to label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit unwind label %bb.v

bb.o:                                             ; preds = %._crit_edge76
  %i.bd = icmp ugt i64 %i.ba, %i.ad
  br i1 %i.bd, label %bb.p, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ad ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.av, %i.be
  br i1 %.not.i.i49, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.p
  store ptr %i.be, ptr %i.au, align 8, !tbaa !136
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit: ; preds = %bb.n, %bb.o, %bb.p, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not77 = icmp slt i32 %i.ab, 0
  br i1 %.not77, label %._crit_edge80, label %.lr.ph79

.lr.ph79:                                         ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %wide.trip.count = zext i32 %i.ac to i64
  br label %bb.ad

bb.q:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit43
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %i.bi, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.an

bb.t:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.u:                                             ; preds = %bb.j, %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.al

bb.v:                                             ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.m, %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.lr.ph75.split:                                   ; preds = %.lr.ph75, %._crit_edge
  %i.bn = phi i32 [ %i.bu, %._crit_edge ], [ %i.am, %.lr.ph75 ]
  %i.bo = phi i32 [ %i.bv, %._crit_edge ], [ %i.ar, %.lr.ph75 ] ; 2 uses
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %._crit_edge ], [ 0, %.lr.ph75 ] ; 3 uses
  %i.bp = load ptr, ptr %i.ao, align 8, !tbaa !66
  %i.bq = load i64, ptr %i.ap, align 8, !tbaa !67
  %i.br = mul i64 %i.bq, %indvars.iv86
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br
  %i.bt = icmp sgt i32 %i.bo, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph75.split
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %indvars.iv86, 32 ; 2 uses
  br label %bb.w

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit
  %.pre = load i32, ptr %i.al, align 8, !tbaa !116
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph75.split
  %i.bu = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bn, %.lr.ph75.split ] ; 2 uses
  %i.bv = phi i32 [ %i.dd, %._crit_edge.loopexit ], [ %i.bo, %.lr.ph75.split ]
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.bw = sext i32 %i.bu to i64
  %i.bx = icmp slt i64 %indvars.iv.next87, %i.bw
  br i1 %i.bx, label %.lr.ph75.split, label %._crit_edge76, !llvm.loop !279

bb.w:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !52
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.ca ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !141 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !142
  %.not.i.i51 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not.i.i51, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %indvars.iv
  store i64 %.sroa.0.0.insert.insert, ptr %i.cd, align 4
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !141
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !141
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

bb.y:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !143 ; 5 uses
  %i.cj = ptrtoint ptr %i.cd to i64
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775800
  br i1 %i.cm, label %bb.z, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.cn = ashr exact i64 %i.cl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %.not.i.i.i.i52 = icmp ne i64 %i.cr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i52)
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #28
          to label %.noexc54 unwind label %.loopexit ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl
  %.sroa.0.0.insert.insert64 = or disjoint i64 %.sroa.6.0.insert.shift, %indvars.iv
  store i64 %.sroa.0.0.insert.insert64, ptr %i.cu, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.cd
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc54, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %i.ct, %.noexc54 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i ], [ %i.ci, %.noexc54 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !289, !noalias !288
  store i64 %i.cv, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !288, !noalias !289
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.cd
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc54
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ct, %.noexc54 ], [ %i.cx, %.lr.ph.i.i.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.cz = load ptr, ptr %i.ce, align 8, !tbaa !142
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.db) #27
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ct, ptr %i.cb, align 8, !tbaa !143
  store ptr %i.cy, ptr %i.cc, align 8, !tbaa !141
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.dc, ptr %i.ce, align 8, !tbaa !142
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = load i32, ptr %i.aq, align 4, !tbaa !79 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %bb.w, label %._crit_edge.loopexit, !llvm.loop !283

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

._crit_edge80:                                    ; preds = %bb.ag, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.ak
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge80, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dm, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge80 ] ; 3 uses
  %i.dg = load ptr, ptr %.05.i.i.i, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !142
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dl) #27
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dm, %i.ak
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i, %._crit_edge80
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.dn = ptrtoint ptr %.pr.i to i64
  %i.do = sub i64 %15, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.do) #27
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.ad:                                            ; preds = %.lr.ph79, %bb.ag
  %indvars.iv89 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next90, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %indvars.iv89 ; 3 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !49
  store i32 0, ptr %i.bg, align 4, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !141
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !143
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 3                 ; 2 uses
  %.not.i = icmp ugt i64 %i.dw, 2147483647
  br i1 %.not.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.dw, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #29
          to label %.noexc55 unwind label %bb.ah

.noexc55:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  store i32 -2130509788, ptr %10, align 8, !tbaa !51
  store ptr %i.dp, ptr %i.bh, align 8, !tbaa !33
  %i.dx = invoke { i64, i64 } @_ZN2cv12boundingRectERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.ag unwind label %bb.ai     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.dy = extractvalue { i64, i64 } %i.dx, 0
  %i.dz = extractvalue { i64, i64 } %i.dx, 1
  %i.ea = load ptr, ptr %i.at, align 8, !tbaa !137
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %indvars.iv89 ; 2 uses
  store i64 %i.dy, ptr %i.eb, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.dz, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge80, label %bb.ad, !llvm.loop !284

bb.ah:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn34 = phi { ptr, i32 } [ %i.ed, %bb.ai ], [ %i.ec, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj, %bb.v
  %.pn36 = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %.pn34, %bb.aj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.u
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.ak ], [ %i.bl, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.t
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %bb.al ], [ %i.bk, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.s
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn, %bb.am ], [ %.pn, %bb.s ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn36.pn.pn.pn
}

declare { i64, i64 } @_ZN2cv12boundingRectERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !133    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #27
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !133
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !135
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #27
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef float @_ZN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategyFillImpl3getEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !56
  %i.f = and i32 %i.e, 16384
  %i.g = icmp ne i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 1
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load i32, ptr %i.k, align 8, !tbaa !52
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67
  %i.r = sext i32 %1 to i64
  %i.s = mul i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.v = load i32, ptr %i.u, align 4, !tbaa !79   ; 3 uses
  %i.w = sdiv i32 %1, %i.v                        ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.v                   ; 0 uses
  %.recomposed = srem i32 %1, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67
  %i.ac = sext i32 %i.w to i64
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.af = sext i32 %.recomposed to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  br label %bb.h

end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc12segmentation31SelectiveSearchSegmentationImpl30switchToSelectiveSearchQualityEiif:bb.a

bb.kb:                                            ; preds = %bb.ka, %bb.an, %bb.am
  %.pn89.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn.pn, %bb.ka ], [ %i.dy, %bb.an ], [ %i.dx, %bb.am ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.al, %bb.ak
  %.pn89.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn.pn.pn, %bb.kb ], [ %i.dw, %bb.al ], [ %i.dv, %bb.ak ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.aj, %bb.ai
  %.pn89.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn.pn.pn.pn, %bb.kc ], [ %i.du, %bb.aj ], [ %i.dt, %bb.ai ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn89.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv5mergeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc12segmentation31SelectiveSearchSegmentationImpl7processERSt6vectorINS_5Rect_IiEESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.split534:
  %2 = alloca %"class.cv::Mat", align 8           ; 13 uses
  %3 = alloca %"class.cv::Mat_.91", align 8       ; 13 uses
  %4 = alloca %"class.cv::Mat_.67", align 8       ; 13 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::vector.37", align 8    ; 10 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.std::vector.85", align 8   ; 10 uses
  %13 = alloca %"class.std::map", align 8         ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !530  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !530  ; 2 uses
  %.not535 = icmp eq ptr %i.e, %i.g
  br i1 %.not535, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split534
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 432
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 432
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !531
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !531 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.split

._crit_edge541:                                   ; preds = %._crit_edge529
  %.not.i.i = icmp eq ptr %.sroa.0226.1.lcssa, %.sroa.10.1.lcssa
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %bb.a

bb.a:                                             ; preds = %._crit_edge541
  %i.at = ptrtoint ptr %.sroa.10.1.lcssa to i64
  %i.au = ptrtoint ptr %.sroa.0226.1.lcssa to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 40
  %i.ax = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = shl nuw nsw i64 %i.ax, 1
  %i.az = xor i64 %i.ay, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %.sroa.0226.1.lcssa, ptr %.sroa.10.1.lcssa, i64 noundef %i.az)
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.a
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %.sroa.0226.1.lcssa, ptr %.sroa.10.1.lcssa)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %bb.ay

.split:                                           ; preds = %.split.lr.ph, %._crit_edge529
  %i.ba = phi ptr [ %i.bd, %._crit_edge529 ], [ %i.g, %.split.lr.ph ]
  %i.bb = phi ptr [ %i.be, %._crit_edge529 ], [ %i.ar, %.split.lr.ph ] ; 2 uses
  %.0540 = phi i32 [ %.1.lcssa, %._crit_edge529 ], [ 0, %.split.lr.ph ] ; 2 uses
  %.sroa.0226.0539 = phi ptr [ %.sroa.0226.1.lcssa, %._crit_edge529 ], [ null, %.split.lr.ph ] ; 2 uses
  %.sroa.10.0538 = phi ptr [ %.sroa.10.1.lcssa, %._crit_edge529 ], [ null, %.split.lr.ph ] ; 2 uses
  %.sroa.16.0537 = phi ptr [ %.sroa.16.1.lcssa, %._crit_edge529 ], [ null, %.split.lr.ph ] ; 2 uses
  %.sroa.0222.0536 = phi ptr [ %i.bf, %._crit_edge529 ], [ %i.e, %.split.lr.ph ] ; 3 uses
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !531 ; 2 uses
  %.not281522 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not281522, label %._crit_edge529, label %.lr.ph528

._crit_edge529.loopexit:                          ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit
  %.pre649 = load ptr, ptr %i.f, align 8, !tbaa !530
  br label %._crit_edge529

._crit_edge529:                                   ; preds = %._crit_edge529.loopexit, %.split
  %i.bd = phi ptr [ %i.ba, %.split ], [ %.pre649, %._crit_edge529.loopexit ] ; 2 uses
  %i.be = phi ptr [ %i.bb, %.split ], [ %i.ir, %._crit_edge529.loopexit ]
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0537, %.split ], [ %.sroa.16.2.lcssa, %._crit_edge529.loopexit ] ; 4 uses
  %.sroa.10.1.lcssa = phi ptr [ %.sroa.10.0538, %.split ], [ %.sroa.10.2.lcssa, %._crit_edge529.loopexit ] ; 7 uses
  %.sroa.0226.1.lcssa = phi ptr [ %.sroa.0226.0539, %.split ], [ %.sroa.0226.2.lcssa, %._crit_edge529.loopexit ] ; 8 uses
  %.1.lcssa = phi i32 [ %.0540, %.split ], [ %i.ib, %._crit_edge529.loopexit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0222.0536, i64 208 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.bd
  br i1 %.not, label %._crit_edge541, label %.split, !llvm.loop !511

.lr.ph528:                                        ; preds = %.split, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit
  %.1527 = phi i32 [ %i.ib, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.0540, %.split ] ; 2 uses
  %.sroa.0226.1526 = phi ptr [ %.sroa.0226.2.lcssa, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.sroa.0226.0539, %.split ] ; 12 uses
  %.sroa.10.1525 = phi ptr [ %.sroa.10.2.lcssa, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.sroa.10.0538, %.split ] ; 2 uses
  %.sroa.16.1524 = phi ptr [ %.sroa.16.2.lcssa, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.sroa.16.0537, %.split ] ; 12 uses
  %.sroa.0218.0523 = phi ptr [ %i.ir, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %i.bc, %.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #26
  %i.bg = load i32, ptr %3, align 8, !tbaa !56
  %i.bh = and i32 %i.bg, -4096
  %i.bi = or disjoint i32 %i.bh, 1
  store i32 %i.bi, ptr %3, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #26
  %i.bj = load i32, ptr %4, align 8, !tbaa !56
  %i.bk = and i32 %i.bj, -4096
  %i.bl = or disjoint i32 %i.bk, 4
  store i32 %i.bl, ptr %4, align 8, !tbaa !56
  %i.bm = load ptr, ptr %.sroa.0218.0523, align 8, !tbaa !168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 0, ptr %i.j, align 8, !tbaa !49
  store i32 0, ptr %i.k, align 4, !tbaa !50
  store i32 16842752, ptr %5, align 8, !tbaa !51
  store ptr %.sroa.0222.0536, ptr %i.l, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 0, ptr %i.n, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !51
  store ptr %2, ptr %i.m, align 8, !tbaa !33
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %.lr.ph528
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 0, ptr %i.o, align 8, !tbaa !49
  store i32 0, ptr %i.p, align 4, !tbaa !50
  store i32 16842752, ptr %7, align 8, !tbaa !51
  store ptr %2, ptr %i.q, align 8, !tbaa !33
  %i.bq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.br = load double, ptr %i.b, align 8, !tbaa !55
  %i.bs = fptosi double %i.br to i32              ; 3 uses
  %i.bt = add nsw i32 %i.bs, 1                    ; 7 uses
  store i32 %i.bt, ptr %i.c, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.bu = sext i32 %i.bt to i64                   ; 5 uses
  %cond = icmp eq i32 %i.bt, 0
  br i1 %cond, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = icmp slt i32 %i.bs, -1
  br i1 %i.bv, label %bb.f, label %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #29
          to label %.noexc166 unwind label %.loopexit.split-lp298

.noexc166:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %14 = call i64 @llvm.umin.i64(i64 %i.bu, i64 576460752303423487) ; 2 uses
  %i.bw = shl nuw nsw i64 %14, 4
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #28
          to label %.noexc167 unwind label %.loopexit297 ; 5 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %15 = shl nuw nsw i64 %i.bu, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %15, i1 false)
  store ptr %i.bx, ptr %8, align 8, !tbaa !137
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bu
  store ptr %i.by, ptr %i.r, align 8, !tbaa !136
  %16 = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %14
  store ptr %16, ptr %i.s, align 8, !tbaa !169
  %i.bz = mul nuw nsw i64 %i.bu, 24               ; 2 uses
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #28
          to label %.noexc100 unwind label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138.thread.loopexit ; 3 uses

.noexc100:                                        ; preds = %.noexc167
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ca, i8 0, i64 %i.bz, i1 false)
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.bu
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit: ; preds = %bb.d, %.noexc100
  %i.cc = phi ptr [ %i.bx, %.noexc100 ], [ null, %bb.d ]
  %.sroa.0205.1 = phi ptr [ %i.ca, %.noexc100 ], [ null, %bb.d ] ; 12 uses
  %.sroa.13.1 = phi ptr [ %i.cb, %.noexc100 ], [ null, %bb.d ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, i32 noundef %i.bt, i32 noundef %i.bt, i32 noundef 0)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit
  %i.cd = load ptr, ptr %9, align 8, !tbaa !63    ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !65
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1)
          to label %_ZN2cv4Mat_IcEaSERKNS_7MatExprE.exit unwind label %bb.l, !inline_history !512

_ZN2cv4Mat_IcEaSERKNS_7MatExprE.exit:             ; preds = %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.t) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.u) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %10, i32 noundef %i.bt, i32 noundef 1, i32 noundef 4)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZN2cv4Mat_IcEaSERKNS_7MatExprE.exit
  %i.ch = load ptr, ptr %10, align 8, !tbaa !63   ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(688) %10, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 4)
          to label %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit unwind label %bb.o, !inline_history !513

_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit:             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.w) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.x) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.y) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cl = load i32, ptr %i.z, align 8, !tbaa !116 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  %or.cond804 = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %or.cond804, label %.lr.ph496.split, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit
  %.not284497 = icmp slt i32 %i.bs, 0
  br i1 %.not284497, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.bt to i64
  br label %bb.y

bb.i:                                             ; preds = %.lr.ph528
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.av

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.au

.loopexit297:                                     ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit299 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140

.loopexit.split-lp298:                            ; preds = %bb.f
  %lpad.loopexit.split-lp300 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138.thread.loopexit: ; preds = %.noexc167
  %lpad.loopexit302 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140

bb.k:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn80 = phi { ptr, i32 } [ %i.cs, %bb.l ], [ %i.cr, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ar

bb.n:                                             ; preds = %_ZN2cv4Mat_IcEaSERKNS_7MatExprE.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn82 = phi { ptr, i32 } [ %i.cu, %bb.o ], [ %i.ct, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ar

.lr.ph496.split:                                  ; preds = %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit, %._crit_edge
  %i.cv = phi i32 [ %i.dd, %._crit_edge ], [ %i.cl, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ]
  %i.cw = phi i32 [ %i.de, %._crit_edge ], [ %i.cn, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ] ; 2 uses
  %indvars.iv641 = phi i64 [ %indvars.iv.next642, %._crit_edge ], [ 0, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ] ; 4 uses
  %.056494 = phi ptr [ %i.da, %._crit_edge ], [ null, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ] ; 2 uses
  %i.cx = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.cy = load i64, ptr %i.ab, align 8, !tbaa !67
  %i.cz = mul i64 %i.cy, %indvars.iv641
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz ; 3 uses
  %i.db = icmp sgt i32 %i.cw, 0
  br i1 %i.db, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph496.split
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %indvars.iv641, 32 ; 2 uses
  %i.dc = icmp ne i64 %indvars.iv641, 0
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre = load i32, ptr %i.z, align 8, !tbaa !116
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph496.split
  %i.dd = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cv, %.lr.ph496.split ] ; 2 uses
  %i.de = phi i32 [ %i.hi, %._crit_edge.loopexit ], [ %i.cw, %.lr.ph496.split ]
  %indvars.iv.next642 = add nuw nsw i64 %indvars.iv641, 1 ; 2 uses
  %i.df = sext i32 %i.dd to i64
  %i.dg = icmp slt i64 %indvars.iv.next642, %i.df
  br i1 %i.dg, label %.lr.ph496.split, label %.preheader, !llvm.loop !514

bb.q:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 7 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv ; 8 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0205.1, i64 %i.dj ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !141 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !142
  %.not.i.i103 = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i.i103, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0195.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %indvars.iv
  store i64 %.sroa.0195.0.insert.insert, ptr %i.dm, align 4
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !141
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dq, ptr %i.dl, align 8, !tbaa !141
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.dr = load ptr, ptr %i.dk, align 8, !tbaa !143 ; 5 uses
  %i.ds = ptrtoint ptr %i.dm to i64
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %bb.t, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.noexc105 unwind label %.loopexit.split-lp293

.noexc105:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.dw = ashr exact i64 %i.du, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 1152921504606846975)
  %i.ea = select i1 %i.dy, i64 1152921504606846975, i64 %i.dz ; 3 uses
  %.not.i.i.i.i104 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i.i104)
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #28
          to label %.noexc106 unwind label %.loopexit292 ; 5 uses

end_hunk_1
