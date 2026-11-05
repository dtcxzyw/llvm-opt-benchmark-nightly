Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/checker_detector?download=true
inline.NumInlined: 3254
inline.NumDeleted: 1191
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN2cv3mcc20CCheckerDetectorImpl15checkerAnalysisERKNS_11_InputArrayEjRKSt6vectorIS5_INS_6Point_IfEESaIS7_EESaIS9_EERS5_INS_3PtrINS0_8CCheckerEEESaISG_EEfRKNS_3MatESM_RS5_ISK_SaISK_EESP_RKS7_:bb.a
  %i.jj = icmp eq i64 %i.ji, 4294967297
  %i.jk = trunc i64 %i.ji to i32                  ; 2 uses
  br i1 %i.jj, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.jh, align 8, !tbaa !31
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  store i32 0, ptr %i.jl, align 4, !tbaa !32
  %i.jm = load ptr, ptr %i.jg, align 8, !tbaa !34
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #27, !inline_history !8
  %i.jp = load ptr, ptr %i.jg, align 8, !tbaa !34
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #27, !inline_history !8
  br label %_ZNSt12__shared_ptrIN2cv3mcc8CCheckerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.js = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i112 = icmp eq i8 %i.js, 0
  br i1 %.not.i.i.i112, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jt = add nsw i32 %i.jk, -1
  store i32 %i.jt, ptr %i.jh, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.ju = atomicrmw volatile add ptr %i.jh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i = phi i32 [ %i.jk, %bb.bk ], [ %i.ju, %bb.bl ]
  %i.jv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.jv, label %bb.bm, label %_ZNSt12__shared_ptrIN2cv3mcc8CCheckerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #27
  br label %_ZNSt12__shared_ptrIN2cv3mcc8CCheckerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3mcc8CCheckerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE9push_backERKS4_.exit, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.bn

bb.bn:                                            ; preds = %bb.ao, %_ZNSt12__shared_ptrIN2cv3mcc8CCheckerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jw = add nuw nsw i64 %.035169, 1             ; 2 uses
  %exitcond176.not = icmp eq i64 %i.jw, %i.dj
  br i1 %exitcond176.not, label %._crit_edge171.thread, label %bb.an, !llvm.loop !348

bb.bo:                                            ; preds = %.preheader
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit116.thread244

bb.bp:                                            ; preds = %bb.ap
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bg, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i, %bb.ba, %bb.az, %bb.ay, %bb.aw, %bb.au, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit107, %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit114

bb.bq:                                            ; preds = %.loopexit
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ka = load ptr, ptr %31, align 8, !tbaa !158  ; 3 uses
  %.not.i.i.i113 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit114, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kb = load ptr, ptr %i.es, align 8, !tbaa !159
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.ka to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.ke) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit114

bb.bs:                                            ; preds = %bb.av
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #27
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit114

bb.bt:                                            ; preds = %bb.ax
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #27
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit114

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit114: ; preds = %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.br, %bb.bq, %bb.bt, %bb.bs
  %.pn70 = phi { ptr, i32 } [ %i.jz, %bb.br ], [ %i.kg, %bb.bt ], [ %i.kf, %bb.bs ], [ %i.jz, %bb.bq ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN2cv3mcc8CCheckerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #27
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit114, %bb.bp
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit114 ], [ %i.jy, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit116.thread244

_ZNSt6vectorIiSaIiEED2Ev.exit116.thread244:       ; preds = %bb.bo, %bb.bu
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %bb.bu ], [ %i.jx, %bb.bo ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.kh = ptrtoint ptr %.sroa.17.2 to i64
  %i.ki = ptrtoint ptr %.sroa.0126.2 to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0126.2, i64 noundef %i.kj) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit116.thread

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ab, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.s
  %lpad.loopexit.split-lp273 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit116.thread

_ZNSt6vectorIiSaIiEED2Ev.exit116:                 ; preds = %bb.an
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kk = ptrtoint ptr %.sroa.17.2 to i64
  %i.kl = ptrtoint ptr %.sroa.0126.2 to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0126.2, i64 noundef %i.km) #29
  %.not.i.i.i117 = icmp eq ptr %.sroa.0138.0211223, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIfSaIfEED2Ev.exit118, label %_ZNSt6vectorIiSaIiEED2Ev.exit116.thread

