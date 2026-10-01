Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/motion_stabilizing?download=true
inline.NumInlined: 328
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@_ZTVN2cv9videostab20GaussianMotionFilterE = constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN2cv9videostab20GaussianMotionFilterE, ptr @_ZN2cv9videostab20GaussianMotionFilterD2Ev, ptr @_ZN2cv9videostab20GaussianMotionFilterD0Ev, ptr @_ZN2cv9videostab16MotionFilterBase9stabilizeEiRKSt6vectorINS_3MatESaIS3_EERKNS_5RangeEPS3_, ptr @_ZN2cv9videostab20GaussianMotionFilter9stabilizeEiRKSt6vectorINS_3MatESaIS3_EERKNS_5RangeE] }, align 8
@_ZTIN2cv9videostab20GaussianMotionFilterE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv9videostab20GaussianMotionFilterE, ptr @_ZTIN2cv9videostab16MotionFilterBaseE }, align 8
@_ZTSN2cv9videostab20GaussianMotionFilterE = constant [38 x i8] c"N2cv9videostab20GaussianMotionFilterE\00", align 1
@_ZTVN2cv9videostab27MotionStabilizationPipelineE = constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv9videostab27MotionStabilizationPipelineE, ptr @_ZN2cv9videostab27MotionStabilizationPipelineD2Ev, ptr @_ZN2cv9videostab27MotionStabilizationPipelineD0Ev, ptr @_ZN2cv9videostab27MotionStabilizationPipeline9stabilizeEiRKSt6vectorINS_3MatESaIS3_EERKNS_5RangeEPS3_] }, align 8
@_ZTIN2cv9videostab27MotionStabilizationPipelineE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv9videostab27MotionStabilizationPipelineE, ptr @_ZTIN2cv9videostab17IMotionStabilizerE }, align 8
@_ZTSN2cv9videostab27MotionStabilizationPipelineE = constant [45 x i8] c"N2cv9videostab27MotionStabilizationPipelineE\00", align 1
@_ZTIN2cv9videostab18LpMotionStabilizerE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv9videostab18LpMotionStabilizerE, ptr @_ZTIN2cv9videostab17IMotionStabilizerE }, align 8
@_ZTSN2cv9videostab18LpMotionStabilizerE = constant [36 x i8] c"N2cv9videostab18LpMotionStabilizerE\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"DataType<_Tp>::channels == m.channels() || m.empty()\00", align 1
@__func__._ZN2cv4Mat_IfEaSERKNS_3MatE = private unnamed_addr constant [10 x i8] c"operator=\00", align 1

@_ZN2cv9videostab18LpMotionStabilizerC1ENS0_11MotionModelE = unnamed_addr alias void (ptr, i32), ptr @_ZN2cv9videostab18LpMotionStabilizerC2ENS0_11MotionModelE

; Function Attrs: mustprogress uwtable
define void @_ZN2cv9videostab27MotionStabilizationPipeline9stabilizeEiRKSt6vectorINS_3MatESaIS3_EERKNS_5RangeEPS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 19 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.std::vector", align 8       ; 10 uses
  %8 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = sdiv exact i64 %i.f, 208                 ; 2 uses
  %i.h = icmp ugt i64 %i.g, 44343134792571037
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
  unreachable

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.loopexit106.thread, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

.loopexit106.thread:                              ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %._crit_edge

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 3 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !15
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  %.08.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.i, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #22
  %i.m = add i64 %.057.i.i.i.i.i, -1              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit106, label %.lr.ph.i.i.i.i.i, !llvm.loop !86

.loopexit106:                                     ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !13
  %.pre140.a = load ptr, ptr %2, align 8, !tbaa !14 ; 2 uses
  %i.o = icmp eq ptr %.pre, %.pre140.a
  store ptr %i.n, ptr %i.j, align 8, !tbaa !13
  br i1 %i.o, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %.loopexit106.thread, %.loopexit106
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.p = sext i32 %1 to i64                       ; 3 uses
  %i.q = icmp slt i32 %1, 0
  br i1 %i.q, label %bb.b, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i74

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc83 unwind label %bb.h

.noexc83:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i74: ; preds = %._crit_edge
  %.not.i.i.i.i75 = icmp eq i32 %1, 0             ; 2 uses
  br i1 %.not.i.i.i.i75, label %.loopexit.thread, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i76

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.preheader105

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i76: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i74
  %i.r = mul nuw nsw i64 %i.p, 208
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #24
          to label %.noexc84 unwind label %bb.h   ; 4 uses

.noexc84:                                         ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i76
  store ptr %i.s, ptr %7, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw [208 x i8], ptr %i.s, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !15
  br label %.lr.ph.i.i.i.i.i77

