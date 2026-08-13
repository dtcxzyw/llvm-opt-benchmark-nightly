inline.NumInlined: 1019
inline.NumDeleted: 410
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv12cpu_baseline21findScaleSpaceExtremaEiiiiiiidddRKSt6vectorINS_3MatESaIS2_EES6_RS1_INS_8KeyPointESaIS7_EERKNS_5RangeE:bb.a
  %i.ago = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 28
  %.not.i23.i.i.i = icmp eq ptr %i.afz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.afz, i64 noundef %i.agc) #28
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bj, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.agk, ptr %12, align 8, !tbaa !45
  store ptr %i.ago, ptr %i.bw, align 8, !tbaa !40
  %i.agp = getelementptr inbounds nuw [28 x i8], ptr %i.agk, i64 %i.agi
  store ptr %i.agp, ptr %i.bx, align 8, !tbaa !43
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.bg, %bb.bb, %bb.ba
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 36
  br i1 %exitcond.not.i, label %bb.bk, label %bb.ba, !llvm.loop !52

bb.bk:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit.i
  %i.agq = load i32, ptr %i.u, align 8, !tbaa !15
  %.not.i231.i = icmp eq i32 %i.agq, 0
  br i1 %.not.i231.i, label %.critedge.sink.split.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %18)
          to label %.critedge.sink.split.i unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.agr = landingpad { ptr, i32 }
          catch ptr null
  %i.ags = extractvalue { ptr, i32 } %i.agr, 0
  call void @__clang_call_terminate(ptr %i.ags) #25
  unreachable

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.az, %bb.ax, %bb.ac
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.ax ], [ %i.ud, %bb.ac ], [ %i.aeq, %bb.az ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %18) #24
  br label %bb.bn

bb.bn:                                            ; preds = %.body.i, %bb.ab
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %.body.i ], [ %i.uc, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.body

.critedge176.i:                                   ; preds = %bb.aa
  %i.agt = load i32, ptr %i.u, align 8, !tbaa !15
  %.not.i233.i = icmp eq i32 %i.agt, 0
  br i1 %.not.i233.i, label %.critedge.sink.split.i, label %bb.bo

bb.bo:                                            ; preds = %.critedge176.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %18)
          to label %.critedge.sink.split.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.agu = landingpad { ptr, i32 }
          catch ptr null
  %i.agv = extractvalue { ptr, i32 } %i.agu, 0
  call void @__clang_call_terminate(ptr %i.agv) #25
  unreachable

.critedge.sink.split.i:                           ; preds = %bb.bo, %.critedge176.i, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %.split.i, %bb.k, %.critedge.sink.split.i, %.lr.ph._crit_edge.i
  %indvars.iv.next379.pre-phi.i = phi i64 [ %.pre419.i, %.lr.ph._crit_edge.i ], [ %i.ds, %.critedge.sink.split.i ], [ %i.ds, %bb.k ], [ %i.ds, %.split.i ], [ %i.ds, %bb.j ], [ %i.ds, %bb.i ], [ %i.ds, %bb.h ], [ %i.ds, %bb.g ], [ %i.ds, %bb.f ], [ %i.ds, %bb.e ] ; 2 uses
  %i.agw = icmp slt i64 %indvars.iv.next379.pre-phi.i, %i.bz
  br i1 %i.agw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !53

._crit_edge.i:                                    ; preds = %.critedge.i
  %indvars.iv.next382.i = add nsw i64 %indvars.iv381.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next382.i to i32
  %exitcond384.not.i = icmp eq i32 %i.i, %lftr.wideiv.i
  br i1 %exitcond384.not.i, label %._crit_edge363.i, label %.lr.ph362.split.i, !llvm.loop !54

bb.bq:                                            ; preds = %bb.b, %._crit_edge363.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.agx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.agy = load i32, ptr %i.agx, align 8, !tbaa !15
  %.not.i15 = icmp eq i32 %i.agy, 0
  br i1 %.not.i15, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %19)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.agz = landingpad { ptr, i32 }
          catch ptr null
  %i.aha = extractvalue { ptr, i32 } %i.agz, 0
  call void @__clang_call_terminate(ptr %i.aha) #25
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  ret void

