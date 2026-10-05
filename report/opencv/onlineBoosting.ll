Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/onlineBoosting?download=true
inline.NumInlined: 580
inline.NumDeleted: 242
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelectionD2Ev:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67   ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(712) %i.x) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIfSaIfEED2Ev.exit7, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !68
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit7

_ZNSt6vectorIfSaIfEED2Ev.exit7:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15 ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i8, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit7
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ay
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.aw) #23
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit7, %bb.k
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !43  ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIfSaIfEED2Ev.exit10, label %bb.l

bb.l:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !68
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit10

_ZNSt6vectorIfSaIfEED2Ev.exit10:                  ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.l
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelectionD0Ev(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelectionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZNK2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection12getPatchSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !40
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i64, i64 } @_ZNK2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection6getROIEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !40
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !40
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection14classifySmoothERKSt6vectorINS_3MatESaIS5_EERKNS_5Rect_IiEERi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((168, 184)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !44
  store i32 0, ptr %3, align 4, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  tail call void @_ZN2cv6detail8tracking15online_boosting8Detector14classifySmoothERKSt6vectorINS_3MatESaIS5_EEf(ptr noundef nonnull align 8 dereferenceable(712) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, float noundef 0.000000e+00)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !67   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !66
  store i32 %i.i, ptr %3, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.k = load float, ptr %i.j, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.k, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail8tracking15online_boosting8Detector14classifySmoothERKSt6vectorINS_3MatESaIS5_EEf(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, float noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.e = load ptr, ptr %1, align 8, !tbaa !131
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 208                 ; 6 uses
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !63
  %.not.i = icmp slt i32 %i.l, %i.j
  br i1 %.not.i, label %bb.b, label %_ZN2cv6detail8tracking15online_boosting8Detector24prepareConfidencesMemoryEi.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.j, ptr %i.k, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %sext = shl i64 %i.i, 32
  %i.n = ashr exact i64 %sext, 32                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2                   ; 3 uses
  %i.v = icmp ult i64 %i.u, %i.n
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = sub nuw nsw i64 %i.n, %i.u
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.w)
  br label %_ZN2cv6detail8tracking15online_boosting8Detector24prepareConfidencesMemoryEi.exit

bb.d:                                             ; preds = %bb.b
  %i.x = icmp ugt i64 %i.u, %i.n
  br i1 %i.x, label %bb.e, label %_ZN2cv6detail8tracking15online_boosting8Detector24prepareConfidencesMemoryEi.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.y
  br i1 %.not.i.i.i, label %_ZN2cv6detail8tracking15online_boosting8Detector24prepareConfidencesMemoryEi.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  store ptr %i.y, ptr %i.o, align 8, !tbaa !42
  br label %_ZN2cv6detail8tracking15online_boosting8Detector24prepareConfidencesMemoryEi.exit

_ZN2cv6detail8tracking15online_boosting8Detector24prepareConfidencesMemoryEi.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  store i32 0, ptr %i.z, align 4, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  store i32 -1, ptr %i.aa, align 4, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store float f0xFF7FFFFF, ptr %i.ab, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %.sroa.2.0.copyload.i270 = load <2 x i32>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40
  %6 = bitcast i64 %.sroa.0.0.copyload.i to <2 x i32>
  %i.af = bitcast i64 %.sroa.0.0.copyload.i to <2 x i32>
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float 9.999990e-03), <2 x float> splat (float 5.000000e-01))
  %i.ai = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ah)
  %i.aj = fptosi <2 x float> %i.ai to <2 x i32>
  %i.ak = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.aj, <2 x i32> splat (i32 1))
  %i.al = sub nsw <2 x i32> %.sroa.2.0.copyload.i270, %6
  %i.am = sitofp <2 x i32> %i.al to <2 x float>
  %i.an = uitofp nneg <2 x i32> %i.ak to <2 x float>
  %i.ao = fdiv <2 x float> %i.am, %i.an           ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 1
  %i.aq = fptosi float %i.ap to i32               ; 4 uses
  %i.ar = add i32 %i.aq, 1                        ; 9 uses
  %i.as = extractelement <2 x float> %i.ao, i64 0
  %i.at = fptosi float %i.as to i32               ; 5 uses
  %i.au = add i32 %i.at, 1                        ; 10 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !77
  %.not = icmp eq i32 %i.au, %i.ax
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2cv6detail8tracking15online_boosting8Detector24prepareConfidencesMemoryEi.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !132
  %.not68 = icmp eq i32 %i.ar, %i.az
  br i1 %.not68, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2cv6detail8tracking15online_boosting8Detector24prepareConfidencesMemoryEi.exit
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.av, i32 noundef %i.ar, i32 noundef %i.au, i32 noundef 5)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.ba, i32 noundef %i.ar, i32 noundef %i.au, i32 noundef 5)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.bb, i32 noundef %i.ar, i32 noundef %i.au, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not87109 = icmp slt i32 %i.aq, 0              ; 2 uses
  br i1 %.not87109, label %._crit_edge112.split, label %.preheader95.lr.ph

