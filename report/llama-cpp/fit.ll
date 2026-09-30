Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/fit?download=true
inline.NumInlined: 1715
inline.NumDeleted: 635
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level:bb.a
  br label %bb.lv

bb.lt:                                            ; preds = %bb.is, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit791, %bb.lr
  %i.ang = phi ptr [ %i.adz, %bb.lr ], [ %i.amq, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit791 ], [ %i.adz, %bb.is ] ; 2 uses
  %.val5532409 = phi ptr [ %i.ady, %bb.lr ], [ %.val5532410, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit791 ], [ %i.ady, %bb.is ] ; 2 uses
  %.pn462.pn.pn.pn = phi { ptr, i32 } [ %i.amz, %bb.lr ], [ %.pn462.pn, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit791 ], [ %i.afn, %bb.is ] ; 2 uses
  %i.anh = load ptr, ptr %30, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i794 = icmp eq ptr %i.anh, null
  br i1 %.not.i.i.i794, label %bb.lz, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.ani = load ptr, ptr %i.acz, align 8, !tbaa !147
  %i.anj = ptrtoint ptr %i.ani to i64
  %i.ank = ptrtoint ptr %i.anh to i64
  %i.anl = sub i64 %i.anj, %i.ank
  call void @_ZdlPvm(ptr noundef nonnull %i.anh, i64 noundef %i.anl) #27
  br label %bb.lz

bb.lv:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit793, %bb.ik
  %i.anm = phi ptr [ %i.ana, %_ZNSt6vectorIlSaIlEED2Ev.exit793 ], [ %i.adz, %bb.ik ] ; 2 uses
  %.val585 = phi ptr [ %.val5831715, %_ZNSt6vectorIlSaIlEED2Ev.exit793 ], [ %i.ady, %bb.ik ] ; 3 uses
  %i.ann = load ptr, ptr %13, align 16, !tbaa !17
  %i.ano = getelementptr inbounds nuw [40 x i8], ptr %i.ann, i64 %indvars.iv
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 8
  %i.anq = load i64, ptr %i.anp, align 8, !tbaa !43
  %i.anr = load ptr, ptr %28, align 8, !tbaa !144
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %i.anr, i64 %indvars.iv
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !19
  %i.anu = sub nsw i64 %i.anq, %i.ant
  %i.anv = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.lw unwind label %.thread2101

bb.lw:                                            ; preds = %bb.lv
  %i.anw = icmp sgt i32 %i.anv, 3
  br i1 %i.anw, label %bb.lx, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit797

bb.lx:                                            ; preds = %bb.lw
  %i.anx = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.ly unwind label %.thread2101

bb.ly:                                            ; preds = %bb.lx
  %i.any = load ptr, ptr %15, align 8, !tbaa !96
  %i.anz = getelementptr inbounds nuw [32 x i8], ptr %i.any, i64 %indvars.iv
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !104
  %.val550 = load ptr, ptr %27, align 8, !tbaa !132
  %i.aob = getelementptr inbounds nuw [12 x i8], ptr %.val550, i64 %indvars.iv
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !138
  %i.aod = load ptr, ptr %28, align 8, !tbaa !144
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %i.aod, i64 %indvars.iv
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !19
  %i.aog = sdiv i64 %i.aof, 1048576
  %i.aoh = sdiv i64 %i.anu, 1048576
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.anx, i32 noundef 2, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, ptr noundef %i.aoa, i32 noundef %i.aoc, i64 noundef %i.aog, i64 noundef %i.aoh)
          to label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit797 unwind label %.thread2101

.thread2101:                                      ; preds = %bb.lv, %bb.lx, %bb.ly
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ma

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit797: ; preds = %bb.ly, %bb.lw
  %i.aoj = ptrtoint ptr %i.anm to i64
  %i.aok = ptrtoint ptr %.val585 to i64
  %i.aol = sub i64 %i.aoj, %i.aok
  call void @_ZdlPvm(ptr noundef nonnull %.val585, i64 noundef %i.aol) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aom = icmp sgt i64 %indvars.iv, 0
  %indvars.iv.next1683 = add nsw i64 %indvars.iv1682, -1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.aom, label %bb.ih, label %._crit_edge1553, !llvm.loop !189

