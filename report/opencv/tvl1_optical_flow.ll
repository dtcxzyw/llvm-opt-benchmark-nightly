Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tvl1_optical_flow?download=true
inline.NumInlined: 212
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK2cv8MatShapeclEv:bb.a
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !17
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.a, 0
  br i1 %i.i, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.j = icmp eq i32 %i.a, 0
  %i.k = zext i1 %i.j to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = icmp eq i32 %i.a, 2
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34   ; 2 uses
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.l, align 4, !tbaa !34
  br label %bb.i

bb.h:                                             ; preds = %.thread, %bb.f
  %i.r = phi i32 [ %i.k, %.thread ], [ %i.p, %bb.f ]
  %i.s = icmp sgt i32 %i.a, -1
  %i.t = zext i1 %i.s to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = phi i32 [ %i.p, %bb.g ], [ %i.r, %bb.h ]
  %i.v = phi i32 [ %i.q, %bb.g ], [ %i.t, %bb.h ]
  %.sroa.2.0.insert.ext = zext i32 %i.v to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.u to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

declare void @_ZN2cv7optflow19DualTVL1OpticalFlow6createEdddiidiiddib(ptr dead_on_unwind writable sret(%"struct.cv::Ptr") align 8, double noundef, double noundef, double noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, double noundef, double noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef i64 @_ZN2cv12getTickCountEv() local_unnamed_addr #3

declare noundef double @_ZN2cv16getTickFrequencyEv() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL15drawOpticalFlowRKN2cv4Mat_INS_6Point_IfEEEERNS_3MatEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %5 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.16, i32 noundef 109) #18
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !17
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.k = icmp eq i32 %i.b, 0
  %i.l = zext i1 %i.k to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.n = icmp eq i32 %i.b, 2
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.m, align 4, !tbaa !34
  br label %_ZNK2cv8MatShapeclEv.exit

bb.h:                                             ; preds = %bb.f, %.thread.i
  %i.s = phi i32 [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.t = icmp sgt i32 %i.b, -1
  %i.u = zext i1 %i.t to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.g, %bb.h
  %i.v = phi i32 [ %i.q, %bb.g ], [ %i.s, %bb.h ]
  %i.w = phi i32 [ %i.r, %bb.g ], [ %i.u, %bb.h ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.w to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.v to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  tail call void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %4, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.y, align 8, !tbaa !32
  store i64 17179869185, ptr %i.x, align 8
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.aa = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.z) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !35 ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader55.lr.ph, label %._crit_edge64

.preheader55.lr.ph:                               ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !36 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader55.lr.ph.split.us, label %.preheader.lr.ph

.preheader55.lr.ph.split.us:                      ; preds = %.preheader55.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !37
  %.fr65 = freeze i32 %i.ak
  %i.al = icmp slt i32 %.fr65, 2
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.an = load i64, ptr %i.ah, align 8
  br i1 %i.al, label %.preheader55.us.us.preheader, label %.preheader55.us.preheader

.preheader55.us.preheader:                        ; preds = %.preheader55.lr.ph.split.us
  %wide.trip.count73 = zext nneg i32 %i.ac to i64
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %.preheader55.us

.preheader55.us.us.preheader:                     ; preds = %.preheader55.lr.ph.split.us
  %wide.trip.count78 = zext nneg i32 %i.af to i64
  br label %.preheader55.us.us

.preheader55.us.us:                               ; preds = %.preheader55.us.us.preheader, %._crit_edge.us.us
  %.059.us.us = phi i32 [ %i.as, %._crit_edge.us.us ], [ 0, %.preheader55.us.us.preheader ]
  %.05058.us.us = phi float [ %.2.us.us, %._crit_edge.us.us ], [ 1.000000e+00, %.preheader55.us.us.preheader ]
  br label %bb.i

bb.i:                                             ; preds = %.preheader55.us.us, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us
  %indvars.iv75 = phi i64 [ 0, %.preheader55.us.us ], [ %indvars.iv.next76, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us ] ; 2 uses
  %.156.us.us = phi float [ %.05058.us.us, %.preheader55.us.us ], [ %.2.us.us, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv75
  %.sroa.011.0.copyload.us.us = load <2 x float>, ptr %i.ao, align 4 ; 4 uses
  %.sroa.0.0.vec.extract.i.us.us = extractelement <2 x float> %.sroa.011.0.copyload.us.us, i64 0 ; 3 uses
  %i.ap = fcmp ord float %.sroa.0.0.vec.extract.i.us.us, 0.000000e+00
  br i1 %i.ap, label %bb.j, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us

bb.j:                                             ; preds = %bb.i
  %6 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %.sroa.011.0.copyload.us.us)
  %7 = fcmp uge <2 x float> %6, splat (float 1.000000e+09)
  %8 = bitcast <2 x i1> %7 to i2
  %9 = icmp eq i2 %8, 0
  br i1 %9, label %bb.k, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us

bb.k:                                             ; preds = %bb.j
  %foldExtExtBinop = fmul nnan <2 x float> %.sroa.011.0.copyload.us.us, %.sroa.011.0.copyload.us.us
  %10 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.aq = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.us.us, float %.sroa.0.0.vec.extract.i.us.us, float %10)
  %sqrt.us.us = call float @llvm.sqrt.f32(float %i.aq) ; 2 uses
  %i.ar = fcmp olt float %.156.us.us, %sqrt.us.us
  %.sroa.speculated.us.us = select i1 %i.ar, float %sqrt.us.us, float %.156.us.us
  br label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us

