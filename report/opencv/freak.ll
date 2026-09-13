Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/freak?download=true
inline.NumInlined: 1638
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv11xfeatures2d10FREAK_Impl17extractDescriptorIsEEvPT_PPv:bb.a
  %i.dg = lshr i64 %indvars.iv34.5, 6
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dg ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !51
  %i.dj = and i64 %i.di, %i.df
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !51
  br label %_ZNSt6bitsetILm512EE3setEmb.exit.5

_ZNSt6bitsetILm512EE3setEmb.exit.5:               ; preds = %bb.l, %bb.k
  %indvars.iv.next35.5 = add nsw i64 %indvars.iv34.5, -8
  %indvars.iv.next37.5 = add nuw nsw i64 %indvars.iv36.5, 1 ; 2 uses
  %exitcond66 = icmp eq i64 %indvars.iv.next37.5, %indvars.iv64
  br i1 %exitcond66, label %.loopexit.5, label %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i.5, !llvm.loop !375

.loopexit.5:                                      ; preds = %_ZNSt6bitsetILm512EE3setEmb.exit.5
  %indvars.iv.next33.5 = or disjoint i64 %indvars.iv, 6
  %i.dk = or disjoint i64 %indvars.iv82, 112
  br label %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i.6

_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i.6:     ; preds = %.loopexit.5, %_ZNSt6bitsetILm512EE3setEmb.exit.6
  %indvars.iv36.6 = phi i64 [ %i.co, %.loopexit.5 ], [ %indvars.iv.next37.6, %_ZNSt6bitsetILm512EE3setEmb.exit.6 ] ; 2 uses
  %indvars.iv34.6 = phi i64 [ %indvars.iv.next33.5, %.loopexit.5 ], [ %indvars.iv.next35.6, %_ZNSt6bitsetILm512EE3setEmb.exit.6 ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv36.6 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !106
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !88
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !107
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !88
  %.not22.6 = icmp slt i16 %i.dp, %i.du
  %i.dv = and i64 %indvars.iv34.6, 62
  %i.dw = shl nuw nsw i64 1, %i.dv                ; 2 uses
  br i1 %.not22.6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i.6
  %i.dx = lshr i64 %indvars.iv34.6, 6
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dx ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !51
  %i.ea = or i64 %i.dz, %i.dw
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !51
  br label %_ZNSt6bitsetILm512EE3setEmb.exit.6

bb.n:                                             ; preds = %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i.6
  %i.eb = xor i64 %i.dw, -1
  %i.ec = lshr i64 %indvars.iv34.6, 6
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ec ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !51
  %i.ef = and i64 %i.ee, %i.eb
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !51
  br label %_ZNSt6bitsetILm512EE3setEmb.exit.6

_ZNSt6bitsetILm512EE3setEmb.exit.6:               ; preds = %bb.n, %bb.m
  %indvars.iv.next35.6 = add nsw i64 %indvars.iv34.6, -8
  %indvars.iv.next37.6 = add nuw nsw i64 %indvars.iv36.6, 1 ; 2 uses
  %exitcond63 = icmp eq i64 %indvars.iv.next37.6, %indvars.iv61
  br i1 %exitcond63, label %.loopexit.6, label %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i.6, !llvm.loop !375

.loopexit.6:                                      ; preds = %_ZNSt6bitsetILm512EE3setEmb.exit.6
  %indvars.iv.next33.6 = or disjoint i64 %indvars.iv, 7
  br label %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i.7

_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i.7:     ; preds = %.loopexit.6, %_ZNSt6bitsetILm512EE3setEmb.exit.7
  %indvars.iv36.7 = phi i64 [ %i.dk, %.loopexit.6 ], [ %indvars.iv.next37.7, %_ZNSt6bitsetILm512EE3setEmb.exit.7 ] ; 2 uses
  %indvars.iv34.7 = phi i64 [ %indvars.iv.next33.6, %.loopexit.6 ], [ %indvars.iv.next35.7, %_ZNSt6bitsetILm512EE3setEmb.exit.7 ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv36.7 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !106
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !88
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !107
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !88
  %.not22.7 = icmp slt i16 %i.ek, %i.ep
  %i.eq = and i64 %indvars.iv34.7, 63
  %i.er = shl nuw i64 1, %i.eq                    ; 2 uses
  br i1 %.not22.7, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i.7
  %i.es = lshr i64 %indvars.iv34.7, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.es ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !51
  %i.ev = or i64 %i.eu, %i.er
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !51
  br label %_ZNSt6bitsetILm512EE3setEmb.exit.7

bb.p:                                             ; preds = %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i.7
  %i.ew = xor i64 %i.er, -1
  %i.ex = lshr i64 %indvars.iv34.7, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ex ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !51
  %i.fa = and i64 %i.ez, %i.ew
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !51
  br label %_ZNSt6bitsetILm512EE3setEmb.exit.7

_ZNSt6bitsetILm512EE3setEmb.exit.7:               ; preds = %bb.p, %bb.o
  %indvars.iv.next35.7 = add nsw i64 %indvars.iv34.7, -8
  %indvars.iv.next37.7 = add nuw nsw i64 %indvars.iv36.7, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next37.7, %indvars.iv59
  br i1 %exitcond, label %.loopexit.7, label %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i.7, !llvm.loop !375

.loopexit.7:                                      ; preds = %_ZNSt6bitsetILm512EE3setEmb.exit.7
  %i.fb = add nuw nsw i32 %.01929, 128
  %i.fc = icmp samesign ult i32 %.01929, 384
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 128
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 128
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 128
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 128
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 128
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 128
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 128
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 128
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 128
  br i1 %i.fc, label %.preheader, label %bb.b, !llvm.loop !376

_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i:       ; preds = %_ZNSt6bitsetILm512EE3setEmb.exit, %.preheader
  %indvars.iv36 = phi i64 [ %indvars.iv82, %.preheader ], [ %indvars.iv.next37, %_ZNSt6bitsetILm512EE3setEmb.exit ] ; 2 uses
  %indvars.iv34 = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next35, %_ZNSt6bitsetILm512EE3setEmb.exit ] ; 4 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv36 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 2, !tbaa !106
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !88
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !107
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !88
  %.not22 = icmp slt i16 %i.fh, %i.fm
  %i.fn = and i64 %indvars.iv34, 56
  %i.fo = shl nuw nsw i64 1, %i.fn                ; 2 uses
  br i1 %.not22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i
  %i.fp = lshr i64 %indvars.iv34, 6
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fp ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !51
  %i.fs = or i64 %i.fr, %i.fo
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !51
  br label %_ZNSt6bitsetILm512EE3setEmb.exit

bb.r:                                             ; preds = %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i
  %i.ft = xor i64 %i.fo, -1
  %i.fu = lshr i64 %indvars.iv34, 6
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fu ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !51
  %i.fx = and i64 %i.fw, %i.ft
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !51
  br label %_ZNSt6bitsetILm512EE3setEmb.exit

_ZNSt6bitsetILm512EE3setEmb.exit:                 ; preds = %bb.q, %bb.r
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, -8
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond81 = icmp eq i64 %indvars.iv.next37, %indvars.iv79
  br i1 %exitcond81, label %.loopexit, label %_ZNKSt6bitsetILm512EE8_M_checkEmPKc.exit.i, !llvm.loop !375
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %3 = alloca %"struct.cv::xfeatures2d::PairStat", align 8 ; 4 uses
  %4 = alloca %"struct.cv::xfeatures2d::PairStat", align 8 ; 4 uses
  %5 = alloca %"struct.cv::xfeatures2d::PairStat", align 8 ; 4 uses
  %6 = alloca %"struct.cv::xfeatures2d::PairStat", align 8 ; 4 uses
  %7 = alloca %"struct.cv::xfeatures2d::PairStat", align 8 ; 4 uses
  %8 = alloca %"struct.cv::xfeatures2d::PairStat", align 8 ; 4 uses
  %9 = alloca %"struct.cv::xfeatures2d::PairStat", align 8 ; 4 uses
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 16 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEET_SE_SE_T0_.exit
  %i.h = icmp eq i64 %i.bw, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph50, !llvm.loop !377

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cq, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i27.lcssa, 4               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i27.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_T0_SF_T1_T2_.exit.i.i, %._crit_edge
  %.010.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.an, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_T0_SF_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.010.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i = load double, ptr %i.s, align 8, !tbaa !36 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !34
  %i.t = icmp slt i64 %.010.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.010.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.x
  %i.z = load double, ptr %i.w, align 8, !tbaa !108
  %i.aa = load double, ptr %i.y, align 8, !tbaa !108
  %i.ab = fcmp olt double %i.z, %i.aa
  %spec.select.i.i.i = select i1 %i.ab, i64 %i.x, i64 %i.v ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !92
  %i.ae = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.ae, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !378

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.010.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.af = icmp eq i64 %.0.lcssa.i.i.i, %i.k
  %or.cond.i.i = select i1 %i.o, i1 %i.af, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !92
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ag = icmp sgt i64 %.1.i.i.i, %.010.i.i
  br i1 %i.ag, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_T0_SF_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.019.i.i.i.i = phi i64 [ %.0920.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0920.i.i.i.i ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !108
  %i.aj = fcmp olt double %i.ai, %.sroa.03.0.copyload.i.i
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_T0_SF_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !92
  %i.al = icmp sgt i64 %.0920.i.i.i.i, %.010.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_T0_SF_T1_T2_.exit.i.i, !llvm.loop !379

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_T0_SF_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0920.i.i.i.i, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store double %.sroa.03.0.copyload.i.i, ptr %i.am, align 8, !tbaa !36
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !34
  %.not.i.i = icmp eq i64 %.010.i.i, 0
  %i.an = add nsw i64 %.010.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !380

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_T0_SF_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.ao, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_T0_SF_T1_T2_.exit.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load double, ptr %i.ao, align 8, !tbaa !36 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !92
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.a                     ; 3 uses
  %i.ar = ashr exact i64 %i.aq, 4                 ; 3 uses
  %i.as = add nsw i64 %i.ar, -1
  %i.at = lshr i64 %i.as, 1
  %i.au = icmp sgt i64 %i.ar, 2
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.av = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.ay
  %i.ba = load double, ptr %i.ax, align 8, !tbaa !108
  %i.bb = load double, ptr %i.az, align 8, !tbaa !108
  %i.bc = fcmp olt double %i.ba, %i.bb
  %spec.select.i.i.i.i = select i1 %i.bc, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.be = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !92
  %i.bf = icmp slt i64 %spec.select.i.i.i.i, %i.at
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !378

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bg = and i64 %i.aq, 16
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = add nsw i64 %i.ar, -2
  %i.bj = ashr exact i64 %i.bi, 1
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bj
  br i1 %i.bk, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bl = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bm = or disjoint i64 %i.bl, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !92
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bm, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i89.i.i.i, %bb.i ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0920.i.i89.i.i.i ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !108
  %i.br = fcmp olt double %i.bq, %.sroa.03.0.copyload.i.i.i
  br i1 %i.br, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bs = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.019.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !92
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !379

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bt = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store double %.sroa.03.0.copyload.i.i.i, ptr %i.bt, align 8, !tbaa !36
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !34
  %i.bu = icmp sgt i64 %i.aq, 16
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_T0_.exit, !llvm.loop !381

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2549 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02648 = phi i64 [ %i.bw, %bb.b ], [ %2, %.lr.ph ]
  %i.bv = phi i64 [ %i.cr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bw = add nsw i64 %.02648, -1                 ; 3 uses
  %i.bx = lshr i64 %i.bv, 1
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bx ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %storemerge2549, i64 -16 ; 5 uses
  %i.ca = load double, ptr %i.f, align 8, !tbaa !108 ; 3 uses
  %i.cb = load double, ptr %i.by, align 8, !tbaa !108 ; 3 uses
  %i.cc = fcmp olt double %i.ca, %i.cb
  %i.cd = load double, ptr %i.bz, align 8, !tbaa !108 ; 4 uses
  br i1 %i.cc, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph50
  %i.ce = fcmp olt double %i.cb, %i.cd
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cf = fcmp olt double %i.ca, %i.cd
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph50
  %i.cg = fcmp olt double %i.ca, %i.cd
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.ch = fcmp olt double %i.cb, %i.cd
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cl, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i.preheader ]
  %i.ci = load double, ptr %.fr28, align 8, !tbaa !108 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i ], [ %i.cl, %bb.t ] ; 9 uses
  %i.cj = load double, ptr %.sroa.010.1.i.i, align 8, !tbaa !108
  %i.ck = fcmp olt double %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.ck, label %bb.t, label %.preheader.i.i, !llvm.loop !382

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %i.cm = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !108
  %i.cn = fcmp olt double %i.ci, %i.cm
  br i1 %i.cn, label %.preheader.i.i, label %bb.u, !llvm.loop !383

bb.u:                                             ; preds = %.preheader.i.i
  %i.co = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.co, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEET_SE_SE_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false), !tbaa.struct !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_SE_T0_.exit.i, !llvm.loop !384

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEET_SE_SE_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.bw)
  %i.cp = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cq = sub i64 %i.cp, %i.a                     ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 4                 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 16
  br i1 %i.cs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_T0_.exit, !llvm.loop !377

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEET_SE_SE_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_SE_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"struct.cv::xfeatures2d::PairStat", align 8 ; 4 uses
  %3 = alloca %"struct.cv::xfeatures2d::PairStat", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.e = load double, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !108 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !108
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !92
  %i.h = icmp samesign ugt i64 %.sroa.0.019.i.idx, 16
  br i1 %i.h, label %bb.d, label %bb.e, !prof !80

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !92
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.j = load double, ptr %.pn18.i, align 8, !tbaa !108
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.07.011.i.i = phi ptr [ %.sroa.0.012.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.011.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.012.i.i, i64 16, i1 false), !tbaa.struct !92
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i, i64 -16 ; 2 uses
  %i.l = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !108
  %i.m = fcmp olt double %i.e, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i, !llvm.loop !385

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.012.i.i, %.lr.ph.i.i ] ; 2 uses
  store double %i.e, ptr %.sroa.07.0.lcssa.i.i, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_.exit, label %bb.b, !llvm.loop !386

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.n, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i15
  %.sroa.0.07.i = phi ptr [ %i.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i15 ], [ %i.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load double, ptr %.sroa.0.07.i, align 8, !tbaa !36 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.5.0.copyload.i.i14 = load i64, ptr %.sroa.5.0..sroa_idx.i.i13, align 8
  %.sroa.0.010.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.o = load double, ptr %.sroa.0.010.i.i, align 8, !tbaa !108
  %i.p = fcmp olt double %.sroa.03.0.copyload.i.i, %i.o
  br i1 %i.p, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i15

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i19
  %.sroa.0.012.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.sroa.0.010.i.i, %.lr.ph.i12 ] ; 4 uses
  %.sroa.07.011.i.i21 = phi ptr [ %.sroa.0.012.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.07.i, %.lr.ph.i12 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.011.i.i21, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.012.i.i20, i64 16, i1 false), !tbaa.struct !92
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.012.i.i20, i64 -16 ; 2 uses
  %i.q = load double, ptr %.sroa.0.0.i.i22, align 8, !tbaa !108
  %i.r = fcmp olt double %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i15, !llvm.loop !385

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i15: ; preds = %.lr.ph.i.i19, %.lr.ph.i12
  %.sroa.07.0.lcssa.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.012.i.i20, %.lr.ph.i.i19 ] ; 2 uses
  store double %.sroa.03.0.copyload.i.i, ptr %.sroa.07.0.lcssa.i.i16, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx5.i.i17 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i16, i64 8
  store i64 %.sroa.5.0.copyload.i.i14, ptr %.sroa.5.0..sroa_idx5.i.i17, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i18 = icmp eq ptr %i.s, %1
  br i1 %.not.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_.exit, label %.lr.ph.i12, !llvm.loop !387