.preheader95.lr.ph:                               ; preds = %bb.h
  %.not9099 = icmp slt i32 %i.at, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  br i1 %.not9099, label %._crit_edge112.split, label %.preheader95.lr.ph.split

.preheader95.lr.ph.split:                         ; preds = %.preheader95.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 3 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !131
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !34 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  %wide.trip.count37.i = zext nneg i32 %i.bj to i64 ; 4 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !43 ; 9 uses
  %i.bm = load i32, ptr %i.be, align 4, !tbaa !78
  %.fr142 = freeze i32 %i.bm
  %i.bn = icmp slt i32 %.fr142, 2                 ; 2 uses
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !79 ; 9 uses
  br i1 %i.bk, label %.preheader95.lr.ph.split.split.us, label %.preheader95.lr.ph.split.split

.preheader95.lr.ph.split.split.us:                ; preds = %.preheader95.lr.ph.split
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !70 ; 4 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !43 ; 4 uses
  %wide.trip.count190 = zext i32 %i.ar to i64
  %wide.trip.count185 = zext i32 %i.au to i64
  br label %.preheader95.us

.preheader95.us:                                  ; preds = %._crit_edge.split.us.us, %.preheader95.lr.ph.split.split.us
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %._crit_edge.split.us.us ], [ 0, %.preheader95.lr.ph.split.split.us ] ; 2 uses
  %.066110.us = phi i64 [ %indvars.iv.next181, %._crit_edge.split.us.us ], [ 0, %.preheader95.lr.ph.split.split.us ]
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us, %.preheader95.us
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us ], [ %.066110.us, %.preheader95.us ] ; 3 uses
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us ], [ 0, %.preheader95.us ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [208 x i8], ptr %i.bh, i64 %indvars.iv180 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !78
  %i.bw = icmp slt i32 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.by = load i32, ptr %i.bx, align 4            ; 4 uses
  %i.bz = icmp eq i32 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8            ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  br i1 %i.bw, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us.i.us.us, label %.lr.ph.split.i.us.us

.lr.ph.split.i.us.us:                             ; preds = %.lr.ph.i.us.us
  %i.ce = load i32, ptr %i.bt, align 8
  %i.cf = and i32 %i.ce, 16384
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = icmp eq i32 %i.ci, 1
  %or.cond.i.i.i.us.us = select i1 %i.cg, i1 true, i1 %i.cj
  br i1 %or.cond.i.i.i.us.us, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us, label %.lr.ph.split.split.i.us.us

.lr.ph.split.split.i.us.us:                       ; preds = %.lr.ph.split.i.us.us
  br i1 %i.bz, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us

_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us: ; preds = %.lr.ph.split.split.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us ], [ 0, %.lr.ph.split.split.i.us.us ] ; 3 uses
  %.078.i.us.us = phi float [ %i.do, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us ], [ 0.000000e+00, %.lr.ph.split.split.i.us.us ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i.us.us
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !72 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !75
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !80 ; 3 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !82
  %i.ct = sdiv i32 %i.cp, %i.by                   ; 2 uses
  %i.cu = mul nsw i32 %i.ct, %i.by                ; 0 uses
  %.recomposed = srem i32 %i.cp, %i.by
  %i.cv = sext i32 %i.ct to i64
  %i.cw = mul i64 %i.cd, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cw
  %i.cy = sext i32 %.recomposed to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !39
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !85 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 28
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !88
  %i.df = sitofp i32 %i.de to float
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !89
  %i.di = fsub float %i.da, %i.dh
  %i.dj = fmul float %i.di, %i.df
  %i.dk = fcmp ogt float %i.dj, 0.000000e+00
  %i.dl = select i1 %i.dk, float 1.000000e+00, float -1.000000e+00
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.i.us.us
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !39
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.dn, float %.078.i.us.us) ; 2 uses
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count37.i
  br i1 %exitcond.not.i.us.us, label %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us, !llvm.loop !0