_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us: ; preds = %bb.k, %bb.j, %bb.i
  %.2.us.us = phi float [ %.sroa.speculated.us.us, %bb.k ], [ %.156.us.us, %bb.i ], [ %.156.us.us, %bb.j ] ; 3 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %._crit_edge.us.us, label %bb.i, !llvm.loop !85

._crit_edge.us.us:                                ; preds = %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us
  %i.as = add nuw nsw i32 %.059.us.us, 1          ; 2 uses
  %exitcond80.not = icmp eq i32 %i.as, %i.ac
  br i1 %exitcond80.not, label %.preheader.lr.ph, label %.preheader55.us.us, !llvm.loop !86

.preheader55.us:                                  ; preds = %.preheader55.us.preheader, %._crit_edge.us
  %indvars.iv70 = phi i64 [ 0, %.preheader55.us.preheader ], [ %indvars.iv.next71, %._crit_edge.us ] ; 2 uses
  %.05058.us = phi float [ 1.000000e+00, %.preheader55.us.preheader ], [ %.2.us, %._crit_edge.us ]
  %i.at = mul i64 %i.an, %indvars.iv70
  %.sink.i.us = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.at
  br label %bb.l

bb.l:                                             ; preds = %.preheader55.us, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader55.us ], [ %indvars.iv.next, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us ] ; 2 uses
  %.156.us = phi float [ %.05058.us, %.preheader55.us ], [ %.2.us, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us ] ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.us, i64 %indvars.iv
  %.sroa.011.0.copyload.us = load <2 x float>, ptr %i.au, align 4 ; 4 uses
  %.sroa.0.0.vec.extract.i.us = extractelement <2 x float> %.sroa.011.0.copyload.us, i64 0 ; 3 uses
  %i.av = fcmp ord float %.sroa.0.0.vec.extract.i.us, 0.000000e+00
  br i1 %i.av, label %bb.m, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us

bb.m:                                             ; preds = %bb.l
  %11 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %.sroa.011.0.copyload.us)
  %12 = fcmp uge <2 x float> %11, splat (float 1.000000e+09)
  %13 = bitcast <2 x i1> %12 to i2
  %14 = icmp eq i2 %13, 0
  br i1 %14, label %bb.n, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us

bb.n:                                             ; preds = %bb.m
  %foldExtExtBinop3 = fmul nnan <2 x float> %.sroa.011.0.copyload.us, %.sroa.011.0.copyload.us
  %15 = extractelement <2 x float> %foldExtExtBinop3, i64 1
  %i.aw = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.us, float %.sroa.0.0.vec.extract.i.us, float %15)
  %sqrt.us = call float @llvm.sqrt.f32(float %i.aw) ; 2 uses
  %i.ax = fcmp olt float %.156.us, %sqrt.us
  %.sroa.speculated.us = select i1 %i.ax, float %sqrt.us, float %.156.us
  br label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us

