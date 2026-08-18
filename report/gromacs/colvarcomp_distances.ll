inline.NumInlined: 2391
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE14_M_fill_assignEmRKS1_:bb.a
  %.pre24 = ptrtoint ptr %.pre22 to i64
  %.pre26 = sub i64 %.pre23, %.pre24
  %i.ac = sdiv exact i64 %.pre26, -24
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, %bb.f
  %.pre-phi27 = phi i64 [ %i.ac, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.ad = phi ptr [ %.pre21, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ %i.w, %bb.f ] ; 3 uses
  %i.ae = add i64 %.pre-phi27, %1                 ; 4 uses
  %.not7.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN12colvarmodule7rvectorEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit
  %i.af = add i64 %.pre-phi27, %1
  %i.ag = add i64 %i.af, -1
  %xtraiter37 = and i64 %i.ae, 3                  ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i.i12.prol ], [ %i.ad, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.ah, %.lr.ph.i.i.i.i12.prol ], [ %i.ae, %.lr.ph.i.i.i.i12.preheader ]
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %.lr.ph.i.i.i.i12.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !96
  %i.ah = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !728

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %.lr.ph.i.i.i.i12.preheader
  %.lcssa36.unr = phi ptr [ poison, %.lr.ph.i.i.i.i12.preheader ], [ %i.ai, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.ad, %.lr.ph.i.i.i.i12.preheader ], [ %i.ai, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i12.preheader ], [ %i.ah, %.lr.ph.i.i.i.i12.prol ]
  %i.aj = icmp ult i64 %i.ag, 3
  br i1 %i.aj, label %_ZSt24__uninitialized_fill_n_aIPN12colvarmodule7rvectorEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !96
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !96
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !96
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !96
  %i.an = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPN12colvarmodule7rvectorEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !726

