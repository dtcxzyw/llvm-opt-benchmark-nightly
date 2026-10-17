Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/c_api?download=true
inline.NumInlined: 9409
inline.NumDeleted: 3547
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS4_S6_EEmRKS4_:bb.a
.noexc85:                                         ; preds = %.lr.ph.i.i.i82
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i83, i64 24 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.co, %i.g
  br i1 %.not.i.i.i84, label %_ZSt4fillIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i82, !llvm.loop !1240

_ZSt4fillIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RKT0_.exit: ; preds = %.noexc85, %.noexc, %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit80.thread
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !484 ; 2 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i87, label %_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueD2Ev.exit88, label %bb.m

bb.m:                                             ; preds = %_ZSt4fillIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RKT0_.exit
  call void @free(ptr noundef nonnull %i.cp) #24
  br label %_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueD2Ev.exit88

_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueD2Ev.exit88: ; preds = %_ZSt4fillIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RKT0_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.t

bb.n:                                             ; preds = %bb.b
  %i.cq = load ptr, ptr %0, align 8, !tbaa !481   ; 7 uses
  %i.cr = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.cs = sub i64 %i.i, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 24                ; 4 uses
  %i.cu = sub nsw i64 384307168202282325, %i.ct
  %i.cv = icmp ult i64 %i.cu, %2
  br i1 %i.cv, label %bb.o, label %_ZNKSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.165) #41
  unreachable

_ZNKSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %2)
  %i.cw = add nsw i64 %.sroa.speculated.i, %i.ct  ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.ct
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 384307168202282325)
  %i.cz = select i1 %i.cx, i64 384307168202282325, i64 %i.cy ; 3 uses
  %i.da = ptrtoint ptr %1 to i64
  %i.db = sub i64 %i.da, %i.cr
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %.lr.ph.i.i.i.i90, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.dc = mul nuw nsw i64 %i.cz, 24
  %i.dd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #43
  br label %.lr.ph.i.i.i.i90

.lr.ph.i.i.i.i90:                                 ; preds = %bb.p, %_ZNKSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.de = phi ptr [ %i.dd, %bb.p ], [ null, %_ZNKSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i.i.i.i91 = load ptr, ptr %3, align 8, !tbaa !484 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !512 ; 3 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %.pre.i.i.i.i91 to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i94 = icmp eq ptr %i.dh, %.pre.i.i.i.i91
  %i.dl = getelementptr inbounds nuw i8, ptr null, i64 %i.dk
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.i.i.i.i102, %.lr.ph.i.i.i.i90
  %.014.i.i.i.i92 = phi ptr [ %i.df, %.lr.ph.i.i.i.i90 ], [ %i.dy, %.loopexit.i.i.i.i102 ] ; 7 uses
  %.01113.i.i.i.i93 = phi i64 [ %2, %.lr.ph.i.i.i.i90 ], [ %i.dx, %.loopexit.i.i.i.i102 ]
  br i1 %.not.i.i.i.i.i.i.i.i.i94, label %.thread182, label %.lr.ph.i.i.i.i.i.i.i98.preheader

.thread182:                                       ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i92, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i92, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i92, i8 0, i64 16, i1 false)
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !511
  br label %.loopexit.i.i.i.i102

.lr.ph.i.i.i.i.i.i.i98.preheader:                 ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.do = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.dk) #24
  %.not.i.i.i.i.i.i.i.i.i.i.i.i95 = icmp eq i32 %i.do, 0
  %i.dp = load ptr, ptr %i.a, align 8
  %.0.i.i.i.i.i.i.i.i.i.i.i.i96 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i95, ptr %i.dp, ptr null ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i96, ptr %.014.i.i.i.i92, align 8, !tbaa !484
  %i.dq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i92, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i96, ptr %i.dq, align 8, !tbaa !512
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i96, i64 %i.dk
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i92, i64 16
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !511
  br label %.lr.ph.i.i.i.i.i.i.i98