bb.bt:                                            ; preds = %bb.a
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bn, %bb.bt
  %eh.lpad-body = phi { ptr, i32 } [ %i.ahb, %bb.bt ], [ %.pn.pn.pn.pn.i, %bb.bn ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv12cpu_baseline18calcSIFTDescriptorERKNS_3MatENS_6Point_IfEEffiiRS1_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, <2 x float> %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %6, i32 noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %9 = alloca %"class.cv::utils::BufferArea", align 8 ; 15 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  %i.h = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline18calcSIFTDescriptorERKNS_3MatENS_6Point_IfEEffiiRS1_iE25__cv_trace_location_fn714)
  %i.i = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.j = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.i)
  %i.k = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.l = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.k)
  %i.m = fmul float %2, f0x3C8EFA35               ; 2 uses
  %i.n = call float @cosf(float noundef %i.m) #24
  %i.o = call float @sinf(float noundef %i.m) #24
  %i.p = sitofp i32 %5 to float
  %i.q = fdiv nnan float %i.p, 3.600000e+02
  %i.r = mul i32 %4, %4                           ; 2 uses
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = fmul nnan float %i.s, 5.000000e-01
  %i.u = fdiv nnan float -1.000000e+00, %i.t
  %i.v = fmul float %3, 3.000000e+00              ; 2 uses
  %i.w = fmul float %i.v, f0x3FB504F3
  %i.x = add nsw i32 %4, 1
  %i.y = sitofp i32 %i.x to float
  %i.z = fmul float %i.w, %i.y
  %i.aa = fmul float %i.z, 5.000000e-01
  %i.ab = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ac = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !31 ; 2 uses
  %i.af = sitofp i32 %i.ae to double              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.ai = sitofp i32 %i.ah to double              ; 2 uses
  %i.aj = fmul nnan double %i.ai, %i.ai
  %i.ak = call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.aj)
  %sqrt = call double @llvm.sqrt.f64(double %i.ak)
  %i.al = fptosi double %sqrt to i32
  %.fr = freeze i32 %i.al
  %.sroa.speculated327 = call i32 @llvm.smin.i32(i32 %i.ac, i32 %.fr) ; 5 uses
  %i.am = insertelement <2 x float> poison, float %i.o, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.n, i64 1
  %i.ao = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %i.an, %i.ap           ; 2 uses
  %i.ar = add i32 %4, 2                           ; 7 uses
  %i.as = add i32 %5, 2                           ; 12 uses
  %i.at = mul i32 %i.as, %i.ar                    ; 3 uses
  %i.au = mul i32 %i.at, %i.ar
  %i.av = mul i32 %i.r, %5                        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %9, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.aw = shl nsw i32 %.sroa.speculated327, 1
  %i.ax = or disjoint i32 %i.aw, 1                ; 2 uses
  %i.ay = mul nsw i32 %i.ax, %i.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store ptr null, ptr %i.e, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store ptr null, ptr %i.f, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store ptr null, ptr %i.g, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store ptr null, ptr %i.h, align 8, !tbaa !35
  %i.az = zext nneg i32 %i.ay to i64              ; 6 uses
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.az, i16 noundef zeroext 16)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.az, i16 noundef zeroext 16)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.az, i16 noundef zeroext 16)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.az, i16 noundef zeroext 16)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.az, i16 noundef zeroext 16)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.az, i16 noundef zeroext 16)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ba = sext i32 %i.au to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %i.ba, i16 noundef zeroext 16)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bb = sext i32 %i.av to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.bb, i16 noundef zeroext 16)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %9)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !35  ; 4 uses
  %i.bd = icmp sgt i32 %4, -2
  %i.be = icmp sgt i32 %5, -2
  %or.cond386 = and i1 %i.bd, %i.be
  br i1 %or.cond386, label %.preheader341.preheader, label %._crit_edge346.split

.preheader341.preheader:                          ; preds = %bb.k
  %smax = call i32 @llvm.smax.i32(i32 %i.as, i32 1)
  %10 = zext nneg i32 %smax to i64
  %i.bf = shl nuw nsw i64 %10, 2                  ; 5 uses
  %smax394 = call i32 @llvm.smax.i32(i32 %i.ar, i32 1) ; 2 uses
  %wide.trip.count.a = zext nneg i32 %smax394 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.a, 3       ; 3 uses
  %i.bg = icmp slt i32 %i.ar, 4
  %unroll_iter = and i64 %wide.trip.count.a, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod481 = icmp ne i64 %xtraiter, 0
  br label %.preheader341

