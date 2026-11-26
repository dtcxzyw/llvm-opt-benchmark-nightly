Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/deconvolution_layer?download=true
inline.NumInlined: 1197
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd:bb.a
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !255

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.07.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.n, 56
  br i1 %i.r, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store double %i.m, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8
  store double %i.m, ptr %i.s, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 16
  store double %i.m, ptr %i.t, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 24
  store double %i.m, ptr %i.u, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 32
  store double %i.m, ptr %i.v, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 40
  store double %i.m, ptr %i.w, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 48
  store double %i.m, ptr %i.x, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 56
  store double %i.m, ptr %i.y, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.z, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !256

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %1
  %i.ab = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !62
  store ptr %i.k, ptr %0, align 8, !tbaa !61
  store ptr %i.l, ptr %i.ac, align 8, !tbaa !258
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !62
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #23
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !258 ; 6 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %i.am = icmp ugt i64 %1, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load double, ptr %2, align 8, !tbaa !71 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.c, %i.ai
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.c, %bb.f ] ; 2 uses
  store double %i.an, ptr %.07.i.i.i.i, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !256

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load double, ptr %2, align 8, !tbaa !71
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit.loopexit, %bb.f
  %i.ap = phi double [ %.pre, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit.loopexit ], [ %i.an, %bb.f ]
  %i.aq = sub nuw i64 %1, %i.al
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.aq, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ai, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit ] ; 2 uses
  store double %i.ap, ptr %.07.i.i.i.i.i.i.i, align 8, !tbaa !71
  %i.as = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !256

_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i
  store ptr %i.ar, ptr %i.ah, align 8, !tbaa !258
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %1, 0
  br i1 %i.at, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 3               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.av = load double, ptr %2, align 8, !tbaa !71 ; 9 uses
  %i.aw = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1
  %xtraiter = and i64 %i.ay, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %bb.h, %.lr.ph.i.i.i.i12.prol
  %.07.i.i.i.i13.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.i12.prol ], [ %i.c, %bb.h ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %bb.h ]
  store double %i.av, ptr %.07.i.i.i.i13.prol, align 8, !tbaa !71
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i13.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !257

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %bb.h
  %.07.i.i.i.i13.unr = phi ptr [ %i.c, %bb.h ], [ %i.az, %.lr.ph.i.i.i.i12.prol ]
  %i.ba = icmp ult i64 %i.aw, 56
  br i1 %i.ba, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.07.i.i.i.i13 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i12 ], [ %.07.i.i.i.i13.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 9 uses
  store double %i.av, ptr %.07.i.i.i.i13, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i13, i64 8
  store double %i.av, ptr %i.bb, align 8, !tbaa !71
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i13, i64 16
  store double %i.av, ptr %i.bc, align 8, !tbaa !71
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i13, i64 24
  store double %i.av, ptr %i.bd, align 8, !tbaa !71
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i13, i64 32
  store double %i.av, ptr %i.be, align 8, !tbaa !71
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i13, i64 40
  store double %i.av, ptr %i.bf, align 8, !tbaa !71
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i13, i64 48
  store double %i.av, ptr %i.bg, align 8, !tbaa !71
  %i.bh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i13, i64 56
  store double %i.av, ptr %i.bh, align 8, !tbaa !71
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i13, i64 64 ; 2 uses
  %.not.i.i.i.i14.7 = icmp eq ptr %i.bi, %i.au
  br i1 %.not.i.i.i.i14.7, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !256

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.au, %.lr.ph.i.i.i.i12 ], [ %i.au, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.ah, align 8, !tbaa !258
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit, %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit
  ret void
}

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #6

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #6

declare noundef zeroext i1 @_ZN2cv20checkHardwareSupportEi(i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn22DeConvolutionLayerImpl13MatMulInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn22DeConvolutionLayerImpl13MatMulInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !139  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %i.g = add i32 %i.d, -1
  %i.h = add i32 %i.g, %i.f
  %i.i = sdiv i32 %i.h, %i.f
  %i.j = add i32 %i.i, 15
  %i.k = and i32 %i.j, -16                        ; 2 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !98
  %i.m = mul i32 %i.k, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !99
  %i.p = mul i32 %i.o, %i.k
  %.sroa.speculated129 = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !102  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !270  ; 3 uses
  %i.u = sub i32 %.sroa.speculated129, %i.m       ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !139  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !109  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !109 ; 2 uses
  %i.ab = sext i32 %i.m to i64                    ; 4 uses
  %i.ac = getelementptr [4 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !109 ; 4 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.ab ; 8 uses
  %i.ai = tail call noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %i.r, i32 noundef 0) ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.ak = tail call noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %i.aj, i32 noundef 0) ; 6 uses
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !104
  %i.am = tail call noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %i.al, i32 noundef 0) ; 11 uses
  %i.an = icmp sgt i32 %i.t, 0
  br i1 %i.an, label %.lr.ph141, label %._crit_edge