bb.h:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %0, %1
  %.sroa.0.016.i24 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i25 = icmp eq ptr %.sroa.0.016.i24, %1
  %or.cond = select i1 %i.t, i1 true, i1 %.not17.i25
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.019.i27 = phi ptr [ %.sroa.0.0.i34, %bb.n ], [ %.sroa.0.016.i24, %bb.h ] ; 7 uses
  %.pn18.i28 = phi ptr [ %.sroa.0.019.i27, %bb.n ], [ %0, %bb.h ] ; 5 uses
  %i.u = load double, ptr %.sroa.0.019.i27, align 8, !tbaa !108 ; 4 uses
  %i.v = load double, ptr %0, align 8, !tbaa !108
  %i.w = fcmp olt double %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i26
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i27, i64 16, i1 false), !tbaa.struct !92
  %i.x = ptrtoint ptr %.sroa.0.019.i27 to i64
  %i.y = sub i64 %i.x, %i.b                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 4                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !80

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 32
  %i.ac = sub nsw i64 0, %i.z
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %i.y, 16
  br i1 %i.ae, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !92
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i26
  %.sroa.5.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 24
  %.sroa.5.0.copyload.i.i30 = load i64, ptr %.sroa.5.0..sroa_idx.i.i29, align 8
  %i.ag = load double, ptr %.pn18.i28, align 8, !tbaa !108
  %i.ah = fcmp olt double %i.u, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i31

