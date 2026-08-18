inline.NumInlined: 1295
inline.NumDeleted: 547
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv17tracking_internal23getMedianAndDoPartitionIdEET_RSt6vectorIS2_SaIS2_EE:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !178    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = and i64 %i.f, 8
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp eq ptr %i.c, %i.b                   ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = lshr exact i64 %i.g, 1                   ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.n
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = xor i64 %i.p, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %i.c, ptr nonnull %i.m, ptr %i.b, i64 noundef %i.q)
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !178
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !192
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit: ; preds = %bb.b, %bb.c
  %i.r = phi ptr [ %i.b, %bb.b ], [ %.pre39, %bb.c ] ; 4 uses
  %i.s = phi ptr [ %i.c, %bb.b ], [ %.pre38, %bb.c ] ; 5 uses
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.k ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load double, ptr %i.u, align 8, !tbaa !10
  %i.w = icmp eq ptr %i.s, %i.r
  %i.x = icmp eq ptr %i.t, %i.r
  %or.cond.i31 = or i1 %i.w, %i.x
  br i1 %or.cond.i31, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit32, label %bb.d

bb.d:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %i.y = ptrtoint ptr %i.r to i64
  %i.z = ptrtoint ptr %i.s to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = xor i64 %i.ad, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr nonnull %i.s, ptr nonnull %i.t, ptr %i.r, i64 noundef %i.ae)
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !178
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit32

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit32: ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit, %bb.d
  %i.af = phi ptr [ %i.s, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit ], [ %.pre40, %bb.d ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.k
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !10
  %i.ai = fadd double %i.v, %i.ah
  %i.aj = fmul double %i.ai, 5.000000e-01
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ak = add nsw i64 %i.g, -1
  %i.al = lshr exact i64 %i.ak, 1                 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.al ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.b
  %or.cond.i33 = select i1 %i.j, i1 true, i1 %i.an
  br i1 %or.cond.i33, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = xor i64 %i.ap, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %i.c, ptr %i.am, ptr %i.b, i64 noundef %i.aq)
  %.pre = load ptr, ptr %0, align 8, !tbaa !178
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit34

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit34: ; preds = %bb.e, %bb.f
  %i.ar = phi ptr [ %i.c, %bb.e ], [ %.pre, %bb.f ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.al
  %i.at = load double, ptr %i.as, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit34, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit32
  %.0 = phi double [ %i.aj, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit32 ], [ %i.at, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit34 ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZN2cv17tracking_internal9getMedianIfEET_RKSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.43", align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !105    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread4, label %bb.b

.thread4:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds i8, ptr null, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !108
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.j, label %.noexc.i.i, label %bb.c, !prof !51

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 5 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !108
  %i.o = icmp samesign ugt i64 %i.f, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !193

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.k, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.f, 4
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load float, ptr %i.c, align 4, !tbaa !109
  store float %i.q, ptr %i.k, align 4, !tbaa !109
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %.thread4, %bb.d, %bb.e, %bb.f
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.i, %.thread4 ] ; 2 uses
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.h, %.thread4 ]
  %i.t = phi ptr [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.g, %.thread4 ]
  store ptr %i.s, ptr %i.t, align 8, !tbaa !111
  %i.u = invoke noundef float @_ZN2cv17tracking_internal23getMedianAndDoPartitionIfEET_RSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.v = load ptr, ptr %1, align 8, !tbaa !105    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !108
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret float %i.u

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !105   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIfSaIfEED2Ev.exit3, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !108
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit3

_ZNSt6vectorIfSaIfEED2Ev.exit3:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv8tracking4implL8getPatchENS_3MatENS_5Size_IiEENS_6Point_IfEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 %1, i64 %2, <2 x float> %3) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Rect_.75", align 4      ; 7 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %.sroa.522.0.extract.shift = lshr i64 %2, 32
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #25
  %i.a = fpext <2 x float> %3 to <2 x double>
  %.sroa.522.0.extract.trunc = trunc nuw i64 %.sroa.522.0.extract.shift to i32 ; 4 uses
  %i.b = bitcast i64 %2 to <2 x i32>
  %.sroa.019.0.extract.trunc = trunc i64 %2 to i32 ; 5 uses
  %i.c = sitofp <2 x i32> %i.b to <2 x double>
  %i.d = fmul nnan <2 x double> %i.c, splat (double 5.000000e-01) ; 3 uses
  %i.e = fsub <2 x double> %i.a, %i.d             ; 2 uses
  %i.f = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.e) ; 6 uses
  %i.g = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.h = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.g) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i32 %i.f, ptr %4, align 4, !tbaa !194
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !196
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !197  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !198  ; 3 uses
  %i.o = icmp slt i32 %.sroa.019.0.extract.trunc, 1
  %i.p = icmp slt i32 %.sroa.522.0.extract.trunc, 1
  %i.q = select i1 %i.o, i1 true, i1 %i.p
  br i1 %i.q, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp slt i32 %i.l, 1
  %i.s = icmp slt i32 %i.n, 1
  %i.t = select i1 %i.r, i1 true, i1 %i.s
  br i1 %i.t, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp slt i32 %i.f, 0                     ; 3 uses
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.f, i32 0) ; 2 uses
  %i.w = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 3 uses
  %i.x = add nsw i32 %i.v, %.sroa.019.0.extract.trunc
  %i.y = icmp slt i32 %i.x, %i.w
  %or.cond28 = select i1 %i.u, i1 %i.y, i1 false
  br i1 %or.cond28, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp slt i32 %i.h, 0
  br i1 %i.z, label %.cont52.i, label %.cont35.i