_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us: ; preds = %.lr.ph.split.split.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us
  %indvars.iv29.i.us.us = phi i64 [ %indvars.iv.next30.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us ], [ 0, %.lr.ph.split.split.i.us.us ] ; 3 uses
  %.078.us17.i.us.us = phi float [ %i.eo, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us ], [ 0.000000e+00, %.lr.ph.split.split.i.us.us ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv29.i.us.us
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !72 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !75
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !80
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !82
  %i.dy = mul i64 %i.cd, %i.dv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !85 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 28
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !88
  %i.ef = sitofp i32 %i.ee to float
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !89
  %i.ei = fsub float %i.ea, %i.eh
  %i.ej = fmul float %i.ei, %i.ef
  %i.ek = fcmp ogt float %i.ej, 0.000000e+00
  %i.el = select i1 %i.ek, float 1.000000e+00, float -1.000000e+00
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv29.i.us.us
  %i.en = load float, ptr %i.em, align 4, !tbaa !39
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.el, float %i.en, float %.078.us17.i.us.us) ; 2 uses
  %indvars.iv.next30.i.us.us = add nuw nsw i64 %indvars.iv29.i.us.us, 1 ; 2 uses
  %exitcond33.not.i.us.us = icmp eq i64 %indvars.iv.next30.i.us.us, %wide.trip.count37.i
  br i1 %exitcond33.not.i.us.us, label %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us, !llvm.loop !0

_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us: ; preds = %.lr.ph.split.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us
  %indvars.iv34.i.us.us = phi i64 [ %indvars.iv.next35.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us ], [ 0, %.lr.ph.split.i.us.us ] ; 3 uses
  %.078.us11.i.us.us = phi float [ %i.fn, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us ], [ 0.000000e+00, %.lr.ph.split.i.us.us ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv34.i.us.us
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !72 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !75
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !80
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !82
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ev
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !39
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !85 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 28
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !88
  %i.fe = sitofp i32 %i.fd to float
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !89
  %i.fh = fsub float %i.ez, %i.fg
  %i.fi = fmul float %i.fh, %i.fe
  %i.fj = fcmp ogt float %i.fi, 0.000000e+00
  %i.fk = select i1 %i.fj, float 1.000000e+00, float -1.000000e+00
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv34.i.us.us
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !39
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fm, float %.078.us11.i.us.us) ; 2 uses
  %indvars.iv.next35.i.us.us = add nuw nsw i64 %indvars.iv34.i.us.us, 1 ; 2 uses
  %exitcond38.not.i.us.us = icmp eq i64 %indvars.iv.next35.i.us.us, %wide.trip.count37.i
  br i1 %exitcond38.not.i.us.us, label %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us, !llvm.loop !0