bb.lz:                                            ; preds = %bb.ir, %bb.lt, %bb.lu
  %i.aon = phi ptr [ %i.adz, %bb.ir ], [ %i.ang, %bb.lt ], [ %i.ang, %bb.lu ]
  %.val5532408 = phi ptr [ %i.ady, %bb.ir ], [ %.val5532409, %bb.lt ], [ %.val5532409, %bb.lu ] ; 2 uses
  %.pn462.pn.pn.pn.pn = phi { ptr, i32 } [ %i.afm, %bb.ir ], [ %.pn462.pn.pn.pn, %bb.lt ], [ %.pn462.pn.pn.pn, %bb.lu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %.not.i.i.i798 = icmp eq ptr %.val5532408, null
  br i1 %.not.i.i.i798, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit799, label %bb.ma

bb.ma:                                            ; preds = %.thread2101, %bb.lz
  %i.aoo = phi ptr [ %i.anm, %.thread2101 ], [ %i.aon, %bb.lz ]
  %.pn462.pn.pn.pn.pn.pn2112 = phi { ptr, i32 } [ %i.aoi, %.thread2101 ], [ %.pn462.pn.pn.pn.pn, %bb.lz ]
  %.val5832111 = phi ptr [ %.val585, %.thread2101 ], [ %.val5532408, %bb.lz ] ; 2 uses
  %i.aop = ptrtoint ptr %i.aoo to i64
  %i.aoq = ptrtoint ptr %.val5832111 to i64
  %i.aor = sub i64 %i.aop, %i.aoq
  call void @_ZdlPvm(ptr noundef nonnull %.val5832111, i64 noundef %i.aor) #27
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit799

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit799: ; preds = %.loopexit1278, %.loopexit.split-lp1279, %bb.ma, %bb.lz
  %.pn462.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn462.pn.pn.pn.pn.pn2112, %bb.ma ], [ %.pn462.pn.pn.pn.pn, %bb.lz ], [ %lpad.loopexit1280, %.loopexit1278 ], [ %lpad.loopexit.split-lp1281, %.loopexit.split-lp1279 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %bb.ti

bb.mb:                                            ; preds = %._crit_edge1553
  %i.aos = load ptr, ptr %i.d, align 8, !tbaa !68
  invoke fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_2clERKSt6vectorIZL22common_params_fit_implS0_S2_S4_S5_S7_S8_jSB_SC_E5ngl_tSaISF_EERKSE_IP24ggml_backend_buffer_typeSaISL_EERS1_"(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(80) %i.aos)
          to label %bb.sy unwind label %bb.ic

bb.mc:                                            ; preds = %._crit_edge1553
  %i.aot = load i64, ptr %i.n, align 8, !tbaa !19 ; 3 uses
  %i.aou = trunc i64 %i.aot to i32
  %.03161554 = add i32 %i.aou, -1                 ; 2 uses
  %i.aov = icmp sgt i32 %.03161554, -1
  br i1 %i.aov, label %.lr.ph1558, label %._crit_edge1561

.lr.ph1558:                                       ; preds = %bb.mc
  %.val549 = load ptr, ptr %27, align 8, !tbaa !132 ; 2 uses
  %i.aow = zext nneg i32 %.03161554 to i64        ; 2 uses
  %i.aox = getelementptr inbounds nuw [12 x i8], ptr %.val549, i64 %i.aow
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !138
  %.not4422289 = icmp eq i32 %i.aoy, 0
  br i1 %.not4422289, label %._crit_edge1559, label %.lr.ph2291, !llvm.loop !190

.lr.ph2291:                                       ; preds = %.lr.ph1558
  br label %bb.md, !llvm.loop !190

bb.md:                                            ; preds = %.lr.ph2291, %bb.me
  %indvars.iv16872290 = phi i64 [ %i.aow, %.lr.ph2291 ], [ %indvars.iv.next1688, %bb.me ] ; 3 uses
  %i.aoz = icmp sgt i64 %indvars.iv16872290, 0
  br i1 %i.aoz, label %bb.me, label %._crit_edge1561, !llvm.loop !190

bb.me:                                            ; preds = %bb.md
  %indvars.iv.next1688 = add nsw i64 %indvars.iv16872290, -1 ; 2 uses
  %i.apa = getelementptr inbounds nuw [12 x i8], ptr %.val549, i64 %indvars.iv.next1688
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !138
  %.not442 = icmp eq i32 %i.apb, 0
  br i1 %.not442, label %.._crit_edge1559_crit_edge, label %bb.md, !llvm.loop !190

.._crit_edge1559_crit_edge:                       ; preds = %bb.me
  br label %._crit_edge1559, !llvm.loop !190

._crit_edge1559:                                  ; preds = %.._crit_edge1559_crit_edge, %.lr.ph1558
  %.03171555.lcssa = phi i64 [ %indvars.iv16872290, %.._crit_edge1559_crit_edge ], [ %i.aot, %.lr.ph1558 ]
  br label %._crit_edge1561, !llvm.loop !190

._crit_edge1561:                                  ; preds = %bb.md, %._crit_edge1559, %bb.mc
  %.0317.lcssa = phi i64 [ %.03171555.lcssa, %._crit_edge1559 ], [ %i.aot, %bb.mc ], [ 0, %bb.md ] ; 3 uses
  %i.apc = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.mf unwind label %bb.mi

bb.mf:                                            ; preds = %._crit_edge1561
  %i.apd = icmp sgt i32 %i.apc, 3
  br i1 %i.apd, label %bb.mg, label %bb.mj

bb.mg:                                            ; preds = %bb.mf
  %i.ape = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.mh unwind label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ape, i32 noundef 2, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level)
          to label %bb.mj unwind label %bb.mi

bb.mi:                                            ; preds = %._crit_edge1587, %bb.mh, %bb.mg, %._crit_edge1561
  %i.apf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ti

bb.mj:                                            ; preds = %bb.mh, %bb.mf
  %i.apg = load i64, ptr %i.n, align 8            ; 3 uses
  %i.aph = icmp ult i64 %.0317.lcssa, %i.apg
  br i1 %i.aph, label %.lr.ph1582, label %.preheader

.lr.ph1582:                                       ; preds = %bb.mj
  %i.api = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.apl = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.apu = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.apv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.apw = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 6 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.aqa = getelementptr inbounds nuw i8, ptr %40, i64 16
  br label %bb.mk

.preheader:                                       ; preds = %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974, %bb.mj
  %i.aqb = phi i64 [ %i.apg, %bb.mj ], [ %i.bhc, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974 ]
  %.1.lcssa = phi i64 [ %.0317.lcssa, %bb.mj ], [ %.6, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974 ]
  %.01584 = add i64 %.1.lcssa, 1                  ; 2 uses
  %i.aqc = icmp ult i64 %.01584, %i.aqb
  br i1 %i.aqc, label %.lr.ph1586, label %._crit_edge1587

.lr.ph1586:                                       ; preds = %.preheader
  %i.aqd = load ptr, ptr %13, align 16, !tbaa !17
  %.val511 = load ptr, ptr %27, align 8
  br label %bb.ss

bb.mk:                                            ; preds = %.lr.ph1582, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974
  %i.aqe = phi i64 [ %i.apg, %.lr.ph1582 ], [ %i.bhc, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974 ] ; 3 uses
  %.03151579 = phi i64 [ 0, %.lr.ph1582 ], [ %i.bha, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974 ] ; 37 uses
  %.11578 = phi i64 [ %.0317.lcssa, %.lr.ph1582 ], [ %.6, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  %.val10.i800 = load ptr, ptr %27, align 8, !tbaa !132 ; 6 uses
  %.val11.i801 = load ptr, ptr %i.aca, align 8, !tbaa !137 ; 4 uses
  %i.aqf = ptrtoint ptr %.val11.i801 to i64
  %i.aqg = ptrtoint ptr %.val10.i800 to i64
  %i.aqh = sub i64 %i.aqf, %i.aqg                 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %.not.i.i.i.i802 = icmp eq ptr %.val11.i801, %.val10.i800
  br i1 %.not.i.i.i.i802, label %.noexc814.thread, label %bb.ml

.noexc814.thread:                                 ; preds = %bb.mk
  %i.aqi = getelementptr inbounds nuw i8, ptr null, i64 %i.aqh
  store i64 0, ptr %33, align 8
  store ptr %i.aqi, ptr %i.apj, align 8, !tbaa !133
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit815

bb.ml:                                            ; preds = %bb.mk
  %i.aqj = sdiv exact i64 %i.aqh, 12
  %i.aqk = icmp ugt i64 %i.aqj, 768614336404564650
  br i1 %i.aqk, label %.noexc.i.i812, label %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i803, !prof !139

.noexc.i.i812:                                    ; preds = %bb.ml
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc813 unwind label %.loopexit.split-lp1253

.noexc813:                                        ; preds = %.noexc.i.i812
  unreachable

_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i803: ; preds = %bb.ml
  %i.aql = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqh) #26
          to label %.noexc814 unwind label %.loopexit1252 ; 4 uses

.noexc814:                                        ; preds = %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i803
  store ptr %i.aql, ptr %33, align 8, !tbaa !132
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 %i.aqh
  store ptr %i.aqm, ptr %i.apj, align 8, !tbaa !133
  br label %.lr.ph.i.i.i.i.i807