.lr.ph.i.i.i.i.i77:                               ; preds = %.lr.ph.i.i.i.i.i77, %.noexc84
  %.08.i.i.i.i.i78 = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i77 ], [ %i.s, %.noexc84 ] ; 2 uses
  %.057.i.i.i.i.i79 = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i77 ], [ %i.p, %.noexc84 ]
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i78) #22
  %i.w = add nsw i64 %.057.i.i.i.i.i79, -1        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i78, i64 208 ; 3 uses
  %.not.i.i.i.i.i80 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.i80, label %.lr.ph111, label %.lr.ph.i.i.i.i.i77, !llvm.loop !86

.lr.ph:                                           ; preds = %.loopexit106, %bb.d
  %i.y = phi ptr [ %i.af, %bb.d ], [ %.pre140.a, %.loopexit106 ]
  %.040108 = phi i64 [ %i.ad, %bb.d ], [ 0, %.loopexit106 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.z = getelementptr inbounds nuw [208 x i8], ptr %i.y, i64 %.040108
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %i.z)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %5, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw [208 x i8], ptr %i.aa, i64 %.040108
  %i.ac = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ab, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ad = add nuw i64 %.040108, 1                 ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.af = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 208
  %i.ak = icmp ult i64 %i.ad, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !87

bb.e:                                             ; preds = %.lr.ph
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn69 = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.al, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ap

.lr.ph111:                                        ; preds = %.lr.ph.i.i.i.i.i77
  store ptr %i.x, ptr %i.t, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 432
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 16
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.i

.preheader105:                                    ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit, %.loopexit.thread
  %.0.lcssa.i.i.i.i.i81158 = phi ptr [ null, %.loopexit.thread ], [ %i.x, %_ZN2cv3MataSERKNS_7MatExprE.exit ]
  %.pr.i157 = phi ptr [ null, %.loopexit.thread ], [ %i.s, %_ZN2cv3MataSERKNS_7MatExprE.exit ] ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  %.not121 = icmp eq ptr %i.as, %i.at
  br i1 %.not121, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %.preheader105
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 432
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ax = icmp sgt i32 %1, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 432
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 224
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 432
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 224
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 432
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 224
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bi = add nsw i32 %1, -1
  %wide.trip.count129 = zext nneg i32 %1 to i64
  %wide.trip.count138 = zext nneg i32 %i.bi to i64
  br label %bb.p

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i76, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.i:                                             ; preds = %.lr.ph111, %_ZN2cv3MataSERKNS_7MatExprE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next, %_ZN2cv3MataSERKNS_7MatExprE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %8, i32 noundef 3, i32 noundef 3, i32 noundef 5)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw [208 x i8], ptr %4, i64 %indvars.iv
  %i.bl = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(688) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.bk, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.l, !inline_history !88

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.j
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.an) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ao) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ap) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader105, label %bb.i, !llvm.loop !89

bb.k:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %8) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn65 = phi { ptr, i32 } [ %i.bq, %bb.l ], [ %i.bp, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.an

._crit_edge119.loopexit:                          ; preds = %._crit_edge116
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre141 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %._crit_edge119

._crit_edge119:                                   ; preds = %._crit_edge119.loopexit, %.preheader105
  %i.br = phi ptr [ %.pre141, %._crit_edge119.loopexit ], [ %.0.lcssa.i.i.i.i.i81158, %.preheader105 ] ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pr.i157, %i.br
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge119, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %.pr.i157, %._crit_edge119 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #22
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.br
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %._crit_edge119
  %.not.i.i1.i = icmp eq ptr %.pr.i157, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !15
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %.pr.i157 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i157, i64 noundef %i.bx) #25
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !13 ; 2 uses
  %.not4.i.i.i87 = icmp eq ptr %i.by, %i.ca
  br i1 %.not4.i.i.i87, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i93, label %.lr.ph.i.i.i88