_ZNSt6vectorIiSaIiEED2Ev.exit116.thread:          ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit116.thread244, %_ZNSt6vectorIiSaIiEED2Ev.exit116
  %.pn77.pn.pn.pn243 = phi { ptr, i32 } [ %.pn70.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit116.thread244 ], [ %lpad.loopexit, %_ZNSt6vectorIiSaIiEED2Ev.exit116 ], [ %lpad.loopexit.split-lp273, %.loopexit.split-lp.loopexit.split-lp ], [ %i.df, %bb.ae ]
  %.sroa.0138.0210242 = phi ptr [ %.sroa.0138.0211223, %_ZNSt6vectorIiSaIiEED2Ev.exit116.thread244 ], [ %.sroa.0138.0211223, %_ZNSt6vectorIiSaIiEED2Ev.exit116 ], [ %i.ar, %.loopexit.split-lp.loopexit.split-lp ], [ %i.ar, %bb.ae ] ; 2 uses
  %.sroa.15.0212241 = phi ptr [ %.sroa.15.0214221, %_ZNSt6vectorIiSaIiEED2Ev.exit116.thread244 ], [ %.sroa.15.0214221, %_ZNSt6vectorIiSaIiEED2Ev.exit116 ], [ %i.as, %.loopexit.split-lp.loopexit.split-lp ], [ %i.as, %bb.ae ]
  %i.kn = ptrtoint ptr %.sroa.15.0212241 to i64
  %i.ko = ptrtoint ptr %.sroa.0138.0210242 to i64
  %i.kp = sub i64 %i.kn, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0138.0210242, i64 noundef %i.kp) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit118

_ZNSt6vectorIfSaIfEED2Ev.exit118:                 ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit116, %_ZNSt6vectorIiSaIiEED2Ev.exit116.thread, %bb.z
  %.pn77.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.z ], [ %i.cy, %bb.aa ], [ %lpad.loopexit, %_ZNSt6vectorIiSaIiEED2Ev.exit116 ], [ %.pn77.pn.pn.pn243, %_ZNSt6vectorIiSaIiEED2Ev.exit116.thread ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #27
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit118, %bb.y
  %.pn77.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit118 ], [ %i.cw, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.bw

bb.bw:                                            ; preds = %bb.u, %.body, %bb.x, %bb.bv
  %.pn77.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn.pn.pn.pn, %bb.bv ], [ %i.cv, %bb.x ], [ %.pn61, %.body ], [ %i.cs, %bb.u ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @_ZN2cv3mcc11CChartModelD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %15) #27
  %.pre179 = load ptr, ptr %14, align 8, !tbaa !158 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %.not.i.i.i119 = icmp eq ptr %.pre179, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit120, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !159
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %.pre179 to i64
  %i.ku = sub i64 %i.ks, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %.pre179, i64 noundef %i.ku) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit120

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit120: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  resume { ptr, i32 } %.pn77.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv3mcc11CChartModel14copyToColorMatERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN2cv3mcc20CCheckerDetectorImpl13cost_functionERKNS_11_InputArrayERKNS_17_InputOutputArrayES4_RKSt6vectorINS_6Point_IfEESaISA_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.19", align 1 ; 3 uses
  %7 = alloca %"class.cv::mcc::CChartModel", align 8 ; 10 uses
  %8 = alloca %"class.std::vector.40", align 8    ; 11 uses
  %9 = alloca %"class.cv::Matx.72", align 4       ; 5 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.std::vector.40", align 8   ; 11 uses
  %14 = alloca %"class.std::vector.40", align 8   ; 11 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %17 = alloca %"class.cv::Scalar_", align 8      ; 8 uses
  %18 = alloca %"class.cv::Scalar_", align 8      ; 9 uses
  %19 = alloca %"class.cv::Rect_", align 8        ; 7 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %28 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !131
  call void @_ZN2cv3mcc11CChartModelC1ENS0_10ColorChartE(ptr noundef nonnull align 8 dereferenceable(112) %7, i32 noundef %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !160  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !158  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %.noexc103, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i, !prof !67

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #28
          to label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc103_crit_edge unwind label %bb.t

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc103_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !162
  %.pre216 = load ptr, ptr %i.d, align 8, !tbaa !162
  br label %.noexc103

.noexc103:                                        ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc103_crit_edge, %bb.a
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre216, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc103_crit_edge ] ; 3 uses
  %i.m = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc103_crit_edge ] ; 5 uses
  %i.n = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc103_crit_edge ] ; 7 uses
  store ptr %i.n, ptr %8, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !159
  %.not7.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i.i.i.i.i, label %.loopexit182, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc103
  %i.r = ptrtoaddr ptr %i.m to i64                ; 2 uses
  %i.s = ptrtoaddr ptr %i.n to i64
  %i.t = ptrtoaddr ptr %i.l to i64
  %i.u = add i64 %i.t, -8
  %i.v = sub i64 %i.u, %i.r                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 72
  %i.y = sub i64 %i.r, %i.s
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader270, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.m, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ac ; 2 uses
  %next.gep243 = getelementptr i8, ptr %i.m, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep243, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep243, align 4, !tbaa !60
  %wide.load244 = load <2 x i64>, ptr %i.ad, align 4, !tbaa !60
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !60
  store <2 x i64> %wide.load244, ptr %i.ae, align 4, !tbaa !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %.loopexit182, label %.lr.ph.i.i.i.i.i.preheader270