_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us:  ; preds = %bb.n, %bb.m, %bb.l
  %.2.us = phi float [ %.sroa.speculated.us, %bb.n ], [ %.156.us, %bb.l ], [ %.156.us, %bb.m ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.l, !llvm.loop !85

._crit_edge.us:                                   ; preds = %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %.preheader.lr.ph, label %.preheader55.us, !llvm.loop !86

.preheader.lr.ph:                                 ; preds = %._crit_edge.us, %._crit_edge.us.us, %.preheader55.lr.ph
  %.050.lcssa96 = phi float [ 1.000000e+00, %.preheader55.lr.ph ], [ %.2.us.us, %._crit_edge.us.us ], [ %.2.us, %._crit_edge.us ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bf = load i32, ptr %i.ay, align 4, !tbaa !36 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.preheader.preheader, label %._crit_edge64

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bh = insertelement <2 x float> poison, float %.050.lcssa96, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.bj = phi i32 [ %i.bn, %._crit_edge ], [ %i.ac, %.preheader.preheader ]
  %i.bk = phi i32 [ %i.bo, %._crit_edge ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %i.bl = phi i32 [ %i.bp, %._crit_edge ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

._crit_edge64:                                    ; preds = %._crit_edge, %_ZNK2cv8MatShapeclEv.exit, %.preheader.lr.ph
  ret void

._crit_edge.loopexit:                             ; preds = %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread
  %.pre87 = load i32, ptr %i.ab, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bn = phi i32 [ %.pre87, %._crit_edge.loopexit ], [ %i.bj, %.preheader ] ; 2 uses
  %i.bo = phi i32 [ %i.fk, %._crit_edge.loopexit ], [ %i.bk, %.preheader ]
  %i.bp = phi i32 [ %i.fk, %._crit_edge.loopexit ], [ %i.bl, %.preheader ]
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.bq = sext i32 %i.bn to i64
  %i.br = icmp slt i64 %indvars.iv.next85, %i.bq
  br i1 %i.br, label %.preheader, label %._crit_edge64, !llvm.loop !87

.lr.ph:                                           ; preds = %.preheader, %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread
  %i.bs = phi i32 [ %i.fk, %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread ], [ %i.bk, %.preheader ] ; 2 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread ], [ 0, %.preheader ] ; 3 uses
  %i.bt = load i32, ptr %i.az, align 4, !tbaa !37
  %i.bu = icmp slt i32 %i.bt, 2
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bw = load i64, ptr %i.bb, align 8
  %i.bx = mul i64 %i.bw, %indvars.iv84
  %.sink.idx.i40 = select i1 %i.bu, i64 0, i64 %i.bx
  %.sink.i41 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sink.idx.i40
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sink.i41, i64 %indvars.iv81
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.by, align 4 ; 3 uses
  %.sroa.0.0.vec.extract.i42 = extractelement <2 x float> %.sroa.01.0.copyload, i64 0
  %i.bz = fcmp ord float %.sroa.0.0.vec.extract.i42, 0.000000e+00
  br i1 %i.bz, label %bb.o, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread

bb.o:                                             ; preds = %.lr.ph
  %i.ca = call <2 x float> @llvm.fabs.v2f32(<2 x float> %.sroa.01.0.copyload)
  %i.cb = fcmp uge <2 x float> %i.ca, splat (float 1.000000e+09)
  %i.cc = bitcast <2 x i1> %i.cb to i2
  %or.cond53 = icmp eq i2 %i.cc, 0
  br i1 %or.cond53, label %bb.p, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread

bb.p:                                             ; preds = %bb.o
  %i.cd = fdiv <2 x float> %.sroa.01.0.copyload, %i.bi ; 2 uses
  %i.ce = load atomic i8, ptr @_ZGVZL12computeColorffE10colorWheel acquire, align 8, !noalias !91
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.q, label %bb.r, !prof !92

bb.q:                                             ; preds = %bb.p
  %i.cg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL12computeColorffE10colorWheel) #16, !noalias !91
  %.not.i46 = icmp eq i32 %i.cg, 0
  br i1 %.not.i46, label %bb.r, label %.preheader91.preheader.i

.preheader91.preheader.i:                         ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(660) @_ZZL12computeColorffE10colorWheel, i8 0, i64 660, i1 false), !tbaa !34, !noalias !91
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL12computeColorffE10colorWheel) #16, !noalias !91
  br label %bb.r