.lr.ph.i.i36:                                     ; preds = %bb.m, %.lr.ph.i.i36
  %.sroa.0.012.i.i37 = phi ptr [ %.sroa.0.0.i.i39, %.lr.ph.i.i36 ], [ %.pn18.i28, %bb.m ] ; 4 uses
  %.sroa.07.011.i.i38 = phi ptr [ %.sroa.0.012.i.i37, %.lr.ph.i.i36 ], [ %.sroa.0.019.i27, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.011.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.012.i.i37, i64 16, i1 false), !tbaa.struct !92
  %.sroa.0.0.i.i39 = getelementptr inbounds i8, ptr %.sroa.0.012.i.i37, i64 -16 ; 2 uses
  %i.ai = load double, ptr %.sroa.0.0.i.i39, align 8, !tbaa !108
  %i.aj = fcmp olt double %i.u, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i31, !llvm.loop !385

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i31: ; preds = %.lr.ph.i.i36, %bb.m
  %.sroa.07.0.lcssa.i.i32 = phi ptr [ %.sroa.0.019.i27, %bb.m ], [ %.sroa.0.012.i.i37, %.lr.ph.i.i36 ] ; 2 uses
  store double %i.u, ptr %.sroa.07.0.lcssa.i.i32, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx5.i.i33 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i32, i64 8
  store i64 %.sroa.5.0.copyload.i.i30, ptr %.sroa.5.0..sroa_idx5.i.i33, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i31, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40
  %.sroa.0.0.i34 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i27, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %.sroa.0.0.i34, %1
  br i1 %.not.i35, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_.exit, label %.lr.ph.i26, !llvm.loop !386

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8sortMeanEEEEvT_T0_.exit.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv11xfeatures2d8PairStatESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8sortMeanEEEEvT_SE_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

declare void @_ZN2cv4readERKNS_8FileNodeERii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #6

declare void @_ZN2cv4readERKNS_8FileNodeERdd(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #6

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #6

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
end_hunk_0