.lr.ph.i.i.i.i.i.i.i98:                           ; preds = %.lr.ph.i.i.i.i.i.i.i98.preheader, %.lr.ph.i.i.i.i.i.i.i98
  %.015.i.i.i.i.i.i.i99 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i98 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i96, %.lr.ph.i.i.i.i.i.i.i98.preheader ] ; 2 uses
  %.sroa.010.014.i.i.i.i.i.i.i100 = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i.i98 ], [ %.pre.i.i.i.i91, %.lr.ph.i.i.i.i.i.i.i98.preheader ] ; 2 uses
  %i.dt = load double, ptr %.sroa.010.014.i.i.i.i.i.i.i100, align 8, !tbaa !127
  store double %i.dt, ptr %.015.i.i.i.i.i.i.i99, align 8, !tbaa !127
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i.i.i.i100, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i99, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i101 = icmp eq ptr %i.du, %i.dh
  br i1 %.not.i.i.i.i.i.i.i101, label %.loopexit.i.i.i.i102, label %.lr.ph.i.i.i.i.i.i.i98, !llvm.loop !31

.loopexit.i.i.i.i102:                             ; preds = %.lr.ph.i.i.i.i.i.i.i98, %.thread182
  %i.dw = phi ptr [ %i.dm, %.thread182 ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i98 ]
  %.0.lcssa.i.i.i.i.i.i.i103 = phi ptr [ null, %.thread182 ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i98 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i103, ptr %i.dw, align 8, !tbaa !512
  %i.dx = add nsw i64 %.01113.i.i.i.i93, -1       ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i92, i64 24
  %.not.i.i.i.i104 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i104, label %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit106, label %bb.q, !llvm.loop !1241

_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit106: ; preds = %.loopexit.i.i.i.i102
  %.not11.i.i.i.i.i107 = icmp eq ptr %i.cq, %1
  br i1 %.not11.i.i.i.i.i107, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i108

.lr.ph.i.i.i.i.i108:                              ; preds = %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit106, %.lr.ph.i.i.i.i.i108
  %.013.i.i.i.i.i109 = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i108 ], [ %i.de, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit106 ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i110 = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i108 ], [ %i.cq, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit106 ] ; 4 uses
  %i.dz = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i110, align 8, !tbaa !278
  store <2 x ptr> %i.dz, ptr %.013.i.i.i.i.i109, align 8, !tbaa !278
  %i.ea = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i109, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i110, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !511
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !511
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i110, i8 0, i64 24, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i110, i64 24 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i109, i64 24 ; 2 uses
  %.not.i.i.i.i.i111 = icmp eq ptr %i.ed, %1
  br i1 %.not.i.i.i.i.i111, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i108, !llvm.loop !1238

_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i108, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit106
  %.0.lcssa.i.i.i.i.i112 = phi ptr [ %i.de, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit106 ], [ %i.ee, %.lr.ph.i.i.i.i.i108 ]
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %.0.lcssa.i.i.i.i.i112, i64 %2 ; 2 uses
  %.not11.i.i.i.i.i113 = icmp eq ptr %1, %i.g
  br i1 %.not11.i.i.i.i.i113, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit119, label %.lr.ph.i.i.i.i.i114