.preheader341:                                    ; preds = %.preheader341.preheader, %._crit_edge344
  %.0271345 = phi i32 [ %40, %._crit_edge344 ], [ 0, %.preheader341.preheader ] ; 2 uses
  %11 = mul i32 %i.at, %.0271345                  ; 5 uses
  %i.bh = load ptr, ptr %i.g, align 8             ; 5 uses
  br i1 %i.bg, label %.preheader340.epil.preheader, label %.preheader340

.preheader340:                                    ; preds = %.preheader341, %.preheader340
  %indvars.iv.a = phi i64 [ %indvars.iv.next.3, %.preheader340 ], [ 0, %.preheader341 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader340 ], [ 0, %.preheader341 ]
  %12 = trunc nuw nsw i64 %indvars.iv.a to i32
  %13 = mul i32 %i.as, %12
  %14 = add i32 %11, %13
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %scevgep.a = getelementptr i8, ptr %i.bh, i64 %16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.a, i8 0, i64 %i.bf, i1 false), !tbaa !28
  %17 = trunc i64 %indvars.iv.a to i32
  %18 = or disjoint i32 %17, 1
  %19 = mul i32 %i.as, %18
  %20 = add i32 %11, %19
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  %scevgep.1 = getelementptr i8, ptr %i.bh, i64 %22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.1, i8 0, i64 %i.bf, i1 false), !tbaa !28
  %23 = trunc i64 %indvars.iv.a to i32
  %24 = or disjoint i32 %23, 2
  %25 = mul i32 %i.as, %24
  %26 = add i32 %11, %25
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 2
  %scevgep.2.a = getelementptr i8, ptr %i.bh, i64 %28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.2.a, i8 0, i64 %i.bf, i1 false), !tbaa !28
  %29 = trunc i64 %indvars.iv.a to i32
  %30 = or disjoint i32 %29, 3
  %31 = mul i32 %i.as, %30
  %32 = add i32 %11, %31
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %scevgep.3 = getelementptr i8, ptr %i.bh, i64 %34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.3, i8 0, i64 %i.bf, i1 false), !tbaa !28
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.a, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge344.unr-lcssa, label %.preheader340, !llvm.loop !56

bb.l:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

._crit_edge344.unr-lcssa:                         ; preds = %.preheader340
  br i1 %lcmp.mod.not, label %._crit_edge344, label %.preheader340.epil.preheader

.preheader340.epil.preheader:                     ; preds = %._crit_edge344.unr-lcssa, %.preheader341
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader341 ], [ %indvars.iv.next.3, %._crit_edge344.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod481)
  br label %.preheader340.epil

.preheader340.epil:                               ; preds = %.preheader340.epil, %.preheader340.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader340.epil.preheader ], [ %indvars.iv.next.epil, %.preheader340.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader340.epil.preheader ], [ %epil.iter.next, %.preheader340.epil ]
  %35 = trunc nuw nsw i64 %indvars.iv.epil to i32
  %36 = mul i32 %i.as, %35
  %37 = add i32 %11, %36
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 2
  %scevgep.epil = getelementptr i8, ptr %i.bh, i64 %39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.epil, i8 0, i64 %i.bf, i1 false), !tbaa !28
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge344, label %.preheader340.epil, !llvm.loop !57

._crit_edge344:                                   ; preds = %.preheader340.epil, %._crit_edge344.unr-lcssa
  %40 = add nuw nsw i32 %.0271345, 1              ; 2 uses
  %exitcond395.not = icmp eq i32 %40, %smax394
  br i1 %exitcond395.not, label %._crit_edge346.split, label %.preheader341, !llvm.loop !59

._crit_edge346.split:                             ; preds = %._crit_edge344, %bb.k
  %i.bk = sub i32 0, %.sroa.speculated327         ; 2 uses
  %.not352 = icmp slt i32 %.sroa.speculated327, 0
  br i1 %.not352, label %._crit_edge355, label %.preheader339.lr.ph

