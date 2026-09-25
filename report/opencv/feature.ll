Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/feature?download=true
inline.NumInlined: 1028
inline.NumDeleted: 470
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv6detail8tracking15contrib_feature15CvHaarEvaluatorclEii:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.36, i64 noundef %i.b, i64 noundef %i.i) #25
  unreachable

_ZNSt6vectorIN2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaarESaIS5_EE2atEm.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %i.b ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !144  ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i, label %_ZNK2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaar4evalERKNS_3MatENS_5Rect_IiEEPf.exit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaarESaIS5_EE2atEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !135
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !131
  %wide.trip.count.i = zext nneg i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.s = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.aa, %bb.c ]
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.u = load i64, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 4
  %i.x = tail call noundef float @_ZNK2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaar6getSumERKNS_3MatENS_5Rect_IiEE(ptr nonnull readonly align 8 poison, ptr noundef nonnull readonly align 8 dereferenceable(208) %i.k, i64 %i.u, i64 %i.w)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.z = load float, ptr %i.y, align 4, !tbaa !90
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.x, float %i.z, float %i.s) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaar4evalERKNS_3MatENS_5Rect_IiEEPf.exit, label %bb.c, !llvm.loop !4

_ZNK2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaar4evalERKNS_3MatENS_5Rect_IiEEPf.exit: ; preds = %bb.c, %_ZNSt6vectorIN2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaarESaIS5_EE2atEm.exit
  %.0 = phi float [ 0.000000e+00, %_ZNSt6vectorIN2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaarESaIS5_EE2atEm.exit ], [ %i.aa, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaar4evalERKNS_3MatENS_5Rect_IiEEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, i64 %2, i64 %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #11 align 2 {
bb.a:
  store float 0.000000e+00, ptr %4, align 4, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !144  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !131
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = phi float [ 0.000000e+00, %.lr.ph ], [ %i.p, %bb.b ]
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.j = load i64, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 4
  %i.m = tail call noundef float @_ZNK2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaar6getSumERKNS_3MatENS_5Rect_IiEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 %i.j, i64 %i.l)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4, !tbaa !90
  %i.p = tail call float @llvm.fmuladd.f32(float %i.m, float %i.o, float %i.h) ; 2 uses
  store float %i.p, ptr %4, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv6detail8tracking15contrib_feature15CvHaarEvaluator10setWinSizeENS_5Size_IiEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(696) initializes((20, 28)) %0, i64 %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i64 %1, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZNK2cv6detail8tracking15contrib_feature15CvHaarEvaluator10setWinSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(696) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i64, ptr %i.a, align 4
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaarC2ENS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((8, 32), (40, 80), (88, 136)) %0, i64 %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaar21generateRandomFeatureENS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1)
          to label %bb.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #26 ; 0 uses
  invoke void @__cxa_rethrow() #25
          to label %bb.k unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !136
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #27
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit:     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.f
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !136
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #27
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit6

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit6:    ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIfSaIfEED2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !132
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit8

_ZNSt6vectorIfSaIfEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit6, %bb.h
  resume { ptr, i32 } %i.h

bb.i:                                             ; preds = %bb.a
  ret void

bb.j:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #29
  unreachable

bb.k:                                             ; preds = %bb.b
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail8tracking15contrib_feature15CvHaarEvaluator11FeatureHaar21generateRandomFeatureENS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.sroa.15.0.extract.shift = lshr i64 %1, 32
  %.sroa.15.0.extract.trunc = trunc nuw i64 %.sroa.15.0.extract.shift to i32 ; 6 uses
  %i.a = bitcast i64 %1 to <2 x i32>
  %.sroa.099.0.extract.trunc = trunc i64 %1 to i32 ; 6 uses
  %4 = bitcast i64 %1 to <2 x i32>
  %i.b = sitofp <2 x i32> %4 to <2 x float>
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.j = tail call i32 @rand() #26
  %i.k = tail call i32 @rand() #26
  %i.l = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.m = insertelement <2 x i32> %i.l, i32 %i.j, i64 1
  %i.n = srem <2 x i32> %i.m, %i.a                ; 4 uses
  %i.o = extractelement <2 x i32> %i.n, i64 1     ; 19 uses
  %i.p = extractelement <2 x i32> %i.n, i64 0     ; 19 uses
  %i.q = tail call i32 @rand() #26
  %i.r = sitofp i32 %i.q to float
  %i.s = fneg float %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float f0x30000000, float 1.000000e+00)
  %i.u = tail call noundef float @sqrtf(float noundef %i.t) #26
  %i.v = tail call i32 @rand() #26
  %i.w = sitofp i32 %i.v to float
  %i.x = fneg float %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float f0x30000000, float 1.000000e+00)
  %i.z = tail call noundef float @sqrtf(float noundef %i.y) #26
  %i.aa = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.z, i64 1
  %i.ac = fsub <2 x float> splat (float 1.000000e+00), %i.ab
  %i.ad = fmul <2 x float> %i.ac, %i.b
  %i.ae = fptosi <2 x float> %i.ad to <2 x i32>   ; 4 uses
  %i.af = extractelement <2 x i32> %i.ae, i64 1   ; 26 uses
  %i.ag = extractelement <2 x i32> %i.ae, i64 0   ; 30 uses
  %i.ah = tail call i32 @rand() #26
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fmul nnan float %i.ai, f0x30000000      ; 6 uses
  %i.ak = fcmp olt float %i.aj, 2.000000e-01
  br i1 %i.ak, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.critedge
  %i.al = shl nsw i32 %i.af, 1                    ; 2 uses
  %i.am = add nsw i32 %i.al, %i.o
  %.not138 = icmp slt i32 %i.am, %.sroa.15.0.extract.trunc
  br i1 %.not138, label %bb.c, label %.critedge.backedge