.lr.ph.i.i.i.i.i807:                              ; preds = %.noexc814, %.lr.ph.i.i.i.i.i807
  %.09.i.i.i.i.i808 = phi ptr [ %i.aqo, %.lr.ph.i.i.i.i.i807 ], [ %i.aql, %.noexc814 ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i809 = phi ptr [ %i.aqn, %.lr.ph.i.i.i.i.i807 ], [ %.val10.i800, %.noexc814 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i808, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.06.08.i.i.i.i.i809, i64 12, i1 false), !tbaa.struct !141
  %i.aqn = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i809, i64 12 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i808, i64 12 ; 2 uses
  %.not.i.i.i.i.i810 = icmp eq ptr %i.aqn, %.val11.i801
  br i1 %.not.i.i.i.i.i810, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit815, label %.lr.ph.i.i.i.i.i807, !llvm.loop !186

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit815: ; preds = %.lr.ph.i.i.i.i.i807, %.noexc814.thread
  %i.aqp = phi ptr [ null, %.noexc814.thread ], [ %i.aql, %.lr.ph.i.i.i.i.i807 ] ; 5 uses
  %.0.lcssa.i.i.i.i.i811 = phi ptr [ null, %.noexc814.thread ], [ %i.aqo, %.lr.ph.i.i.i.i.i807 ]
  store ptr %.0.lcssa.i.i.i.i.i811, ptr %i.api, align 8, !tbaa !137
  %i.aqq = icmp ult i64 %.11578, %i.aqe
  %i.aqr = add i64 %i.aqe, -1                     ; 4 uses
  br i1 %i.aqq, label %.lr.ph1564, label %._crit_edge1565

.lr.ph1564:                                       ; preds = %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit815
  %i.aqs = getelementptr inbounds nuw [12 x i8], ptr %i.aqp, i64 %.03151579 ; 2 uses
  br label %bb.mm

._crit_edge1565:                                  ; preds = %bb.mm, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit815
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  invoke fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_3clES0_RKSt6vectorIZL22common_params_fit_implS0_S2_S4_S5_S7_S8_jSB_SC_E5ngl_tSaISF_EERKSE_IP24ggml_backend_buffer_typeSaISL_EE"(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef nonnull align 8 dereferenceable(88) %23, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.mn unwind label %bb.mr

.loopexit1252:                                    ; preds = %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i803
  %lpad.loopexit1254 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit978

.loopexit.split-lp1253:                           ; preds = %.noexc.i.i812
  %lpad.loopexit.split-lp1255 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit978

bb.mm:                                            ; preds = %.lr.ph1564, %bb.mm
  %.03141563 = phi i64 [ %.11578, %.lr.ph1564 ], [ %i.are, %bb.mm ] ; 4 uses
  %i.aqt = icmp uge i64 %.03141563, %i.aqr
  %i.aqu = getelementptr inbounds nuw [12 x i8], ptr %i.aqp, i64 %.03141563
  %i.aqv = load i32, ptr %i.aqu, align 4, !tbaa !138
  %i.aqw = sext i1 %i.aqt to i32
  %i.aqx = add i32 %i.aqv, %i.aqw                 ; 2 uses
  %i.aqy = load i32, ptr %i.aqs, align 4, !tbaa !138
  %i.aqz = add i32 %i.aqy, %i.aqx
  store i32 %i.aqz, ptr %i.aqs, align 4, !tbaa !138
  %i.ara = getelementptr inbounds nuw [12 x i8], ptr %i.aqp, i64 %.03141563 ; 3 uses
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !138
  %i.arc = sub i32 %i.arb, %i.aqx
  store i32 %i.arc, ptr %i.ara, align 4, !tbaa !138
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ara, i64 4
  store i32 0, ptr %i.ard, align 4, !tbaa !142
  %i.are = add nuw i64 %.03141563, 1              ; 2 uses
  %exitcond1690.not = icmp eq i64 %i.are, %i.aqe
  br i1 %exitcond1690.not, label %._crit_edge1565, label %bb.mm, !llvm.loop !191

bb.mn:                                            ; preds = %._crit_edge1565
  %i.arf = load ptr, ptr %34, align 8, !tbaa !144
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %i.arf, i64 %.03151579
  %i.arh = load i64, ptr %i.arg, align 8, !tbaa !19
  %i.ari = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01050.0.lcssa20552064206920792085, i64 %.03151579 ; 6 uses
  %i.arj = load i64, ptr %i.ari, align 8, !tbaa !19
  %i.ark = icmp sgt i64 %i.arh, %i.arj
  br i1 %i.ark, label %bb.mo, label %bb.pm

bb.mo:                                            ; preds = %bb.mn
  %i.arl = getelementptr inbounds nuw [12 x i8], ptr %i.aqp, i64 %.03151579 ; 2 uses
  %.val508 = load i32, ptr %i.arl, align 4, !tbaa !138
  %i.arm = getelementptr i8, ptr %i.arl, i64 4
  %.val509 = load i32, ptr %i.arm, align 4, !tbaa !142
  %i.arn = getelementptr inbounds nuw [12 x i8], ptr %.val10.i800, i64 %.03151579 ; 2 uses
  %.val506 = load i32, ptr %i.arn, align 4, !tbaa !138
  %i.aro = getelementptr i8, ptr %i.arn, i64 4
  %.val507 = load i32, ptr %i.aro, align 4, !tbaa !142
  %i.arp = add i32 %.val509, %.val506
  %i.arq = sub i32 %.val508, %i.arp
  %i.arr = add i32 %i.arq, %.val507               ; 2 uses
  %i.ars = icmp ugt i32 %i.arr, 1
  br i1 %i.ars, label %.lr.ph1576, label %.loopexit1247

.lr.ph1576:                                       ; preds = %bb.mo, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930
  %.val36.i886 = phi ptr [ %.val532, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ], [ %i.aqp, %bb.mo ] ; 7 uses
  %.val11.i819 = phi ptr [ %.val11.i8191718, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ], [ %.val11.i801, %bb.mo ] ; 6 uses
  %.val10.i818 = phi ptr [ %.val531, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ], [ %.val10.i800, %bb.mo ] ; 13 uses
  %.03131574 = phi i32 [ %i.ays, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ], [ %i.arr, %bb.mo ] ; 2 uses
  %.21573 = phi i64 [ %.3, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ], [ %.11578, %bb.mo ] ; 5 uses
  %i.art = zext i32 %.03131574 to i64
  %i.aru = load i64, ptr %i.ari, align 8, !tbaa !19
  %i.arv = load ptr, ptr %28, align 8, !tbaa !144
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.arv, i64 %.03151579
  %i.arx = load i64, ptr %i.arw, align 8, !tbaa !19 ; 2 uses
  %i.ary = sub nsw i64 %i.aru, %i.arx
  %i.arz = mul nsw i64 %i.ary, %i.art
  %i.asa = load ptr, ptr %34, align 8, !tbaa !144
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %.03151579
  %i.asc = load i64, ptr %i.asb, align 8, !tbaa !19
  %i.asd = sub nsw i64 %i.asc, %i.arx
  %i.ase = sdiv i64 %i.arz, %i.asd
  %i.asf = trunc i64 %i.ase to i32
  %.sroa.speculated1023 = call i32 @llvm.umax.i32(i32 %i.asf, i32 1)
  %i.asg = add i32 %.03131574, -1
  %.sroa.speculated1018 = call i32 @llvm.umin.i32(i32 %i.asg, i32 %.sroa.speculated1023)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  %i.ash = ptrtoint ptr %.val11.i819 to i64
  %i.asi = ptrtoint ptr %.val10.i818 to i64       ; 2 uses
  %i.asj = sub i64 %i.ash, %i.asi                 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %.not.i.i.i.i820 = icmp eq ptr %.val11.i819, %.val10.i818
  br i1 %.not.i.i.i.i820, label %.noexc832.thread, label %bb.mp

.noexc832.thread:                                 ; preds = %.lr.ph1576
  %i.ask = getelementptr inbounds nuw i8, ptr null, i64 %i.asj ; 2 uses
  store i64 0, ptr %35, align 8
  store ptr %i.ask, ptr %i.apl, align 8, !tbaa !133
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit833

bb.mp:                                            ; preds = %.lr.ph1576
  %i.asl = sdiv exact i64 %i.asj, 12
  %i.asm = icmp ugt i64 %i.asl, 768614336404564650
  br i1 %i.asm, label %.noexc.i.i830, label %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i821, !prof !139

.noexc.i.i830:                                    ; preds = %bb.mp
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc831 unwind label %.loopexit.split-lp

.noexc831:                                        ; preds = %.noexc.i.i830
  unreachable

_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i821: ; preds = %bb.mp
  %i.asn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asj) #26
          to label %.noexc832 unwind label %.loopexit1248 ; 4 uses