.lr.ph141:                                        ; preds = %bb.a
  %i.ao = add nsw i32 %i.t, -1                    ; 7 uses
  %i.ap = icmp sgt i32 %i.u, 0                    ; 2 uses
  %i.aq = icmp sgt i32 %i.w, 0
  br i1 %i.aq, label %.lr.ph141.split.us, label %.lr.ph141.split

.lr.ph141.split.us:                               ; preds = %.lr.ph141
  br i1 %i.ap, label %.lr.ph141.split.us.split.us.preheader, label %._crit_edge

.lr.ph141.split.us.split.us.preheader:            ; preds = %.lr.ph141.split.us
  %i.ar = zext nneg i32 %i.u to i64
  %i.as = shl nuw nsw i64 %i.ar, 2                ; 2 uses
  %i.at = shl nsw i64 %i.ab, 2
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.at
  %i.au = shl i64 %i.am, 2
  %i.av = zext nneg i32 %i.ao to i64
  %i.aw = zext nneg i32 %i.u to i64               ; 4 uses
  %i.ax = zext nneg i32 %i.w to i64               ; 5 uses
  %i.ay = lshr i32 %i.ao, 1
  %i.az = add nuw nsw i32 %i.ay, 1
  %wide.trip.count = zext nneg i32 %i.az to i64
  %2 = shl nuw nsw i64 %i.aw, 2                   ; 5 uses
  %i.ba = add nuw nsw i64 %i.ax, 4611686018427387903
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = mul i64 %i.ak, %i.bb
  %i.bd = shl i64 %i.bc, 4
  %i.be = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.aa, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.be
  %scevgep222 = getelementptr i8, ptr %i.bg, i64 %2 ; 2 uses
  %i.bh = add nsw i64 %i.be, %2                   ; 2 uses
  %scevgep223 = getelementptr i8, ptr %i.ag, i64 %i.bh
  %i.bi = shl i64 %i.am, 2
  %i.bj = sext i32 %i.ao to i64
  %i.bk = shl i64 %i.am, 3
  %i.bl = getelementptr i8, ptr %i.ag, i64 %i.bh
  %3 = insertelement <4 x ptr> poison, ptr %scevgep222, i64 0
  %i.bm = insertelement <4 x ptr> poison, ptr %i.ac, i64 0
  %min.iters.check = icmp ult i32 %i.u, 8
  %.mask = and i64 %i.ak, 576460752303423488
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %i.aw, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph141.split.us.split.us.preheader, %._crit_edge139.split.us.us.us
  %indvars.iv172 = phi i64 [ 0, %.lr.ph141.split.us.split.us.preheader ], [ %indvars.iv.next173, %._crit_edge139.split.us.us.us ] ; 5 uses
  %indvar = phi i64 [ 0, %.lr.ph141.split.us.split.us.preheader ], [ %indvar.next, %._crit_edge139.split.us.us.us ] ; 3 uses
  %i.bn = or disjoint i64 %indvars.iv172, 1
  %smin224 = tail call i64 @llvm.smin.i64(i64 %i.bn, i64 %i.bj)
  %i.bo = mul i64 %i.bi, %smin224
  %scevgep225 = getelementptr i8, ptr %scevgep223, i64 %i.bo ; 2 uses
  %i.bp = mul i64 %i.bk, %indvar
  %scevgep226 = getelementptr i8, ptr %i.bl, i64 %i.bp ; 5 uses
  %i.bq = mul i64 %i.am, %indvars.iv172
  %i.br = getelementptr [4 x i8], ptr %i.ah, i64 %i.bq ; 8 uses
  %i.bs = trunc i64 %indvars.iv172 to i32
  %i.bt = or disjoint i32 %i.bs, 1
  %.sroa.speculated124.us.us = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.bt)
  %i.bu = sext i32 %.sroa.speculated124.us.us to i64 ; 2 uses
  %i.bv = mul i64 %i.am, %i.bu
  %i.bw = getelementptr [4 x i8], ptr %i.ah, i64 %i.bv ; 4 uses
  %i.bx = mul i64 %i.ai, %indvars.iv172
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bx ; 4 uses
  %i.bz = mul i64 %i.ai, %i.bu
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bz ; 4 uses
  %i.cb = shl nuw nsw i64 %indvar, 1
  %i.cc = or disjoint i64 %i.cb, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cc, i64 %i.av)
  %i.cd = mul i64 %i.au, %smin
  %scevgep162 = getelementptr i8, ptr %scevgep, i64 %i.cd
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.br, i8 0, i64 %i.as, i1 false), !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep162, i8 0, i64 %i.as, i1 false), !tbaa !138
  %i.ce = insertelement <4 x ptr> poison, ptr %i.bw, i64 0
  %i.cf = shufflevector <4 x ptr> %i.ce, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cg = insertelement <4 x ptr> poison, ptr %scevgep225, i64 0
  %i.ch = shufflevector <4 x ptr> %i.cg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %bound0 = icmp ult ptr %i.br, %scevgep225
  %bound1 = icmp ult ptr %i.bw, %scevgep226
  %found.conflict = and i1 %bound0, %bound1
  %bound0.a = icmp ult ptr %i.br, %scevgep222
  %bound1.a = icmp ult ptr %i.ac, %scevgep226
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 7 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv169
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !138 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv169
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !138 ; 2 uses
  %i.cm = mul i64 %i.ak, %indvars.iv169
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cm ; 9 uses
  %i.co = or disjoint i64 %indvars.iv169, 1       ; 3 uses
  %i.cp = icmp samesign ult i64 %i.co, %i.ax
  br i1 %i.cp, label %bb.c, label %.lr.ph136.us.us.us