.lr.ph.i.i.i.i.i.preheader270:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader270, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader270 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader270 ] ; 2 uses
  %i.ag = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !60
  store i64 %i.ag, ptr %.09.i.i.i.i.i, align 4, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.l
  br i1 %.not.i.i.i.i.i, label %.loopexit182, label %.lr.ph.i.i.i.i.i, !llvm.loop !351

.loopexit182:                                     ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc103
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.n, %.noexc103 ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.o, align 8, !tbaa !160
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !160 ; 3 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !158 ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i.i104, label %.noexc114, label %bb.c

bb.c:                                             ; preds = %.loopexit182
  %i.aq = icmp ugt i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %.noexc.i.i112, label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i105, !prof !67

.noexc.i.i112:                                    ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc113 unwind label %bb.u

.noexc113:                                        ; preds = %.noexc.i.i112
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i105: ; preds = %bb.c
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #28
          to label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i105..noexc114_crit_edge unwind label %bb.u

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i105..noexc114_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i105
  %.pre217 = load ptr, ptr %i.aj, align 8, !tbaa !162
  %.pre218 = load ptr, ptr %i.ak, align 8, !tbaa !162
  br label %.noexc114

.noexc114:                                        ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i105..noexc114_crit_edge, %.loopexit182
  %i.as = phi ptr [ %i.al, %.loopexit182 ], [ %.pre218, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i105..noexc114_crit_edge ] ; 3 uses
  %i.at = phi ptr [ %i.am, %.loopexit182 ], [ %.pre217, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i105..noexc114_crit_edge ] ; 5 uses
  %i.au = phi ptr [ null, %.loopexit182 ], [ %i.ar, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i105..noexc114_crit_edge ] ; 11 uses
  %.not7.i.i.i.i.i106 = icmp eq ptr %i.at, %i.as
  br i1 %.not7.i.i.i.i.i106, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2ERKS4_.exit115, label %.lr.ph.i.i.i.i.i107.preheader

.lr.ph.i.i.i.i.i107.preheader:                    ; preds = %.noexc114
  %i.av = ptrtoaddr ptr %i.at to i64              ; 2 uses
  %i.aw = ptrtoaddr ptr %i.au to i64
  %i.ax = ptrtoaddr ptr %i.as to i64
  %i.ay = add i64 %i.ax, -8
  %i.az = sub i64 %i.ay, %i.av                    ; 2 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check249 = icmp ult i64 %i.az, 72
  %i.bc = sub i64 %i.av, %i.aw
  %diff.check251 = icmp ugt i64 %i.bc, -32
  %or.cond265 = or i1 %min.iters.check249, %diff.check251
  br i1 %or.cond265, label %.lr.ph.i.i.i.i.i107.preheader268, label %vector.ph252

vector.ph252:                                     ; preds = %.lr.ph.i.i.i.i.i107.preheader
  %n.vec253 = and i64 %i.bb, 4611686018427387900  ; 3 uses
  %i.bd = shl i64 %n.vec253, 3                    ; 2 uses
  %i.be = getelementptr i8, ptr %i.au, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.at, i64 %i.bd
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %i.bg = shl i64 %index255, 3                    ; 2 uses
  %next.gep256 = getelementptr i8, ptr %i.au, i64 %i.bg ; 2 uses
  %next.gep257 = getelementptr i8, ptr %i.at, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep257, i64 16
  %wide.load258 = load <2 x i64>, ptr %next.gep257, align 4, !tbaa !60
  %wide.load259 = load <2 x i64>, ptr %i.bh, align 4, !tbaa !60
  %i.bi = getelementptr i8, ptr %next.gep256, i64 16
  store <2 x i64> %wide.load258, ptr %next.gep256, align 4, !tbaa !60
  store <2 x i64> %wide.load259, ptr %i.bi, align 4, !tbaa !60
  %index.next260 = add nuw i64 %index255, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.bj, label %middle.block261, label %vector.body254, !llvm.loop !352

middle.block261:                                  ; preds = %vector.body254
  %cmp.n262 = icmp eq i64 %i.bb, %n.vec253
  br i1 %cmp.n262, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2ERKS4_.exit115, label %.lr.ph.i.i.i.i.i107.preheader268

.lr.ph.i.i.i.i.i107.preheader268:                 ; preds = %.lr.ph.i.i.i.i.i107.preheader, %middle.block261
  %.09.i.i.i.i.i108.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i107.preheader ], [ %i.be, %middle.block261 ]
  %.sroa.04.08.i.i.i.i.i109.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i107.preheader ], [ %i.bf, %middle.block261 ]
  br label %.lr.ph.i.i.i.i.i107