.cont52.i:                                        ; preds = %bb.d
  %i.aa = add nsw i32 %i.h, %.sroa.522.0.extract.trunc ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %.cont35.i

.cont35.i:                                        ; preds = %bb.d, %.cont52.i
  %i.ac = phi i32 [ %i.n, %.cont52.i ], [ %.sroa.522.0.extract.trunc, %bb.d ]
  %.neg49.pre-phi.i.i = phi i32 [ %i.aa, %.cont52.i ], [ %i.n, %bb.d ]
  %i.ad = phi i32 [ 0, %.cont52.i ], [ %i.h, %bb.d ] ; 2 uses
  %.v.v.i = select i1 %i.u, i32 %.sroa.019.0.extract.trunc, i32 %i.l
  %.v.i = sub i32 %i.v, %i.w
  %i.ae = add i32 %.v.i, %.v.v.i
  %i.af = select i1 %i.u, i32 %i.l, i32 %.sroa.019.0.extract.trunc
  %.sroa.speculated53.i.i = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ae) ; 2 uses
  %i.ag = sub nsw i32 %.neg49.pre-phi.i.i, %i.ad
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ag) ; 2 uses
  %i.ah = icmp slt i32 %.sroa.speculated53.i.i, 1
  %i.ai = icmp slt i32 %.sroa.speculated.i.i, 1
  %i.aj = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.cont35.i
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %.cont35.i, %.cont52.i, %bb.b, %bb.a
  %.sroa.0.sroa.0.0.i = phi i32 [ %i.w, %.cont35.i ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.cont52.i ], [ 0, %bb.c ]
  %.sroa.0.sroa.9.0.i = phi i32 [ %i.ad, %.cont35.i ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.cont52.i ], [ 0, %bb.c ]
  %.sroa.14.sroa.0.0.i = phi i32 [ %.sroa.speculated53.i.i, %.cont35.i ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.cont52.i ], [ 0, %bb.c ]
  %.sroa.14.sroa.12.0.i = phi i32 [ %.sroa.speculated.i.i, %.cont35.i ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.cont52.i ], [ 0, %bb.c ]
  %i.ak = icmp eq i32 %i.f, %.sroa.0.sroa.0.0.i
  %i.al = icmp eq i32 %i.h, %.sroa.0.sroa.9.0.i
  %or.cond = and i1 %i.ak, %i.al
  %i.am = icmp eq i32 %.sroa.14.sroa.0.0.i, %.sroa.019.0.extract.trunc
  %or.cond25 = and i1 %or.cond, %i.am
  %i.an = icmp eq i32 %.sroa.14.sroa.12.0.i, %.sroa.522.0.extract.trunc
  %or.cond26 = select i1 %or.cond25, i1 %i.an, i1 false
  br i1 %or.cond26, label %bb.g, label %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %4)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.i

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.g
  %i.ao = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn10 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.o

_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread:     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.ar, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.as, align 4, !tbaa !65
  store i32 16842752, ptr %6, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.at, align 8, !tbaa !56
  %8 = sitofp i32 %i.f to double
  %9 = extractelement <2 x double> %i.d, i64 0
  %10 = fadd double %9, %8
  %11 = fptrunc double %10 to float
  %12 = sitofp i32 %i.h to double
  %13 = extractelement <2 x double> %i.d, i64 1
  %14 = fadd double %13, %12
  %15 = fptrunc double %14 to float
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %11, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %15, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.av, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !53
  store ptr %0, ptr %i.au, align 8, !tbaa !56
  invoke void @_ZN2cv13getRectSubPixERKNS_11_InputArrayENS_5Size_IiEENS_6Point_IfEERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %2, <2 x float> %.sroa.0.4.vec.insert, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.n

bb.m:                                             ; preds = %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.o:                                             ; preds = %bb.m, %bb.k
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %bb.k ], [ %i.aw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #25
  resume { ptr, i32 } %.pn10.pn
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

declare noundef double @_ZN2cv17tracking_internal10computeNCCERKNS_3MatES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv6legacy8tracking17TrackerMedianFlow6ParamsC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 10, ptr %0, align 8, !tbaa !199
  store i64 12884901891, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 5, ptr %i.d, align 4, !tbaa !200
  store i32 3, ptr %i.b, align 8, !tbaa !9
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 20, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 3.000000e-01, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !10
  store i64 128849018910, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double 1.000000e+01, ptr %i.e, align 8, !tbaa !201
  ret void
}

declare void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind writable sret(%"class.cv::FileNode") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !135
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #27
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.d, ptr %i.a, align 8, !tbaa !136
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !36
  %i.g = load i64, ptr %i.a, align 8, !tbaa !136
  store i64 %i.g, ptr %i.b, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !37
  store i8 %i.i, ptr %i.h, align 1, !tbaa !37
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !137
  %i.l = load ptr, ptr %2, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.n = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.b, align 8, !tbaa !37
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr %i.n

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.g
  %i.v = load i64, ptr %i.b, align 8, !tbaa !37
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsINS_5Size_IiEEEERNS_11FileStorageES4_RKT_(ptr noundef nonnull returned align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::internal::WriteStructContext", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = icmp eq i32 %i.f, 6
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.23, i32 noundef 1173) #27
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.m = load i64, ptr %i.k, align 8, !tbaa !37
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.i, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.g ]
end_hunk_0