_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us.i.us.us: ; preds = %.lr.ph.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us.i.us.us
  %indvars.iv39.i.us.us = phi i64 [ %indvars.iv.next40.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us.i.us.us ], [ 0, %.lr.ph.i.us.us ] ; 3 uses
  %.078.us.i.us.us = phi float [ %i.gm, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us.i.us.us ], [ 0.000000e+00, %.lr.ph.i.us.us ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv39.i.us.us
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !72 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv6detail8tracking15online_boosting14BaseClassifier20selectBestClassifierERSt6vectorIbSaIbEEfRS4_IfSaIfEE:bb.a
  %.not = icmp eq i64 %i.v, 0
  %. = select i1 %.not, ptr %i.m, ptr %i.k
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %., i64 %indvars.iv ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !39
  %i.y = fadd float %2, %i.x
  store float %i.y, ptr %i.w, align 4, !tbaa !39
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !39
  %i.ab = fcmp oeq float %i.aa, f0x7F7FFFFF
  br i1 %i.ab, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !39 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.af = load float, ptr %i.ae, align 4, !tbaa !39
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = fdiv float %i.ad, %i.ag                 ; 3 uses
  store float %i.ah, ptr %i.z, align 4, !tbaa !39
  %i.ai = icmp slt i64 %indvars.iv, %i.o
  %i.aj = fcmp olt float %i.ah, %.02426
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.125 = phi float [ %.02426, %bb.b ], [ %i.ah, %bb.d ], [ %.02426, %bb.c ]
  %.1 = phi i32 [ %.02327, %bb.b ], [ %i.p, %bb.d ], [ %.02327, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 2147483647) i32 @_ZN2cv6detail8tracking15online_boosting14BaseClassifier31computeReplaceWeakestClassifierERKSt6vectorIfSaIfEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(84) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !101  ; 6 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %i.e = zext nneg i32 %i.b to i64                ; 4 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 2147483646
  br label %bb.b

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.02033.epil.init = phi i32 [ -1, %.lr.ph ], [ %.121.1, %._crit_edge.unr-lcssa ]
  %.02232.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %.123.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod45 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil.init, -1 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.epil
  %i.h = load float, ptr %i.g, align 4, !tbaa !39 ; 2 uses
  %i.i = fcmp ogt float %i.h, %.02232.epil.init   ; 2 uses
  %.123.epil = select i1 %i.i, float %i.h, float %.02232.epil.init
  %i.j = trunc nuw nsw i64 %indvars.iv.next.epil to i32
  %.121.epil = select i1 %i.i, i32 %i.j, i32 %.02033.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.123.lcssa = phi float [ %.123.1, %._crit_edge.unr-lcssa ], [ %.123.epil, %.epil.preheader ]
  %.121.lcssa = phi i32 [ %.121.1, %._crit_edge.unr-lcssa ], [ %.121.epil, %.epil.preheader ] ; 3 uses
  %i.k = icmp sgt i32 %.121.lcssa, -1
  br i1 %i.k, label %bb.g, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.e, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 2 uses
  %.02033 = phi i32 [ -1, %.lr.ph.new ], [ %.121.1, %bb.b ]
  %.02232 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %.123.1, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.m = load float, ptr %i.l, align 4, !tbaa !39 ; 2 uses
  %i.n = fcmp ogt float %i.m, %.02232             ; 2 uses
  %.123 = select i1 %i.n, float %i.m, float %.02232 ; 2 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next to i32
  %.121 = select i1 %i.n, i32 %i.o, i32 %.02033
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.q = load float, ptr %i.p, align 4, !tbaa !39 ; 2 uses
  %i.r = fcmp ogt float %i.q, %.123               ; 2 uses
  %.123.1 = select i1 %i.r, float %i.q, float %.123 ; 3 uses
  %i.s = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %.121.1 = select i1 %i.r, i32 %i.s, i32 %.121   ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !145

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv6detail8tracking15online_boosting14BaseClassifier31computeReplaceWeakestClassifierERKSt6vectorIfSaIfEE, ptr noundef nonnull @.str.1, i32 noundef 403) #24
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %._crit_edge.thread
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !111    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.w, align 8, !tbaa !93
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.n

