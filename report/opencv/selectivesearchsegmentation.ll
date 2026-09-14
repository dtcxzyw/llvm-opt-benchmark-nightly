Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/selectivesearchsegmentation?download=true
inline.NumInlined: 2286
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv8ximgproc12segmentation31SelectiveSearchSegmentationImpl30switchToSelectiveSearchQualityEiif:bb.a

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
  %i.be = phi ptr [ %i.bb, %.split ], [ %i.it, %._crit_edge529.loopexit ]
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0537, %.split ], [ %.sroa.16.2.lcssa, %._crit_edge529.loopexit ] ; 4 uses
  %.sroa.10.1.lcssa = phi ptr [ %.sroa.10.0538, %.split ], [ %.sroa.10.2.lcssa, %._crit_edge529.loopexit ] ; 7 uses
  %.sroa.0226.1.lcssa = phi ptr [ %.sroa.0226.0539, %.split ], [ %.sroa.0226.2.lcssa, %._crit_edge529.loopexit ] ; 8 uses
  %.1.lcssa = phi i32 [ %.0540, %.split ], [ %i.id, %._crit_edge529.loopexit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0222.0536, i64 208 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.bd
  br i1 %.not, label %._crit_edge541, label %.split, !llvm.loop !511

.lr.ph528:                                        ; preds = %.split, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit
  %.1527 = phi i32 [ %i.id, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.0540, %.split ] ; 2 uses
  %.sroa.0226.1526 = phi ptr [ %.sroa.0226.2.lcssa, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.sroa.0226.0539, %.split ] ; 12 uses
  %.sroa.10.1525 = phi ptr [ %.sroa.10.2.lcssa, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.sroa.10.0538, %.split ] ; 2 uses
  %.sroa.16.1524 = phi ptr [ %.sroa.16.2.lcssa, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.sroa.16.0537, %.split ] ; 12 uses
  %.sroa.0218.0523 = phi ptr [ %i.it, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %i.bc, %.split ] ; 2 uses
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
  %i.by = shl nuw nsw i64 %i.bu, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.by, i1 false)
  store ptr %i.bx, ptr %8, align 8, !tbaa !137
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bu
  store ptr %i.bz, ptr %i.r, align 8, !tbaa !136
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %14
  store ptr %i.ca, ptr %i.s, align 8, !tbaa !169
  %i.cb = mul nuw nsw i64 %i.bu, 24               ; 2 uses
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #28
          to label %.noexc100 unwind label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138.thread.loopexit ; 3 uses

.noexc100:                                        ; preds = %.noexc167
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cc, i8 0, i64 %i.cb, i1 false)
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.bu
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit: ; preds = %bb.d, %.noexc100
  %i.ce = phi ptr [ %i.bx, %.noexc100 ], [ null, %bb.d ]
  %.sroa.0205.1 = phi ptr [ %i.cc, %.noexc100 ], [ null, %bb.d ] ; 12 uses
  %.sroa.13.1 = phi ptr [ %i.cd, %.noexc100 ], [ null, %bb.d ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, i32 noundef %i.bt, i32 noundef %i.bt, i32 noundef 0)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit
  %i.cf = load ptr, ptr %9, align 8, !tbaa !63    ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !65
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1)
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
  %i.cj = load ptr, ptr %10, align 8, !tbaa !63   ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !65
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 8 dereferenceable(688) %10, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 4)
          to label %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit unwind label %bb.o, !inline_history !513

_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit:             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.w) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.x) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.y) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cn = load i32, ptr %i.z, align 8, !tbaa !116 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  %i.cp = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  %or.cond804 = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond804, label %.lr.ph496.split, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit
  %.not284497 = icmp slt i32 %i.bs, 0
  br i1 %.not284497, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.bt to i64
  br label %bb.y

bb.i:                                             ; preds = %.lr.ph528
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.av

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.cs = landingpad { ptr, i32 }
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
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn80 = phi { ptr, i32 } [ %i.cu, %bb.l ], [ %i.ct, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ar

bb.n:                                             ; preds = %_ZN2cv4Mat_IcEaSERKNS_7MatExprE.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn82 = phi { ptr, i32 } [ %i.cw, %bb.o ], [ %i.cv, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ar

.lr.ph496.split:                                  ; preds = %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit, %._crit_edge
  %i.cx = phi i32 [ %i.df, %._crit_edge ], [ %i.cn, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ]
  %i.cy = phi i32 [ %i.dg, %._crit_edge ], [ %i.cp, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ] ; 2 uses
  %indvars.iv641 = phi i64 [ %indvars.iv.next642, %._crit_edge ], [ 0, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ] ; 4 uses
  %.056494 = phi ptr [ %i.dc, %._crit_edge ], [ null, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ] ; 2 uses
  %i.cz = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.da = load i64, ptr %i.ab, align 8, !tbaa !67
  %i.db = mul i64 %i.da, %indvars.iv641
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.db ; 3 uses
  %i.dd = icmp sgt i32 %i.cy, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph496.split
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %indvars.iv641, 32 ; 2 uses
  %i.de = icmp ne i64 %indvars.iv641, 0
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre = load i32, ptr %i.z, align 8, !tbaa !116
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph496.split
  %i.df = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cx, %.lr.ph496.split ] ; 2 uses
  %i.dg = phi i32 [ %i.hk, %._crit_edge.loopexit ], [ %i.cy, %.lr.ph496.split ]
  %indvars.iv.next642 = add nuw nsw i64 %indvars.iv641, 1 ; 2 uses
  %i.dh = sext i32 %i.df to i64
  %i.di = icmp slt i64 %indvars.iv.next642, %i.dh
  br i1 %i.di, label %.lr.ph496.split, label %.preheader, !llvm.loop !514

bb.q:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 7 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv ; 8 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !52
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0205.1, i64 %i.dl ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !141 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !142
  %.not.i.i103 = icmp eq ptr %i.do, %i.dq
  br i1 %.not.i.i103, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0195.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %indvars.iv
  store i64 %.sroa.0195.0.insert.insert, ptr %i.do, align 4
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !141
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !141
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.dt = load ptr, ptr %i.dm, align 8, !tbaa !143 ; 5 uses
  %i.du = ptrtoint ptr %i.do to i64
  %i.dv = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775800
  br i1 %i.dx, label %bb.t, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.noexc105 unwind label %.loopexit.split-lp293

.noexc105:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.dy = ashr exact i64 %i.dw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 1152921504606846975)
  %i.ec = select i1 %i.ea, i64 1152921504606846975, i64 %i.eb ; 3 uses
  %.not.i.i.i.i104 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i.i104)
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #28
          to label %.noexc106 unwind label %.loopexit292 ; 5 uses
end_hunk_0