bb.r:                                             ; preds = %.preheader91.preheader.i, %bb.q, %bb.p
  %.b.i = load i1, ptr @_ZZL12computeColorffE5first, align 1, !noalias !91
  br i1 %.b.i, label %_ZL12computeColorff.exit, label %.preheader90.preheader.i

.preheader90.preheader.i:                         ; preds = %bb.r
  store <4 x i32> <i32 255, i32 0, i32 0, i32 255>, ptr @_ZZL12computeColorffE10colorWheel, align 16, !noalias !91
  store <4 x i32> <i32 17, i32 0, i32 255, i32 34>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 16), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 255, i32 51, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 32), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 68, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 48), align 16, !noalias !91
  store <4 x i32> <i32 85, i32 0, i32 255, i32 102>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 64), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 255, i32 119, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 80), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 136, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 96), align 16, !noalias !91
  store <4 x i32> <i32 153, i32 0, i32 255, i32 170>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 112), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 255, i32 187, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 128), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 204, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 144), align 16, !noalias !91
  store <4 x i32> <i32 221, i32 0, i32 255, i32 238>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 160), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 255, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 176), align 16, !noalias !91
  store <4 x i32> <i32 213, i32 255, i32 0, i32 170>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 192), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 0, i32 128, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 208), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 85, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 224), align 16, !noalias !91
  store <4 x i32> <i32 43, i32 255, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 240), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 0, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 256), align 16, !noalias !91
  store <4 x i32> <i32 63, i32 0, i32 255, i32 127>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 272), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 255, i32 191, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 288), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 255, i32 0, i32 232>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 304), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 0, i32 209, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 320), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 186, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 336), align 16, !noalias !91
  store <4 x i32> <i32 163, i32 255, i32 0, i32 140>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 352), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 0, i32 116, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 368), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 93, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 384), align 16, !noalias !91
  store <4 x i32> <i32 70, i32 255, i32 0, i32 47>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 400), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 0, i32 24, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 416), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 0, i32 255, i32 19>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 432), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 255, i32 39, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 448), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 58, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 464), align 16, !noalias !91
  store <4 x i32> <i32 78, i32 0, i32 255, i32 98>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 480), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 255, i32 117, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 496), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 137, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 512), align 16, !noalias !91
  store <4 x i32> <i32 156, i32 0, i32 255, i32 176>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 528), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 255, i32 196, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 544), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 215, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 560), align 16, !noalias !91
  store <4 x i32> <i32 235, i32 0, i32 255, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 576), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 255, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 592), align 16, !noalias !91
  store <4 x i32> <i32 213, i32 255, i32 0, i32 170>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 608), align 16, !noalias !91
  store <4 x i32> <i32 255, i32 0, i32 128, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 624), align 16, !noalias !91
  store <4 x i32> <i32 0, i32 85, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 640), align 16, !noalias !91
  store i32 43, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 656), align 16, !noalias !91
  store i1 true, ptr @_ZZL12computeColorffE5first, align 1, !noalias !91
  br label %_ZL12computeColorff.exit