bb.c:                                             ; preds = %bb.b
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.co
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !138 ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.co
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !138 ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ak ; 4 uses
  %i.cv = or disjoint i64 %indvars.iv169, 2       ; 3 uses
  %i.cw = icmp samesign ult i64 %i.cv, %i.ax
  br i1 %i.cw, label %bb.d, label %.lr.ph136.us.us.us

bb.d:                                             ; preds = %bb.c
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cv
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !138 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cv
  %i.da = load float, ptr %i.cz, align 4, !tbaa !138 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ak ; 3 uses
  %i.dc = or disjoint i64 %indvars.iv169, 3       ; 3 uses
  %i.dd = icmp samesign ult i64 %i.dc, %i.ax
  br i1 %i.dd, label %bb.e, label %.lr.ph136.us.us.us

bb.e:                                             ; preds = %bb.d
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.dc
  %i.df = load float, ptr %i.de, align 4, !tbaa !138
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dc
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !138
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ak
  br label %.lr.ph136.us.us.us

.lr.ph136.us.us.us:                               ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0111.us.us.us = phi float [ %i.cr, %bb.e ], [ %i.cr, %bb.d ], [ %i.cr, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.0110.us.us.us = phi float [ %i.ct, %bb.e ], [ %i.ct, %bb.d ], [ %i.ct, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.0109.us.us.us = phi float [ %i.cy, %bb.e ], [ %i.cy, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.0108.us.us.us = phi float [ %i.da, %bb.e ], [ %i.da, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.0107.us.us.us = phi float [ %i.df, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.0106.us.us.us = phi float [ %i.dh, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.0105.us.us.us = phi ptr [ %i.cu, %bb.e ], [ %i.cu, %bb.d ], [ %i.cu, %bb.c ], [ %i.cn, %bb.b ] ; 5 uses
  %.0104.us.us.us = phi ptr [ %i.db, %bb.e ], [ %i.db, %bb.d ], [ %i.cn, %bb.c ], [ %i.cn, %bb.b ] ; 5 uses
  %.0103.us.us.us = phi ptr [ %i.di, %bb.e ], [ %i.cn, %bb.d ], [ %i.cn, %bb.c ], [ %i.cn, %bb.b ] ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph136.us.us.us
  %i.dj = getelementptr i8, ptr %.0105.us.us.us, i64 %2 ; 2 uses
  %i.dk = getelementptr i8, ptr %.0104.us.us.us, i64 %2 ; 2 uses
  %i.dl = getelementptr i8, ptr %.0103.us.us.us, i64 %2 ; 2 uses
  %bound0230 = icmp ult ptr %i.br, %i.dj
  %bound1231 = icmp ult ptr %.0105.us.us.us, %scevgep226
  %found.conflict232 = and i1 %bound0230, %bound1231
  %bound0234 = icmp ult ptr %i.br, %i.dk
  %bound1235 = icmp ult ptr %.0104.us.us.us, %scevgep226
  %found.conflict236 = and i1 %bound0234, %bound1235
  %bound0238 = icmp ult ptr %i.br, %i.dl
  %bound1239 = icmp ult ptr %.0103.us.us.us, %scevgep226
  %found.conflict240 = and i1 %bound0238, %bound1239
  %i.dm = insertelement <4 x ptr> %i.bm, ptr %.0105.us.us.us, i64 1
  %i.dn = insertelement <4 x ptr> %i.dm, ptr %.0104.us.us.us, i64 2
  %i.do = insertelement <4 x ptr> %i.dn, ptr %.0103.us.us.us, i64 3
  %i.dp = icmp ult <4 x ptr> %i.do, %i.ch
  %i.dq = insertelement <4 x ptr> %3, ptr %i.dj, i64 1
  %i.dr = insertelement <4 x ptr> %i.dq, ptr %i.dk, i64 2
  %i.ds = insertelement <4 x ptr> %i.dr, ptr %i.dl, i64 3
  %i.dt = icmp ult <4 x ptr> %i.cf, %i.ds
  %i.du = and <4 x i1> %i.dt, %i.dp
  %4 = bitcast <4 x i1> %i.du to i4
  %5 = icmp ne i4 %4, 0
  %op.rdx = or i1 %5, %found.conflict.a
  %op.rdx277 = or i1 %found.conflict, %found.conflict232
  %op.rdx278 = or i1 %found.conflict236, %found.conflict240
  %op.rdx279 = or i1 %op.rdx, %op.rdx277
  %op.rdx280 = or i1 %op.rdx278, %stride.check
  %op.rdx277.reass = or i1 %op.rdx279, %op.rdx280
  br i1 %op.rdx277.reass, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.0111.us.us.us, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert258 = insertelement <4 x float> poison, float %.0110.us.us.us, i64 0
  %broadcast.splat259 = shufflevector <4 x float> %broadcast.splatinsert258, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert260 = insertelement <4 x float> poison, float %.0109.us.us.us, i64 0
  %broadcast.splat261 = shufflevector <4 x float> %broadcast.splatinsert260, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert262 = insertelement <4 x float> poison, float %.0108.us.us.us, i64 0
  %broadcast.splat263 = shufflevector <4 x float> %broadcast.splatinsert262, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert264 = insertelement <4 x float> poison, float %.0107.us.us.us, i64 0
  %broadcast.splat265 = shufflevector <4 x float> %broadcast.splatinsert264, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert266 = insertelement <4 x float> poison, float %.0106.us.us.us, i64 0
  %broadcast.splat267 = shufflevector <4 x float> %broadcast.splatinsert266, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert268 = insertelement <4 x float> poison, float %i.cj, i64 0
  %broadcast.splat269 = shufflevector <4 x float> %broadcast.splatinsert268, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert270 = insertelement <4 x float> poison, float %i.cl, i64 0
  %broadcast.splat271 = shufflevector <4 x float> %broadcast.splatinsert270, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index
  %wide.load = load <4 x float>, ptr %i.dv, align 4, !tbaa !138, !alias.scope !271 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.0105.us.us.us, i64 %index
  %wide.load272 = load <4 x float>, ptr %i.dw, align 4, !tbaa !138, !alias.scope !272 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0104.us.us.us, i64 %index
  %wide.load273 = load <4 x float>, ptr %i.dx, align 4, !tbaa !138, !alias.scope !273 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.0103.us.us.us, i64 %index
  %wide.load274 = load <4 x float>, ptr %i.dy, align 4, !tbaa !138, !alias.scope !274 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index ; 2 uses
  %wide.load275 = load <4 x float>, ptr %i.dz, align 4, !tbaa !138, !alias.scope !275, !noalias !276
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat269, <4 x float> %wide.load, <4 x float> %wide.load275)
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load272, <4 x float> %i.ea)
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat261, <4 x float> %wide.load273, <4 x float> %i.eb)
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat265, <4 x float> %wide.load274, <4 x float> %i.ec)
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index ; 2 uses
  %wide.load276 = load <4 x float>, ptr %i.ee, align 4, !tbaa !138, !alias.scope !277, !noalias !278
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat271, <4 x float> %wide.load, <4 x float> %wide.load276)
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat259, <4 x float> %wide.load272, <4 x float> %i.ef)
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat263, <4 x float> %wide.load273, <4 x float> %i.eg)
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat267, <4 x float> %wide.load274, <4 x float> %i.eh)
  store <4 x float> %i.ed, ptr %i.dz, align 4, !tbaa !138, !alias.scope !275, !noalias !276
  store <4 x float> %i.ei, ptr %i.ee, align 4, !tbaa !138, !alias.scope !277, !noalias !278
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph136.us.us.us, %middle.block
  %indvars.iv166.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph136.us.us.us ], [ %n.vec, %middle.block ]
  %i.ek = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.cl, i64 1
  %i.em = insertelement <2 x float> poison, float %.0111.us.us.us, i64 0
  %i.en = insertelement <2 x float> %i.em, float %.0110.us.us.us, i64 1
  %i.eo = insertelement <2 x float> poison, float %.0109.us.us.us, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %.0108.us.us.us, i64 1
  %i.eq = insertelement <2 x float> poison, float %.0107.us.us.us, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %.0106.us.us.us, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %scalar.ph ], [ %indvars.iv166.ph, %scalar.ph.preheader ] ; 7 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv166
  %i.et = load float, ptr %i.es, align 4, !tbaa !138
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0105.us.us.us, i64 %indvars.iv166
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !138
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.0104.us.us.us, i64 %indvars.iv166
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !138
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.0103.us.us.us, i64 %indvars.iv166
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !138
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv166 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !138
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv166 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !138
  %i.fe = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.fd, i64 1
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.ff, <2 x float> %i.fh)
  %i.fj = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.fk, <2 x float> %i.fi)
  %i.fm = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.fn, <2 x float> %i.fl)
  %i.fp = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.fq, <2 x float> %i.fo) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  store float %i.fs, ptr %i.fa, align 4, !tbaa !138
  %i.ft = extractelement <2 x float> %i.fr, i64 1
  store float %i.ft, ptr %i.fc, align 4, !tbaa !138
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.fu = icmp samesign ult i64 %indvars.iv.next167, %i.aw
  br i1 %i.fu, label %scalar.ph, label %._crit_edge.us.us.us, !llvm.loop !267

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 4 ; 2 uses
  %i.fv = icmp samesign ult i64 %indvars.iv.next170, %i.ax
  br i1 %i.fv, label %bb.b, label %._crit_edge139.split.us.us.us, !llvm.loop !268