_ZSt24__uninitialized_fill_n_aIPN12colvarmodule7rvectorEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ad, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ], [ %.lcssa36.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i.i12 ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.v, align 8, !tbaa !311
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = icmp eq i64 %1, 0
  br i1 %i.ap, label %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = mul nuw nsw i64 %1, 24              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  %i.ar = add nsw i64 %.idx.i.i, -24              ; 2 uses
  %i.as = udiv i64 %i.ar, 24
  %i.at = add nuw nsw i64 %i.as, 1
  %xtraiter = and i64 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i14.prol.loopexit, label %.lr.ph.i.i.i.i14.prol

.lr.ph.i.i.i.i14.prol:                            ; preds = %bb.h, %.lr.ph.i.i.i.i14.prol
  %.06.i.i.i.i15.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i14.prol ], [ %i.c, %bb.h ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i14.prol ], [ 0, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i15.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !96
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i14.prol.loopexit, label %.lr.ph.i.i.i.i14.prol, !llvm.loop !729

.lr.ph.i.i.i.i14.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i14.prol, %bb.h
  %.06.i.i.i.i15.unr = phi ptr [ %i.c, %bb.h ], [ %i.au, %.lr.ph.i.i.i.i14.prol ]
  %i.av = icmp ult i64 %i.ar, 72
  br i1 %i.av, label %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %.lr.ph.i.i.i.i14.prol.loopexit, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i15 = phi ptr [ %i.az, %.lr.ph.i.i.i.i14 ], [ %.06.i.i.i.i15.unr, %.lr.ph.i.i.i.i14.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !96
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !96
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !96
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !96
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 96 ; 2 uses
  %.not.i.i.i.i16.3 = icmp eq ptr %i.az, %i.aq
  br i1 %.not.i.i.i.i16.3, label %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i14, !llvm.loop !727

_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i14, %.lr.ph.i.i.i.i14.prol.loopexit
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !311
  br label %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit

_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit.loopexit, %bb.g
  %i.ba = phi ptr [ %i.w, %bb.g ], [ %.pre, %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit.loopexit ]
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.aq, %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.ba, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, label %_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !311
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i, %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EEC2EmRKS1_RKS2_.exit, %_ZSt24__uninitialized_fill_n_aIPN12colvarmodule7rvectorEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK19rotation_derivative20calc_derivative_implILb0ELb1ELb0EEEvRA4_A4_KN12colvarmodule7rvectorEPS2_PSt5arrayIS2_Lm4EEPS8_IS9_Lm4EE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load <2 x double>, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.o = load <2 x double>, ptr %i.n, align 8
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.au = load <2 x double>, ptr %i.a, align 8, !tbaa !95 ; 2 uses
  %i.av = load <6 x double>, ptr %1, align 8, !tbaa !95, !noalias !94 ; 4 uses
  %i.aw = load double, ptr %i.d, align 8, !tbaa !102, !noalias !730 ; 2 uses
  %i.ax = load double, ptr %i.c, align 8, !tbaa !97, !noalias !730 ; 2 uses
  %i.ay = load double, ptr %i.b, align 8, !tbaa !109, !noalias !733 ; 2 uses
  %i.az = load <3 x double>, ptr %i.f, align 8, !tbaa !95, !noalias !736 ; 2 uses
  %i.ba = shufflevector <3 x double> %i.az, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.bb = load double, ptr %i.g, align 8, !tbaa !109, !noalias !736
  %i.bc = load <2 x double>, ptr %i.e, align 8, !tbaa !95
  %i.bd = load <3 x double>, ptr %i.h, align 8, !tbaa !95, !noalias !739 ; 2 uses
  %i.be = shufflevector <3 x double> %i.bd, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bf = load double, ptr %i.i, align 8, !tbaa !109, !noalias !739
  %i.bg = load <3 x double>, ptr %i.l, align 8, !tbaa !95, !noalias !742 ; 2 uses
  %i.bh = shufflevector <3 x double> %i.bg, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bi = load double, ptr %i.m, align 8, !tbaa !109, !noalias !742
  %i.bj = load <4 x double>, ptr %i.ar, align 8, !tbaa !95 ; 7 uses
  %i.bk = load double, ptr %i.as, align 8, !tbaa !95
  %i.bl = shufflevector <6 x double> %i.av, <6 x double> poison, <4 x i32> <i32 0, i32 4, i32 2, i32 0>
  %i.bm = shufflevector <4 x double> %i.bj, <4 x double> poison, <3 x i32> <i32 poison, i32 poison, i32 0>
  %i.bn = shufflevector <2 x double> %i.au, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.bo = shufflevector <3 x double> %i.bn, <3 x double> %i.bm, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %i.bp = fmul <4 x double> %i.bl, %i.bo
  %i.bq = shufflevector <6 x double> %i.av, <6 x double> poison, <4 x i32> <i32 3, i32 1, i32 5, i32 3>
  %i.br = shufflevector <2 x double> %i.au, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x double> %i.br, <4 x double> %i.bj, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %i.bt = fmul <4 x double> %i.bq, %i.bs
  %i.bu = fadd <4 x double> %i.bp, %i.bt
  %i.bv = shufflevector <2 x double> %i.bc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bw = shufflevector <4 x double> %i.bv, <4 x double> %i.bj, <4 x i32> <i32 0, i32 0, i32 0, i32 6>
  %i.bx = fmul <4 x double> %i.ba, %i.bw
  %i.by = fadd <4 x double> %i.bu, %i.bx
  %i.bz = shufflevector <4 x double> %i.bv, <4 x double> %i.bj, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.ca = fmul <4 x double> %i.be, %i.bz
  %i.cb = fadd <4 x double> %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !95 ; 3 uses
  %i.ce = load <3 x double>, ptr %i.q, align 8, !tbaa !95, !noalias !745 ; 3 uses
  %i.cf = shufflevector <3 x double> %i.ce, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cg = load double, ptr %i.r, align 8, !tbaa !109, !noalias !745 ; 3 uses
  %i.ch = insertelement <4 x double> %i.p, double %i.cd, i64 1
  %i.ci = shufflevector <4 x double> %i.ch, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cj = fmul <4 x double> %i.cf, %i.ci
  %5 = extractelement <3 x double> %i.ce, i64 2   ; 2 uses
  %6 = fmul double %5, %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cu = load <3 x double>, ptr %i.t, align 8, !tbaa !95, !noalias !748 ; 2 uses
  %i.cv = shufflevector <3 x double> %i.cu, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cw = load double, ptr %i.u, align 8, !tbaa !109, !noalias !748
  %i.cx = load <2 x double>, ptr %i.s, align 8, !tbaa !95 ; 2 uses
  %i.cy = load <3 x double>, ptr %i.v, align 8, !tbaa !95, !noalias !751 ; 2 uses
  %i.cz = shufflevector <3 x double> %i.cy, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.da = load double, ptr %i.w, align 8, !tbaa !109, !noalias !751
  %i.db = load <3 x double>, ptr %i.y, align 8, !tbaa !95, !noalias !754 ; 2 uses
  %i.dc = shufflevector <3 x double> %i.db, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dd = load double, ptr %i.z, align 8, !tbaa !109, !noalias !754
  %i.de = load <2 x double>, ptr %i.x, align 8, !tbaa !95 ; 2 uses
  %i.df = load <3 x double>, ptr %i.aa, align 8, !tbaa !95, !noalias !757 ; 2 uses
  %i.dg = shufflevector <3 x double> %i.df, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dh = load double, ptr %i.ab, align 8, !tbaa !109, !noalias !757
  %i.di = load <3 x double>, ptr %i.ad, align 8, !tbaa !95, !noalias !760 ; 2 uses
  %i.dj = shufflevector <3 x double> %i.di, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dk = load double, ptr %i.ae, align 8, !tbaa !109, !noalias !760
  %i.dl = load <2 x double>, ptr %i.ac, align 8, !tbaa !95 ; 2 uses
  %i.dm = load <3 x double>, ptr %i.af, align 8, !tbaa !95, !noalias !763 ; 2 uses
  %i.dn = shufflevector <3 x double> %i.dm, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.do = load double, ptr %i.ag, align 8, !tbaa !109, !noalias !763
  %i.dp = load <3 x double>, ptr %i.ai, align 8, !tbaa !95, !noalias !766 ; 2 uses
  %i.dq = shufflevector <3 x double> %i.dp, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dr = load double, ptr %i.aj, align 8, !tbaa !109, !noalias !766
  %i.ds = load <2 x double>, ptr %i.ah, align 8, !tbaa !95 ; 2 uses
  %i.dt = load <3 x double>, ptr %i.ak, align 8, !tbaa !95, !noalias !769 ; 2 uses
  %i.du = shufflevector <3 x double> %i.dt, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dv = load double, ptr %i.al, align 8, !tbaa !109, !noalias !769
  %i.dw = load <3 x double>, ptr %i.an, align 8, !tbaa !95, !noalias !772 ; 2 uses
  %i.dx = shufflevector <3 x double> %i.dw, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dy = load double, ptr %i.ao, align 8, !tbaa !109, !noalias !772
  %i.dz = load <2 x double>, ptr %i.am, align 8, !tbaa !95 ; 2 uses
  %i.ea = load <3 x double>, ptr %i.ap, align 8, !tbaa !95, !noalias !775 ; 2 uses
  %i.eb = shufflevector <3 x double> %i.ea, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ec = load double, ptr %i.aq, align 8, !tbaa !109, !noalias !775
  %i.ed = load <2 x double>, ptr %i.ck, align 8, !tbaa !95 ; 3 uses
  %i.ee = load double, ptr %i.cl, align 8, !tbaa !95
  %i.ef = shufflevector <2 x double> %i.cx, <2 x double> %i.ed, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.eg = fmul <4 x double> %i.cv, %i.ef
  %i.eh = shufflevector <2 x double> %i.cx, <2 x double> %i.ed, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ei = fmul <4 x double> %i.cz, %i.eh
  %i.ej = load <2 x double>, ptr %i.cm, align 8, !tbaa !95 ; 3 uses
  %i.ek = load double, ptr %i.cn, align 8, !tbaa !95
  %i.el = shufflevector <2 x double> %i.de, <2 x double> %i.ej, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.em = fmul <4 x double> %i.dc, %i.el
  %i.en = shufflevector <2 x double> %i.de, <2 x double> %i.ej, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.eo = fmul <4 x double> %i.dg, %i.en
  %i.ep = load <2 x double>, ptr %i.co, align 8, !tbaa !95 ; 3 uses
  %i.eq = load double, ptr %i.cp, align 8, !tbaa !95
  %i.er = shufflevector <2 x double> %i.dl, <2 x double> %i.ep, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.es = fmul <4 x double> %i.dj, %i.er
  %i.et = shufflevector <2 x double> %i.dl, <2 x double> %i.ep, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.eu = fmul <4 x double> %i.dn, %i.et
  %i.ev = load <2 x double>, ptr %i.cq, align 8, !tbaa !95 ; 3 uses
  %i.ew = load double, ptr %i.cr, align 8, !tbaa !95
  %i.ex = shufflevector <2 x double> %i.ds, <2 x double> %i.ev, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.ey = fmul <4 x double> %i.dq, %i.ex
  %i.ez = shufflevector <2 x double> %i.ds, <2 x double> %i.ev, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.fa = fmul <4 x double> %i.du, %i.ez
  %i.fb = load <2 x double>, ptr %i.cs, align 8, !tbaa !95 ; 3 uses
  %i.fc = load double, ptr %i.ct, align 8, !tbaa !95
  %i.fd = shufflevector <2 x double> %i.dz, <2 x double> %i.fb, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.fe = fmul <4 x double> %i.dx, %i.fd
  %i.ff = shufflevector <2 x double> %i.dz, <2 x double> %i.fb, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.fg = fmul <4 x double> %i.eb, %i.ff
  %.sroa.4342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.fk = load <2 x double>, ptr %i.at, align 8, !tbaa !95 ; 3 uses
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fm = shufflevector <2 x double> %i.k, <2 x double> %i.fk, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fn = fmul <4 x double> %i.bh, %i.fm
  %i.fo = fadd <4 x double> %i.cb, %i.fn
  %i.fp = fadd <4 x double> %i.fo, %i.cj
  %i.fq = fadd <4 x double> %i.fp, %i.eg
  %i.fr = fadd <4 x double> %i.fq, %i.ei
  %i.fs = fadd <4 x double> %i.fr, %i.em
  %i.ft = fadd <4 x double> %i.fs, %i.eo
  %i.fu = fadd <4 x double> %i.ft, %i.es
  %i.fv = fadd <4 x double> %i.fu, %i.eu
  %i.fw = fadd <4 x double> %i.fv, %i.ey
  %i.fx = fadd <4 x double> %i.fw, %i.fa
  %i.fy = fadd <4 x double> %i.fx, %i.fe
  %i.fz = fadd <4 x double> %i.fy, %i.fg
  store <4 x double> %i.fz, ptr %3, align 8, !tbaa !95
  %i.ga = load <4 x double>, ptr %i.fh, align 8, !tbaa !95 ; 7 uses
  %i.gb = load double, ptr %i.fi, align 8, !tbaa !95
  %i.gc = insertelement <4 x double> poison, double %i.ay, i64 0
  %i.gd = insertelement <4 x double> %i.gc, double %i.ax, i64 1
  %i.ge = insertelement <4 x double> %i.gd, double %i.aw, i64 2
  %i.gf = shufflevector <4 x double> %i.ge, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.gg = shufflevector <4 x double> %i.bj, <4 x double> %i.ga, <4 x i32> <i32 0, i32 6, i32 2, i32 4> ; 2 uses
  %i.gh = shufflevector <4 x double> %i.gg, <4 x double> %i.ga, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.gi = insertelement <4 x double> %i.gh, double %i.bk, i64 2 ; 2 uses
  %i.gj = fmul <4 x double> %i.gf, %i.gi
  %i.gk = shufflevector <6 x double> %i.av, <6 x double> poison, <4 x i32> <i32 4, i32 0, i32 2, i32 4>
  %i.gl = shufflevector <4 x double> %i.bj, <4 x double> %i.gi, <4 x i32> <i32 6, i32 7, i32 0, i32 poison>
  %i.gm = shufflevector <4 x double> %i.gl, <4 x double> %i.ga, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gn = fmul <4 x double> %i.gk, %i.gm
  %i.go = fadd <4 x double> %i.gj, %i.gn
  %i.gp = insertelement <4 x double> poison, double %i.bb, i64 0
  %i.gq = shufflevector <4 x double> %i.gp, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.gr = shufflevector <4 x double> %i.gq, <4 x double> %i.gg, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gs = shufflevector <4 x double> %i.bj, <4 x double> %i.ba, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %i.gt = shufflevector <4 x double> %i.gs, <4 x double> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.gu = shufflevector <4 x double> %i.gt, <4 x double> %i.ga, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.gv = fmul <4 x double> %i.gr, %i.gu
  %i.gw = fadd <4 x double> %i.go, %i.gv
  %i.gx = shufflevector <3 x double> %i.bd, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.gy = insertelement <4 x double> poison, double %i.bf, i64 0
  %i.gz = shufflevector <4 x double> %i.gy, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ha = shufflevector <4 x double> %i.gz, <4 x double> %i.gx, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hb = shufflevector <4 x double> %i.fl, <4 x double> %i.ga, <4 x i32> <i32 0, i32 7, i32 0, i32 7>
  %i.hc = fmul <4 x double> %i.ha, %i.hb
  %i.hd = fadd <4 x double> %i.gw, %i.hc
  %i.he = shufflevector <3 x double> %i.bg, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.hf = insertelement <4 x double> poison, double %i.bi, i64 0
  %i.hg = shufflevector <4 x double> %i.hf, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.hh = shufflevector <4 x double> %i.hg, <4 x double> %i.he, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !95 ; 3 uses
  %i.hk = shufflevector <3 x double> %i.ce, <3 x double> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.hl = insertelement <2 x double> %i.hk, double %i.cg, i64 0
  %i.hm = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hj, i64 1
  %7 = fmul <2 x double> %i.hl, %i.hn
  %8 = fmul double %i.cg, %i.hj
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 576
  %9 = shufflevector <2 x double> %7, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = insertelement <4 x double> %9, double %6, i64 2
  %11 = insertelement <4 x double> %10, double %8, i64 3
  %i.hw = load <4 x double>, ptr %i.ho, align 8, !tbaa !95 ; 4 uses
  %i.hx = load double, ptr %i.hq, align 8, !tbaa !95
  %i.hy = load double, ptr %i.hp, align 8, !tbaa !95
  %i.hz = shufflevector <3 x double> %i.cu, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.ia = insertelement <4 x double> poison, double %i.cw, i64 0
  %i.ib = shufflevector <4 x double> %i.ia, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ic = shufflevector <4 x double> %i.ib, <4 x double> %i.hz, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.id = shufflevector <2 x double> %i.ed, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.ie = shufflevector <4 x double> %i.id, <4 x double> %i.hw, <4 x i32> <i32 0, i32 4, i32 2, i32 4>
  %i.if = fmul <4 x double> %i.ic, %i.ie
  %i.ig = shufflevector <3 x double> %i.cy, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.ih = insertelement <4 x double> poison, double %i.da, i64 0
  %i.ii = shufflevector <4 x double> %i.ih, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ij = shufflevector <4 x double> %i.ii, <4 x double> %i.ig, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ik = shufflevector <4 x double> %i.hw, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.il = insertelement <2 x double> %i.ik, double %i.ee, i64 0
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.in = fmul <4 x double> %i.ij, %i.im
  %i.io = shufflevector <3 x double> %i.db, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.ip = insertelement <4 x double> poison, double %i.dd, i64 0
  %i.iq = shufflevector <4 x double> %i.ip, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ir = shufflevector <4 x double> %i.iq, <4 x double> %i.io, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.is = shufflevector <2 x double> %i.ej, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.it = shufflevector <4 x double> %i.is, <4 x double> %i.hw, <4 x i32> <i32 0, i32 6, i32 2, i32 6>
  %i.iu = fmul <4 x double> %i.ir, %i.it
  %i.iv = shufflevector <3 x double> %i.df, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.iw = insertelement <4 x double> poison, double %i.dh, i64 0
  %i.ix = shufflevector <4 x double> %i.iw, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.iy = shufflevector <4 x double> %i.ix, <4 x double> %i.iv, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.iz = shufflevector <4 x double> %i.hw, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ja = insertelement <2 x double> %i.iz, double %i.ek, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jc = fmul <4 x double> %i.iy, %i.jb
  %i.jd = load <4 x double>, ptr %i.hr, align 8, !tbaa !95 ; 4 uses
  %i.je = load double, ptr %i.ht, align 8, !tbaa !95
  %i.jf = load double, ptr %i.hs, align 8, !tbaa !95
  %i.jg = shufflevector <3 x double> %i.di, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.jh = insertelement <4 x double> poison, double %i.dk, i64 0
  %i.ji = shufflevector <4 x double> %i.jh, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.jj = shufflevector <4 x double> %i.ji, <4 x double> %i.jg, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.jk = shufflevector <2 x double> %i.ep, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.jl = shufflevector <4 x double> %i.jk, <4 x double> %i.jd, <4 x i32> <i32 0, i32 4, i32 2, i32 4>
  %i.jm = fmul <4 x double> %i.jj, %i.jl
  %i.jn = shufflevector <3 x double> %i.dm, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.jo = insertelement <4 x double> poison, double %i.do, i64 0
  %i.jp = shufflevector <4 x double> %i.jo, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.jq = shufflevector <4 x double> %i.jp, <4 x double> %i.jn, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.jr = shufflevector <4 x double> %i.jd, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.js = insertelement <2 x double> %i.jr, double %i.eq, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ju = fmul <4 x double> %i.jq, %i.jt
  %i.jv = shufflevector <3 x double> %i.dp, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.jw = insertelement <4 x double> poison, double %i.dr, i64 0
  %i.jx = shufflevector <4 x double> %i.jw, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.jy = shufflevector <4 x double> %i.jx, <4 x double> %i.jv, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.jz = shufflevector <2 x double> %i.ev, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.ka = shufflevector <4 x double> %i.jz, <4 x double> %i.jd, <4 x i32> <i32 0, i32 6, i32 2, i32 6>
  %i.kb = fmul <4 x double> %i.jy, %i.ka
  %i.kc = shufflevector <3 x double> %i.dt, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.kd = insertelement <4 x double> poison, double %i.dv, i64 0
  %i.ke = shufflevector <4 x double> %i.kd, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.kf = shufflevector <4 x double> %i.ke, <4 x double> %i.kc, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.kg = shufflevector <4 x double> %i.jd, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.kh = insertelement <2 x double> %i.kg, double %i.ew, i64 0
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.kj = fmul <4 x double> %i.kf, %i.ki
  %i.kk = load <2 x double>, ptr %i.hu, align 8, !tbaa !95 ; 3 uses
  %i.kl = load double, ptr %i.hv, align 8, !tbaa !95
  %i.km = shufflevector <3 x double> %i.dw, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.kn = insertelement <4 x double> poison, double %i.dy, i64 0
  %i.ko = shufflevector <4 x double> %i.kn, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.kp = shufflevector <4 x double> %i.ko, <4 x double> %i.km, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.kq = shufflevector <2 x double> %i.fb, <2 x double> %i.kk, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.kr = fmul <4 x double> %i.kp, %i.kq
  %i.ks = shufflevector <3 x double> %i.ea, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.kt = insertelement <4 x double> poison, double %i.ec, i64 0
  %i.ku = shufflevector <4 x double> %i.kt, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.kv = shufflevector <4 x double> %i.ku, <4 x double> %i.ks, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.kw = insertelement <2 x double> %i.kk, double %i.fc, i64 0
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ky = fmul <4 x double> %i.kv, %i.kx
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !95
  %i.ld = load <2 x double>, ptr %i.fj, align 8, !tbaa !95 ; 3 uses
  %i.le = shufflevector <2 x double> %i.fk, <2 x double> %i.ld, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.lf = fmul <4 x double> %i.hh, %i.le
  %i.lg = fadd <4 x double> %i.hd, %i.lf
  %i.lh = fadd <4 x double> %i.lg, %11
  %i.li = fadd <4 x double> %i.lh, %i.if
  %i.lj = fadd <4 x double> %i.li, %i.in
  %i.lk = fadd <4 x double> %i.lj, %i.iu
  %i.ll = fadd <4 x double> %i.lk, %i.jc
  %i.lm = fadd <4 x double> %i.ll, %i.jm
  %i.ln = fadd <4 x double> %i.lm, %i.ju
  %i.lo = fadd <4 x double> %i.ln, %i.kb
  %i.lp = fadd <4 x double> %i.lo, %i.kj
  %i.lq = fadd <4 x double> %i.lp, %i.kr
  %i.lr = fadd <4 x double> %i.lq, %i.ky
  %i.ls = shufflevector <4 x double> %i.lr, <4 x double> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.ls, ptr %.sroa.4342.0..sroa_idx, align 8, !tbaa !95
  %i.lt = load <2 x double>, ptr %i.kz, align 8, !tbaa !95 ; 3 uses
  %i.lu = shufflevector <6 x double> %i.av, <6 x double> poison, <4 x i32> <i32 2, i32 0, i32 4, i32 2>
  %i.lv = shufflevector <2 x double> %i.lt, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison> ; 2 uses
  %i.lw = shufflevector <4 x double> %i.ga, <4 x double> %i.lv, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.lx = shufflevector <4 x double> %i.lw, <4 x double> %i.lv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ly = fmul <4 x double> %i.lu, %i.lx
  %i.lz = insertelement <4 x double> poison, double %i.aw, i64 0
  %i.ma = insertelement <4 x double> %i.lz, double %i.ax, i64 1
  %i.mb = insertelement <4 x double> %i.ma, double %i.ay, i64 2
  %i.mc = shufflevector <4 x double> %i.mb, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.md = shufflevector <2 x double> %i.lt, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.me = insertelement <3 x double> %i.md, double %i.gb, i64 0
  %i.mf = shufflevector <2 x double> %i.lt, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.mg = shufflevector <3 x double> %i.me, <3 x double> %i.mf, <4 x i32> <i32 0, i32 1, i32 3, i32 1>
  %i.mh = fmul <4 x double> %i.mc, %i.mg
  %i.mi = fadd <4 x double> %i.ly, %i.mh
  %i.mj = load <2 x double>, ptr %i.la, align 8, !tbaa !95 ; 2 uses
  %i.mk = shufflevector <3 x double> %i.az, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 2>
  %i.ml = shufflevector <4 x double> %i.mk, <4 x double> %i.gq, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.mm = shufflevector <4 x double> %i.ga, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> %i.mj, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.mo = fmul <4 x double> %i.ml, %i.mn
  %i.mp = fadd <4 x double> %i.mi, %i.mo
  %i.mq = shufflevector <4 x double> %i.gx, <4 x double> %i.gz, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.mr = shufflevector <2 x double> %i.ld, <2 x double> %i.mj, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.ms = fmul <4 x double> %i.mq, %i.mr
  %i.mt = fadd <4 x double> %i.mp, %i.ms
  %i.mu = shufflevector <4 x double> %i.he, <4 x double> %i.hg, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.mv = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.mw = insertelement <2 x double> %i.mv, double %i.lc, i64 1
  %i.mx = shufflevector <2 x double> %i.mw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.my = fmul <4 x double> %i.mu, %i.mx
  %i.mz = fadd <4 x double> %i.mt, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.nb = load double, ptr %i.na, align 8, !tbaa !95 ; 3 uses
  %i.nc = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.nd = insertelement <2 x double> %i.nc, double %i.nb, i64 1
  %12 = fmul <2 x double> %i.hk, %i.nd
  %13 = fmul double %i.cg, %i.nb
  %14 = fmul double %5, %i.nb
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 696
  %15 = shufflevector <2 x double> %12, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %16 = insertelement <4 x double> %15, double %13, i64 2
  %17 = insertelement <4 x double> %16, double %14, i64 3
  %i.nj = fadd <4 x double> %i.mz, %17
  %i.nk = load <2 x double>, ptr %i.ne, align 8, !tbaa !95 ; 2 uses
  %i.nl = shufflevector <4 x double> %i.hz, <4 x double> %i.ib, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.nm = shufflevector <2 x double> %i.ik, <2 x double> %i.nk, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.nn = fmul <4 x double> %i.nl, %i.nm
  %i.no = fadd <4 x double> %i.nj, %i.nn
  %i.np = shufflevector <4 x double> %i.ig, <4 x double> %i.ii, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.nq = insertelement <2 x double> %i.nk, double %i.hy, i64 0
  %i.nr = shufflevector <2 x double> %i.nq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ns = fmul <4 x double> %i.np, %i.nr
  %i.nt = fadd <4 x double> %i.no, %i.ns
  %i.nu = load <2 x double>, ptr %i.nf, align 8, !tbaa !95 ; 2 uses
  %i.nv = shufflevector <4 x double> %i.io, <4 x double> %i.iq, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.nw = shufflevector <2 x double> %i.iz, <2 x double> %i.nu, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.nx = fmul <4 x double> %i.nv, %i.nw
  %i.ny = fadd <4 x double> %i.nt, %i.nx
  %i.nz = shufflevector <4 x double> %i.iv, <4 x double> %i.ix, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.oa = insertelement <2 x double> %i.nu, double %i.hx, i64 0
  %i.ob = shufflevector <2 x double> %i.oa, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.oc = fmul <4 x double> %i.nz, %i.ob
  %i.od = fadd <4 x double> %i.ny, %i.oc
  %i.oe = load <2 x double>, ptr %i.ng, align 8, !tbaa !95 ; 2 uses
  %i.of = shufflevector <4 x double> %i.jg, <4 x double> %i.ji, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.og = shufflevector <2 x double> %i.jr, <2 x double> %i.oe, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.oh = fmul <4 x double> %i.of, %i.og
  %i.oi = fadd <4 x double> %i.od, %i.oh
  %i.oj = shufflevector <4 x double> %i.jn, <4 x double> %i.jp, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ok = insertelement <2 x double> %i.oe, double %i.jf, i64 0
  %i.ol = shufflevector <2 x double> %i.ok, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.om = fmul <4 x double> %i.oj, %i.ol
  %i.on = fadd <4 x double> %i.oi, %i.om
  %i.oo = load <2 x double>, ptr %i.nh, align 8, !tbaa !95 ; 2 uses
  %i.op = shufflevector <4 x double> %i.jv, <4 x double> %i.jx, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.oq = shufflevector <2 x double> %i.kg, <2 x double> %i.oo, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.or = fmul <4 x double> %i.op, %i.oq
  %i.os = fadd <4 x double> %i.on, %i.or
  %i.ot = shufflevector <4 x double> %i.kc, <4 x double> %i.ke, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ou = insertelement <2 x double> %i.oo, double %i.je, i64 0
  %i.ov = shufflevector <2 x double> %i.ou, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ow = fmul <4 x double> %i.ot, %i.ov
  %i.ox = fadd <4 x double> %i.os, %i.ow
  %i.oy = load <2 x double>, ptr %i.ni, align 8, !tbaa !95 ; 2 uses
  %i.oz = shufflevector <4 x double> %i.km, <4 x double> %i.ko, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.pa = shufflevector <2 x double> %i.kk, <2 x double> %i.oy, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.pb = fmul <4 x double> %i.oz, %i.pa
  %i.pc = fadd <4 x double> %i.ox, %i.pb
  %i.pd = shufflevector <4 x double> %i.ks, <4 x double> %i.ku, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.pe = insertelement <2 x double> %i.oy, double %i.kl, i64 0
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.pg = fmul <4 x double> %i.pd, %i.pf
  %i.ph = fadd <4 x double> %i.pc, %i.pg
  store <4 x double> %i.ph, ptr %.sroa.5250.0..sroa_idx, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar11eigenvectorC2Ev(ptr noundef nonnull align 8 dereferenceable(1672) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @_ZN6colvar3cvcC2Ev(ptr noundef nonnull align 8 dereferenceable(1608) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 16), ptr %0, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 248), ptr %i.b, align 8, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.f, ptr noundef nonnull align 1 dereferenceable(11) @.str.72, i64 11, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 11, ptr %i.g, align 8, !tbaa !170
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 0, ptr %i.h, align 1, !tbaa !169
  %i.i = invoke noundef i32 @_ZN6colvar3cvc17set_function_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.e       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !168    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.f, align 8, !tbaa !169
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  invoke void @_ZN10colvardeps7provideEib(ptr noundef nonnull align 8 dereferenceable(120) %i.b, i32 noundef 9, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN10colvardeps7provideEib(ptr noundef nonnull align 8 dereferenceable(120) %i.b, i32 noundef 10, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 1, ptr %i.a, align 4, !tbaa !320
  invoke void @_ZN11colvarvalue4typeERKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(168) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %1, align 8, !tbaa !168    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.f
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.r = load i64, ptr %i.f, align 8, !tbaa !169
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.h

bb.f:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %.pn5 = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.t, %bb.f ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !307  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !310
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit: ; preds = %bb.h, %bb.i
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !307 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit11, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !310
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #25
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit11

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit11: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, %bb.j
  call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1608) %0) #24
  resume { ptr, i32 } %.pn5
}

declare noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRbRKbNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #0

declare void @_ZN12colvarmodule8rotation21calc_optimal_rotationERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN12colvarmodule6to_strB5cxx11ERKdmm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar9cartesianC2Ev(ptr noundef nonnull align 8 dereferenceable(1640) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @_ZN6colvar3cvcC2Ev(ptr noundef nonnull align 8 dereferenceable(1608) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar9cartesianE, i64 16), ptr %0, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar9cartesianE, i64 248), ptr %i.b, align 8, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.e, ptr noundef nonnull align 1 dereferenceable(9) @.str.96, i64 9, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 9, ptr %i.f, align 8, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 0, ptr %i.g, align 1, !tbaa !169
  %i.h = invoke noundef i32 @_ZN6colvar3cvc17set_function_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d       ; 0 uses

end_hunk_0