.lr.ph.i.i.i.i.i107:                              ; preds = %.lr.ph.i.i.i.i.i107.preheader268, %.lr.ph.i.i.i.i.i107
  %.09.i.i.i.i.i108 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i107 ], [ %.09.i.i.i.i.i108.ph, %.lr.ph.i.i.i.i.i107.preheader268 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i109 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i107 ], [ %.sroa.04.08.i.i.i.i.i109.ph, %.lr.ph.i.i.i.i.i107.preheader268 ] ; 2 uses
  %i.bk = load i64, ptr %.sroa.04.08.i.i.i.i.i109, align 4, !tbaa !60
  store i64 %i.bk, ptr %.09.i.i.i.i.i108, align 4, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i109, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i108, i64 8 ; 2 uses
  %.not.i.i.i.i.i110 = icmp eq ptr %i.bl, %i.as
  br i1 %.not.i.i.i.i.i110, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2ERKS4_.exit115, label %.lr.ph.i.i.i.i.i107, !llvm.loop !353

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2ERKS4_.exit115: ; preds = %.lr.ph.i.i.i.i.i107, %middle.block261, %.noexc114
  %.0.lcssa.i.i.i.i.i111 = phi ptr [ %i.au, %.noexc114 ], [ %i.be, %middle.block261 ], [ %i.bm, %.lr.ph.i.i.i.i.i107 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.bn, align 8, !tbaa !75
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.bo, align 4, !tbaa !76
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !160
  %i.bq = load ptr, ptr %8, align 8, !tbaa !158
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %.not.i = icmp ugt i64 %i.bu, 2147483647
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2ERKS4_.exit115
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.bu, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #31
          to label %.noexc116 unwind label %bb.v

.noexc116:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2ERKS4_.exit115
  store i32 -2130509787, ptr %11, align 8, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %8, ptr %i.bv, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.bw, align 8, !tbaa !75
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.bx, align 4, !tbaa !76
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !160
  %i.ca = load ptr, ptr %4, align 8, !tbaa !158
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3                 ; 2 uses
  %.not.i117 = icmp ugt i64 %i.ce, 2147483647
  br i1 %.not.i117, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.ce, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #31
          to label %.noexc118 unwind label %bb.w

.noexc118:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  store i32 -2130509787, ptr %12, align 8, !tbaa !77
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %4, ptr %i.cf, align 8, !tbaa !72
  invoke void @_ZN2cv23getPerspectiveTransformERKNS_11_InputArrayES2_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 0)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.72") align 4 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.i unwind label %bb.x

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.cg = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %bb.j unwind label %bb.aa      ; 3 uses

bb.j:                                             ; preds = %bb.i
  store ptr %i.cg, ptr %13, align 8, !tbaa !158
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cg, i8 0, i64 32, i1 false), !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !159
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ck = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %bb.k unwind label %bb.ab      ; 3 uses

bb.k:                                             ; preds = %bb.j
  store ptr %i.ck, ptr %14, align 8, !tbaa !158
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ck, i8 0, i64 32, i1 false), !tbaa !60
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !159
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !160
  %i.co = ptrtoint ptr %.0.lcssa.i.i.i.i.i111 to i64
  %i.cp = ptrtoint ptr %i.au to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = lshr i64 %i.cq, 5                       ; 2 uses
  %i.cs = trunc i64 %i.cr to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.ct = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc126 unwind label %bb.ac

.noexc126:                                        ; preds = %bb.k
  %i.cu = icmp eq i32 %i.ct, 65536
  br i1 %i.cu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc126
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !72, !noalias !361
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %i.cw)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ac

bb.m:                                             ; preds = %.noexc126
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ac

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.cx = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc129 unwind label %bb.ad

.noexc129:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.cy = icmp eq i32 %i.cx, 65536
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc129
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !72, !noalias !362
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.da)
          to label %_ZNK2cv11_InputArray6getMatEi.exit132 unwind label %bb.ad

bb.o:                                             ; preds = %.noexc129
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit132 unwind label %bb.ad

_ZNK2cv11_InputArray6getMatEi.exit132:            ; preds = %bb.o, %bb.n
  %i.db = icmp sgt i32 %i.cs, 0
  br i1 %i.db, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit132
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 84
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 128 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 84 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %22, i64 20
  %i.do = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %18, i64 24
  %wide.trip.count = and i64 %i.cr, 2147483647
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %16, i64 88
  br label %bb.ae

