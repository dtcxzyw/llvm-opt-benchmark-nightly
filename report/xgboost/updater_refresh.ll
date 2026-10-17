Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_refresh?download=true
inline.NumInlined: 1828
inline.NumDeleted: 980
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt6vectorIS_IN7xgboost4tree9GradStatsESaIS2_EESaIS4_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS4_S6_EEmRKS4_:bb.a
  %i.cg = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ch = sub i64 %i.f, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 24                ; 4 uses
  %i.cj = sub nsw i64 384307168202282325, %i.ci
  %i.ck = icmp ult i64 %i.cj, %2
  br i1 %i.ck, label %bb.k, label %_ZNKSt6vectorIS_IN7xgboost4tree9GradStatsESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #31
  unreachable

_ZNKSt6vectorIS_IN7xgboost4tree9GradStatsESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %2)
  %i.cl = add nsw i64 %.sroa.speculated.i, %i.ci  ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ci
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 384307168202282325)
  %i.co = select i1 %i.cm, i64 384307168202282325, i64 %i.cn ; 4 uses
  %i.cp = ptrtoint ptr %1 to i64
  %i.cq = sub i64 %i.cp, %i.cg
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIS_IN7xgboost4tree9GradStatsESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %i.cr = mul nuw nsw i64 %i.co, 24
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #32
  br label %_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIS_IN7xgboost4tree9GradStatsESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.ct = phi ptr [ %i.cs, %bb.l ], [ null, %_ZNKSt6vectorIS_IN7xgboost4tree9GradStatsESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq ; 3 uses
  %i.cv = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEmS5_ET_S7_T0_RKT1_(ptr noundef %i.cu, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88 unwind label %bb.o ; 0 uses

_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88: ; preds = %_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE11_M_allocateEm.exit
  %.not11.i.i.i.i.i89 = icmp eq ptr %i.cf, %1
  br i1 %.not11.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88, %.lr.ph.i.i.i.i.i90
  %.013.i.i.i.i.i91 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i90 ], [ %i.ct, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88 ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i92 = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i90 ], [ %i.cf, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88 ] ; 4 uses
  %i.cw = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i92, align 8, !tbaa !157
  store <2 x ptr> %i.cw, ptr %.013.i.i.i.i.i91, align 8, !tbaa !157
  %i.cx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i91, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i92, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !71
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i92, i8 0, i64 24, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i92, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i91, i64 24 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.da, %1
  br i1 %.not.i.i.i.i.i93, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i90, !llvm.loop !323

_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i90, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88
  %.0.lcssa.i.i.i.i.i94 = phi ptr [ %i.ct, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88 ], [ %i.db, %.lr.ph.i.i.i.i.i90 ]
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %.0.lcssa.i.i.i.i.i94, i64 %2 ; 2 uses
  %.not11.i.i.i.i.i95 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i95, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit101, label %.lr.ph.i.i.i.i.i96

.lr.ph.i.i.i.i.i96:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i.i.i.i96
  %.013.i.i.i.i.i97 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i96 ], [ %i.dc, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i98 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i96 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 4 uses
  %i.dd = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i98, align 8, !tbaa !157
  store <2 x ptr> %i.dd, ptr %.013.i.i.i.i.i97, align 8, !tbaa !157
  %i.de = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i97, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i98, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !71
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i98, i8 0, i64 24, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i98, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i97, i64 24 ; 2 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.dh, %i.d
  br i1 %.not.i.i.i.i.i99, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit101, label %.lr.ph.i.i.i.i.i96, !llvm.loop !323

_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit101: ; preds = %.lr.ph.i.i.i.i.i96, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i.i.i.i100 = phi ptr [ %i.dc, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.di, %.lr.ph.i.i.i.i.i96 ]
  %.not4.i.i = icmp eq ptr %i.cf, %i.d
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit101, %_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.dp, %_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i.i ], [ %i.cf, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit101 ] ; 3 uses
  %i.dj = load ptr, ptr %.05.i.i, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i102 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i.i102, label %_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !71
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #33
  br label %_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.m, %.lr.ph.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dp, %i.d
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit101
  %.not.i103 = icmp eq ptr %i.cf, null
  br i1 %.not.i103, label %_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvT_S7_.exit
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !131
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.dr, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ds) #33
  br label %_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvT_S7_.exit, %bb.n
  store ptr %i.ct, ptr %0, align 8, !tbaa !67
  store ptr %.0.lcssa.i.i.i.i.i100, ptr %i.c, align 8, !tbaa !66
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.co
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !131
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE11_M_allocateEm.exit
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  %i.dw = tail call ptr @__cxa_begin_catch(ptr %i.dv) #18 ; 0 uses
  %.not66 = icmp eq ptr %i.ct, null
  br i1 %.not66, label %bb.p, label %_ZSt8_DestroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES5_EvT_S7_RSaIT0_E.exit68

bb.p:                                             ; preds = %bb.o
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %2
  invoke void @_ZSt8_DestroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvT_S7_(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.dx)
          to label %_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit111 unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit111
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