._crit_edge139.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 2
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader.us.us, !llvm.loop !269

.lr.ph141.split:                                  ; preds = %.lr.ph141
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph141.split
  %i.fw = zext nneg i32 %i.u to i64
  %i.fx = shl nuw nsw i64 %i.fw, 2                ; 6 uses
  %i.fy = zext nneg i32 %i.t to i64
  %i.fz = add nsw i64 %i.fy, -1                   ; 2 uses
  %i.ga = lshr i64 %i.fz, 1                       ; 2 uses
  %i.gb = add nuw i64 %i.ga, 1                    ; 2 uses
  %i.gc = icmp eq i64 %i.ga, 0
  br i1 %i.gc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gb, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.gd = mul i64 %i.am, %indvars.iv
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gd
  %i.gf = trunc nuw nsw i64 %indvars.iv to i32
  %i.gg = or disjoint i32 %i.gf, 1
  %i.gh = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.gg)
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = mul i64 %i.am, %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ge, i8 0, i64 %i.fx, i1 false), !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gk, i8 0, i64 %i.fx, i1 false), !tbaa !138
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.gl = mul i64 %i.am, %indvars.iv.next
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gl
  %i.gn = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.go = or disjoint i32 %i.gn, 1
  %i.gp = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.go)
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = mul i64 %i.am, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gr
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gm, i8 0, i64 %i.fx, i1 false), !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gs, i8 0, i64 %i.fx, i1 false), !tbaa !138
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit278.unr-lcssa, label %.lr.ph, !llvm.loop !269

