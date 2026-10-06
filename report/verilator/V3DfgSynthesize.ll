Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3DfgSynthesize?download=true
inline.NumInlined: 8228
inline.NumDeleted: 2495
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZSt7__mergeIN9__gnu_cxx17__normal_iteratorIPN18AstToDfgSynthesize6DriverESt6vectorIS3_SaIS3_EEEES8_St20back_insert_iteratorIS7_ENS0_5__ops15_Iter_less_iterEET1_T_SE_T0_SF_SD_T2_:bb.a
  %i.i = icmp ult i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.026.040, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !555  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.030.041, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !555  ; 2 uses
  %.not11.i.i = icmp eq i32 %i.k, %i.m
  br i1 %.not11.i.i, label %.split33, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN18AstToDfgSynthesize6DriverESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

.split33:                                         ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.026.040, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !544
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.030.041, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !544
  %i.r = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.q)
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN18AstToDfgSynthesize6DriverESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.c
  %i.t = icmp ult i32 %i.k, %i.m
  br i1 %i.t, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.split33, %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN18AstToDfgSynthesize6DriverESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !539  ; 5 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !503
  %.not.i.i9 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026.040, i64 24, i1 false), !tbaa.struct !554
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !539
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.x, ptr %i.c, align 8, !tbaa !539
  br label %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %4, align 8, !tbaa !502    ; 5 uses
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.g, label %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ad = sdiv exact i64 %i.ab, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 384307168202282325)
  %i.ah = select i1 %i.af, i64 384307168202282325, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = mul nuw nsw i64 %i.ah, 24
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #32 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026.040, i64 24, i1 false), !tbaa.struct !554
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.y, %i.u
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.aj, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !554, !alias.scope !1011
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.u
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !17

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !503
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.aq) #31
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.aj, ptr %4, align 8, !tbaa !502
  store ptr %i.an, ptr %i.c, align 8, !tbaa !539
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !503
  br label %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit

_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.026.040, i64 24
  br label %bb.n

bb.i:                                             ; preds = %.split33, %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN18AstToDfgSynthesize6DriverESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !539 ; 5 uses
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !503
  %.not.i.i10 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.030.041, i64 24, i1 false), !tbaa.struct !554
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !539
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !539
  br label %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit23

bb.k:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %4, align 8, !tbaa !502   ; 5 uses
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.l, label %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i11

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i11: ; preds = %bb.k
  %i.bc = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i12, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 384307168202282325)
  %i.bg = select i1 %i.be, i64 384307168202282325, i64 %i.bf ; 3 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.bh = mul nuw nsw i64 %i.bg, 24
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #32 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.030.041, i64 24, i1 false), !tbaa.struct !554
  %.not10.i.i.i.i.i.i14 = icmp eq ptr %i.ax, %i.at
  br i1 %.not10.i.i.i.i.i.i14, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i19, label %.lr.ph.i.i.i.i.i.i15

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i11, %.lr.ph.i.i.i.i.i.i15
  %.012.i.i.i.i.i.i16 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i15 ], [ %i.bi, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i11 ] ; 2 uses
  %.0911.i.i.i.i.i.i17 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ax, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i11 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i16, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i17, i64 24, i1 false), !tbaa.struct !554, !alias.scope !1012
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i17, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i16, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i18 = icmp eq ptr %i.bk, %i.at
  br i1 %.not.i.i.i.i.i.i18, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i19, label %.lr.ph.i.i.i.i.i.i15, !llvm.loop !17

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i19: ; preds = %.lr.ph.i.i.i.i.i.i15, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i11
  %.0.lcssa.i.i.i.i.i.i20 = phi ptr [ %i.bi, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i11 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i15 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i20, i64 24
  %.not.i23.i.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i23.i.i.i21, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i22, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i19
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !503
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bp) #31
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i22

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i22: ; preds = %bb.m, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i19
  store ptr %i.bi, ptr %4, align 8, !tbaa !502
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !539
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bq, ptr %i.d, align 8, !tbaa !503
  br label %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit23

_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit23: ; preds = %bb.j, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i22
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.030.041, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit23, %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit
  %.sroa.026.1 = phi ptr [ %i.as, %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit ], [ %.sroa.026.040, %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit23 ] ; 3 uses
  %.sroa.030.1 = phi ptr [ %.sroa.030.041, %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit ], [ %i.br, %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit23 ] ; 3 uses
  %i.bs = icmp ne ptr %.sroa.030.1, %1
  %i.bt = icmp ne ptr %.sroa.026.1, %3
  %or.cond = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !1010