._crit_edge.loopexit:                             ; preds = %bb.bm
  %shift = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.kr, %shift
  %i.ed = extractelement <2 x float> %foldExtExtBinop, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK2cv11_InputArray6getMatEi.exit132
  %.060.lcssa = phi float [ 0.000000e+00, %_ZNK2cv11_InputArray6getMatEi.exit132 ], [ %i.ed, %._crit_edge.loopexit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.ee = load ptr, ptr %14, align 8, !tbaa !158  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.ef = load ptr, ptr %i.cn, align 8, !tbaa !159
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.ej = load ptr, ptr %13, align 8, !tbaa !158  ; 3 uses
  %.not.i.i.i133 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit134, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.ek = load ptr, ptr %i.cj, align 8, !tbaa !159
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit134

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit134: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.not.i.i.i135 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit136, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit134
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit136

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit136: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit134, %bb.r
  %i.eo = load ptr, ptr %8, align 8, !tbaa !158   ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit138, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit136
  %i.ep = load ptr, ptr %i.q, align 8, !tbaa !159
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.es) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit138

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit138: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit136, %bb.s
  %i.et = sitofp i32 %i.cs to float
  %i.eu = fdiv float %.060.lcssa, %i.et
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZN2cv3mcc11CChartModelD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret float %i.eu

bb.t:                                             ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit160

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i105, %.noexc.i.i112
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158

bb.v:                                             ; preds = %bb.d
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %bb.f, %bb.g
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.h
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.ey, %bb.w ], [ %i.ez, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.y ], [ %i.ex, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bs

bb.aa:                                            ; preds = %bb.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit156

bb.ab:                                            ; preds = %bb.j
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154

bb.ac:                                            ; preds = %bb.m, %bb.l, %bb.k
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ad:                                            ; preds = %bb.o, %bb.n, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ae:                                            ; preds = %.lr.ph, %bb.bm
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bm ] ; 6 uses
  %i.fe = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.kr, %bb.bm ] ; 2 uses
  %i.ff = load i32, ptr %i.dc, align 4, !tbaa !129
  %i.fg = icmp slt i32 %i.ff, 2
  br i1 %i.fg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fh = load ptr, ptr %i.dg, align 8, !tbaa !128
  %i.fi = getelementptr inbounds nuw [12 x i8], ptr %i.fh, i64 %indvars.iv
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.fj = load i32, ptr %15, align 8, !tbaa !85
  %i.fk = and i32 %i.fj, 16384
  %i.fl = icmp ne i32 %i.fk, 0
  %i.fm = load i32, ptr %i.dd, align 4
  %i.fn = icmp eq i32 %i.fm, 1
  %or.cond.i = select i1 %i.fl, i1 true, i1 %i.fn
  br i1 %or.cond.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fo = load ptr, ptr %i.dg, align 8, !tbaa !128
  %i.fp = getelementptr inbounds nuw [12 x i8], ptr %i.fo, i64 %indvars.iv
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.fq = load i32, ptr %i.de, align 8, !tbaa !61
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fs = load ptr, ptr %i.dg, align 8, !tbaa !128
  %i.ft = load i64, ptr %i.dh, align 8, !tbaa !130
  %i.fu = mul i64 %i.ft, %indvars.iv
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fu
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.fw = load i32, ptr %i.df, align 4, !tbaa !363 ; 3 uses
  %i.fx = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fy = sdiv i32 %i.fx, %i.fw                   ; 2 uses
  %i.fz = mul nsw i32 %i.fy, %i.fw                ; 0 uses
  %.recomposed = srem i32 %i.fx, %i.fw
  %i.ga = load ptr, ptr %i.dg, align 8, !tbaa !128
  %i.gb = load i64, ptr %i.dh, align 8, !tbaa !130
  %i.gc = sext i32 %i.fy to i64
  %i.gd = mul i64 %i.gb, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gd
  %i.gf = sext i32 %.recomposed to i64
  %i.gg = getelementptr inbounds [12 x i8], ptr %i.ge, i64 %i.gf
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.af
  %.0.i = phi ptr [ %i.fi, %bb.af ], [ %i.fp, %bb.ah ], [ %i.fv, %bb.aj ], [ %i.gg, %bb.ak ] ; 3 uses
  %i.gh = load float, ptr %.0.i, align 4, !tbaa !60
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !60
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !60
  %.idx = shl nuw nsw i64 %indvars.iv, 5
  %i.gm = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx ; 4 uses
  %i.gn = load ptr, ptr %13, align 8, !tbaa !158  ; 4 uses
  %i.go = load i64, ptr %i.gm, align 4, !tbaa !60
  store i64 %i.go, ptr %i.gn, align 4, !tbaa !60
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gr = load i64, ptr %i.gp, align 4, !tbaa !60
  store i64 %i.gr, ptr %i.gq, align 4, !tbaa !60
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gu = load i64, ptr %i.gs, align 4, !tbaa !60
  store i64 %i.gu, ptr %i.gt, align 4, !tbaa !60
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gx = load i64, ptr %i.gv, align 4, !tbaa !60
  store i64 %i.gx, ptr %i.gw, align 4, !tbaa !60
  invoke void @_ZN2cv3mcc17polyanticlockwiseERSt6vectorINS_6Point_IfEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN2cv3mcc24transform_points_forwardERKNS_4MatxIfLi3ELi3EEERKSt6vectorINS_6Point_IfEESaIS7_EERS9_(ptr noundef nonnull align 4 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %.preheader unwind label %bb.an

.preheader:                                       ; preds = %bb.am
  %i.gy = load ptr, ptr %14, align 8, !tbaa !158  ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 2 uses
  %i.hc = load <2 x float>, ptr %i.gy, align 4, !tbaa !60 ; 2 uses
  %i.hd = fadd <2 x float> %i.hc, zeroinitializer
  %i.he = load <2 x float>, ptr %i.gz, align 4, !tbaa !60 ; 2 uses
  %i.hf = fadd <2 x float> %i.hd, %i.he
  %i.hg = load <2 x float>, ptr %i.ha, align 4, !tbaa !60 ; 2 uses
  %i.hh = fadd <2 x float> %i.hf, %i.hg
  %i.hi = load <2 x float>, ptr %i.hb, align 4, !tbaa !60 ; 2 uses
  %i.hj = fadd <2 x float> %i.hh, %i.hi
  %i.hk = fmul <2 x float> %i.hj, splat (float 2.500000e-01) ; 8 uses
  %i.hl = fsub <2 x float> %i.hc, %i.hk
  %i.hm = fmul <2 x float> %i.hl, splat (float 7.500000e-01)
  %i.hn = fadd <2 x float> %i.hk, %i.hm
  store <2 x float> %i.hn, ptr %i.gy, align 4, !tbaa !60
  %i.ho = fsub <2 x float> %i.he, %i.hk
  %i.hp = fmul <2 x float> %i.ho, splat (float 7.500000e-01)
  %i.hq = fadd <2 x float> %i.hk, %i.hp
  store <2 x float> %i.hq, ptr %i.gz, align 4, !tbaa !60
  %i.hr = fsub <2 x float> %i.hg, %i.hk
  %i.hs = fmul <2 x float> %i.hr, splat (float 7.500000e-01)
  %i.ht = fadd <2 x float> %i.hk, %i.hs
  store <2 x float> %i.ht, ptr %i.ha, align 4, !tbaa !60
  %i.hu = fsub <2 x float> %i.hi, %i.hk
  %i.hv = fmul <2 x float> %i.hu, splat (float 7.500000e-01)
  %i.hw = fadd <2 x float> %i.hk, %i.hv
  store <2 x float> %i.hw, ptr %i.hb, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.hx = load i32, ptr %i.di, align 8, !tbaa !121 ; 6 uses
  %i.hy = icmp slt i32 %i.hx, 3
  br i1 %i.hy, label %bb.ar, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ao:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc143:                                        ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.3, i32 noundef 109) #31
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.noexc143
  unreachable