.lr.ph.i.i.i88:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i.i88
  %.05.i.i.i89 = phi ptr [ %i.cb, %.lr.ph.i.i.i88 ], [ %i.by, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i89) #22
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 208 ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.cb, %i.ca
  br i1 %.not.i.i.i90, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i91, label %.lr.ph.i.i.i88, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i91: ; preds = %.lr.ph.i.i.i88
  %.pr.i92 = load ptr, ptr %5, align 8, !tbaa !14
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i93

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i93: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i91, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.cc = phi ptr [ %.pr.i92, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i91 ], [ %i.by, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i94 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i94, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit95, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i93
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !15
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #25
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit95

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit95:        ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i93, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.p:                                             ; preds = %.lr.ph118, %._crit_edge116
  %i.ci = phi ptr [ %i.at, %.lr.ph118 ], [ %i.cz, %._crit_edge116 ]
  %.038117 = phi i64 [ 0, %.lr.ph118 ], [ %i.cx, %._crit_edge116 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %.038117
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  invoke void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull %.pr.i157)
          to label %.preheader104 unwind label %bb.q

.preheader104:                                    ; preds = %bb.p
  br i1 %.not.i.i.i.i75, label %._crit_edge116, label %.lr.ph113

.preheader:                                       ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit97
  br i1 %i.ax, label %.lr.ph115, label %._crit_edge116

bb.q:                                             ; preds = %bb.p
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.lr.ph113:                                        ; preds = %.preheader104, %_ZN2cv3MataSERKNS_7MatExprE.exit97
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %_ZN2cv3MataSERKNS_7MatExprE.exit97 ], [ 0, %.preheader104 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.cp = getelementptr inbounds nuw [208 x i8], ptr %.pr.i157, i64 %indvars.iv125
  %i.cq = getelementptr inbounds nuw [208 x i8], ptr %4, i64 %indvars.iv125 ; 2 uses
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %i.cp, ptr noundef nonnull align 8 dereferenceable(208) %i.cq)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph113
  %i.cr = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !36
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.cq, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit97 unwind label %bb.t, !inline_history !88

_ZN2cv3MataSERKNS_7MatExprE.exit97:               ; preds = %bb.r
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.av) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count129
  br i1 %exitcond130.not, label %.preheader, label %.lr.ph113, !llvm.loop !90

bb.s:                                             ; preds = %.lr.ph113
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn62 = phi { ptr, i32 } [ %i.cw, %bb.t ], [ %i.cv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.an

._crit_edge116:                                   ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit102, %.preheader104, %.preheader
  %i.cx = add nuw i64 %.038117, 1                 ; 2 uses
  %i.cy = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.cz = load ptr, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 4
  %i.de = icmp ult i64 %i.cx, %i.dd
  br i1 %i.de, label %bb.p, label %._crit_edge119.loopexit, !llvm.loop !91

.lr.ph115:                                        ; preds = %.preheader, %_ZN2cv3MataSERKNS_7MatExprE.exit102
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %_ZN2cv3MataSERKNS_7MatExprE.exit102 ], [ 0, %.preheader ] ; 3 uses
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %_ZN2cv3MataSERKNS_7MatExprE.exit102 ], [ 1, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.df = getelementptr inbounds nuw [208 x i8], ptr %4, i64 %indvars.iv133
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.df)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %.lr.ph115
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.dg = getelementptr inbounds nuw [208 x i8], ptr %4, i64 %indvars.iv131
end_hunk_0
begin_hunk_1_@_ZN2cv4Mat_IfEaSERKNS_3MatE:bb.a
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !59
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !59
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !59     ; 3 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !68
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.o = and i32 %i.e, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.q, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4Mat_IfEaSERKNS_3MatE, ptr noundef nonnull @.str.6, i32 noundef 1630) #23
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !56     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.w = load i64, ptr %i.u, align 8, !tbaa !57
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.r, %bb.n ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.r