_ZSt8_DestroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES5_EvT_S7_RSaIT0_E.exit68: ; preds = %bb.o
  %i.dz = mul nuw nsw i64 %i.co, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.dz) #33
  br label %_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit111

_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit111: ; preds = %bb.p, %_ZSt8_DestroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EES5_EvT_S7_RSaIT0_E.exit68
  invoke void @__cxa_rethrow() #31
          to label %bb.u unwind label %bb.q

bb.r:                                             ; preds = %_ZNSt6vectorIS_IN7xgboost4tree9GradStatsESaIS2_EESaIS4_EE16_Temporary_valueD2Ev.exit86, %_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void

bb.s:                                             ; preds = %bb.q, %_ZNSt6vectorIS_IN7xgboost4tree9GradStatsESaIS2_EESaIS4_EE16_Temporary_valueD2Ev.exit
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIS_IN7xgboost4tree9GradStatsESaIS2_EESaIS4_EE16_Temporary_valueD2Ev.exit ], [ %i.dy, %bb.q ]
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %bb.q
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  tail call void @__clang_call_terminate(ptr %i.eb) #34
  unreachable

bb.u:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN7xgboost4tree9GradStatsESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit111
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS5_EEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #33
  br label %_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS5_EEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS5_EEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyISt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost4tree9GradStatsESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !70     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.i = load ptr, ptr %0, align 8, !tbaa !70     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN7xgboost4tree9GradStatsESaIS2_EE11_M_allocateEm.exit.i, !prof !119

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt12_Vector_baseIN7xgboost4tree9GradStatsESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost4tree9GradStatsESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN7xgboost4tree9GradStatsESaIS2_EE11_M_allocateEm.exit.i
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIN7xgboost4tree9GradStatsESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN7xgboost4tree9GradStatsESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN7xgboost4tree9GradStatsESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !70       ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7xgboost4tree9GradStatsESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7xgboost4tree9GradStatsESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #33
  br label %_ZNSt12_Vector_baseIN7xgboost4tree9GradStatsESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7xgboost4tree9GradStatsESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7xgboost4tree9GradStatsESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !71
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4tree9GradStatsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !126
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 16
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !127

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4tree9GradStatsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 16
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4tree9GradStatsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !158
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4tree9GradStatsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.aa, 16
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !127

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN7xgboost4tree9GradStatsES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.aa, 16
  br i1 %i.ae, label %bb.n, label %_ZSt4copyIPN7xgboost4tree9GradStatsES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !158
  br label %_ZSt4copyIPN7xgboost4tree9GradStatsES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN7xgboost4tree9GradStatsES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %1, align 8, !tbaa !70
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !126 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !70
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !126 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4tree9GradStatsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN7xgboost4tree9GradStatsES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZSt4copyIPN7xgboost4tree9GradStatsES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN7xgboost4tree9GradStatsES3_ET0_T_S5_S4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !158
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4tree9GradStatsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !329

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4tree9GradStatsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN7xgboost4tree9GradStatsES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN7xgboost4tree9GradStatsESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !126
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4tree9GradStatsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEmS5_ET_S7_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq i64 %1, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !70
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.b = phi ptr [ %.pre, %.lr.ph ], [ %i.m, %.loopexit ] ; 2 uses
  %.019 = phi ptr [ %0, %.lr.ph ], [ %i.r, %.loopexit ] ; 6 uses
  %.01118 = phi i64 [ %1, %.lr.ph ], [ %i.q, %.loopexit ]
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.019, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i.i.i, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7xgboost4tree9GradStatsEE8allocateEmPKv.exit.i.i.i.i.i, !prof !119

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7xgboost4tree9GradStatsEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32
          to label %.noexc12 unwind label %.loopexit13

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIN7xgboost4tree9GradStatsEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.i = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt15__new_allocatorIN7xgboost4tree9GradStatsEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.019, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !126
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !71
  %i.m = load ptr, ptr %2, align 8, !tbaa !157    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc12, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc12 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc12 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !158
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc12
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc12 ], [ %i.p, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !126
  %i.q = add i64 %.01118, -1                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.019, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !330

.loopexit13:                                      ; preds = %_ZNSt15__new_allocatorIN7xgboost4tree9GradStatsEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit13
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit13 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.s = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #18 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIN7xgboost4tree9GradStatsESaIS3_EEEvT_S7_(ptr noundef %0, ptr noundef nonnull %.019)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.r, %.loopexit ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.u

bb.h:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #34
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForIiZNS_4tree13TreeRefresher6UpdateEPKNS2_10TrainParamEPNS_17GradientContainerEPNS_7DMatrixENS0_4SpanINS_16HostDeviceVectorIiEELm18446744073709551615EEERKSt6vectorIPNS_7RegTreeESaISH_EEEUlT_E_EEvSM_iNS0_5SchedEOT0_(i32 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.dmlc::OMPException", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 1
end_hunk_0