.preheader339.lr.ph:                              ; preds = %._crit_edge346.split
  %i.bl = sdiv i32 %4, 2
  %i.bm = sitofp i32 %i.bl to float
  %i.bn = sitofp i32 %4 to float
  %i.bo = add nsw i32 %i.ah, -1
  %i.bp = add nsw i32 %i.ae, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bt = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader339

.preheader339:                                    ; preds = %.preheader339.lr.ph, %._crit_edge351
  %.1272354 = phi i32 [ %i.bk, %.preheader339.lr.ph ], [ %i.el, %._crit_edge351 ] ; 3 uses
  %.1279353 = phi i32 [ 0, %.preheader339.lr.ph ], [ %.us-phi, %._crit_edge351 ] ; 2 uses
  %i.bx = sitofp i32 %.1272354 to float           ; 2 uses
  %i.by = fneg float %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.bx, i64 1
  %i.cb = fmul <2 x float> %i.aq, %i.ca
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = add i32 %.1272354, %i.l                 ; 5 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  %i.cf = icmp slt i32 %i.cd, %i.bo
  %i.cg = zext nneg i32 %i.cd to i64
  %i.ch = add nsw i32 %i.cd, -1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = add nuw nsw i32 %i.cd, 1
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.a, align 8
  %i.cm = load ptr, ptr %i.e, align 8
  %i.cn = load ptr, ptr %i.f, align 8
  %i.co = load ptr, ptr %i.d, align 8
  br i1 %i.ce, label %.lr.ph.split, label %._crit_edge351

.lr.ph.split:                                     ; preds = %.preheader339, %bb.q
  %.1276350 = phi i32 [ %i.ek, %bb.q ], [ %i.bk, %.preheader339 ] ; 4 uses
  %.2280349 = phi i32 [ %.3281, %bb.q ], [ %.1279353, %.preheader339 ] ; 5 uses
  %i.cp = sitofp i32 %.1276350 to float
  %i.cq = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.aq, <2 x float> %i.cc) ; 4 uses
  %i.ct = fadd <2 x float> %i.cs, %i.bu
  %i.cu = fadd <2 x float> %i.ct, splat (float -5.000000e-01) ; 3 uses
  %i.cv = add nsw i32 %.1276350, %i.j             ; 3 uses
  %i.cw = extractelement <2 x float> %i.cu, i64 0 ; 2 uses
  %i.cx = fcmp ogt float %i.cw, -1.000000e+00
  br i1 %i.cx, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.lr.ph.split
  %i.cy = fcmp olt <2 x float> %i.cu, %i.bw       ; 2 uses
  %i.cz = extractelement <2 x float> %i.cu, i64 1 ; 2 uses
  %i.da = fcmp ogt float %i.cz, -1.000000e+00
  %i.db = extractelement <2 x i1> %i.cy, i64 1
  %i.dc = and i1 %i.da, %i.db
  %i.dd = extractelement <2 x i1> %i.cy, i64 0
  %or.cond385 = select i1 %i.dd, i1 %i.dc, i1 false
  br i1 %or.cond385, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.de = icmp sgt i32 %i.cv, 0
  %or.cond5 = select i1 %i.cf, i1 %i.de, i1 false
  %i.df = icmp slt i32 %i.cv, %i.bp
  %or.cond313 = select i1 %or.cond5, i1 %i.df, i1 false
  br i1 %or.cond313, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dg = load i32, ptr %i.bq, align 4, !tbaa !30
  %i.dh = icmp slt i32 %i.dg, 2                   ; 3 uses
  %i.di = load ptr, ptr %i.br, align 8, !tbaa !18 ; 3 uses
  %i.dj = load i64, ptr %i.bs, align 8            ; 3 uses
  %i.dk = mul i64 %i.dj, %i.cg
  %.sink.idx.i = select i1 %i.dh, i64 0, i64 %i.dk
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sink.idx.i
  %i.dl = zext nneg i32 %i.cv to i64              ; 3 uses
  %i.dm = getelementptr [4 x i8], ptr %.sink.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !28
  %i.dp = getelementptr i8, ptr %i.dm, i64 -4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !28
  %i.dr = fsub float %i.do, %i.dq
  %i.ds = mul i64 %i.dj, %i.ci
  %.sink.idx.i316 = select i1 %i.dh, i64 0, i64 %i.ds
  %.sink.i317 = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sink.idx.i316
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sink.i317, i64 %i.dl
  %i.du = load float, ptr %i.dt, align 4, !tbaa !28
  %i.dv = mul i64 %i.dj, %i.ck
  %.sink.idx.i318 = select i1 %i.dh, i64 0, i64 %i.dv
  %.sink.i319 = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sink.idx.i318
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i319, i64 %i.dl
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !28
  %i.dy = fsub float %i.du, %i.dx
  %i.dz = sext i32 %.2280349 to i64               ; 5 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.dz
  store float %i.dr, ptr %i.ea, align 4, !tbaa !28
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.dz
  store float %i.dy, ptr %i.eb, align 4, !tbaa !28
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.dz
  store float %i.cw, ptr %i.ec, align 4, !tbaa !28
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.dz
  store float %i.cz, ptr %i.ed, align 4, !tbaa !28
  %foldExtExtBinop = fmul <2 x float> %i.cs, %i.cs
  %i.ee = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ef = extractelement <2 x float> %i.cs, i64 1 ; 2 uses
  %i.eg = call float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %i.ee)
  %i.eh = fmul float %i.u, %i.eg
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.dz
  store float %i.eh, ptr %i.ei, align 4, !tbaa !28
  %i.ej = add nsw i32 %.2280349, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.split
  %.3281 = phi i32 [ %i.ej, %bb.p ], [ %.2280349, %.lr.ph.split ], [ %.2280349, %bb.o ], [ %.2280349, %bb.n ] ; 2 uses
  %i.ek = add i32 %.1276350, 1
  %exitcond396.not = icmp eq i32 %.1276350, %.sroa.speculated327
  br i1 %exitcond396.not, label %._crit_edge351, label %.lr.ph.split, !llvm.loop !60