bb.p:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.z, align 8
  store i32 -2113863675, ptr %5, align 8, !tbaa !84
  store ptr %0, ptr %i.y, align 8, !tbaa !85
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g, %bb.d, %bb.b
  %.014 = phi ptr [ %0, %bb.b ], [ %0, %bb.d ], [ %i.m, %bb.g ], [ %0, %bb.p ]
  ret ptr %.014

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn16 = phi { ptr, i32 } [ %i.n, %bb.h ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn16
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !59
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !59
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !68
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863675, ptr %3, align 8, !tbaa !84
  store ptr %0, ptr %i.o, align 8, !tbaa !85
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN2cv3MatE", !10, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !11, i64 0}
!15 = !{!12, !11, i64 16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 _ZTSN2cv3PtrINS_9videostab17IMotionStabilizerEEE", !10, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN2cv3PtrINS0_9videostab17IMotionStabilizerEEESaIS4_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!18, !17, i64 0}
!21 = !{!"p1 _ZTSN2cv5MatOpE", !10, i64 0}
!22 = !{!"p1 omnipotent char", !10, i64 0}
!23 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!24 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!25 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!26 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !25, i64 4, !7, i64 8, !6, i64 12}
!27 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!28 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !23, i64 56, !24, i64 64, !26, i64 72, !27, i64 128}
!29 = !{!"double", !6, i64 0}
!30 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!31 = !{!"_ZTSN2cv3VecIdLi4EEE", !30, i64 0}
!32 = !{!"_ZTSN2cv7Scalar_IdEE", !31, i64 0}
!33 = !{!"_ZTSN2cv7MatExprE", !21, i64 0, !7, i64 8, !28, i64 16, !28, i64 224, !28, i64 432, !29, i64 640, !29, i64 648, !32, i64 656}
!34 = !{!33, !21, i64 0}
!35 = !{!"vtable pointer", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!38 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!39 = !{!"_ZTSN2cv9videostab17IMotionStabilizerE"}
!40 = !{!"_ZTSN2cv9videostab16MotionFilterBaseE", !39, i64 0}
!41 = !{!"float", !6, i64 0}
!42 = !{!"p1 float", !10, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !43, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !44, i64 0}
!46 = !{!"_ZTSSt6vectorIfSaIfEE", !45, i64 0}
!47 = !{!"_ZTSN2cv9videostab20GaussianMotionFilterE", !40, i64 0, !7, i64 8, !41, i64 12, !46, i64 16}
!48 = !{!47, !7, i64 8}
!49 = !{!43, !42, i64 8}
!50 = !{!43, !42, i64 0}
!51 = !{!41, !41, i64 0}
!52 = !{!26, !7, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!54 = !{!"long", !6, i64 0}
!55 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !53, i64 0, !54, i64 8, !6, i64 16}
!56 = !{!55, !22, i64 0}
!57 = !{!6, !6, i64 0}
!58 = !{!7, !7, i64 0}
!59 = !{!28, !7, i64 0}
!60 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!61 = !{!"p1 double", !10, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"p1 int", !10, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!53, !22, i64 0}
!66 = !{!54, !54, i64 0}
!67 = !{!55, !54, i64 8}
!68 = !{!28, !7, i64 4}
!69 = !{!28, !22, i64 24}
!70 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !10, i64 0}
!71 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !70, i64 0, !7, i64 8}
!72 = !{!71, !7, i64 8}
!73 = !{!"_ZTSN2cv6Point_IfEE", !41, i64 0, !41, i64 4}
!74 = !{!73, !41, i64 0}
!75 = !{!73, !41, i64 4}
!76 = !{!43, !42, i64 16}
!77 = !{!38, !37, i64 0}
!78 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!79 = !{!78, !7, i64 8}
!80 = !{!78, !7, i64 12}
!81 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!82 = !{!18, !17, i64 16}
!83 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !10, i64 8, !60, i64 16}
!84 = !{!83, !7, i64 0}
!85 = !{!83, !10, i64 8}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !16}
!88 = distinct !{null}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, !16}
!92 = distinct !{!92, !16}
!93 = !{!"p1 _ZTSN2cv9videostab17IMotionStabilizerE", !10, i64 0}
!94 = !{!"_ZTSSt12__shared_ptrIN2cv9videostab17IMotionStabilizerELN9__gnu_cxx12_Lock_policyE2EE", !93, i64 0, !38, i64 8}
!95 = !{!94, !93, i64 0}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !16, !101, !102}
!98 = distinct !{!98, !16}
!99 = distinct !{!99, !16, !102, !101}
!100 = !{!47, !41, i64 12}
!101 = !{!"llvm.loop.isvectorized", i32 1}
!102 = !{!"llvm.loop.unroll.runtime.disable"}
!103 = distinct !{!103, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!104 = distinct !{!104, !103, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!105 = distinct !{null}
!106 = distinct !{!106, !16}
!107 = distinct !{!107, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!108 = distinct !{!108, !107, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!109 = !{!104}
!110 = !{!108}
!111 = !{!"_ZTSN2cv9videostab11MotionModelE", !6, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !62, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !112, i64 0}
!114 = !{!"_ZTSSt6vectorIdSaIdEE", !113, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !64, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIiSaIiEE", !116, i64 0}
!118 = !{!"_ZTSN2cv9videostab18LpMotionStabilizerE", !39, i64 0, !111, i64 8, !60, i64 12, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !114, i64 40, !114, i64 64, !114, i64 88, !117, i64 112, !117, i64 136, !114, i64 160, !114, i64 184, !114, i64 208}
!119 = !{!118, !111, i64 8}
!120 = !{!118, !41, i64 36}
!121 = distinct !{!121, !16}
!122 = distinct !{!122, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!123 = distinct !{!123, !122, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!124 = !{!123}
!125 = distinct !{!125, !16}
!126 = distinct !{!126, !16}
!127 = !{ptr @_ZN2cv9videostab20GaussianMotionFilterD2Ev}
!128 = distinct !{null, null, null, null, null, null, null}
!129 = distinct !{ptr @_ZN2cv9videostab27MotionStabilizationPipelineD2Ev, null, null, null, null, null, null, null}
!130 = !{ptr @_ZN2cv9videostab27MotionStabilizationPipelineD2Ev}
!131 = !{!62, !61, i64 0}
!132 = !{!62, !61, i64 16}
!133 = !{!64, !63, i64 0}
!134 = !{!64, !63, i64 16}
!135 = distinct !{null}
end_hunk_1
