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
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
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
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 3 uses
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
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !42  ; 3 uses
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
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i64, i64 } @_ZNK2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection6getROIEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection14classifySmoothERKSt6vectorINS_3MatESaIS5_EERKNS_5Rect_IiEERi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((168, 184)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !44
  store i32 0, ptr %3, align 4, !tbaa !43
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
  store i32 %i.i, ptr %3, align 4, !tbaa !43
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41   ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
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
  store ptr %i.y, ptr %i.o, align 8, !tbaa !41
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
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.4.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32
  %i.af = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %i.ag = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %i.ah = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ai = insertelement <2 x i32> %i.ag, i32 %i.ah, i64 1 ; 2 uses
  %i.aj = sitofp <2 x i32> %i.ai to <2 x float>
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> splat (float 9.999990e-03), <2 x float> splat (float 5.000000e-01))
  %i.al = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ak)
  %i.am = fptosi <2 x float> %i.al to <2 x i32>
  %i.an = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.am, <2 x i32> splat (i32 1))
  %i.ao = trunc nuw i64 %.sroa.4.12.extract.shift to i32
  %i.ap = insertelement <2 x i32> poison, i32 %i.ao, i64 0
  %i.aq = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.ar = insertelement <2 x i32> %i.ap, i32 %i.aq, i64 1
  %i.as = sub nsw <2 x i32> %i.ar, %i.ai
  %i.at = sitofp <2 x i32> %i.as to <2 x float>
  %i.au = uitofp nneg <2 x i32> %i.an to <2 x float>
  %i.av = fdiv <2 x float> %i.at, %i.au           ; 2 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  %i.ax = fptosi float %i.aw to i32               ; 4 uses
  %i.ay = add i32 %i.ax, 1                        ; 9 uses
  %i.az = extractelement <2 x float> %i.av, i64 1
  %i.ba = fptosi float %i.az to i32               ; 5 uses
  %i.bb = add i32 %i.ba, 1                        ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !77
  %.not = icmp eq i32 %i.bb, %i.be
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2cv6detail8tracking15online_boosting8Detector24prepareConfidencesMemoryEi.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !132
  %.not68 = icmp eq i32 %i.ay, %i.bg
  br i1 %.not68, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2cv6detail8tracking15online_boosting8Detector24prepareConfidencesMemoryEi.exit
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.bc, i32 noundef %i.ay, i32 noundef %i.bb, i32 noundef 5)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.bh, i32 noundef %i.ay, i32 noundef %i.bb, i32 noundef 5)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.bi, i32 noundef %i.ay, i32 noundef %i.bb, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not87109 = icmp slt i32 %i.ax, 0              ; 2 uses
  br i1 %.not87109, label %._crit_edge112.split, label %.preheader95.lr.ph

.preheader95.lr.ph:                               ; preds = %bb.h
  %.not9099 = icmp slt i32 %i.ba, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  br i1 %.not9099, label %._crit_edge112.split, label %.preheader95.lr.ph.split

.preheader95.lr.ph.split:                         ; preds = %.preheader95.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 3 uses
  %i.bo = load ptr, ptr %1, align 8, !tbaa !131
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  %wide.trip.count37.i = zext nneg i32 %i.bq to i64 ; 4 uses
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !42 ; 9 uses
  %i.bt = load i32, ptr %i.bl, align 4, !tbaa !78
  %.fr142 = freeze i32 %i.bt
  %i.bu = icmp slt i32 %.fr142, 2                 ; 2 uses
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !79 ; 9 uses
  br i1 %i.br, label %.preheader95.lr.ph.split.split.us, label %.preheader95.lr.ph.split.split

.preheader95.lr.ph.split.split.us:                ; preds = %.preheader95.lr.ph.split
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !70 ; 4 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !42 ; 4 uses
  %wide.trip.count190 = zext i32 %i.ay to i64
  %wide.trip.count185 = zext i32 %i.bb to i64
  br label %.preheader95.us