bb.aq:                                            ; preds = %.noexc143
  %i.ia = landingpad { ptr, i32 }
          cleanup
  %i.ib = load ptr, ptr %5, align 8, !tbaa !125   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aq
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !66
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.body

bb.ar:                                            ; preds = %.preheader
  %i.ig = icmp sgt i32 %i.hx, 0
  br i1 %i.ig, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ih = icmp eq i32 %i.hx, 2
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.dj, align 4
  %i.ii = select i1 %i.ih, i32 %.sroa.gep.val, i32 %.val
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ij = icmp eq i32 %i.hx, 0
  %i.ik = zext i1 %i.ij to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.il = phi i32 [ %i.ii, %bb.as ], [ %i.ik, %bb.at ]
  %i.im = icmp eq i32 %i.hx, 2
  %i.in = load i32, ptr %i.dj, align 4
  %i.io = icmp sgt i32 %i.hx, -1
  %i.ip = zext i1 %i.io to i32
  %i.iq = select i1 %i.im, i32 %i.in, i32 %i.ip
  %.sroa.2.0.insert.ext.i = zext i32 %i.iq to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.il to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ir = invoke { i64, i64 } @_ZN2cv3mcc9poly2maskERKSt6vectorINS_6Point_IfEESaIS3_EENS_5Size_IiEERKNS_17_InputOutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 %.sroa.0.0.insert.insert.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.is = extractvalue { i64, i64 } %i.ir, 0
  store i64 %i.is, ptr %19, align 8
  %i.it = extractvalue { i64, i64 } %i.ir, 1      ; 3 uses
  store i64 %i.it, ptr %i.dk, align 8
  %i.iu = trunc i64 %i.it to i32
  %i.iv = icmp slt i32 %i.iu, 1
  %i.iw = lshr i64 %i.it, 32
  %i.ix = trunc nuw i64 %i.iw to i32
  %i.iy = icmp slt i32 %i.ix, 1
  %i.iz = select i1 %i.iv, i1 true, i1 %i.iy
  br i1 %i.iz, label %bb.bm, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.ja = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc145 unwind label %bb.bd

.noexc145:                                        ; preds = %bb.aw
  %i.jb = icmp eq i32 %i.ja, 65536
  br i1 %i.jb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.noexc145
  %i.jc = load ptr, ptr %i.dl, align 8, !tbaa !72, !noalias !364
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.jc)
          to label %_ZNK2cv11_InputArray6getMatEi.exit148 unwind label %bb.bd