.lr.ph.i.i.i.i.i114:                              ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i.i.i.i114
  %.013.i.i.i.i.i115 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i114 ], [ %i.ef, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i116 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i114 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 4 uses
  %i.eg = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i116, align 8, !tbaa !278
  store <2 x ptr> %i.eg, ptr %.013.i.i.i.i.i115, align 8, !tbaa !278
  %i.eh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i115, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i116, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !511
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !511
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i116, i8 0, i64 24, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i116, i64 24 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i115, i64 24 ; 2 uses
  %.not.i.i.i.i.i117 = icmp eq ptr %i.ek, %i.g
  br i1 %.not.i.i.i.i.i117, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit119, label %.lr.ph.i.i.i.i.i114, !llvm.loop !1238

_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit119: ; preds = %.lr.ph.i.i.i.i.i114, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i.i.i.i118 = phi ptr [ %i.ef, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.el, %.lr.ph.i.i.i.i.i114 ]
  %.not4.i.i = icmp eq ptr %i.cq, %i.g
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit119, %_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.en, %_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i ], [ %i.cq, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit119 ] ; 2 uses
  %i.em = load ptr, ptr %.05.i.i, align 8, !tbaa !484 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.em) #24
  br label %_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i: ; preds = %bb.r, %.lr.ph.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.en, %i.g
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit119
  %.not.i120 = icmp eq ptr %i.cq, null
  br i1 %.not.i120, label %_ZNSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvT_S7_.exit
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !485
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ep, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.eq) #39
  br label %_ZNSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvT_S7_.exit, %bb.s
  store ptr %i.de, ptr %0, align 8, !tbaa !481
  store ptr %.0.lcssa.i.i.i.i.i118, ptr %i.f, align 8, !tbaa !482
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.cz
  store ptr %i.er, ptr %i.d, align 8, !tbaa !485
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueD2Ev.exit88, %_ZNSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !512  ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !484    ; 9 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !511
  %i.j = load ptr, ptr %0, align 8, !tbaa !484    ; 11 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE11_M_allocateEm.exit.i, label %bb.d

_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE11_M_allocateEm.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.o = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.g) #24
  %.not.i.i.i.i.i = icmp eq i32 %i.o, 0
  %i.p = load ptr, ptr %i.a, align 8
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.p, ptr null ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not13.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not13.i.i, label %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS4_EEEEPdmT_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE11_M_allocateEm.exit.i, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.d, %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE11_M_allocateEm.exit.i ] ; 2 uses
  %i.q = load double, ptr %.sroa.010.014.i.i, align 8, !tbaa !127
  store double %i.q, ptr %.015.i.i, align 8, !tbaa !127
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %.not.i11.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i11.i, label %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS4_EEEEPdmT_SC_.exit, label %.lr.ph.i.i, !llvm.loop !31