_ZL12computeColorff.exit:                         ; preds = %bb.r, %.preheader90.preheader.i
  %i.ch = extractelement <2 x float> %i.cd, i64 1 ; 3 uses
  %i.ci = fmul float %i.ch, %i.ch
  %i.cj = extractelement <2 x float> %i.cd, i64 0 ; 3 uses
  %i.ck = call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.ci)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.ck) ; 2 uses
  %i.cl = fneg float %i.ch
  %i.cm = fneg float %i.cj
  %i.cn = call noundef float @atan2f(float noundef %i.cl, float noundef %i.cm) #16, !noalias !91
  %i.co = fdiv float %i.cn, f0x40490FDB
  %i.cp = fadd float %i.co, 1.000000e+00
  %i.cq = fmul float %i.cp, 5.000000e-01
  %i.cr = fmul float %i.cq, 5.400000e+01          ; 2 uses
  %i.cs = fptosi float %i.cr to i32               ; 3 uses
  %i.ct = add nsw i32 %i.cs, 1
  %i.cu = srem i32 %i.ct, 55
  %i.cv = sitofp i32 %i.cs to float
  %i.cw = fsub float %i.cr, %i.cv                 ; 3 uses
  %i.cx = sext i32 %i.cs to i64
  %i.cy = getelementptr inbounds [12 x i8], ptr @_ZZL12computeColorffE10colorWheel, i64 %i.cx ; 3 uses
  %i.cz = sext i32 %i.cu to i64
  %i.da = getelementptr inbounds [12 x i8], ptr @_ZZL12computeColorffE10colorWheel, i64 %i.cz ; 3 uses
  %i.db = fsub float 1.000000e+00, %i.cw          ; 2 uses
  %i.dc = fcmp ugt float %sqrt.i, 1.000000e+00    ; 2 uses
  %i.dd = fneg float %sqrt.i                      ; 2 uses
  %i.de = load i32, ptr %i.cy, align 4, !tbaa !34, !noalias !91
  %i.df = sitofp i32 %i.de to float
  %i.dg = fdiv float %i.df, 2.550000e+02
  %i.dh = load i32, ptr %i.da, align 4, !tbaa !34, !noalias !91
  %i.di = sitofp i32 %i.dh to float
  %i.dj = fdiv nnan float %i.di, 2.550000e+02
  %i.dk = fmul float %i.dj, %i.cw
  %i.dl = call float @llvm.fmuladd.f32(float %i.db, float %i.dg, float %i.dk) ; 2 uses
  %i.dm = fsub float 1.000000e+00, %i.dl
  %i.dn = call float @llvm.fmuladd.f32(float %i.dd, float %i.dm, float 1.000000e+00)
  %i.do = fmul float %i.dl, 7.500000e-01
  %.0.i = select i1 %i.dc, float %i.do, float %i.dn
  %i.dp = fmul float %.0.i, 2.550000e+02
  %i.dq = fptoui float %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !34, !noalias !91
  %i.dt = sitofp i32 %i.ds to float
  %i.du = fdiv float %i.dt, 2.550000e+02
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !34, !noalias !91
  %i.dx = sitofp i32 %i.dw to float
  %i.dy = fdiv nnan float %i.dx, 2.550000e+02
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !34, !noalias !91
  %i.eb = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !34, !noalias !91
  %i.ed = insertelement <2 x i32> poison, i32 %i.ea, i64 0
end_hunk_0
begin_hunk_1_@_ZL15drawOpticalFlowRKN2cv4Mat_INS_6Point_IfEEEERNS_3MatEf:bb.a
  store i8 %i.dq, ptr %.sroa.5.0..sroa_idx, align 1
  %.pre = load i32, ptr %i.ay, align 4, !tbaa !36
  br label %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread

_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread:   ; preds = %.lr.ph, %bb.o, %_ZL12computeColorff.exit
  %i.fk = phi i32 [ %i.bs, %.lr.ph ], [ %i.bs, %bb.o ], [ %.pre, %_ZL12computeColorff.exit ] ; 4 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp slt i64 %indvars.iv.next82, %i.fl
  br i1 %i.fm, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !90
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL22writeOpticalFlowToFileRKN2cv4Mat_INS_6Point_IfEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr %.0.val) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::basic_ofstream", align 8 ; 11 uses
  %2 = alloca %"class.cv::Point_", align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef %.0.val, i32 noundef 4)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZZL22writeOpticalFlowToFileRKN2cv4Mat_INS_6Point_IfEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14FLO_TAG_STRING, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 4)
          to label %.preheader1 unwind label %bb.c ; 0 uses