bb.ay:                                            ; preds = %.noexc145
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit148 unwind label %bb.bd

_ZNK2cv11_InputArray6getMatEi.exit148:            ; preds = %bb.ax, %bb.ay
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 4 dereferenceable(16) %19)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.be

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %_ZNK2cv11_InputArray6getMatEi.exit148
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 4 dereferenceable(16) %19)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  store i32 0, ptr %i.dm, align 8, !tbaa !75
  store i32 0, ptr %i.dn, align 4, !tbaa !76
  store i32 16842752, ptr %22, align 8, !tbaa !77
  store ptr %23, ptr %i.do, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  store i32 -1040056314, ptr %24, align 8, !tbaa !77
  store ptr %17, ptr %i.dp, align 8, !tbaa !72
  store i64 17179869185, ptr %i.dq, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  store i32 -1040056314, ptr %25, align 8, !tbaa !77
  store ptr %18, ptr %i.dr, align 8, !tbaa !72
  store i64 17179869185, ptr %i.ds, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  store i32 0, ptr %i.dt, align 8, !tbaa !75
  store i32 0, ptr %i.du, align 4, !tbaa !76
  store i32 16842752, ptr %26, align 8, !tbaa !77
  store ptr %20, ptr %i.dv, align 8, !tbaa !72
  invoke void @_ZN2cv10meanStdDevERKNS_11_InputArrayERKNS_12_OutputArrayES5_S2_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %27, align 8, !tbaa !77
  store ptr %28, ptr %i.dx, align 8, !tbaa !72
  store i64 17179869185, ptr %i.dw, align 8, !tbaa !61
  %i.jd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bb unwind label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.je = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %i.jd)
          to label %bb.bc unwind label %bb.bj     ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %i.jf = fpext float %i.gh to double             ; 3 uses
  %i.jg = fpext float %i.gj to double             ; 2 uses
  %i.jh = fpext float %i.gl to double             ; 3 uses
  %i.ji = load double, ptr %i.dz, align 8, !tbaa !58 ; 2 uses
  %i.jj = load double, ptr %17, align 8, !tbaa !58 ; 3 uses
  %i.jk = call double @llvm.fmuladd.f64(double %i.jj, double %i.jf, double 0.000000e+00)
  %29 = load <2 x double>, ptr %i.dy, align 8, !tbaa !58 ; 5 uses
  %30 = extractelement <2 x double> %29, i64 0
  %i.jl = call double @llvm.fmuladd.f64(double %30, double %i.jg, double %i.jk)
  %31 = fmul double %i.jj, %i.jj
  %32 = insertelement <2 x double> %29, double %i.jh, i64 1
  %33 = insertelement <2 x double> poison, double %31, i64 0
  %i.jm = insertelement <2 x double> %33, double %i.jl, i64 1
  %34 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %32, <2 x double> %i.jm)
  %35 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jn = insertelement <2 x double> %35, double %i.ji, i64 1
  %36 = shufflevector <2 x double> %29, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.jo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %36, <2 x double> %34) ; 2 uses
  %37 = fmul double %i.jf, %i.jf
  %38 = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.jp = insertelement <2 x double> %38, double %i.jg, i64 1 ; 2 uses
  %i.jq = insertelement <2 x double> %i.jo, double %37, i64 1
  %i.jr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.jp, <2 x double> %i.jq) ; 2 uses
  %i.js = extractelement <2 x double> %i.jr, i64 1
  %i.jt = call noundef double @llvm.fmuladd.f64(double %i.jh, double %i.jh, double %i.js)
  %i.ju = insertelement <2 x double> %i.jr, double %i.jt, i64 1
  %i.jv = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ju) ; 2 uses
  %39 = extractelement <2 x double> %i.jv, i64 0
  %40 = extractelement <2 x double> %i.jv, i64 1
  %41 = call double @llvm.fmuladd.f64(double %39, double %40, double f0x3E80000000000000)
  %i.jw = extractelement <2 x double> %i.jo, i64 1
  %i.jx = fdiv double %i.jw, %41
  %i.jy = fptrunc double %i.jx to float
  %i.jz = fadd float %i.jy, 1.000000e+00
  %i.ka = fmul float %i.jz, 5.000000e-01
  %i.kb = fsub float 1.000000e+00, %i.ka
  %i.kc = load double, ptr %18, align 8, !tbaa !58 ; 2 uses
  %42 = fmul double %i.kc, %i.kc
  %43 = load double, ptr %i.ea, align 8, !tbaa !58 ; 2 uses
  %i.kd = call double @llvm.fmuladd.f64(double %43, double %43, double %42)
  %i.ke = load double, ptr %i.eb, align 8, !tbaa !58 ; 2 uses
  %i.kf = call double @llvm.fmuladd.f64(double %i.ke, double %i.ke, double %i.kd)
  %i.kg = load double, ptr %i.ec, align 8, !tbaa !58 ; 2 uses
  %i.kh = call noundef double @llvm.fmuladd.f64(double %i.kg, double %i.kg, double %i.kf)
  %i.ki = fptrunc double %i.kh to float
  %i.kj = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.kk = insertelement <2 x float> %i.kj, float %i.ki, i64 1
  %i.kl = fadd <2 x float> %i.fe, %i.kk
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.bm

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.ao
  %lpad.loopexit.split-lp267 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bd:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit148
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #27
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn66 = phi { ptr, i32 } [ %i.kn, %bb.be ], [ %i.km, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.bl

bb.bg:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.az
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #27
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kp, %bb.bh ], [ %i.ko, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bb, %bb.ba
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn76 = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn, %bb.bi ], [ %i.kq, %bb.bj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #27
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bf
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %bb.bk ], [ %.pn66, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %.body

bb.bm:                                            ; preds = %bb.bc, %bb.av
  %i.kr = phi <2 x float> [ %i.fe, %bb.av ], [ %i.kl, %bb.bc ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.ae, !llvm.loop !360

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bl
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.bl ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit.split-lp267, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.bn

bb.bn:                                            ; preds = %.body, %bb.an
  %.pn82.pn = phi { ptr, i32 } [ %i.hz, %bb.an ], [ %.pn76.pn.pn, %.body ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #27
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ad
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %bb.bn ], [ %i.fd, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #27
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.ac
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn, %bb.bo ], [ %i.fc, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.ks = load ptr, ptr %14, align 8, !tbaa !158  ; 3 uses
  %.not.i.i.i153 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kt = load ptr, ptr %i.cn, align 8, !tbaa !159
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kw) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154: ; preds = %bb.bq, %bb.bp, %bb.ab
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.ab ], [ %.pn82.pn.pn.pn, %bb.bp ], [ %.pn82.pn.pn.pn, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.kx = load ptr, ptr %13, align 8, !tbaa !158  ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit156, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154
  %i.ky = load ptr, ptr %i.cj, align 8, !tbaa !159
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lb) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit156

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit156: ; preds = %bb.br, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154, %bb.aa
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.aa ], [ %.pn82.pn.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154 ], [ %.pn82.pn.pn.pn.pn, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit156, %bb.z
  %.pn82.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit156 ], [ %.pn.pn.pn, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.not.i.i.i157 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158: ; preds = %bb.bt, %bb.bs, %bb.u
  %.pn82.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.u ], [ %.pn82.pn.pn.pn.pn.pn.pn, %bb.bs ], [ %.pn82.pn.pn.pn.pn.pn.pn, %bb.bt ] ; 2 uses
  %i.lc = load ptr, ptr %8, align 8, !tbaa !158   ; 3 uses
  %.not.i.i.i159 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit160, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158
  %i.ld = load ptr, ptr %i.q, align 8, !tbaa !159
  %i.le = ptrtoint ptr %i.ld to i64
  %i.lf = ptrtoint ptr %i.lc to i64
  %i.lg = sub i64 %i.le, %i.lf
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lg) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit160

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit160: ; preds = %bb.bu, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158, %bb.t
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.t ], [ %.pn82.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158 ], [ %.pn82.pn.pn.pn.pn.pn.pn.pn, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZN2cv3mcc11CChartModelD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3mcc20CCheckerDetectorImpl11get_profileERKSt6vectorINS_6Point_IfEESaIS4_EERKNS_12_OutputArrayESB_RKNS_11_InputArrayESE_RS2_INS_3MatESaISF_EESI_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::mcc::CChartModel", align 8 ; 10 uses
  %9 = alloca %"class.std::vector.40", align 8    ; 11 uses
  %10 = alloca %"class.cv::Matx.72", align 4      ; 5 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %17 = alloca %"class.std::vector.40", align 8   ; 11 uses
  %18 = alloca %"class.std::vector.40", align 8   ; 11 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %21 = alloca %"class.cv::Scalar_", align 8      ; 8 uses
  %22 = alloca %"class.cv::Scalar_", align 8      ; 8 uses
  %23 = alloca %"class.cv::Scalar_", align 8      ; 8 uses
  %24 = alloca %"class.cv::Scalar_", align 8      ; 8 uses
  %i.a = alloca [3 x double], align 16            ; 7 uses
  %i.b = alloca [3 x double], align 16            ; 7 uses
  %i.c = alloca [3 x double], align 16            ; 7 uses
  %i.d = alloca [3 x double], align 16            ; 7 uses
  %25 = alloca %"class.cv::Rect_", align 8        ; 14 uses
  %26 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 16 uses
  %28 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %32 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %33 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %34 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %35 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
end_hunk_0