bb.c:                                             ; preds = %bb.b
  %i.an = add nsw i32 %i.p, %i.ag
  %.not139 = icmp sge i32 %i.an, %.sroa.099.0.extract.trunc
  %i.ao = mul nsw i32 %i.al, %i.ag
  %i.ap = icmp slt i32 %i.ao, 9
  %or.cond = select i1 %.not139, i1 true, i1 %i.ap
  br i1 %or.cond, label %.critedge.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %0, align 8, !tbaa !198
  store i32 2, ptr %i.c, align 4, !tbaa !144
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !145 ; 2 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !131 ; 5 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 2
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = sub nuw nsw i64 2, %i.av
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ax)
  %.pre342 = load ptr, ptr %i.d, align 8, !tbaa !131
  %.pre343 = load i32, ptr %i.c, align 4, !tbaa !144
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.f:                                             ; preds = %bb.d
  %.not291 = icmp eq i64 %i.au, 8
  br i1 %.not291, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, %i.ay
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !145
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.az = phi i32 [ %.pre343, %bb.e ], [ 2, %bb.f ], [ 2, %bb.g ], [ 2, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.ba = phi ptr [ %.pre342, %bb.e ], [ %i.ar, %bb.f ], [ %i.ar, %bb.g ], [ %i.ar, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ]
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %i.ba, align 4, !tbaa !90
  %i.bb = sext i32 %i.az to i64                   ; 4 uses
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !146 ; 2 uses
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !135 ; 5 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 4                 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %i.bb
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.bj = sub nuw nsw i64 %i.bb, %i.bh
  tail call void @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bj)
  %.pre344 = load ptr, ptr %i.f, align 8, !tbaa !135
  %.pre345 = load i32, ptr %i.c, align 4, !tbaa !144
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.bk = icmp ugt i64 %i.bh, %i.bb
  br i1 %i.bk, label %bb.j, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bb ; 2 uses
  %.not.i.i151 = icmp eq ptr %i.bc, %i.bl
  br i1 %.not.i.i151, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.j
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !146
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bm = phi i32 [ %.pre345, %bb.h ], [ %i.az, %bb.i ], [ %i.az, %bb.j ], [ %i.az, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.bn = phi ptr [ %.pre344, %bb.h ], [ %i.bd, %bb.i ], [ %i.bd, %bb.j ], [ %i.bd, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 8 uses
  store i32 %i.p, ptr %i.bn, align 4, !tbaa !200
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.o, ptr %i.bo, align 4, !tbaa !201
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 %i.af, ptr %i.bp, align 4, !tbaa !202
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.ag, ptr %i.bq, align 4, !tbaa !203
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 %i.p, ptr %i.br, align 4, !tbaa !200
  %i.bs = add nsw i32 %i.o, %i.af
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !201
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  store i32 %i.af, ptr %i.bu, align 4, !tbaa !202
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 %i.ag, ptr %i.bv, align 4, !tbaa !203
  br label %bb.bl

bb.k:                                             ; preds = %.critedge
  %i.bw = fcmp olt float %i.aj, 4.000000e-01
  br i1 %i.bw, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bx = add nsw i32 %i.o, %i.af
  %.not136 = icmp slt i32 %i.bx, %.sroa.15.0.extract.trunc
  br i1 %.not136, label %bb.m, label %.critedge.backedge

bb.m:                                             ; preds = %bb.l
  %i.by = shl nsw i32 %i.ag, 1
  %i.bz = add nsw i32 %i.by, %i.p
  %.not137 = icmp sge i32 %i.bz, %.sroa.099.0.extract.trunc
  %i.ca = mul nsw i32 %i.af, %i.ag
  %i.cb = icmp slt i32 %i.ca, 5
  %or.cond142 = select i1 %.not137, i1 true, i1 %i.cb
  br i1 %or.cond142, label %.critedge.backedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 2, ptr %0, align 8, !tbaa !198
  store i32 2, ptr %i.c, align 4, !tbaa !144
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !145 ; 2 uses
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !131 ; 5 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = ashr exact i64 %i.cg, 2                 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 2
  br i1 %i.ci, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cj = sub nuw nsw i64 2, %i.ch
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.cj)
  %.pre338 = load ptr, ptr %i.d, align 8, !tbaa !131
  %.pre339 = load i32, ptr %i.c, align 4, !tbaa !144
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit154

bb.p:                                             ; preds = %bb.n
  %.not290 = icmp eq i64 %i.cg, 8
  br i1 %.not290, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit154, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %.not.i.i152 = icmp eq ptr %i.cc, %i.ck
  br i1 %.not.i.i152, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit154, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i153

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i153:     ; preds = %bb.q
  store ptr %i.ck, ptr %i.e, align 8, !tbaa !145
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit154

_ZNSt6vectorIfSaIfEE6resizeEm.exit154:            ; preds = %bb.o, %bb.p, %bb.q, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i153
  %i.cl = phi i32 [ %.pre339, %bb.o ], [ 2, %bb.p ], [ 2, %bb.q ], [ 2, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i153 ] ; 4 uses
  %i.cm = phi ptr [ %.pre338, %bb.o ], [ %i.cd, %bb.p ], [ %i.cd, %bb.q ], [ %i.cd, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i153 ]
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %i.cm, align 4, !tbaa !90
  %i.cn = sext i32 %i.cl to i64                   ; 4 uses
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !146 ; 2 uses
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !135 ; 5 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
end_hunk_0