bb.g:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !80
  %.not = icmp eq i32 %.121.lcssa, %i.ab
  br i1 %.not, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv6detail8tracking15online_boosting14BaseClassifier31computeReplaceWeakestClassifierERKSt6vectorIfSaIfEE, ptr noundef nonnull @.str.1, i32 noundef 404) #24
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.l
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !93
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.ad, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !103
  %i.al = add nsw i32 %i.ak, 1                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = load i32, ptr %i.am, align 8, !tbaa !102
  %i.ao = add nsw i32 %i.an, %i.b
  %i.ap = icmp eq i32 %i.al, %i.ao
  %spec.store.select = select i1 %i.ap, i32 %i.b, i32 %i.al ; 2 uses
  store i32 %spec.store.select, ptr %i.aj, align 4, !tbaa !103
  %i.aq = sext i32 %spec.store.select to i64
  %i.ar = load ptr, ptr %1, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load float, ptr %i.as, align 4, !tbaa !39
  %i.au = fcmp ogt float %.123.lcssa, %i.at
  %.024 = select i1 %i.au, i32 %.121.lcssa, i32 -1
  ret i32 %.024

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection21replaceWeakClassifierEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !41, !range !97, !noundef !98
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp sgt i32 %1, -1
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  tail call void @_ZN2cv6detail8tracking15online_boosting14BaseClassifier21replaceWeakClassifierEi(ptr noundef nonnull align 8 dereferenceable(84) %i.g, i32 noundef %1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !103
  tail call void @_ZN2cv6detail8tracking15online_boosting14BaseClassifier26replaceClassifierStatisticEii(ptr noundef nonnull align 8 dereferenceable(84) %i.m, i32 noundef %i.p, i32 noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.h, align 8, !tbaa !34
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.loopexit, !llvm.loop !146

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail8tracking15online_boosting14BaseClassifier21replaceWeakClassifierEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(84) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #21
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !103
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.c
  store ptr %i.o, ptr %i.p, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.c
  store float %i.t, ptr %i.u, align 4, !tbaa !39
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43   ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.m ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !39
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.c
  store float %i.y, ptr %i.z, align 4, !tbaa !39
  store float 1.000000e+00, ptr %i.x, align 4, !tbaa !39
  %i.aa = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv6detail8tracking15online_boosting25WeakClassifierHaarFeatureE, i64 16), ptr %i.aa, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ab, align 8, !tbaa !39
  %i.ac = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %.noexc unwind label %bb.e     ; 5 uses

.noexc:                                           ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv6detail8tracking15online_boosting26EstimatedGaussDistributionE, i64 16), ptr %i.ac, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+03, float 1.000000e+03>, ptr %i.ad, align 8, !tbaa !39
  store <2 x float> splat (float f0x3C23D70A), ptr %i.ae, align 8, !tbaa !39
  %i.af = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %.noexc6 unwind label %bb.e    ; 5 uses

.noexc6:                                          ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv6detail8tracking15online_boosting26EstimatedGaussDistributionE, i64 16), ptr %i.af, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+03, float 1.000000e+03>, ptr %i.ag, align 8, !tbaa !39
  store <2 x float> splat (float f0x3C23D70A), ptr %i.ah, align 8, !tbaa !39
  %i.ai = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %bb.d unwind label %bb.e       ; 6 uses

bb.d:                                             ; preds = %.noexc6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv6detail8tracking15online_boosting19ClassifierThresholdE, i64 16), ptr %i.ai, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ac, ptr %i.am, align 8, !tbaa !104
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.af, ptr %i.an, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store float 0.000000e+00, ptr %i.ao, align 8, !tbaa !89
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 0, ptr %i.ap, align 4, !tbaa !88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ai, ptr %i.aq, align 8, !tbaa !85
  %i.ar = load float, ptr %i.al, align 4, !tbaa !112 ; 2 uses
  %i.as = load float, ptr %i.ab, align 8, !tbaa !113 ; 2 uses
  store float %i.ar, ptr %i.ag, align 8, !tbaa !106
  store float %i.as, ptr %i.aj, align 4, !tbaa !107
  store float %i.ar, ptr %i.ad, align 8, !tbaa !106
  store float %i.as, ptr %i.ak, align 4, !tbaa !107
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.au = load i32, ptr %i.k, align 4, !tbaa !103
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.av
  store ptr %i.aa, ptr %i.aw, align 8, !tbaa !82
  ret void

bb.e:                                             ; preds = %.noexc6, %.noexc, %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 24) #23
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail8tracking15online_boosting14BaseClassifier26replaceClassifierStatisticEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(84) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv6detail8tracking15online_boosting14BaseClassifier26replaceClassifierStatisticEii, ptr noundef nonnull @.str.1, i32 noundef 422) #24
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !111    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !93
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
end_hunk_1