_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS4_EEEEPdmT_SC_.exit: ; preds = %.lr.ph.i.i, %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE11_M_allocateEm.exit.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS4_EEEEPdmT_SC_.exit
  tail call void @free(ptr noundef nonnull %i.j) #24
  br label %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS4_EEEEPdmT_SC_.exit, %bb.c
  store ptr %.0.i.i.i.i.i, ptr %0, align 8, !tbaa !484
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 %i.g
  store ptr %i.t, ptr %i.h, align 8, !tbaa !511
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEENS1_IPdS9_EEET0_T_SE_SD_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !512  ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.l                       ; 5 uses
  %.not24 = icmp ult i64 %i.x, %i.g
  br i1 %.not24, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp sgt i64 %i.g, 8
  br i1 %i.y, label %bb.f, label %bb.g, !prof !382

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.j, ptr align 8 %i.d, i64 %i.g, i1 false)
  %.pre29 = load ptr, ptr %0, align 8, !tbaa !484
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEENS1_IPdS9_EEET0_T_SE_SD_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = icmp eq i64 %i.g, 8
  br i1 %i.z, label %bb.h, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEENS1_IPdS9_EEET0_T_SE_SD_.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = load double, ptr %i.d, align 8, !tbaa !127
  store double %i.aa, ptr %i.j, align 8, !tbaa !127
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEENS1_IPdS9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.d
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !382

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.j, ptr align 8 %i.d, i64 %i.x, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !484
  %.pre26 = load ptr, ptr %i.u, align 8, !tbaa !512 ; 2 uses
  %.pre27 = load ptr, ptr %0, align 8, !tbaa !484 ; 2 uses
  %.pre28 = load ptr, ptr %i.b, align 8, !tbaa !512
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre31 = ptrtoint ptr %.pre27 to i64
  %.pre33 = sub i64 %.pre30, %.pre31
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.l, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = load double, ptr %i.d, align 8, !tbaa !127
  store double %i.ad, ptr %i.j, align 8, !tbaa !127
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.j, %bb.k, %bb.l
  %.pre-phi34 = phi i64 [ %.pre33, %bb.j ], [ %i.x, %bb.k ], [ 8, %bb.l ]
  %i.ae = phi ptr [ %.pre28, %bb.j ], [ %i.c, %bb.k ], [ %i.c, %bb.l ] ; 2 uses
  %i.af = phi ptr [ %.pre27, %bb.j ], [ %i.j, %bb.k ], [ %i.j, %bb.l ] ; 2 uses
  %i.ag = phi ptr [ %.pre26, %bb.j ], [ %i.v, %bb.k ], [ %i.v, %bb.l ]
  %i.ah = phi ptr [ %.pre, %bb.j ], [ %i.d, %bb.k ], [ %i.d, %bb.l ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.pre-phi34 ; 2 uses
  %.not15.i = icmp eq ptr %i.ai, %i.ae
  br i1 %.not15.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEENS1_IPdS9_EEET0_T_SE_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit, %.lr.ph.i
  %.017.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.ag, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit ] ; 2 uses
  %.01416.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ai, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit ] ; 2 uses
  %i.aj = load double, ptr %.01416.i, align 8, !tbaa !127
  store double %i.aj, ptr %.017.i, align 8, !tbaa !127
  %i.ak = getelementptr inbounds nuw i8, ptr %.01416.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %.not.i25 = icmp eq ptr %i.ak, %i.ae
  br i1 %.not.i25, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEENS1_IPdS9_EEET0_T_SE_SD_.exit, label %.lr.ph.i, !llvm.loop !1245

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEENS1_IPdS9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit, %bb.h, %bb.g, %bb.f, %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit
  %i.am = phi ptr [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit ], [ %i.af, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit ], [ %i.j, %bb.h ], [ %i.j, %bb.g ], [ %.pre29, %bb.f ], [ %i.af, %.lr.ph.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !512
  br label %bb.m

bb.m:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEENS1_IPdS9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvRKSt6vectorISt4pairIidESaIS2_EEPdEZN8LightGBM9PredictorC1EPNS9_8BoostingEiibbbbidEUlS6_S7_E_E9_M_invokeERKSt9_Any_dataS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !278
  tail call void @_ZZN8LightGBM9PredictorC1EPNS_8BoostingEiibbbbidENKUlRKSt6vectorISt4pairIidESaIS5_EEPdE_clES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKSt6vectorISt4pairIidESaIS2_EEPdEZN8LightGBM9PredictorC1EPNS9_8BoostingEiibbbbidEUlS6_S7_E_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9PredictorC1EPNS1_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS7_EEPdE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8LightGBM9PredictorC1EPNS_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS5_EEPdE_, ptr %0, align 8, !tbaa !325
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9PredictorC1EPNS1_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS7_EEPdE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !69
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9PredictorC1EPNS1_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS7_EEPdE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !532
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9PredictorC1EPNS1_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS7_EEPdE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM9PredictorC1EPNS1_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS7_EEPdE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8LightGBM9PredictorC1EPNS_8BoostingEiibbbbidENKUlRKSt6vectorISt4pairIidESaIS5_EEPdE_clES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unordered_map.396", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1247   ; 5 uses
  %i.b = tail call i32 @omp_get_thread_num()
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !510  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 100000
  %.pre = load ptr, ptr %1, align 8, !tbaa !320   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !320  ; 3 uses
  br i1 %i.e, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %.pre to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1248
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN8LightGBM9Predictor16CopyToPredictMapERKSt6vectorISt4pairIidESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map.396") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !508  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !534  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.u = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !113 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #39
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !32

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %i.v = load ptr, ptr %3, align 8, !tbaa !535
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !536
  %i.y = shl i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.z = load ptr, ptr %3, align 8, !tbaa !535    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !536
  %i.ad = shl i64 %i.ac, 3
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #39
  br label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev.exit

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN8LightGBM9Predictor18ClearPredictBufferEPdmRKSt6vectorISt4pairIidESaIS4_EE.exit

bb.f:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #24
end_hunk_0