.noexc832:                                        ; preds = %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i821
  store ptr %i.asn, ptr %35, align 8, !tbaa !132
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 %i.asj ; 2 uses
  store ptr %i.aso, ptr %i.apl, align 8, !tbaa !133
  br label %.lr.ph.i.i.i.i.i825

.lr.ph.i.i.i.i.i825:                              ; preds = %.noexc832, %.lr.ph.i.i.i.i.i825
  %.09.i.i.i.i.i826 = phi ptr [ %i.asq, %.lr.ph.i.i.i.i.i825 ], [ %i.asn, %.noexc832 ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i827 = phi ptr [ %i.asp, %.lr.ph.i.i.i.i.i825 ], [ %.val10.i818, %.noexc832 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i826, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.06.08.i.i.i.i.i827, i64 12, i1 false), !tbaa.struct !141
  %i.asp = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i827, i64 12 ; 2 uses
  %i.asq = getelementptr i8, ptr %.09.i.i.i.i.i826, i64 12 ; 2 uses
  %.not.i.i.i.i.i828 = icmp eq ptr %i.asp, %.val11.i819
  br i1 %.not.i.i.i.i.i828, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit833, label %.lr.ph.i.i.i.i.i825, !llvm.loop !186

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit833: ; preds = %.lr.ph.i.i.i.i.i825, %.noexc832.thread
  %i.asr = phi ptr [ %i.ask, %.noexc832.thread ], [ %i.aso, %.lr.ph.i.i.i.i.i825 ] ; 2 uses
  %i.ass = phi ptr [ null, %.noexc832.thread ], [ %i.asn, %.lr.ph.i.i.i.i.i825 ] ; 17 uses
  %.0.lcssa.i.i.i.i.i829 = phi ptr [ null, %.noexc832.thread ], [ %i.asq, %.lr.ph.i.i.i.i.i825 ] ; 8 uses
  store ptr %.0.lcssa.i.i.i.i.i829, ptr %i.apk, align 8, !tbaa !137
  %i.ast = load i64, ptr %i.n, align 8, !tbaa !19 ; 3 uses
  %i.asu = icmp ult i64 %.21573, %i.ast
  br i1 %i.asu, label %.lr.ph1568, label %._crit_edge1569

.lr.ph1568:                                       ; preds = %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit833
  %i.asv = getelementptr inbounds nuw [12 x i8], ptr %i.ass, i64 %.03151579 ; 2 uses
  br label %bb.mq

bb.mq:                                            ; preds = %.lr.ph1568, %bb.ms
end_hunk_0
begin_hunk_1_@_ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level:bb.a
_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i923: ; preds = %bb.os, %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i921
  store ptr %i.axi, ptr %34, align 8, !tbaa !144
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axi, i64 %i.axa
  store ptr %i.axm, ptr %i.apq, align 8, !tbaa !147
  br label %bb.pf

bb.ot:                                            ; preds = %.loopexit
  %i.axn = load ptr, ptr %i.apr, align 8, !tbaa !146 ; 3 uses
  %i.axo = ptrtoint ptr %i.axn to i64
  %i.axp = sub i64 %i.axo, %i.axe                 ; 5 uses
  %.not24.i908 = icmp ult i64 %i.axp, %i.axa
  br i1 %.not24.i908, label %bb.oy, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.axq = icmp sgt i64 %i.axa, 8
  br i1 %i.axq, label %bb.ov, label %bb.ow, !prof !145

bb.ov:                                            ; preds = %bb.ou
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.axc, ptr nonnull align 8 %i.ati, i64 %i.axa, i1 false)
  br label %bb.pf

bb.ow:                                            ; preds = %bb.ou
  %i.axr = icmp eq i64 %i.axa, 8
  br i1 %i.axr, label %bb.ox, label %bb.pf

bb.ox:                                            ; preds = %bb.ow
  %i.axs = load i64, ptr %i.ati, align 8, !tbaa !19
  store i64 %i.axs, ptr %i.axc, align 8, !tbaa !19
  br label %bb.pf

bb.oy:                                            ; preds = %bb.ot
  %i.axt = icmp sgt i64 %i.axp, 8
  br i1 %i.axt, label %bb.oz, label %bb.pa, !prof !145

bb.oz:                                            ; preds = %bb.oy
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.axc, ptr nonnull align 8 %i.ati, i64 %i.axp, i1 false)
  %.pre25.i913 = load ptr, ptr %i.apr, align 8, !tbaa !146 ; 2 uses
  %.pre26.i914 = load ptr, ptr %34, align 8, !tbaa !144
  %.pre28.i916 = ptrtoint ptr %.pre25.i913 to i64
  %.pre29.i917 = ptrtoint ptr %.pre26.i914 to i64
  %.pre31.i918 = sub i64 %.pre28.i916, %.pre29.i917
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909