._crit_edge.loopexit278.unr-lcssa:                ; preds = %.lr.ph
  %i.gt = and i64 %i.fz, 2
  %lcmp.mod.not.not = icmp eq i64 %i.gt, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit278.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit278.unr-lcssa ] ; 2 uses
  %lcmp.mod279 = trunc i64 %i.gb to i1
  tail call void @llvm.assume(i1 %lcmp.mod279)
  %i.gu = mul i64 %i.am, %indvars.iv.epil.init
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gu
  %i.gw = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.gx = or disjoint i32 %i.gw, 1
  %i.gy = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.gx)
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = mul i64 %i.am, %i.gz
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ha
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gv, i8 0, i64 %i.fx, i1 false), !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hb, i8 0, i64 %i.fx, i1 false), !tbaa !138
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit278.unr-lcssa, %._crit_edge139.split.us.us.us, %.lr.ph141.split.us, %.lr.ph141.split, %bb.a
  ret void
}

declare noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.i = load ptr, ptr %0, align 8, !tbaa !94     ; 5 uses
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.mul.v4i32
!76 = !{!35, !8, i64 4}
!77 = !{!"_ZTSN2cv11_InputArrayE", !8, i64 0, !13, i64 8, !35, i64 16}
!78 = !{!77, !8, i64 0}
!79 = !{!77, !13, i64 8}
!80 = !{!"p1 _ZTSN2cv5MatOpE", !13, i64 0}
!81 = !{!"p1 _ZTSN2cv12MatAllocatorE", !13, i64 0}
!82 = !{!"p1 _ZTSN2cv8UMatDataE", !13, i64 0}
!83 = !{!"_ZTSN2cv7MatStepE", !7, i64 0}
!84 = !{!"_ZTSN2cv3MatE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !81, i64 56, !82, i64 64, !68, i64 72, !83, i64 128}
!85 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !7, i64 0}
!86 = !{!"_ZTSN2cv3VecIdLi4EEE", !85, i64 0}
!87 = !{!"_ZTSN2cv7Scalar_IdEE", !86, i64 0}
!88 = !{!"_ZTSN2cv7MatExprE", !80, i64 0, !8, i64 8, !84, i64 16, !84, i64 224, !84, i64 432, !70, i64 640, !70, i64 648, !87, i64 656}
!89 = !{!88, !80, i64 0}
!90 = !{!84, !8, i64 4}
!91 = !{!84, !8, i64 0}
!92 = !{!"p1 int", !13, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!93, !92, i64 0}
!95 = !{!93, !92, i64 16}
!96 = !{!93, !92, i64 8}
!97 = !{!"_ZTSN2cv5RangeE", !8, i64 0, !8, i64 4}
!98 = !{!97, !8, i64 0}
!99 = !{!97, !8, i64 4}
!100 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!101 = !{!"_ZTSN2cv3dnn22DeConvolutionLayerImpl13MatMulInvokerE", !100, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !8, i64 32, !42, i64 36, !42, i64 37, !42, i64 38, !42, i64 39, !42, i64 40}
!102 = !{!101, !24, i64 8}
!103 = !{!101, !24, i64 16}
!104 = !{!101, !24, i64 24}
!105 = !{!101, !8, i64 32}
!106 = !{!36, !36, i64 0}
!107 = !{!"llvm.loop.isvectorized", i32 1}
!108 = !{!"llvm.loop.unroll.runtime.disable"}
!109 = !{!84, !16, i64 24}
!110 = !{!"p1 float", !13, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !93, i64 0}
!112 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !111, i64 0}
!113 = !{!"_ZTSSt6vectorIiSaIiEE", !112, i64 0}
!114 = !{!"_ZTSN2cv3dnn22DeConvolutionLayerImpl13Col2ImInvokerE", !100, i64 0, !110, i64 8, !110, i64 16, !8, i64 24, !113, i64 32, !113, i64 56, !113, i64 80, !113, i64 104, !113, i64 128, !113, i64 152, !110, i64 176, !8, i64 184, !42, i64 188}
!115 = !{!114, !110, i64 8}
!116 = !{!114, !110, i64 176}
!117 = !{!114, !8, i64 24}
!118 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!119 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!120 = !{!114, !8, i64 184}
!121 = !{!114, !42, i64 188}
!122 = !{!114, !110, i64 16}
!123 = !{!25, !24, i64 16}
!124 = !{!65, !8, i64 8}
!125 = !{i8 0, i8 2}
!126 = !{}
!127 = !{!15, !14, i64 0}
!128 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!129 = !{!128, !8, i64 8}
!130 = !{!128, !8, i64 12}
!131 = !{!"p1 _ZTSN2cv8MatShapeE", !13, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE17_Vector_impl_dataE", !131, i64 0, !131, i64 8, !131, i64 16}
!133 = !{!132, !131, i64 8}
!134 = !{!132, !131, i64 0}
!135 = !{!132, !131, i64 16}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = !{!"float", !7, i64 0}
!138 = !{!137, !137, i64 0}
!139 = !{!84, !8, i64 12}
!140 = !{!37, !36, i64 16}
!141 = !{!110, !110, i64 0}
!142 = !{!"_ZTSSt14_Function_base", !7, i64 0, !13, i64 16}
!143 = !{!142, !13, i64 16}
!144 = !{!92, !92, i64 0}
!145 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !13, i64 0}
!146 = !{!145, !145, i64 0}
!147 = !{!"p1 _ZTSN2cv3dnn22DeConvolutionLayerImpl13Col2ImInvokerE", !13, i64 0}
!148 = !{!147, !147, i64 0}
!149 = !{!"any p2 pointer", !13, i64 0}
!150 = !{!"p2 float", !149, i64 0}
!151 = !{!150, !150, i64 0}
!152 = !{!"p1 _ZTSSt8functionIFviEE", !13, i64 0}
!153 = !{!152, !152, i64 0}
!154 = !{!13, !13, i64 0}
!155 = !{!"p1 _ZTSN2cv3dnn22DeConvolutionLayerImplE", !13, i64 0}
!156 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv3dnn22DeConvolutionLayerImplELN9__gnu_cxx12_Lock_policyE2EE", !128, i64 0, !155, i64 16}
!157 = !{!156, !155, i64 16}
!158 = !{!"p1 _ZTSN2cv3dnn14dnn5_v2026060520BaseConvolutionLayerE", !13, i64 0}
!159 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v2026060520BaseConvolutionLayerELN9__gnu_cxx12_Lock_policyE2EE", !158, i64 0, !15, i64 8}
!160 = !{!159, !158, i64 0}
!161 = distinct !{!161, !47}
!162 = distinct !{!162, !47}
!163 = !{!43, !42, i64 380}
!164 = !{!43, !42, i64 382}
!165 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!166 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!167 = !{!"_ZTSSt18_Rb_tree_node_base", !165, i64 0, !166, i64 8, !166, i64 16, !166, i64 24}
!168 = !{!"_ZTSSt15_Rb_tree_header", !167, i64 0, !19, i64 32}
!169 = !{!168, !166, i64 8}
!170 = !{!166, !166, i64 0}
!171 = !{!41, !8, i64 192}
!172 = !{!41, !8, i64 188}
!173 = distinct !{!173, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!174 = distinct !{!174, !173, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!175 = distinct !{!175, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!176 = distinct !{!176, !175, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!177 = distinct !{!177, !47}
!178 = distinct !{!178, !47, !195}
!179 = distinct !{!179, i1 true, !"_ZNK2cv3Mat8rowRangeERKNS_5RangeE"}
!180 = distinct !{!180, !179, !"_ZNK2cv3Mat8rowRangeERKNS_5RangeE: argument 0"}
!181 = distinct !{!181, i1 true, !"_ZNK2cv3Mat8rowRangeERKNS_5RangeE"}
!182 = distinct !{!182, !181, !"_ZNK2cv3Mat8rowRangeERKNS_5RangeE: argument 0"}
!183 = distinct !{!183, i1 true, !"_ZNK2cv3Mat8colRangeERKNS_5RangeE"}
!184 = distinct !{!184, !183, !"_ZNK2cv3Mat8colRangeERKNS_5RangeE: argument 0"}
!185 = distinct !{!185, i1 true, !"_ZNK2cv3Mat8rowRangeERKNS_5RangeE"}
!186 = distinct !{!186, !185, !"_ZNK2cv3Mat8rowRangeERKNS_5RangeE: argument 0"}
!187 = distinct !{!187, !47, !107, !108}
!188 = distinct !{!188, !47, !107, !108}
!189 = distinct !{!189, !47, !107, !108}
!190 = distinct !{!190, !47, !107, !108}
!191 = distinct !{!191, !47}
!192 = !{!65, !64, i64 0}
!193 = !{!174}
!194 = !{!176}
!195 = !{!"llvm.loop.unswitch.partial.disable"}
!196 = !{!180}
!197 = !{!182}
!198 = !{!184}
!199 = !{!186}
!200 = !{!101, !42, i64 36}
!201 = !{!101, !42, i64 37}
!202 = !{!101, !42, i64 38}
!203 = !{!101, !42, i64 39}
!204 = !{!101, !42, i64 40}
!205 = !{ptr @_ZN2cv3dnn22DeConvolutionLayerImpl13Col2ImInvokerD2Ev}
!206 = !{!"p1 _ZTSN2cv4UMatE", !13, i64 0}
!207 = !{!"_ZTSNSt12_Vector_baseIN2cv4UMatESaIS1_EE17_Vector_impl_dataE", !206, i64 0, !206, i64 8, !206, i64 16}
!208 = !{!207, !206, i64 0}
!209 = distinct !{!209, i1 true, !"_ZNK2cv3PtrINS_3dnn14dnn5_v202606055LayerEE11dynamicCastINS2_10BlankLayerEEENS0_IT_EEv"}
!210 = distinct !{!210, !209, !"_ZNK2cv3PtrINS_3dnn14dnn5_v202606055LayerEE11dynamicCastINS2_10BlankLayerEEENS0_IT_EEv: argument 0"}
!211 = distinct !{!211, i1 true, !"_ZSt20dynamic_pointer_castIN2cv3dnn14dnn5_v2026060510BlankLayerENS2_5LayerEESt10shared_ptrIT_ERKS5_IT0_E"}
!212 = distinct !{!212, !211, !"_ZSt20dynamic_pointer_castIN2cv3dnn14dnn5_v2026060510BlankLayerENS2_5LayerEESt10shared_ptrIT_ERKS5_IT0_E: argument 0"}
!213 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060510BlankLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!214 = !{!210}
!215 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606055LayerE", !13, i64 0}
!216 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EE", !215, i64 0, !15, i64 8}
!217 = !{!216, !215, i64 0}
!218 = !{!212, !210}
!219 = !{!"p1 _ZTSN2cv3dnn14dnn5_v2026060510BlankLayerE", !13, i64 0}
!220 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v2026060510BlankLayerELN9__gnu_cxx12_Lock_policyE2EE", !219, i64 0, !15, i64 8}
!221 = !{!220, !219, i64 0}
!222 = distinct !{!222, !47}
!223 = distinct !{!223, !47}
!224 = distinct !{!224, !47}
!225 = distinct !{!225, !47}
!226 = distinct !{!226, !136}
!227 = distinct !{!227, !47}
!228 = distinct !{!228, i1 true, !"_ZN2cv3dnn14dnn5_v20260605L5shapeEiiii"}
!229 = distinct !{!229, !228, !"_ZN2cv3dnn14dnn5_v20260605L5shapeEiiii: argument 0"}
!230 = !{!229}
!231 = distinct !{!231, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!232 = distinct !{!232, !231, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!233 = distinct !{!233, i1 true, !"_ZNK2cv3Mat3rowEi"}
!234 = distinct !{!234, !233, !"_ZNK2cv3Mat3rowEi: argument 0"}
!235 = distinct !{!235, i1 true, !"_ZNK2cv3Mat3rowEi"}
!236 = distinct !{!236, !235, !"_ZNK2cv3Mat3rowEi: argument 0"}
!237 = distinct !{!237, !47}
!238 = !{!232}
!239 = !{!234}
!240 = !{!236}
!241 = distinct !{null}
!242 = !{!"_ZTSN2cv5ParamE", !7, i64 0}
!243 = !{!"_ZTSN2cv3dnn14dnn5_v202606059DictValueE", !242, i64 0, !7, i64 8}
!244 = !{!243, !242, i64 0}
!245 = !{!"_ZTSN2cv10AutoBufferIlLm1EEE", !36, i64 0, !19, i64 8, !7, i64 16}
!246 = !{!245, !36, i64 0}
!247 = !{!"_ZTSN2cv10AutoBufferIdLm1EEE", !48, i64 0, !19, i64 8, !7, i64 16}
!248 = !{!247, !48, i64 0}
!249 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!250 = !{!"_ZTSN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE", !249, i64 0, !19, i64 8, !7, i64 16}
!251 = !{!250, !249, i64 0}
!252 = distinct !{!252, !136}
!253 = distinct !{!253, !47}
!254 = distinct !{!254, !136}
!255 = distinct !{!255, !136}
!256 = distinct !{!256, !47}
!257 = distinct !{!257, !136}
!258 = !{!49, !48, i64 8}
!259 = distinct !{!259, i1 false, !"LVerDomain"}
!260 = distinct !{!260, !259}
!261 = distinct !{!261, !259}
!262 = distinct !{!262, !259}
!263 = distinct !{!263, !259}
!264 = distinct !{!264, !259}
!265 = distinct !{!265, !259}
!266 = distinct !{!266, !47, !107, !108}
!267 = distinct !{!267, !47, !107}
!268 = distinct !{!268, !47}
!269 = distinct !{!269, !47}
!270 = !{!84, !8, i64 8}
!271 = !{!260}
!272 = !{!261}
!273 = !{!262}
!274 = !{!263}
!275 = !{!264}
!276 = !{!265, !260, !261, !262, !263}
!277 = !{!265}
!278 = !{!260, !261, !262, !263}
!279 = distinct !{!279, !47, !107, !108}
!280 = distinct !{!280, !47, !108, !107}
!281 = distinct !{!281, !47}
!282 = distinct !{!282, !47}
!283 = !{!"p1 _ZTSSt9type_info", !13, i64 0}
!284 = !{!283, !283, i64 0}
!285 = !{i64 0, i64 8, !144, i64 8, i64 8, !146, i64 16, i64 8, !148, i64 24, i64 8, !146, i64 32, i64 8, !144, i64 40, i64 8, !141, i64 48, i64 8, !151, i64 56, i64 8, !153}
!286 = distinct !{!286, !47}
!287 = distinct !{!287, !136}
!288 = distinct !{!288, !47}
!289 = distinct !{!289, !47}
!290 = distinct !{!290, !136}
!291 = distinct !{null}
!292 = distinct !{!292, !47}
!293 = !{!"_ZTSZNK2cv3dnn22DeConvolutionLayerImpl13Col2ImInvokerclERKNS_5RangeEEUliE_", !92, i64 0, !145, i64 8, !147, i64 16, !145, i64 24, !92, i64 32, !110, i64 40, !150, i64 48, !152, i64 56}
!294 = !{!293, !147, i64 16}
!295 = !{!293, !92, i64 0}
!296 = !{i64 4}
!297 = !{!293, !145, i64 8}
!298 = !{i64 8}
!299 = !{!293, !145, i64 24}
!300 = !{!293, !92, i64 32}
!301 = !{!293, !150, i64 48}
!302 = !{!293, !110, i64 40}
!303 = !{!293, !152, i64 56}
!304 = !{!"_ZTSSt8functionIFviEE", !142, i64 0, !13, i64 24}
!305 = !{!304, !13, i64 24}
!306 = distinct !{null, null}
!307 = distinct !{null}
!308 = distinct !{!308, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!309 = distinct !{!309, !308, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!310 = !{!309}
!311 = distinct !{!311, !47}
!312 = distinct !{!312, !47}
!313 = distinct !{!313, !47}
!314 = distinct !{!314, !47}
!315 = !{!"p1 _ZTSSt6vectorIN2cv8MatShapeESaIS1_EE", !13, i64 0}
!316 = !{!"_ZTSNSt6vectorIN2cv8MatShapeESaIS1_EE16_Temporary_valueE", !315, i64 0, !7, i64 8}
!317 = !{!316, !315, i64 0}
!318 = !{!131, !131, i64 0}
!319 = distinct !{!319, !47, !107, !108}
!320 = distinct !{!320, !47, !108, !107}
!321 = distinct !{!321, !47, !107, !108}
!322 = distinct !{!322, !47, !108, !107}
!323 = distinct !{!323, !47, !107, !108}
!324 = distinct !{!324, !47, !108, !107}
!325 = distinct !{!325, !47, !107, !108}
!326 = distinct !{!326, !47, !108, !107}
end_hunk_1