.preheader1:                                      ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %.preheader1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.b, align 4, !tbaa !36   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader, label %._crit_edge4

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.n = phi i32 [ %i.r, %._crit_edge ], [ %i.f, %.preheader.lr.ph ]
  %i.o = phi i32 [ %i.s, %._crit_edge ], [ %i.l, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader1
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

bb.c:                                             ; preds = %bb.a, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %i.d, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.r = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.n, %.preheader ] ; 2 uses
  %i.s = phi i32 [ %i.ae, %._crit_edge.loopexit ], [ %i.o, %.preheader ]
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1 ; 2 uses
  %i.t = sext i32 %i.r to i64
  %i.u = icmp slt i64 %indvars.iv.next8, %i.t
  br i1 %i.u, label %.preheader, label %._crit_edge4, !llvm.loop !93

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.v = load i32, ptr %i.h, align 4, !tbaa !37
  %i.w = icmp slt i32 %i.v, 2
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.y = load i64, ptr %i.j, align 8
  %i.z = mul i64 %i.y, %indvars.iv7
  %.sink.idx.i = select i1 %i.w, i64 0, i64 %i.z
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sink.idx.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %indvars.iv
  %i.ab = load i64, ptr %i.aa, align 4
  store i64 %i.ab, ptr %2, align 8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2, i64 noundef 4)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %.lr.ph
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.k, i64 noundef 4)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !36  ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !94

bb.f:                                             ; preds = %bb.d, %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.q, %bb.c ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef i32 @_ZN2cv7waitKeyEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv7optflow19DualTVL1OpticalFlowELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !99
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !95
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !95
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !100

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) unnamed_addr #2 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #7 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !101
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !34   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !101
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

declare void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !13, i64 8, !5, i64 16}
!16 = !{!15, !10, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!15, !13, i64 8}
!19 = !{!"vtable pointer", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTSN2cv12MatAllocatorE", !9, i64 0}
!22 = !{!"p1 _ZTSN2cv8UMatDataE", !9, i64 0}
!23 = !{!"_ZTSN2cv10DataLayoutE", !5, i64 0}
!24 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !23, i64 4, !6, i64 8, !5, i64 12}
!25 = !{!"_ZTSN2cv7MatStepE", !5, i64 0}
!26 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !21, i64 56, !22, i64 64, !24, i64 72, !25, i64 128}
!27 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!28 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!29 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!30 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !9, i64 8, !29, i64 16}
!31 = !{!30, !6, i64 0}
!32 = !{!30, !9, i64 8}
!33 = !{!24, !6, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!26, !6, i64 8}
!36 = !{!26, !6, i64 12}
!37 = !{!26, !6, i64 4}
!38 = !{!26, !10, i64 24}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unswitch.partial.disable"}
!41 = distinct !{!41, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!42 = distinct !{!42, !41, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!43 = distinct !{!43, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!44 = distinct !{!44, !43, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!45 = distinct !{!45, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!46 = distinct !{!46, !45, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!47 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!48 = distinct !{!48, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!49 = distinct !{!49, !48, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!50 = distinct !{null}
!51 = !{!42}
!52 = !{!44}
!53 = !{!46}
!54 = !{!10, !10, i64 0}
!55 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!56 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!57 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!58 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !13, i64 8}
!59 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!60 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!61 = !{!"_ZTSSt6locale", !60, i64 0}
!62 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !55, i64 24, !56, i64 28, !56, i64 32, !57, i64 40, !58, i64 48, !5, i64 64, !6, i64 192, !59, i64 200, !61, i64 208}
!63 = !{!62, !56, i64 32}
!64 = !{!"p1 _ZTSSo", !9, i64 0}
!65 = !{!"bool", !5, i64 0}
!66 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 0}
!67 = !{!"p1 _ZTSSt5ctypeIcE", !9, i64 0}
!68 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!69 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!70 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !62, i64 0, !64, i64 216, !5, i64 224, !65, i64 225, !66, i64 232, !67, i64 240, !68, i64 248, !69, i64 256}
!71 = !{!70, !67, i64 240}
!72 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!73 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!74 = !{!"p1 int", !9, i64 0}
!75 = !{!"p1 short", !9, i64 0}
!76 = !{!"_ZTSSt5ctypeIcE", !72, i64 0, !73, i64 16, !65, i64 24, !74, i64 32, !74, i64 40, !75, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!77 = !{!76, !5, i64 56}
end_hunk_1