bb.pa:                                            ; preds = %bb.oy
  %i.axu = icmp eq i64 %i.axp, 8
  br i1 %i.axu, label %bb.pb, label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909

bb.pb:                                            ; preds = %bb.pa
  %i.axv = load i64, ptr %i.ati, align 8, !tbaa !19
  store i64 %i.axv, ptr %i.axc, align 8, !tbaa !19
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909

_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909:            ; preds = %bb.pb, %bb.pa, %bb.oz
  %.pre-phi32.i911 = phi i64 [ %.pre31.i918, %bb.oz ], [ %i.axp, %bb.pa ], [ 8, %bb.pb ]
  %i.axw = phi ptr [ %.pre25.i913, %bb.oz ], [ %i.axn, %bb.pa ], [ %i.axn, %bb.pb ] ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.ati, i64 %.pre-phi32.i911 ; 3 uses
  %i.axy = ptrtoint ptr %i.axx to i64
  %i.axz = sub i64 %i.awy, %i.axy                 ; 3 uses
  %i.aya = icmp sgt i64 %i.axz, 8
  br i1 %i.aya, label %bb.pc, label %bb.pd, !prof !145

bb.pc:                                            ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.axw, ptr align 8 %i.axx, i64 %i.axz, i1 false)
  br label %bb.pf

bb.pd:                                            ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909
  %i.ayb = icmp eq i64 %i.axz, 8
  br i1 %i.ayb, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.ayc = load i64, ptr %i.axx, align 8, !tbaa !19
  store i64 %i.ayc, ptr %i.axw, align 8, !tbaa !19
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd, %bb.pc, %bb.ox, %bb.ow, %bb.ov, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i923
  %i.ayd = load ptr, ptr %34, align 8, !tbaa !144
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 %i.axa
  store ptr %i.aye, ptr %i.apr, align 8, !tbaa !146
  %i.ayf = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.pg unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit

bb.pg:                                            ; preds = %bb.pf
  %i.ayg = icmp sgt i32 %i.ayf, 3
  br i1 %i.ayg, label %bb.ph, label %_ZNSt6vectorIlSaIlEED2Ev.exit928

bb.ph:                                            ; preds = %bb.pg
  %i.ayh = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.pi unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit

bb.pi:                                            ; preds = %bb.ph
  %i.ayi = getelementptr inbounds nuw [12 x i8], ptr %i.awv, i64 %.03151579 ; 2 uses
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !138
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayi, i64 4
  %i.ayl = load i32, ptr %i.ayk, align 4, !tbaa !142
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ayh, i32 noundef 2, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i64 noundef %.03151579, i32 noundef %i.ayj, i32 noundef %i.ayl, i64 noundef %.0312.lcssa)
          to label %_ZNSt6vectorIlSaIlEED2Ev.exit928 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit

_ZNSt6vectorIlSaIlEED2Ev.exit928:                 ; preds = %bb.pg, %bb.pi, %bb.ny, %bb.oa
  %.pre-phi = phi i64 [ %i.awz, %bb.pg ], [ %i.awz, %bb.pi ], [ %i.auj, %bb.ny ], [ %i.auj, %bb.oa ]
  %.val11.i8191718 = phi ptr [ %.val11.i819, %bb.pg ], [ %.val11.i819, %bb.pi ], [ %i.aug, %bb.ny ], [ %i.aug, %bb.oa ]
  %.3 = phi i64 [ %.21573, %bb.pg ], [ %.21573, %bb.pi ], [ %.0312.lcssa, %bb.ny ], [ %.0312.lcssa, %bb.oa ] ; 2 uses
  %.val532 = load ptr, ptr %33, align 8, !tbaa !132 ; 2 uses
  %i.aym = getelementptr inbounds nuw [12 x i8], ptr %.val532, i64 %.03151579 ; 2 uses
  %.val504 = load i32, ptr %i.aym, align 4, !tbaa !138
  %i.ayn = getelementptr i8, ptr %i.aym, i64 4
  %.val505 = load i32, ptr %i.ayn, align 4, !tbaa !142
  %.val531 = load ptr, ptr %27, align 8, !tbaa !132 ; 3 uses
  %i.ayo = getelementptr inbounds nuw [12 x i8], ptr %.val531, i64 %.03151579 ; 2 uses
  %.val = load i32, ptr %i.ayo, align 4, !tbaa !138
  %i.ayp = getelementptr i8, ptr %i.ayo, i64 4
  %.val503 = load i32, ptr %i.ayp, align 4, !tbaa !142
  %i.ayq = add i32 %.val505, %.val
  %i.ayr = sub i32 %.val504, %i.ayq
  %i.ays = add i32 %i.ayr, %.val503               ; 2 uses
  %i.ayt = load ptr, ptr %i.aps, align 8, !tbaa !147
  %i.ayu = ptrtoint ptr %i.ayt to i64
  %i.ayv = sub i64 %i.ayu, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %i.ati, i64 noundef %i.ayv) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  %.val581 = load ptr, ptr %35, align 8           ; 3 uses
  %.not.i.i.i929 = icmp eq ptr %.val581, null
  br i1 %.not.i.i.i929, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930, label %bb.pj

bb.pj:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit928
  %.val582 = load ptr, ptr %i.apl, align 8
  %i.ayw = ptrtoint ptr %.val582 to i64
  %i.ayx = ptrtoint ptr %.val581 to i64
  %i.ayy = sub i64 %i.ayw, %i.ayx
  call void @_ZdlPvm(ptr noundef nonnull %.val581, i64 noundef %i.ayy) #27
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit928, %bb.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.ayz = icmp ugt i32 %i.ays, 1
  br i1 %i.ayz, label %.lr.ph1576, label %.loopexit1247, !llvm.loop !193