.critedge:                                        ; preds = %bb.n, %bb.a
  %.sroa.026.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.026.1, %bb.n ]
  %.sroa.030.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.030.1, %bb.n ]
  %i.bu = tail call ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN18AstToDfgSynthesize6DriverESt20back_insert_iteratorISt6vectorIS4_SaIS4_EEEEET0_T_SC_SB_(ptr noundef %.sroa.030.0.lcssa, ptr noundef %1, ptr %4)
  %i.bv = tail call ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN18AstToDfgSynthesize6DriverESt20back_insert_iteratorISt6vectorIS4_SaIS4_EEEEET0_T_SC_SB_(ptr noundef %.sroa.026.0.lcssa, ptr noundef %3, ptr %i.bu)
  ret ptr %i.bv
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN18AstToDfgSynthesize6DriverESt20back_insert_iteratorISt6vectorIS4_SaIS4_EEEEET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !539
  %.pre.a = load ptr, ptr %i.g, align 8, !tbaa !503
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit, %bb.a
  ret ptr %2

bb.b:                                             ; preds = %.lr.ph, %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit
  %i.h = phi ptr [ %.pre.a, %.lr.ph ], [ %4, %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit ] ; 4 uses
  %3 = phi ptr [ %.pre, %.lr.ph ], [ %i.ae, %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit ] ; 2 uses
  %.07 = phi i64 [ %i.e, %.lr.ph ], [ %i.ag, %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit ] ; 2 uses
  %.056 = phi ptr [ %0, %.lr.ph ], [ %i.af, %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %3, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.056, i64 24, i1 false), !tbaa.struct !554
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !539
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !539
  %.pre8 = load ptr, ptr %i.g, align 8, !tbaa !503
  br label %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !502    ; 5 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = sdiv exact i64 %i.n, 24                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 384307168202282325)
  %i.t = select i1 %i.r, i64 384307168202282325, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = mul nuw nsw i64 %i.t, 24
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #32 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.056, i64 24, i1 false), !tbaa.struct !554
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.k, %i.h
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !554, !alias.scope !1017
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !17

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !503
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ac) #31
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.v, ptr %2, align 8, !tbaa !502
  store ptr %i.z, ptr %i.f, align 8, !tbaa !539
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !503
  br label %_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit

_ZNSt20back_insert_iteratorISt6vectorIN18AstToDfgSynthesize6DriverESaIS2_EEEaSERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %4 = phi ptr [ %.pre8, %bb.c ], [ %i.ad, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ae = phi ptr [ %i.j, %bb.c ], [ %i.z, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.056, i64 24
  %i.ag = add nsw i64 %.07, -1
  %i.ah = icmp sgt i64 %.07, 1
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !1016
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRK9DfgVertexEZN18AstToDfgSynthesize21containsTriLoweredVarEPS0_EUlS2_E_E9_M_invokeERKSt9_Any_dataS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1019, !nonnull !100, !align !235 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !507  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !492
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !137
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !507
  br label %_ZSt10__invoke_rIbRZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertexEUlRKS1_E_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !491  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPK9DfgVertexSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIPK9DfgVertexSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !137
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPK9DfgVertexSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i

_ZNSt6vectorIPK9DfgVertexSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPK9DfgVertexSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPK9DfgVertexSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !492
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #31
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPK9DfgVertexSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIPK9DfgVertexSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !491
  store ptr %i.u, ptr %i.b, align 8, !tbaa !507
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !492
  br label %_ZSt10__invoke_rIbRZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertexEUlRKS1_E_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

_ZSt10__invoke_rIbRZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertexEUlRKS1_E_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %bb.b, %_ZNSt6vectorIPK9DfgVertexSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRK9DfgVertexEZN18AstToDfgSynthesize21containsTriLoweredVarEPS0_EUlS2_E_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertexEUlRKS2_E_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertexEUlRKS0_E_, ptr %0, align 8, !tbaa !234
  br label %_ZNSt14_Function_base13_Base_managerIZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertexEUlRKS2_E_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !163
  br label %_ZNSt14_Function_base13_Base_managerIZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertexEUlRKS2_E_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !489
  store i64 %i.a, ptr %0, align 8, !tbaa !489
  br label %_ZNSt14_Function_base13_Base_managerIZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertexEUlRKS2_E_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertexEUlRKS2_E_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN7AstNode10prettyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14V3ErrorGuarded14errorContextedEb(ptr noundef nonnull align 8 dereferenceable(720) %0, i1 noundef zeroext %1) #4 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.b, ptr nonnull @.str.9, ptr nonnull @.str.10, i32 468, ptr null)
  store i8 %i.a, ptr %i.c, align 8, !tbaa !218
  ret void
}

declare void @_ZNK8FileLine11warnContextB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZNK8FileLine17warnContextParentB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !539  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !502    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !503
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN18AstToDfgSynthesize6DriverEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN18AstToDfgSynthesize6DriverEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !539
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #29
  unreachable

_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !tbaa.struct !554, !alias.scope !1023
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !17

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN18AstToDfgSynthesize6DriverESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !503
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #31
  br label %_ZNSt12_Vector_baseIN18AstToDfgSynthesize6DriverESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseIN18AstToDfgSynthesize6DriverESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !502
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !539
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
end_hunk_0