._crit_edge351:                                   ; preds = %bb.q, %.preheader339
  %.us-phi = phi i32 [ %.1279353, %.preheader339 ], [ %.3281, %bb.q ] ; 2 uses
  %i.el = add i32 %.1272354, 1                    ; 2 uses
  %.not = icmp sgt i32 %i.el, %.sroa.speculated327
  br i1 %.not, label %._crit_edge355, label %.preheader339, !llvm.loop !61

._crit_edge355:                                   ; preds = %._crit_edge351, %._crit_edge346.split
  %.1279.lcssa = phi i32 [ 0, %._crit_edge346.split ], [ %.us-phi, %._crit_edge351 ] ; 5 uses
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !35
  invoke void @_ZN2cv3hal9fastAtan2EPKfS2_Pfib(ptr noundef %i.bc, ptr noundef %i.em, ptr noundef %i.en, i32 noundef %.1279.lcssa, i1 noundef zeroext true)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %._crit_edge355
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !35
  invoke void @_ZN2cv3hal12magnitude32fEPKfS2_Pfi(ptr noundef %i.eo, ptr noundef %i.ep, ptr noundef %i.bc, i32 noundef %.1279.lcssa)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.eq = load ptr, ptr %i.d, align 8, !tbaa !35  ; 2 uses
  invoke void @_ZN2cv3hal6exp32fEPKfPfi(ptr noundef %i.eq, ptr noundef %i.eq, i32 noundef %.1279.lcssa)
          to label %.preheader338 unwind label %bb.u

.preheader338:                                    ; preds = %bb.s
  %i.er = icmp sgt i32 %.1279.lcssa, 0
  br i1 %i.er, label %.lr.ph, label %.preheader337

.lr.ph:                                           ; preds = %.preheader338
  %i.es = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.et = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.ev = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !35  ; 5 uses
  %i.ex = add nsw i32 %5, 3
  %i.ey = add nsw i32 %4, 3
  %i.ez = mul nsw i32 %i.as, %i.ey
  %wide.trip.count400 = zext nneg i32 %.1279.lcssa to i64
  br label %bb.t

.preheader337:                                    ; preds = %bb.t, %.preheader338
  %i.fa = icmp sgt i32 %4, 0
  br i1 %i.fa, label %.preheader336.lr.ph, label %.preheader