bb.pk:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit881, %bb.ob
  %.val579 = phi ptr [ %.val579.pre, %_ZNSt6vectorIlSaIlEED2Ev.exit881 ], [ %i.ass, %bb.ob ] ; 3 uses
  %.pn451 = phi { ptr, i32 } [ %lpad.phi1251, %_ZNSt6vectorIlSaIlEED2Ev.exit881 ], [ %i.avw, %bb.ob ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  %.not.i.i.i931 = icmp eq ptr %.val579, null
  br i1 %.not.i.i.i931, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit932, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %.val580 = load ptr, ptr %i.apl, align 8
  %i.aza = ptrtoint ptr %.val580 to i64
  %i.azb = ptrtoint ptr %.val579 to i64
  %i.azc = sub i64 %i.aza, %i.azb
  call void @_ZdlPvm(ptr noundef nonnull %.val579, i64 noundef %i.azc) #27
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit932

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit932: ; preds = %.loopexit1248, %.loopexit.split-lp, %bb.pl, %bb.pk
  %.pn451.pn = phi { ptr, i32 } [ %.pn451, %bb.pl ], [ %.pn451, %bb.pk ], [ %lpad.loopexit, %.loopexit1248 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %bb.sp

bb.pm:                                            ; preds = %bb.mn
  %i.azd = invoke fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %bb.pn unwind label %bb.ps     ; 0 uses

bb.pn:                                            ; preds = %bb.pm
  %i.aze = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.po unwind label %bb.ps     ; 0 uses

bb.po:                                            ; preds = %bb.pn
  %i.azf = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.pp unwind label %bb.ps

bb.pp:                                            ; preds = %bb.po
  %i.azg = icmp sgt i32 %i.azf, 3
  br i1 %i.azg, label %bb.pq, label %..loopexit1247_crit_edge

..loopexit1247_crit_edge:                         ; preds = %bb.pp
  %.val528.pre = load ptr, ptr %27, align 8, !tbaa !132
  br label %.loopexit1247

bb.pq:                                            ; preds = %bb.pp
  %i.azh = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.pr unwind label %bb.ps

bb.pr:                                            ; preds = %bb.pq
  %.val530 = load ptr, ptr %27, align 8, !tbaa !132 ; 2 uses
  %i.azi = getelementptr inbounds nuw [12 x i8], ptr %.val530, i64 %.03151579 ; 2 uses
  %i.azj = load i32, ptr %i.azi, align 4, !tbaa !138
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azi, i64 4
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !142
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.azh, i32 noundef 2, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i64 noundef %.03151579, i32 noundef %i.azj, i32 noundef %i.azl, i64 noundef %i.aqr)
          to label %.loopexit1247 unwind label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.pq, %bb.po, %bb.pn, %bb.pm
  %i.azm = landingpad { ptr, i32 }
          cleanup
  br label %bb.sp

.loopexit1247:                                    ; preds = %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930, %..loopexit1247_crit_edge, %bb.mo, %bb.pr
  %.val528 = phi ptr [ %.val528.pre, %..loopexit1247_crit_edge ], [ %.val530, %bb.pr ], [ %.val10.i800, %bb.mo ], [ %.val531, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ] ; 4 uses
  %.4 = phi i64 [ %i.aqr, %..loopexit1247_crit_edge ], [ %i.aqr, %bb.pr ], [ %.11578, %bb.mo ], [ %.3, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ] ; 6 uses
  %i.azn = getelementptr inbounds nuw [12 x i8], ptr %.val528, i64 %.4
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !138
  %i.azp = load i64, ptr %i.n, align 8, !tbaa !19
  %i.azq = add i64 %i.azp, -1                     ; 2 uses
  %i.azr = icmp uge i64 %.03151579, %i.azq
  %i.azs = zext i1 %i.azr to i32
  %i.azt = icmp ugt i32 %i.azo, %i.azs
  br i1 %i.azt, label %bb.pt, label %bb.sh

bb.pt:                                            ; preds = %.loopexit1247
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  %.val11.i934 = load ptr, ptr %i.aca, align 8, !tbaa !137 ; 3 uses
  %i.azu = ptrtoint ptr %.val11.i934 to i64
  %i.azv = ptrtoint ptr %.val528 to i64
  %i.azw = sub i64 %i.azu, %i.azv                 ; 5 uses
  %.not.i.i.i.i935 = icmp ne ptr %.val11.i934, %.val528
  call void @llvm.assume(i1 %.not.i.i.i.i935)
  %i.azx = sdiv exact i64 %i.azw, 12
  %i.azy = icmp ugt i64 %i.azx, 768614336404564650
  br i1 %i.azy, label %.noexc.i.i945, label %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i936, !prof !139

.noexc.i.i945:                                    ; preds = %bb.pt
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc946 unwind label %.loopexit.split-lp1258

.noexc946:                                        ; preds = %.noexc.i.i945
  unreachable

_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i936: ; preds = %bb.pt
  %i.azz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azw) #26
          to label %.noexc947 unwind label %.loopexit1257 ; 7 uses

.noexc947:                                        ; preds = %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i936
  store ptr %i.azz, ptr %37, align 8, !tbaa !132
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 %i.azw
  store ptr %i.baa, ptr %i.apu, align 8, !tbaa !133
  br label %.lr.ph.i.i.i.i.i940

.lr.ph.i.i.i.i.i940:                              ; preds = %.noexc947, %.lr.ph.i.i.i.i.i940
  %.09.i.i.i.i.i941 = phi ptr [ %i.bac, %.lr.ph.i.i.i.i.i940 ], [ %i.azz, %.noexc947 ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i942 = phi ptr [ %i.bab, %.lr.ph.i.i.i.i.i940 ], [ %.val528, %.noexc947 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i941, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.06.08.i.i.i.i.i942, i64 12, i1 false), !tbaa.struct !141
  %i.bab = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i942, i64 12 ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i941, i64 12 ; 2 uses
  %.not.i.i.i.i.i943 = icmp eq ptr %i.bab, %.val11.i934
  br i1 %.not.i.i.i.i.i943, label %bb.pu, label %.lr.ph.i.i.i.i.i940, !llvm.loop !186

bb.pu:                                            ; preds = %.lr.ph.i.i.i.i.i940
  store ptr %i.bac, ptr %i.apt, align 8, !tbaa !137
  %i.bad = getelementptr inbounds nuw [12 x i8], ptr %i.azz, i64 %.4 ; 3 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 4
  %i.baf = load <2 x i32>, ptr %i.bad, align 4, !tbaa !53
  %i.bag = add <2 x i32> %i.baf, splat (i32 -1)
  store <2 x i32> %i.bag, ptr %i.bad, align 4, !tbaa !53
  %i.bah = getelementptr inbounds nuw [12 x i8], ptr %i.azz, i64 %.03151579 ; 3 uses
  %i.bai = load <2 x i32>, ptr %i.bah, align 4, !tbaa !53
  %i.baj = add <2 x i32> %i.bai, splat (i32 1)
  store <2 x i32> %i.baj, ptr %i.bah, align 4, !tbaa !53
  %i.bak = load i32, ptr %i.bae, align 4, !tbaa !142
  %i.bal = icmp eq i32 %i.bak, 0
  %i.bam = zext i1 %i.bal to i64
  %spec.select = add i64 %.4, %i.bam              ; 7 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bah, i64 8 ; 3 uses
  store i32 2, ptr %i.ban, align 4, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  %i.bao = load ptr, ptr %i.apv, align 8, !tbaa !128 ; 2 uses
  %i.bap = load ptr, ptr %26, align 8, !tbaa !127 ; 4 uses
  %i.baq = ptrtoint ptr %i.bao to i64
  %i.bar = ptrtoint ptr %i.bap to i64
  %i.bas = sub i64 %i.baq, %i.bar                 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  %.not.i.i.i.i949 = icmp eq ptr %i.bao, %i.bap
  br i1 %.not.i.i.i.i949, label %.thread1199, label %bb.pv

.thread1199:                                      ; preds = %bb.pu
  %i.bat = getelementptr inbounds i8, ptr null, i64 %i.bas ; 2 uses
  store i64 0, ptr %38, align 8
  store ptr %i.bat, ptr %i.apx, align 8, !tbaa !129
  br label %bb.pz

bb.pv:                                            ; preds = %bb.pu
  %i.bau = icmp ugt i64 %i.bas, 9223372036854775800
  br i1 %i.bau, label %.noexc.i.i950, label %_ZNSt15__new_allocatorIP24ggml_backend_buffer_typeE8allocateEmPKv.exit.i.i.i.i, !prof !139

.noexc.i.i950:                                    ; preds = %bb.pv
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc951 unwind label %.loopexit.split-lp1263

.noexc951:                                        ; preds = %.noexc.i.i950
  unreachable

_ZNSt15__new_allocatorIP24ggml_backend_buffer_typeE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.pv
  %i.bav = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bas) #26
          to label %.noexc952 unwind label %.loopexit1262 ; 5 uses