.preheader95.us:                                  ; preds = %._crit_edge.split.us.us, %.preheader95.lr.ph.split.split.us
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %._crit_edge.split.us.us ], [ 0, %.preheader95.lr.ph.split.split.us ] ; 2 uses
  %.066110.us = phi i64 [ %indvars.iv.next181, %._crit_edge.split.us.us ], [ 0, %.preheader95.lr.ph.split.split.us ]
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us, %.preheader95.us
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us ], [ %.066110.us, %.preheader95.us ] ; 3 uses
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us ], [ 0, %.preheader95.us ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [208 x i8], ptr %i.bo, i64 %indvars.iv180 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !78
  %i.cd = icmp slt i32 %i.cc, 2
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cf = load i32, ptr %i.ce, align 4            ; 4 uses
  %i.cg = icmp eq i32 %i.cf, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 128
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  br i1 %i.cd, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us.i.us.us, label %.lr.ph.split.i.us.us

.lr.ph.split.i.us.us:                             ; preds = %.lr.ph.i.us.us
  %i.cl = load i32, ptr %i.ca, align 8
  %i.cm = and i32 %i.cl, 16384
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = icmp eq i32 %i.cp, 1
  %or.cond.i.i.i.us.us = select i1 %i.cn, i1 true, i1 %i.cq
  br i1 %or.cond.i.i.i.us.us, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us, label %.lr.ph.split.split.i.us.us

.lr.ph.split.split.i.us.us:                       ; preds = %.lr.ph.split.i.us.us
  br i1 %i.cg, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us

_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us: ; preds = %.lr.ph.split.split.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us ], [ 0, %.lr.ph.split.split.i.us.us ] ; 3 uses
  %.078.i.us.us = phi float [ %i.dv, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us ], [ 0.000000e+00, %.lr.ph.split.split.i.us.us ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i.us.us
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !72 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !75
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !80 ; 3 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !82
  %i.da = sdiv i32 %i.cw, %i.cf                   ; 2 uses
  %i.db = mul nsw i32 %i.da, %i.cf                ; 0 uses
  %.recomposed = srem i32 %i.cw, %i.cf
  %i.dc = sext i32 %i.da to i64
  %i.dd = mul i64 %i.ck, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dd
  %i.df = sext i32 %.recomposed to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !39
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !85 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !88
  %i.dm = sitofp i32 %i.dl to float
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.do = load float, ptr %i.dn, align 8, !tbaa !89
  %i.dp = fsub float %i.dh, %i.do
  %i.dq = fmul float %i.dp, %i.dm
  %i.dr = fcmp ogt float %i.dq, 0.000000e+00
  %i.ds = select i1 %i.dr, float 1.000000e+00, float -1.000000e+00
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i.us.us
  %i.du = load float, ptr %i.dt, align 4, !tbaa !39
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.du, float %.078.i.us.us) ; 2 uses
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count37.i
  br i1 %exitcond.not.i.us.us, label %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.i.us.us, !llvm.loop !0

_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us: ; preds = %.lr.ph.split.split.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us
  %indvars.iv29.i.us.us = phi i64 [ %indvars.iv.next30.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us ], [ 0, %.lr.ph.split.split.i.us.us ] ; 3 uses
  %.078.us17.i.us.us = phi float [ %i.ev, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us ], [ 0.000000e+00, %.lr.ph.split.split.i.us.us ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv29.i.us.us
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !72 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !75
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !80
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !82
  %i.ef = mul i64 %i.ck, %i.ec
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !39
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !85 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !88
  %i.em = sitofp i32 %i.el to float
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.eo = load float, ptr %i.en, align 8, !tbaa !89
  %i.ep = fsub float %i.eh, %i.eo
  %i.eq = fmul float %i.ep, %i.em
  %i.er = fcmp ogt float %i.eq, 0.000000e+00
  %i.es = select i1 %i.er, float 1.000000e+00, float -1.000000e+00
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv29.i.us.us
  %i.eu = load float, ptr %i.et, align 4, !tbaa !39
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.es, float %i.eu, float %.078.us17.i.us.us) ; 2 uses
  %indvars.iv.next30.i.us.us = add nuw nsw i64 %indvars.iv29.i.us.us, 1 ; 2 uses
  %exitcond33.not.i.us.us = icmp eq i64 %indvars.iv.next30.i.us.us, %wide.trip.count37.i
  br i1 %exitcond33.not.i.us.us, label %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us18.i.us.us, !llvm.loop !0

_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us: ; preds = %.lr.ph.split.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us
  %indvars.iv34.i.us.us = phi i64 [ %indvars.iv.next35.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us ], [ 0, %.lr.ph.split.i.us.us ] ; 3 uses
  %.078.us11.i.us.us = phi float [ %i.fu, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us ], [ 0.000000e+00, %.lr.ph.split.i.us.us ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv34.i.us.us
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !72 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !75
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !80
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !82
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.fc
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !39
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !85 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 28
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !88
  %i.fl = sitofp i32 %i.fk to float
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !89
  %i.fo = fsub float %i.fg, %i.fn
  %i.fp = fmul float %i.fo, %i.fl
  %i.fq = fcmp ogt float %i.fp, 0.000000e+00
  %i.fr = select i1 %i.fq, float 1.000000e+00, float -1.000000e+00
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv34.i.us.us
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !39
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.ft, float %.078.us11.i.us.us) ; 2 uses
  %indvars.iv.next35.i.us.us = add nuw nsw i64 %indvars.iv34.i.us.us, 1 ; 2 uses
  %exitcond38.not.i.us.us = icmp eq i64 %indvars.iv.next35.i.us.us, %wide.trip.count37.i
  br i1 %exitcond38.not.i.us.us, label %_ZN2cv6detail8tracking15online_boosting31StrongClassifierDirectSelection4evalERKNS_3MatE.exit.us.us, label %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us12.i.us.us, !llvm.loop !0

_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us.i.us.us: ; preds = %.lr.ph.i.us.us, %_ZN2cv6detail8tracking15online_boosting14BaseClassifier4evalERKNS_3MatE.exit.us.i.us.us
end_hunk_0