.preheader336.lr.ph:                              ; preds = %.preheader337
  %i.fb = load ptr, ptr %i.g, align 8             ; 9 uses
  %i.fc = icmp sgt i32 %5, 0
  %i.fd = zext nneg i32 %4 to i64                 ; 8 uses
  br i1 %i.fc, label %.preheader336.us.preheader, label %.preheader336.preheader

.preheader336.preheader:                          ; preds = %.preheader336.lr.ph
  %i.fe = sext i32 %i.as to i64                   ; 3 uses
  %i.ff = sext i32 %5 to i64
  %i.fg = sext i32 %i.ar to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fb, i64 %i.ff ; 3 uses
  %xtraiter482 = and i64 %i.fd, 1
  %i.fh = icmp eq i32 %4, 1
  %unroll_iter486 = and i64 %i.fd, 2147483646
  %lcmp.mod484.not = icmp eq i64 %xtraiter482, 0
  %lcmp.mod485 = trunc i32 %4 to i1
  br label %.preheader336

.preheader336.us.preheader:                       ; preds = %.preheader336.lr.ph
  %i.fi = zext i32 %i.as to i64                   ; 4 uses
  %i.fj = zext nneg i32 %5 to i64                 ; 9 uses
  %i.fk = zext i32 %i.ar to i64                   ; 4 uses
  %invariant.gep467 = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fj
  %i.fl = mul nuw nsw i64 %i.fj, %i.fd
  %i.fm = shl nuw i64 %i.fl, 2                    ; 2 uses
  %i.fn = add nuw nsw i64 %i.fk, 1
  %i.fo = mul i64 %i.fn, %i.fi
  %i.fp = shl i64 %i.fo, 2
  %i.fq = mul nuw i64 %i.fk, %i.fi
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2cv8KeyPointESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag:bb.a
  %i.ab = icmp eq i64 %i.c, 28
  br i1 %i.ab, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %1, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !46
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.ac, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.09.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.08.i.i.i.i, i64 28, i1 false), !tbaa.struct !46
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 28 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 28
  %.not.i.i.i.i = icmp eq ptr %i.ad, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !275

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !40
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.af = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ag = sub nuw nsw i64 %i.d, %i.n
  %i.ah = getelementptr inbounds nuw [28 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !40
  %.not11.i.i.i.i.i51 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i51, label %_ZSt22__uninitialized_move_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit57, label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i52 ], [ %i.ah, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i54 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i52 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.013.i.i.i.i.i53, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.08.012.i.i.i.i.i54, i64 28, i1 false), !tbaa.struct !46
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i54, i64 28 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i53, i64 28
  %.not.i.i.i.i.i55 = icmp eq ptr %i.ai, %i.h
  br i1 %.not.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52, !llvm.loop !273

_ZSt22__uninitialized_move_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit57.loopexit: ; preds = %.lr.ph.i.i.i.i.i52
  %.pre99 = load ptr, ptr %i.g, align 8, !tbaa !40
  br label %_ZSt22__uninitialized_move_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit57

_ZSt22__uninitialized_move_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit57: ; preds = %_ZSt22__uninitialized_move_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit57.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit
  %i.ak = phi ptr [ %.pre99, %_ZSt22__uninitialized_move_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit57.loopexit ], [ %i.ah, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.m
  store ptr %i.al, ptr %i.g, align 8, !tbaa !40
  %i.am = icmp sgt i64 %i.m, 28
  br i1 %i.am, label %bb.k, label %bb.l, !prof !274

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit57
  %i.an = icmp eq i64 %i.m, 28
  br i1 %i.an, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %1, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !46
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.n:                                             ; preds = %bb.b
  %i.ao = load ptr, ptr %0, align 8, !tbaa !45    ; 5 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = sub i64 %i.j, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 28                ; 4 uses
  %i.as = sub nsw i64 329406144173384850, %i.ar
  %i.at = icmp ult i64 %i.as, %i.d
  br i1 %i.at, label %bb.o, label %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #26
  unreachable

_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.d)
  %i.au = add nsw i64 %.sroa.speculated.i, %i.ar  ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.ar
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 329406144173384850)
  %i.ax = select i1 %i.av, i64 329406144173384850, i64 %i.aw ; 3 uses
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ay = mul nuw nsw i64 %i.ax, 28
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #27
  br label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.ba = phi ptr [ %i.az, %bb.p ], [ null, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.ao, %1
  br i1 %.not11.i.i.i.i.i59, label %.lr.ph.i.i.i.i66.preheader, label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i60 ], [ %i.ba, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i60 ], [ %i.ao, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.013.i.i.i.i.i61, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.08.012.i.i.i.i.i62, i64 28, i1 false), !tbaa.struct !46
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 28 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 28 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i.i.i63, label %.lr.ph.i.i.i.i66.preheader, label %.lr.ph.i.i.i.i.i60, !llvm.loop !273