.noexc952:                                        ; preds = %_ZNSt15__new_allocatorIP24ggml_backend_buffer_typeE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.bav, ptr %38, align 8, !tbaa !127
  store ptr %i.bav, ptr %i.apw, align 8, !tbaa !128
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 %i.bas ; 4 uses
  store ptr %i.baw, ptr %i.apx, align 8, !tbaa !129
  %i.bax = icmp samesign ugt i64 %i.bas, 8
  br i1 %i.bax, label %bb.pw, label %bb.px, !prof !209

bb.pw:                                            ; preds = %.noexc952
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bav, ptr align 8 %i.bap, i64 %i.bas, i1 false)
  br label %bb.pz

bb.px:                                            ; preds = %.noexc952
  %i.bay = icmp eq i64 %i.bas, 8
  br i1 %i.bay, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %bb.px
  %i.baz = load ptr, ptr %i.bap, align 8, !tbaa !41
  store ptr %i.baz, ptr %i.bav, align 8, !tbaa !41
  br label %bb.pz

.loopexit1257:                                    ; preds = %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i936
  %lpad.loopexit1259 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit970

.loopexit.split-lp1258:                           ; preds = %.noexc.i.i945
  %lpad.loopexit.split-lp1260 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit970

bb.pz:                                            ; preds = %bb.py, %bb.px, %bb.pw, %.thread1199
  %i.bba = phi ptr [ %i.baw, %bb.pw ], [ %i.baw, %bb.px ], [ %i.baw, %bb.py ], [ %i.bat, %.thread1199 ]
  store ptr %i.bba, ptr %i.apw, align 8, !tbaa !128
  %.not1723 = icmp ult i64 %.03151579, %i.azq
  br i1 %.not1723, label %bb.qa, label %bb.qd

bb.qa:                                            ; preds = %bb.pz
  %i.bbb = load ptr, ptr %10, align 8, !tbaa !48
  %i.bbc = getelementptr inbounds nuw [8 x i8], ptr %i.bbb, i64 %.03151579
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 8
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !52
  %i.bbf = invoke ptr @ggml_backend_dev_buffer_type(ptr noundef %i.bbe)
          to label %bb.qb unwind label %bb.qc

bb.qb:                                            ; preds = %bb.qa
  %i.bbg = load ptr, ptr %38, align 8, !tbaa !127
  %i.bbh = getelementptr inbounds nuw [8 x i8], ptr %i.bbg, i64 %.03151579
  store ptr %i.bbf, ptr %i.bbh, align 8, !tbaa !41
  br label %bb.qd

.loopexit1262:                                    ; preds = %_ZNSt15__new_allocatorIP24ggml_backend_buffer_typeE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit1264 = landingpad { ptr, i32 }
          cleanup
  br label %bb.sg

.loopexit.split-lp1263:                           ; preds = %.noexc.i.i950
  %lpad.loopexit.split-lp1265 = landingpad { ptr, i32 }
          cleanup
  br label %bb.sg

bb.qc:                                            ; preds = %bb.qg, %bb.qf, %bb.qd, %bb.qa
  %i.bbi = landingpad { ptr, i32 }
          cleanup
  br label %bb.se

bb.qd:                                            ; preds = %bb.pz, %bb.qb
  %i.bbj = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.qe unwind label %bb.qc

bb.qe:                                            ; preds = %bb.qd
  %i.bbk = icmp sgt i32 %i.bbj, 3
  br i1 %i.bbk, label %bb.qf, label %bb.qh

bb.qf:                                            ; preds = %bb.qe
  %i.bbl = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.qg unwind label %bb.qc

bb.qg:                                            ; preds = %bb.qf
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.bbl, i32 noundef 2, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level)
          to label %bb.qh unwind label %bb.qc

bb.qh:                                            ; preds = %bb.qg, %bb.qe
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  invoke fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_3clES0_RKSt6vectorIZL22common_params_fit_implS0_S2_S4_S5_S7_S8_jSB_SC_E5ngl_tSaISF_EERKSE_IP24ggml_backend_buffer_typeSaISL_EE"(ptr dead_on_unwind noalias writable align 8 %39, ptr noundef nonnull align 8 dereferenceable(88) %23, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.qi unwind label %bb.qs

bb.qi:                                            ; preds = %bb.qh
  %i.bbm = load ptr, ptr %39, align 16, !tbaa !144 ; 2 uses
  %i.bbn = getelementptr inbounds nuw [8 x i8], ptr %i.bbm, i64 %.03151579
  %i.bbo = load i64, ptr %i.bbn, align 8, !tbaa !19
  %i.bbp = load i64, ptr %i.ari, align 8, !tbaa !19
  %i.bbq = icmp slt i64 %i.bbo, %i.bbp
  br i1 %i.bbq, label %bb.qj, label %bb.rk

bb.qj:                                            ; preds = %bb.qi
  %i.bbr = add i64 %.03151579, 1                  ; 6 uses
  %i.bbs = load i64, ptr %i.n, align 8, !tbaa !19
  %i.bbt = icmp eq i64 %i.bbr, %i.bbs
  br i1 %i.bbt, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.bbu = getelementptr inbounds nuw [8 x i8], ptr %i.bbm, i64 %i.bbr
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !19
  %i.bbw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01050.0.lcssa20552064206920792085, i64 %i.bbr
  %i.bbx = load i64, ptr %i.bbw, align 8, !tbaa !19
  %i.bby = icmp slt i64 %i.bbv, %i.bbx
  br i1 %i.bby, label %bb.ql, label %bb.rk

bb.ql:                                            ; preds = %bb.qk, %bb.qj
  %i.bbz = invoke fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.qm unwind label %bb.qt     ; 0 uses

bb.qm:                                            ; preds = %bb.ql
  %i.bca = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP24ggml_backend_buffer_typeSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.qn unwind label %bb.qt     ; 0 uses

bb.qn:                                            ; preds = %bb.qm
  %i.bcb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %39)
          to label %bb.qo unwind label %bb.qt     ; 0 uses

bb.qo:                                            ; preds = %bb.qn
  %i.bcc = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.qp unwind label %bb.qt

bb.qp:                                            ; preds = %bb.qo
  %i.bcd = icmp sgt i32 %i.bcc, 3
  br i1 %i.bcd, label %bb.qq, label %bb.qu

bb.qq:                                            ; preds = %bb.qp
  %i.bce = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.qr unwind label %bb.qt

bb.qr:                                            ; preds = %bb.qq
  %.val521 = load ptr, ptr %27, align 8, !tbaa !132
  %i.bcf = getelementptr inbounds nuw [12 x i8], ptr %.val521, i64 %.03151579 ; 2 uses
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !138
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcf, i64 4
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !142
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.bce, i32 noundef 2, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i64 noundef %.03151579, i32 noundef %i.bcg, i32 noundef %i.bci, i64 noundef %spec.select)
          to label %bb.qu unwind label %bb.qt

bb.qs:                                            ; preds = %bb.qh
  %i.bcj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit966

bb.qt:                                            ; preds = %.invoke2206, %bb.ry, %bb.rw, %bb.rv, %bb.ru, %bb.rt, %bb.rn, %bb.rm, %bb.rk, %bb.ri, %bb.rg, %bb.rf, %bb.re, %bb.rd, %bb.qx, %bb.qw, %bb.qu, %bb.qr, %bb.qq, %bb.qo, %bb.qn, %bb.qm, %bb.ql
  %i.bck = landingpad { ptr, i32 }
          cleanup
  br label %bb.sc

bb.qu:                                            ; preds = %bb.qr, %bb.qp
  store i32 3, ptr %i.ban, align 4, !tbaa !136
  %i.bcl = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.qv unwind label %bb.qt

bb.qv:                                            ; preds = %bb.qu
  %i.bcm = icmp sgt i32 %i.bcl, 3
  br i1 %i.bcm, label %bb.qw, label %bb.qy

bb.qw:                                            ; preds = %bb.qv
  %i.bcn = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.qx unwind label %bb.qt

bb.qx:                                            ; preds = %bb.qw
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.bcn, i32 noundef 2, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level)
          to label %bb.qy unwind label %bb.qt

bb.qy:                                            ; preds = %bb.qx, %bb.qv
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  invoke fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_3clES0_RKSt6vectorIZL22common_params_fit_implS0_S2_S4_S5_S7_S8_jSB_SC_E5ngl_tSaISF_EERKSE_IP24ggml_backend_buffer_typeSaISL_EE"(ptr dead_on_unwind noalias writable align 8 %40, ptr noundef nonnull align 8 dereferenceable(88) %23, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.qz unwind label %bb.rj

bb.qz:                                            ; preds = %bb.qy
  %i.bco = load ptr, ptr %39, align 16, !tbaa !144 ; 3 uses
  %i.bcp = load ptr, ptr %i.apy, align 16, !tbaa !147
  %i.bcq = load <2 x ptr>, ptr %40, align 16, !tbaa !203
  %i.bcr = load ptr, ptr %40, align 16, !tbaa !144
  store <2 x ptr> %i.bcq, ptr %39, align 16, !tbaa !203
  %i.bcs = load ptr, ptr %i.aqa, align 16, !tbaa !147
  store ptr %i.bcs, ptr %i.apy, align 16, !tbaa !147
  %.not.i.i.i.i.i953 = icmp eq ptr %i.bco, null
  br i1 %.not.i.i.i.i.i953, label %_ZNSt6vectorIlSaIlEED2Ev.exit955, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.bct = ptrtoint ptr %i.bcp to i64
  %i.bcu = ptrtoint ptr %i.bco to i64
  %i.bcv = sub i64 %i.bct, %i.bcu
  call void @_ZdlPvm(ptr noundef nonnull %i.bco, i64 noundef %i.bcv) #27
  %.pre1725 = load ptr, ptr %39, align 16, !tbaa !144
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit955

_ZNSt6vectorIlSaIlEED2Ev.exit955:                 ; preds = %bb.ra, %bb.qz
  %i.bcw = phi ptr [ %.pre1725, %bb.ra ], [ %i.bcr, %bb.qz ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  %i.bcx = getelementptr inbounds nuw [8 x i8], ptr %i.bcw, i64 %.03151579
  %i.bcy = load i64, ptr %i.bcx, align 8, !tbaa !19
  %i.bcz = load i64, ptr %i.ari, align 8, !tbaa !19
  %i.bda = icmp slt i64 %i.bcy, %i.bcz
  br i1 %i.bda, label %bb.rb, label %.thread1203

bb.rb:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit955
  %i.bdb = load i64, ptr %i.n, align 8, !tbaa !19
  %i.bdc = icmp eq i64 %i.bbr, %i.bdb
  br i1 %i.bdc, label %bb.rd, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  %i.bdd = getelementptr inbounds nuw [8 x i8], ptr %i.bcw, i64 %i.bbr
  %i.bde = load i64, ptr %i.bdd, align 8, !tbaa !19
  %i.bdf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01050.0.lcssa20552064206920792085, i64 %i.bbr
  %i.bdg = load i64, ptr %i.bdf, align 8, !tbaa !19
  %i.bdh = icmp slt i64 %i.bde, %i.bdg
  br i1 %i.bdh, label %bb.rd, label %bb.sa

bb.rd:                                            ; preds = %bb.rc, %bb.rb
  %i.bdi = invoke fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.re unwind label %bb.qt     ; 0 uses

bb.re:                                            ; preds = %bb.rd
  %i.bdj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP24ggml_backend_buffer_typeSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.rf unwind label %bb.qt     ; 0 uses

bb.rf:                                            ; preds = %bb.re
  %i.bdk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %39)
          to label %bb.rg unwind label %bb.qt     ; 0 uses

bb.rg:                                            ; preds = %bb.rf
  %i.bdl = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.rh unwind label %bb.qt

bb.rh:                                            ; preds = %bb.rg
  %i.bdm = icmp sgt i32 %i.bdl, 3
  br i1 %i.bdm, label %bb.ri, label %bb.sa

bb.ri:                                            ; preds = %bb.rh
end_hunk_1