.lr.ph.i.i.i.i66.preheader:                       ; preds = %.lr.ph.i.i.i.i.i60, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit
  %.09.i.i.i.i67.ph = phi ptr [ %i.ba, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit ], [ %i.bc, %.lr.ph.i.i.i.i.i60 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.be, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i66 ], [ %2, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.09.i.i.i.i67, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.08.i.i.i.i68, i64 28, i1 false), !tbaa.struct !46
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 28 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 28 ; 3 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.bd, %3
  br i1 %.not.i.i.i.i69, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !275

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i73 ], [ %i.be, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i73 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.013.i.i.i.i.i74, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.08.012.i.i.i.i.i75, i64 28, i1 false), !tbaa.struct !46
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 28 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.bf, %i.h
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !273

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %i.be, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71 ], [ %i.bg, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.ao, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit78
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bj) #28
  br label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv8KeyPointES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, %bb.q
  store ptr %i.ba, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.g, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw [28 x i8], ptr %i.ba, i64 %i.ax
  store ptr %i.bk, ptr %i.e, align 8, !tbaa !43
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN2cv4readERKNS_8FileNodeERii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv4readERKNS_8FileNodeERdd(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!10 = !{!9, !5, i64 4}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"p1 _ZTSN2cv3MatE", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!16, !5, i64 8}
!16 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !17, i64 0, !5, i64 8}
!17 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !14, i64 0}
!18 = !{!19, !20, i64 24}
!19 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !21, i64 56, !22, i64 64, !23, i64 72, !25, i64 128}
!20 = !{!"p1 omnipotent char", !14, i64 0}
!21 = !{!"p1 _ZTSN2cv12MatAllocatorE", !14, i64 0}
!22 = !{!"p1 _ZTSN2cv8UMatDataE", !14, i64 0}
!23 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !24, i64 4, !5, i64 8, !6, i64 12}
!24 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!25 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !6, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !6, i64 0}
!30 = !{!19, !5, i64 4}
!31 = !{!19, !5, i64 12}
!32 = !{!19, !5, i64 8}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 float", !14, i64 0}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !34}
!39 = distinct !{!39, !34}
!40 = !{!41, !42, i64 8}
!41 = !{!"_ZTSNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSN2cv8KeyPointE", !14, i64 0}
!43 = !{!41, !42, i64 16}
!44 = !{!5, !5, i64 0}
!45 = !{!41, !42, i64 0}
!46 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !28, i64 12, i64 4, !28, i64 16, i64 4, !28, i64 20, i64 4, !44, i64 24, i64 4, !44}
!47 = !{!48, !50}
!48 = distinct !{!48, !49, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!49 = distinct !{!49, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_"}
!50 = distinct !{!50, !49, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!51 = distinct !{!51, !34}
!52 = distinct !{!52, !34}
!53 = distinct !{!53, !34}
!54 = distinct !{!54, !34, !55}
!55 = !{!"llvm.loop.unswitch.partial.disable"}
!56 = distinct !{!56, !34}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !34}
!60 = distinct !{!60, !34}
!61 = distinct !{!61, !34}
!62 = !{!63}
!63 = distinct !{!63, !64}
!64 = distinct !{!64, !"LVerDomain"}
!65 = !{!66}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !34, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = distinct !{!70, !58}
!71 = distinct !{!71, !34, !68}
!72 = distinct !{!72, !34}
!73 = distinct !{!73, !34}
!74 = distinct !{!74, !34}
!75 = distinct !{!75, !34}
!76 = distinct !{!76, !58}
!77 = distinct !{!77, !34}
!78 = !{!19, !5, i64 0}
!79 = distinct !{!79, !34}
!80 = !{!6, !6, i64 0}
!81 = distinct !{!81, !34}
!82 = !{!83, !20, i64 0}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !84, i64 0, !27, i64 8, !6, i64 16}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!85 = !{!86, !92, i64 40}
!86 = !{!"_ZTSN2cv5utils10BufferAreaE", !87, i64 0, !14, i64 24, !27, i64 32, !92, i64 40}
!87 = !{!"_ZTSSt6vectorIN2cv5utils10BufferArea5BlockESaIS3_EE", !88, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseIN2cv5utils10BufferArea5BlockESaIS3_EE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN2cv5utils10BufferArea5BlockESaIS3_EE12_Vector_implE", !90, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN2cv5utils10BufferArea5BlockESaIS3_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!91 = !{!"p1 _ZTSN2cv5utils10BufferArea5BlockE", !14, i64 0}
!92 = !{!"bool", !6, i64 0}
!93 = !{i8 0, i8 2}
!94 = !{}
!95 = !{!96, !5, i64 8}
!96 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"_ZSt11make_sharedIN2cv9SIFT_ImplEJRKiS3_RKdS5_S5_S3_RKbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!99 = distinct !{!99, !"_ZSt11make_sharedIN2cv9SIFT_ImplEJRKiS3_RKdS5_S5_S3_RKbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!100 = distinct !{!100, !101, !"_ZN2cvL7makePtrINS_9SIFT_ImplEJiidddibEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!101 = distinct !{!101, !"_ZN2cvL7makePtrINS_9SIFT_ImplEJiidddibEEENS_3PtrIT_EEDpRKT0_"}
!102 = !{!96, !5, i64 12}
!103 = !{!104, !104, i64 0}
!104 = !{!"vtable pointer", !7, i64 0}
!105 = !{!106, !107, i64 0}
!106 = !{!"_ZTSSt12__shared_ptrIN2cv4SIFTELN9__gnu_cxx12_Lock_policyE2EE", !107, i64 0, !108, i64 8}
!107 = !{!"p1 _ZTSN2cv4SIFTE", !14, i64 0}
!108 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !109, i64 0}
!109 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!110 = !{!108, !109, i64 0}
!111 = !{!112, !114}
!112 = distinct !{!112, !113, !"_ZSt11make_sharedIN2cv9SIFT_ImplEJRKiS3_RKdS5_S5_S3_RKbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!113 = distinct !{!113, !"_ZSt11make_sharedIN2cv9SIFT_ImplEJRKiS3_RKdS5_S5_S3_RKbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!114 = distinct !{!114, !115, !"_ZN2cvL7makePtrINS_9SIFT_ImplEJiidddibEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!115 = distinct !{!115, !"_ZN2cvL7makePtrINS_9SIFT_ImplEJiidddibEEENS_3PtrIT_EEDpRKT0_"}
!116 = !{!84, !20, i64 0}
!117 = !{!83, !27, i64 8}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!120 = distinct !{!120, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!121 = !{!122, !5, i64 12}
!122 = !{!"_ZTSN2cv9SIFT_ImplE", !123, i64 0, !5, i64 8, !5, i64 12, !126, i64 16, !126, i64 24, !126, i64 32, !5, i64 40, !92, i64 44}
!123 = !{!"_ZTSN2cv4SIFTE", !124, i64 0}
!124 = !{!"_ZTSN2cv9Feature2DE", !125, i64 0}
!125 = !{!"_ZTSN2cv9AlgorithmE"}
!126 = !{!"double", !6, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!12, !13, i64 8}
!129 = distinct !{!129, !34}
!130 = !{!122, !126, i64 32}
!131 = distinct !{!131, !34}
!132 = !{!133, !5, i64 0}
!133 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!134 = !{!133, !5, i64 4}
!135 = !{!136, !5, i64 0}
!136 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !14, i64 8, !133, i64 16}
!137 = !{!136, !14, i64 8}
!138 = distinct !{!138, !34}
!139 = distinct !{!139, !34, !140}
!140 = !{!"llvm.loop.peeled.count", i32 1}
!141 = !{!142, !5, i64 8}
!142 = !{!"_ZTSN2cv23buildDoGPyramidComputerE", !143, i64 0, !5, i64 8, !144, i64 16, !144, i64 24}
!143 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
end_hunk_1
