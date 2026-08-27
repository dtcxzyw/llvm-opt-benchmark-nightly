Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ring_hash?download=true
inline.NumInlined: 3519
inline.NumDeleted: 1868
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_18RingHash12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsE:bb.a
bb.cf:                                            ; preds = %.lr.ph.i.i.i.i124.i.i
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.0.020.i.ptr.i.i.i.i.i, align 8, !noalias !182
  %i.kx = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i.i.i.i, 16
  br i1 %i.kx, label %bb.cg, label %bb.ch, !prof !171

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val88.i.i, i64 %.sroa.0.020.i.idx.i.i.i.i.i, i1 false), !noalias !182
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.ky = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ky, ptr noundef nonnull readonly align 8 dereferenceable(16) %.val88.i.i, i64 16, i1 false), !tbaa.struct !212, !noalias !182
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i: ; preds = %bb.ch, %bb.cg
  store <2 x i64> %.sroa.0.0.copyload, ptr %.val88.i.i, align 8, !noalias !182
  br label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i124.i.i
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..val3.sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !20, !noalias !182
  %.val3.i11.i.i.i.i.i.i.i = load i64, ptr %.pn19.i.i.i.i.i.i, align 8, !tbaa !210, !noalias !182
  %i.kz = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val3.i11.i.i.i.i.i.i.i
  br i1 %i.kz, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ci, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.pn19.i.i.i.i.i.i, %bb.ci ] ; 4 uses
  %.sroa.09.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.020.i.ptr.i.i.i.i.i, %bb.ci ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !212, !noalias !182
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !210, !noalias !182
  %i.la = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i
  br i1 %i.la, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !213

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.ci
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i.i.i, %bb.ci ], [ %.sroa.0.013.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %.val2.i.i.i.i.i.i.i, ptr %.sroa.09.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !20, !noalias !182
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !20, !noalias !182
  br label %bb.cj

bb.cj:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i
  %.sroa.0.020.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.020.i.idx.i.i.i.i.i, 16 ; 2 uses
  %.not.i.i.i.i125.i.i = icmp eq i64 %.sroa.0.020.i.add.i.i.i.i.i, 256
  br i1 %.not.i.i.i.i125.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i124.i.i, !llvm.loop !214

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i": ; preds = %bb.cj
  %i.lb = getelementptr inbounds nuw i8, ptr %.val88.i.i, i64 256 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.lb, %.val89.i.i
  br i1 %.not6.i.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i15.i.i.i.i.i

.lr.ph.i15.i.i.i.i.i:                             ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.lf, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i" ], [ %i.lb, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i" ] ; 6 uses
  %i.lc = load <2 x i64>, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !20, !noalias !182
  %.sroa.06.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !20, !noalias !182 ; 2 uses
  %.sroa.0.010.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i11.i.i18.i.i.i.i.i = load i64, ptr %.sroa.0.010.i.i.i.i.i.i.i, align 8, !tbaa !210, !noalias !182
  %i.ld = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i.i.i, %.val3.i11.i.i18.i.i.i.i.i
  br i1 %i.ld, label %.lr.ph.i.i23.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i"

.lr.ph.i.i23.i.i.i.i.i:                           ; preds = %.lr.ph.i15.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i
  %.sroa.0.013.i.i24.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i ] ; 4 uses
  %.sroa.09.012.i.i25.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i24.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i25.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i24.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !212, !noalias !182
  %.sroa.0.0.i.i26.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i24.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i27.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i26.i.i.i.i.i, align 8, !tbaa !210, !noalias !182
  %i.le = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i.i.i, %.val3.i.i.i27.i.i.i.i.i
  br i1 %i.le, label %.lr.ph.i.i23.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i", !llvm.loop !213

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i": ; preds = %.lr.ph.i.i23.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i
  %.sroa.09.0.lcssa.i.i20.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i ], [ %.sroa.0.013.i.i24.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i ]
  store <2 x i64> %i.lc, ptr %.sroa.09.0.lcssa.i.i20.i.i.i.i.i, align 8, !tbaa !20, !noalias !182
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i22.i.i.i.i.i = icmp eq ptr %i.lf, %.val89.i.i
  br i1 %.not.i22.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i15.i.i.i.i.i, !llvm.loop !215

bb.ck:                                            ; preds = %bb.ce
  %.not18.i30.i.i.i.i.i = icmp eq ptr %scevgep.i.i.i.i.i, %.val89.i.i
  br i1 %.not18.i30.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i31.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i:                             ; preds = %bb.ck, %bb.cq
  %.sroa.0.020.i32.i.i.i.i.i = phi ptr [ %.sroa.0.0.i42.i.i.i.i.i, %bb.cq ], [ %scevgep.i.i.i.i.i, %bb.ck ] ; 7 uses
  %.pn19.i33.i.i.i.i.i = phi ptr [ %.sroa.0.020.i32.i.i.i.i.i, %bb.cq ], [ %.val88.i.i, %bb.ck ] ; 5 uses
  %.val2.i.i34.i.i.i.i.i = load i64, ptr %.sroa.0.020.i32.i.i.i.i.i, align 8, !tbaa !210, !noalias !182 ; 4 uses
  %.val3.i.i35.i.i.i.i.i = load i64, ptr %.val88.i.i, align 8, !tbaa !210, !noalias !182
  %i.lg = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i.i35.i.i.i.i.i
  br i1 %i.lg, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %.lr.ph.i31.i.i.i.i.i
  %.sroa.0837.0.copyload = load <2 x i64>, ptr %.sroa.0.020.i32.i.i.i.i.i, align 8, !noalias !182
  %i.lh = ptrtoint ptr %.sroa.0.020.i32.i.i.i.i.i to i64
  %i.li = sub i64 %i.lh, %i.kp                    ; 3 uses
  %i.lj = ashr exact i64 %i.li, 4                 ; 2 uses
  %i.lk = icmp sgt i64 %i.lj, 1
  br i1 %i.lk, label %bb.cm, label %bb.cn, !prof !171

bb.cm:                                            ; preds = %bb.cl
  %i.ll = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i.i.i, i64 32
  %i.lm = sub nsw i64 0, %i.lj
  %i.ln = getelementptr inbounds [16 x i8], ptr %i.ll, i64 %i.lm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ln, ptr noundef nonnull align 8 dereferenceable(1) %.val88.i.i, i64 %i.li, i1 false), !noalias !182
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.lo = icmp eq i64 %i.li, 16
  br i1 %i.lo, label %bb.co, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.lp = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lp, ptr noundef nonnull readonly align 8 dereferenceable(16) %.val88.i.i, i64 16, i1 false), !tbaa.struct !212, !noalias !182
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i: ; preds = %bb.co, %bb.cn, %bb.cm
  store <2 x i64> %.sroa.0837.0.copyload, ptr %.val88.i.i, align 8, !noalias !182
  br label %bb.cq

bb.cp:                                            ; preds = %.lr.ph.i31.i.i.i.i.i
  %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i37.i.i.i.i.i = load i64, ptr %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i.i.i, align 8, !tbaa !20, !noalias !182
  %.val3.i11.i.i38.i.i.i.i.i = load i64, ptr %.pn19.i33.i.i.i.i.i, align 8, !tbaa !210, !noalias !182
  %i.lq = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i11.i.i38.i.i.i.i.i
  br i1 %i.lq, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i"

.lr.ph.i.i44.i.i.i.i.i:                           ; preds = %bb.cp, %.lr.ph.i.i44.i.i.i.i.i
  %.sroa.0.013.i.i45.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i47.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ], [ %.pn19.i33.i.i.i.i.i, %bb.cp ] ; 4 uses
  %.sroa.09.012.i.i46.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i45.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ], [ %.sroa.0.020.i32.i.i.i.i.i, %bb.cp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i46.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i45.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !212, !noalias !182
  %.sroa.0.0.i.i47.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i45.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i48.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i47.i.i.i.i.i, align 8, !tbaa !210, !noalias !182
  %i.lr = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i.i.i48.i.i.i.i.i
  br i1 %i.lr, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i", !llvm.loop !213

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i.i, %bb.cp
  %.sroa.09.0.lcssa.i.i40.i.i.i.i.i = phi ptr [ %.sroa.0.020.i32.i.i.i.i.i, %bb.cp ], [ %.sroa.0.013.i.i45.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ] ; 2 uses
  store i64 %.val2.i.i34.i.i.i.i.i, ptr %.sroa.09.0.lcssa.i.i40.i.i.i.i.i, align 8, !tbaa !20, !noalias !182
  %.sroa.5.0..val.sroa_idx.i.i41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i40.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i37.i.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i41.i.i.i.i.i, align 8, !tbaa !20, !noalias !182
  br label %bb.cq

bb.cq:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i
  %.sroa.0.0.i42.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i32.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i42.i.i.i.i.i, %.val89.i.i
  br i1 %.not.i43.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i31.i.i.i.i.i, !llvm.loop !214

bb.cr:                                            ; preds = %._crit_edge305.i.i
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cs:                                            ; preds = %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESaIS4_EE11_M_allocateEm.exit.i.i.i, %bb.ca
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.ct:                                            ; preds = %._crit_edge310.i.i, %.lr.ph317.i.i
  %.063316.i.i = phi i64 [ 0, %.lr.ph317.i.i ], [ %i.aav, %._crit_edge310.i.i ] ; 4 uses
  %.064315.i.i = phi double [ 0.000000e+00, %.lr.ph317.i.i ], [ %i.mo, %._crit_edge310.i.i ]
  %.065314.i.i = phi double [ 0.000000e+00, %.lr.ph317.i.i ], [ %.166.lcssa.i.i, %._crit_edge310.i.i ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.4.i, i64 %.063316.i.i ; 3 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !13, !noalias !182
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !18, !noalias !182
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIcLm196ESaIcEE6AssignINS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr %i.lv, i64 noundef %i.lx)
          to label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i unwind label %bb.dq, !noalias !182

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i: ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !182
  store i8 95, ptr %i.c, align 1, !tbaa !21, !noalias !182
  %i.ly = load i64, ptr %9, align 8, !tbaa !20, !noalias !216 ; 2 uses
  %i.lz = trunc i64 %i.ly to i1                   ; 2 uses
  %i.ma = load i64, ptr %i.kf, align 8, !noalias !216
  %.sink.i.i.i.i.i = select i1 %i.lz, i64 %i.ma, i64 196
  %.sink1.i.i.i.i.i = lshr i64 %i.ly, 1           ; 2 uses
  %.not.i.i127.i.i = icmp eq i64 %.sink1.i.i.i.i.i, %.sink.i.i.i.i.i
  br i1 %.not.i.i127.i.i, label %bb.cv, label %bb.cu, !prof !61

bb.cu:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i
  %i.mb = load ptr, ptr %i.kg, align 8, !noalias !216
  %.sink2.i.i.i.i.i = select i1 %i.lz, ptr %i.mb, ptr %i.kg
  %i.mc = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i.i, i64 %.sink1.i.i.i.i.i
  store i8 95, ptr %i.mc, align 1, !tbaa !21, !noalias !182
  %i.md = load i64, ptr %9, align 8, !tbaa !20, !noalias !182
  %i.me = add i64 %i.md, 2                        ; 2 uses
  store i64 %i.me, ptr %9, align 8, !tbaa !20, !noalias !182
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i

bb.cv:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i
  %i.mf = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIcLm196ESaIcEE15EmplaceBackSlowIJcEEERcDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i unwind label %bb.dr, !noalias !182 ; 0 uses

._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i: ; preds = %bb.cv
  %.pre352.i.i = load i64, ptr %9, align 8, !tbaa !20, !noalias !182
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i: ; preds = %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i, %bb.cu
  %i.mg = phi i64 [ %.pre352.i.i, %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i ], [ %i.me, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !182
  %i.mh = trunc i64 %i.mg to i1
  %i.mi = load ptr, ptr %i.kg, align 8, !noalias !182
  %i.mj = select i1 %i.mh, ptr %i.mi, ptr %i.kg   ; 2 uses
  %i.mk = lshr i64 %i.mg, 1                       ; 5 uses
  %i.ml = getelementptr i8, ptr %i.mj, i64 %i.mk  ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !188, !noalias !182
  %i.mo = call double @llvm.fmuladd.f64(double %.sroa.speculated178.i.i, double %i.mn, double %.064315.i.i) ; 3 uses
  %i.mp = fcmp olt double %.065314.i.i, %i.mo
  br i1 %i.mp, label %.lr.ph309.i.i, label %._crit_edge310.i.i

.lr.ph309.i.i:                                    ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i
  %i.mq = ptrtoaddr ptr %i.mj to i64              ; 4 uses
  %i.mr = ptrtoint ptr %i.ml to i64               ; 2 uses
  %i.ms = add i64 %i.mk, %i.mq
  %i.mt = add i64 %i.mk, %i.mq
  %i.mu = add i64 %i.mk, %i.mq
  %i.mv = add i64 %i.mq, -1
  %40 = add i64 %i.mv, %i.mk
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i, %.lr.ph309.i.i
  %.062308.i.i = phi i64 [ 0, %.lr.ph309.i.i ], [ %i.aai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i ] ; 2 uses
  %.166307.i.i = phi double [ %.065314.i.i, %.lr.ph309.i.i ], [ %i.aah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !182
  %i.mw = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %.062308.i.i, ptr noundef nonnull %i.kh)
          to label %bb.cx unwind label %bb.ds, !noalias !182

bb.cx:                                            ; preds = %bb.cw
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = sub i64 %i.mx, %i.ki                    ; 5 uses
  store i64 %i.my, ptr %11, align 8, !tbaa !219, !noalias !182
  store ptr %i.kh, ptr %i.kj, align 8, !tbaa !221, !noalias !182
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  store ptr %i.kk, ptr %10, align 8, !tbaa !19, !alias.scope !222, !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !225
  store i64 %i.my, ptr %i.a, align 8, !tbaa !20, !noalias !225
  %i.mz = icmp ugt i64 %i.my, 15
  br i1 %i.mz, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.cx
  %i.na = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc131.i.i unwind label %bb.ds, !noalias !182 ; 2 uses

.noexc131.i.i:                                    ; preds = %.noexc.i.i.i.i
  store ptr %i.na, ptr %10, align 8, !tbaa !13, !alias.scope !222, !noalias !182
  %i.nb = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !225
  store i64 %i.nb, ptr %i.kk, align 8, !tbaa !21, !alias.scope !222, !noalias !182
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc131.i.i, %bb.cx
  %i.nc = phi ptr [ %i.na, %.noexc131.i.i ], [ %i.kk, %bb.cx ] ; 2 uses
  switch i64 %i.my, label %bb.cz [
    i64 1, label %bb.cy
    i64 0, label %bb.da
  ]

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.nd = load i8, ptr %i.kh, align 8, !tbaa !21, !noalias !182
  store i8 %i.nd, ptr %i.nc, align 1, !tbaa !21, !noalias !182
  br label %bb.da

bb.cz:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nc, ptr nonnull align 8 %i.kh, i64 %i.my, i1 false), !noalias !182
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %._crit_edge.i.i.i.i.i
  %i.ne = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !225 ; 2 uses
  store i64 %i.ne, ptr %i.kl, align 8, !tbaa !18, !alias.scope !222, !noalias !182
  %i.nf = load ptr, ptr %10, align 8, !tbaa !13, !alias.scope !222, !noalias !182
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.ne
  store i8 0, ptr %i.ng, align 1, !tbaa !21, !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !182
  %i.nh = load ptr, ptr %10, align 8, !tbaa !13, !noalias !182 ; 8 uses
  %i.ni = ptrtoaddr ptr %i.nh to i64
  %i.nj = load i64, ptr %i.kl, align 8, !tbaa !18, !noalias !182 ; 13 uses
  %.not.i132.i.i = icmp samesign eq i64 %i.nj, 0
  %.pre353.i.i = load i64, ptr %9, align 8, !tbaa !20, !noalias !182 ; 3 uses
  %.pre355.i.i.a = load ptr, ptr %i.kg, align 8, !noalias !182 ; 2 uses
  br i1 %.not.i132.i.i, label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i, label %bb.db, !prof !61

bb.db:                                            ; preds = %bb.da
  %i.nk = trunc i64 %.pre353.i.i to i1            ; 2 uses
  %i.nl = load i64, ptr %i.kf, align 8, !noalias !226
  %.sink2.i.i.i.i = select i1 %i.nk, ptr %.pre355.i.i.a, ptr %i.kg ; 12 uses
  %.sink.i.i.i.i = select i1 %i.nk, i64 %i.nl, i64 196 ; 2 uses
  %.sink1.i.i.i.i = lshr i64 %.pre353.i.i, 1      ; 7 uses
  %i.nm = ptrtoint ptr %.sink2.i.i.i.i to i64     ; 5 uses
  %i.nn = sub i64 %i.mr, %i.nm                    ; 13 uses
  %i.no = add i64 %i.nn, %i.nj                    ; 5 uses
  %i.np = add i64 %.sink1.i.i.i.i, %i.nj          ; 5 uses
  %i.nq = icmp ugt i64 %i.np, %.sink.i.i.i.i
  br i1 %i.nq, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.nr = shl i64 %.sink.i.i.i.i, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.nr, i64 %i.np) ; 3 uses
  %i.ns = icmp slt i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ns, label %.noexc.i162.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i, !prof !61

.noexc.i162.i.i:                                  ; preds = %bb.dc
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc163.i.i unwind label %.loopexit.split-lp.i.i, !noalias !182

.noexc163.i.i:                                    ; preds = %.noexc.i162.i.i
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i: ; preds = %bb.dc
  %i.nt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated.i.i.i.i) #33
          to label %.lr.ph.i.i.preheader.i.i.i unwind label %.loopexit226.i.i, !noalias !182 ; 8 uses

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i
  %i.nu = ptrtoaddr ptr %i.nt to i64              ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nt, i64 %i.nn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nv, ptr align 1 %i.nh, i64 %i.nj, i1 false), !tbaa !21, !noalias !182
  %.not.i.i53.i.i.i = icmp eq ptr %i.ml, %.sink2.i.i.i.i
  br i1 %.not.i.i53.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %iter.check622

iter.check622:                                    ; preds = %.lr.ph.i.i.preheader.i.i.i
  %min.iters.check608 = icmp ult i64 %i.nn, 4
  %i.nw = sub i64 %i.nm, %i.nu
  %diff.check607 = icmp ugt i64 %i.nw, -32
  %or.cond = or i1 %min.iters.check608, %diff.check607
  br i1 %or.cond, label %.lr.ph.i.i56.i.i.i.preheader, label %vector.main.loop.iter.check609

vector.main.loop.iter.check609:                   ; preds = %iter.check622
  %min.iters.check610 = icmp ult i64 %i.nn, 32
  br i1 %min.iters.check610, label %vec.epilog.ph626, label %vector.ph611

vector.ph611:                                     ; preds = %vector.main.loop.iter.check609
  %i.nx = and i64 %i.nn, 28
  %n.vec612 = and i64 %i.nn, -32                  ; 5 uses
  %i.ny = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %n.vec612 ; 2 uses
  br label %vector.body613

vector.body613:                                   ; preds = %vector.body613, %vector.ph611
  %index614 = phi i64 [ 0, %vector.ph611 ], [ %index.next618, %vector.body613 ] ; 3 uses
  %next.gep615 = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %index614 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nt, i64 %index614 ; 2 uses
  %i.oa = getelementptr i8, ptr %next.gep615, i64 16
  %wide.load616 = load <16 x i8>, ptr %next.gep615, align 1, !tbaa !21, !noalias !182
  %wide.load617 = load <16 x i8>, ptr %i.oa, align 1, !tbaa !21, !noalias !182
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store <16 x i8> %wide.load616, ptr %i.nz, align 1, !tbaa !21, !noalias !182
  store <16 x i8> %wide.load617, ptr %i.ob, align 1, !tbaa !21, !noalias !182
  %index.next618 = add nuw i64 %index614, 32      ; 2 uses
  %i.oc = icmp eq i64 %index.next618, %n.vec612
  br i1 %i.oc, label %middle.block619, label %vector.body613, !llvm.loop !229

middle.block619:                                  ; preds = %vector.body613
  %cmp.n620 = icmp eq i64 %i.nn, %n.vec612
  br i1 %cmp.n620, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %vec.epilog.iter.check624

vec.epilog.iter.check624:                         ; preds = %middle.block619
  %min.epilog.iters.check625 = icmp eq i64 %i.nx, 0
  br i1 %min.epilog.iters.check625, label %.lr.ph.i.i56.i.i.i.preheader, label %vec.epilog.ph626, !prof !232

vec.epilog.ph626:                                 ; preds = %vector.main.loop.iter.check609, %vec.epilog.iter.check624
  %vec.epilog.resume.val621 = phi i64 [ %n.vec612, %vec.epilog.iter.check624 ], [ 0, %vector.main.loop.iter.check609 ]
  %n.vec627 = and i64 %i.nn, -4                   ; 4 uses
  %i.od = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %n.vec627 ; 2 uses
  br label %vec.epilog.vector.body628

vec.epilog.vector.body628:                        ; preds = %vec.epilog.vector.body628, %vec.epilog.ph626
  %index629 = phi i64 [ %vec.epilog.resume.val621, %vec.epilog.ph626 ], [ %index.next632, %vec.epilog.vector.body628 ] ; 3 uses
  %next.gep630 = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %index629
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nt, i64 %index629
  %wide.load631 = load <4 x i8>, ptr %next.gep630, align 1, !tbaa !21, !noalias !182
  store <4 x i8> %wide.load631, ptr %i.oe, align 1, !tbaa !21, !noalias !182
  %index.next632 = add nuw i64 %index629, 4       ; 2 uses
  %i.of = icmp eq i64 %index.next632, %n.vec627
  br i1 %i.of, label %vec.epilog.middle.block633, label %vec.epilog.vector.body628, !llvm.loop !233

vec.epilog.middle.block633:                       ; preds = %vec.epilog.vector.body628
  %cmp.n634 = icmp eq i64 %i.nn, %n.vec627
  br i1 %cmp.n634, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %.lr.ph.i.i56.i.i.i.preheader

.lr.ph.i.i56.i.i.i.preheader:                     ; preds = %iter.check622, %vec.epilog.iter.check624, %vec.epilog.middle.block633
  %.sroa.094.0.i.i.i.ph = phi ptr [ %.sink2.i.i.i.i, %iter.check622 ], [ %i.ny, %vec.epilog.iter.check624 ], [ %i.od, %vec.epilog.middle.block633 ]
  %.012.i.i.i.i.i.ph = phi i64 [ 0, %iter.check622 ], [ %n.vec612, %vec.epilog.iter.check624 ], [ %n.vec627, %vec.epilog.middle.block633 ]
  br label %.lr.ph.i.i56.i.i.i

.lr.ph.i.i56.i.i.i:                               ; preds = %.lr.ph.i.i56.i.i.i.preheader, %.lr.ph.i.i56.i.i.i
  %.sroa.094.0.i.i.i = phi ptr [ %i.oi, %.lr.ph.i.i56.i.i.i ], [ %.sroa.094.0.i.i.i.ph, %.lr.ph.i.i56.i.i.i.preheader ] ; 2 uses
  %.012.i.i.i.i.i = phi i64 [ %i.oj, %.lr.ph.i.i56.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i56.i.i.i.preheader ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.012.i.i.i.i.i
  %i.oh = load i8, ptr %.sroa.094.0.i.i.i, align 1, !tbaa !21, !noalias !182
  store i8 %i.oh, ptr %i.og, align 1, !tbaa !21, !noalias !182
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.094.0.i.i.i, i64 1 ; 2 uses
  %i.oj = add nuw i64 %.012.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i57.i.i.i = icmp eq i64 %i.oj, %i.nn
  br i1 %exitcond.not.i.i57.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %.lr.ph.i.i56.i.i.i, !llvm.loop !234

_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i: ; preds = %.lr.ph.i.i56.i.i.i, %middle.block619, %vec.epilog.middle.block633, %.lr.ph.i.i.preheader.i.i.i
  %.sroa.094.1.i.i.i = phi ptr [ %.sink2.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %i.od, %vec.epilog.middle.block633 ], [ %i.ny, %middle.block619 ], [ %i.oi, %.lr.ph.i.i56.i.i.i ] ; 7 uses
  %.sroa.094.1.i.i.i595 = ptrtoaddr ptr %.sroa.094.1.i.i.i to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.no ; 3 uses
  %i.ol = sub i64 %.sink1.i.i.i.i, %i.nn          ; 8 uses
  %.not.i.i160.i.i = icmp eq i64 %.sink1.i.i.i.i, %i.nn
  br i1 %.not.i.i160.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i
  %min.iters.check = icmp ult i64 %i.ol, 4
  br i1 %min.iters.check, label %.lr.ph.i.i161.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.om = add i64 %i.ms, %i.nj
  %i.on = add i64 %i.om, %i.nu
  %i.oo = add i64 %i.nm, %.sroa.094.1.i.i.i595
  %i.op = sub i64 %i.oo, %i.on
  %diff.check = icmp ugt i64 %i.op, -32
  br i1 %diff.check, label %.lr.ph.i.i161.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check596 = icmp ult i64 %i.ol, 32
  br i1 %min.iters.check596, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.oq = and i64 %i.ol, 28
  %n.vec = and i64 %i.ol, -32                     ; 5 uses
  %i.or = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %index ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 %index ; 2 uses
  %i.ot = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !21, !noalias !182
  %wide.load597 = load <16 x i8>, ptr %i.ot, align 1, !tbaa !21, !noalias !182
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  store <16 x i8> %wide.load, ptr %i.os, align 1, !tbaa !21, !noalias !182
  store <16 x i8> %wide.load597, ptr %i.ou, align 1, !tbaa !21, !noalias !182
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ov = icmp eq i64 %index.next, %n.vec
  br i1 %i.ov, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ol, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.oq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i161.i.i.preheader, label %vec.epilog.ph, !prof !232

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec598 = and i64 %i.ol, -4                   ; 4 uses
  %i.ow = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %n.vec598
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index599 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next602, %vec.epilog.vector.body ] ; 3 uses
  %next.gep600 = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %index599
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ok, i64 %index599
  %wide.load601 = load <4 x i8>, ptr %next.gep600, align 1, !tbaa !21, !noalias !182
  store <4 x i8> %wide.load601, ptr %i.ox, align 1, !tbaa !21, !noalias !182
  %index.next602 = add nuw i64 %index599, 4       ; 2 uses
  %i.oy = icmp eq i64 %index.next602, %n.vec598
  br i1 %i.oy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !236

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n603 = icmp eq i64 %i.ol, %n.vec598
  br i1 %cmp.n603, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %.lr.ph.i.i161.i.i.preheader

.lr.ph.i.i161.i.i.preheader:                      ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.094.2.i.i.i.ph = phi ptr [ %.sroa.094.1.i.i.i, %iter.check ], [ %.sroa.094.1.i.i.i, %vector.memcheck ], [ %i.or, %vec.epilog.iter.check ], [ %i.ow, %vec.epilog.middle.block ]
  %.012.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec598, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i161.i.i

.lr.ph.i.i161.i.i:                                ; preds = %.lr.ph.i.i161.i.i.preheader, %.lr.ph.i.i161.i.i
  %.sroa.094.2.i.i.i = phi ptr [ %i.pb, %.lr.ph.i.i161.i.i ], [ %.sroa.094.2.i.i.i.ph, %.lr.ph.i.i161.i.i.preheader ] ; 2 uses
  %.012.i.i.i.i = phi i64 [ %i.pc, %.lr.ph.i.i161.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i161.i.i.preheader ] ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ok, i64 %.012.i.i.i.i
  %i.pa = load i8, ptr %.sroa.094.2.i.i.i, align 1, !tbaa !21, !noalias !182
  store i8 %i.pa, ptr %i.oz, align 1, !tbaa !21, !noalias !182
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.094.2.i.i.i, i64 1
  %i.pc = add nuw i64 %.012.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.pc, %i.ol
  br i1 %exitcond.not.i.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %.lr.ph.i.i161.i.i, !llvm.loop !237

_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i: ; preds = %.lr.ph.i.i161.i.i, %middle.block, %vec.epilog.middle.block, %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i
  %i.pd = load i64, ptr %9, align 8, !tbaa !20, !noalias !182
  %i.pe = trunc i64 %i.pd to i1
  br i1 %i.pe, label %bb.dd, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i

bb.dd:                                            ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i
  %i.pf = load ptr, ptr %i.kg, align 8, !tbaa !21, !noalias !182
  %i.pg = load i64, ptr %i.kf, align 8, !tbaa !21, !noalias !182
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pg) #35, !noalias !182
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i: ; preds = %bb.dd, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i
  store ptr %i.nt, ptr %i.kg, align 8, !tbaa !21, !noalias !182
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.kf, align 8, !tbaa !21, !noalias !182
  %i.ph = shl i64 %i.np, 1
  %i.pi = or disjoint i64 %i.ph, 1
  br label %.noexc134.i.i

bb.de:                                            ; preds = %bb.db
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.no, i64 %.sink1.i.i.i.i) ; 11 uses
  %i.pj = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %.sroa.speculated.i.i.i ; 4 uses
  %i.pk = sub i64 %i.np, %.sroa.speculated.i.i.i  ; 19 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.nn ; 5 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.no
  %i.pn = sub i64 %.sroa.speculated.i.i.i, %i.no
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pk ; 7 uses
  %i.pp = sub i64 %i.nj, %i.pk                    ; 8 uses
  %.not.i.i61.i.i.i = icmp eq i64 %i.np, %.sroa.speculated.i.i.i ; 2 uses
  br i1 %.not.i.i61.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %iter.check750

iter.check750:                                    ; preds = %bb.de
  %i.pq = sub i64 %.sroa.speculated.i.i.i, %i.nj
  %i.pr = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.pq ; 5 uses
  %min.iters.check736 = icmp ult i64 %i.pk, 4
  %diff.check735 = icmp ult i64 %i.nj, 32
  %or.cond765 = or i1 %min.iters.check736, %diff.check735
  br i1 %or.cond765, label %.lr.ph.i.i64.i.i.i.preheader, label %vector.main.loop.iter.check737

vector.main.loop.iter.check737:                   ; preds = %iter.check750
  %min.iters.check738 = icmp ult i64 %i.pk, 32
  br i1 %min.iters.check738, label %vec.epilog.ph754, label %vector.ph739

vector.ph739:                                     ; preds = %vector.main.loop.iter.check737
  %i.ps = and i64 %i.pk, 28
  %n.vec740 = and i64 %i.pk, -32                  ; 5 uses
  %i.pt = getelementptr i8, ptr %i.pr, i64 %n.vec740
  br label %vector.body741

vector.body741:                                   ; preds = %vector.body741, %vector.ph739
  %index742 = phi i64 [ 0, %vector.ph739 ], [ %index.next746, %vector.body741 ] ; 3 uses
  %next.gep743 = getelementptr i8, ptr %i.pr, i64 %index742 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pj, i64 %index742 ; 2 uses
  %i.pv = getelementptr i8, ptr %next.gep743, i64 16
  %wide.load744 = load <16 x i8>, ptr %next.gep743, align 1, !tbaa !21, !noalias !182
  %wide.load745 = load <16 x i8>, ptr %i.pv, align 1, !tbaa !21, !noalias !182
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  store <16 x i8> %wide.load744, ptr %i.pu, align 1, !tbaa !21, !noalias !182
  store <16 x i8> %wide.load745, ptr %i.pw, align 1, !tbaa !21, !noalias !182
  %index.next746 = add nuw i64 %index742, 32      ; 2 uses
  %i.px = icmp eq i64 %index.next746, %n.vec740
  br i1 %i.px, label %middle.block747, label %vector.body741, !llvm.loop !238

middle.block747:                                  ; preds = %vector.body741
  %cmp.n748 = icmp eq i64 %i.pk, %n.vec740
  br i1 %cmp.n748, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %vec.epilog.iter.check752

vec.epilog.iter.check752:                         ; preds = %middle.block747
  %min.epilog.iters.check753 = icmp eq i64 %i.ps, 0
  br i1 %min.epilog.iters.check753, label %.lr.ph.i.i64.i.i.i.preheader, label %vec.epilog.ph754, !prof !232

vec.epilog.ph754:                                 ; preds = %vector.main.loop.iter.check737, %vec.epilog.iter.check752
  %vec.epilog.resume.val749 = phi i64 [ %n.vec740, %vec.epilog.iter.check752 ], [ 0, %vector.main.loop.iter.check737 ]
  %n.vec755 = and i64 %i.pk, -4                   ; 4 uses
  %i.py = getelementptr i8, ptr %i.pr, i64 %n.vec755
  br label %vec.epilog.vector.body756

vec.epilog.vector.body756:                        ; preds = %vec.epilog.vector.body756, %vec.epilog.ph754
  %index757 = phi i64 [ %vec.epilog.resume.val749, %vec.epilog.ph754 ], [ %index.next760, %vec.epilog.vector.body756 ] ; 3 uses
  %next.gep758 = getelementptr i8, ptr %i.pr, i64 %index757
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pj, i64 %index757
  %wide.load759 = load <4 x i8>, ptr %next.gep758, align 1, !tbaa !21, !noalias !182
  store <4 x i8> %wide.load759, ptr %i.pz, align 1, !tbaa !21, !noalias !182
  %index.next760 = add nuw i64 %index757, 4       ; 2 uses
  %i.qa = icmp eq i64 %index.next760, %n.vec755
  br i1 %i.qa, label %vec.epilog.middle.block761, label %vec.epilog.vector.body756, !llvm.loop !239

vec.epilog.middle.block761:                       ; preds = %vec.epilog.vector.body756
  %cmp.n762 = icmp eq i64 %i.pk, %n.vec755
  br i1 %cmp.n762, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %.lr.ph.i.i64.i.i.i.preheader

.lr.ph.i.i64.i.i.i.preheader:                     ; preds = %iter.check750, %vec.epilog.iter.check752, %vec.epilog.middle.block761
  %.sroa.090.0.i.i.i.ph = phi ptr [ %i.pr, %iter.check750 ], [ %i.pt, %vec.epilog.iter.check752 ], [ %i.py, %vec.epilog.middle.block761 ]
  %.012.i.i65.i.i.i.ph = phi i64 [ 0, %iter.check750 ], [ %n.vec740, %vec.epilog.iter.check752 ], [ %n.vec755, %vec.epilog.middle.block761 ]
  br label %.lr.ph.i.i64.i.i.i

.lr.ph.i.i64.i.i.i:                               ; preds = %.lr.ph.i.i64.i.i.i.preheader, %.lr.ph.i.i64.i.i.i
  %.sroa.090.0.i.i.i = phi ptr [ %i.qd, %.lr.ph.i.i64.i.i.i ], [ %.sroa.090.0.i.i.i.ph, %.lr.ph.i.i64.i.i.i.preheader ] ; 2 uses
  %.012.i.i65.i.i.i = phi i64 [ %i.qe, %.lr.ph.i.i64.i.i.i ], [ %.012.i.i65.i.i.i.ph, %.lr.ph.i.i64.i.i.i.preheader ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.012.i.i65.i.i.i
  %i.qc = load i8, ptr %.sroa.090.0.i.i.i, align 1, !tbaa !21, !noalias !182
  store i8 %i.qc, ptr %i.qb, align 1, !tbaa !21, !noalias !182
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.090.0.i.i.i, i64 1
  %i.qe = add nuw i64 %.012.i.i65.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i66.i.i.i = icmp eq i64 %i.qe, %i.pk
  br i1 %exitcond.not.i.i66.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %.lr.ph.i.i64.i.i.i, !llvm.loop !240

_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i: ; preds = %.lr.ph.i.i64.i.i.i, %middle.block747, %vec.epilog.middle.block761, %bb.de
  %.not.i158.i.i = icmp sgt i64 %.sroa.speculated.i.i.i, %i.no
  br i1 %.not.i158.i.i, label %iter.check718, label %._crit_edge.i.i.i

iter.check718:                                    ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i
  %i.qf = getelementptr i8, ptr %i.pj, i64 -1     ; 5 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pn ; 5 uses
  %i.qh = add i64 %i.nm, -1
  %i.qi = add i64 %i.qh, %.sroa.speculated.i.i.i
  %i.qj = add i64 %40, %i.nj
  %i.qk = add i64 %i.nm, -2
  %i.ql = add i64 %i.qk, %.sroa.speculated.i.i.i
  %umin = call i64 @llvm.umin.i64(i64 %i.qj, i64 %i.ql)
  %i.qm = sub i64 %i.qi, %umin                    ; 7 uses
  %min.iters.check702 = icmp ult i64 %i.qm, 8
  %diff.check701 = icmp ugt i64 %i.nj, -32
  %or.cond766 = or i1 %min.iters.check702, %diff.check701
  br i1 %or.cond766, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check703

vector.main.loop.iter.check703:                   ; preds = %iter.check718
  %min.iters.check704 = icmp ult i64 %i.qm, 32
  br i1 %min.iters.check704, label %vec.epilog.ph722, label %vector.ph705

vector.ph705:                                     ; preds = %vector.main.loop.iter.check703
  %i.qn = and i64 %i.qm, 24
  %n.vec706 = and i64 %i.qm, -32                  ; 4 uses
  %i.qo = sub i64 0, %n.vec706                    ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qf, i64 %i.qo
  %i.qq = getelementptr i8, ptr %i.qg, i64 %i.qo
  br label %vector.body707

vector.body707:                                   ; preds = %vector.body707, %vector.ph705
  %index708 = phi i64 [ 0, %vector.ph705 ], [ %index.next713, %vector.body707 ] ; 2 uses
  %i.qr = sub i64 0, %index708                    ; 2 uses
  %next.gep709 = getelementptr i8, ptr %i.qf, i64 %i.qr ; 2 uses
  %next.gep710 = getelementptr i8, ptr %i.qg, i64 %i.qr ; 2 uses
  %i.qs = getelementptr inbounds i8, ptr %next.gep710, i64 -16
  %i.qt = getelementptr inbounds i8, ptr %next.gep710, i64 -32
  %wide.load711 = load <16 x i8>, ptr %i.qs, align 1, !tbaa !21, !noalias !182
  %wide.load712 = load <16 x i8>, ptr %i.qt, align 1, !tbaa !21, !noalias !182
  %i.qu = getelementptr i8, ptr %next.gep709, i64 -15
  %i.qv = getelementptr i8, ptr %next.gep709, i64 -31
  store <16 x i8> %wide.load711, ptr %i.qu, align 1, !tbaa !21, !noalias !182
  store <16 x i8> %wide.load712, ptr %i.qv, align 1, !tbaa !21, !noalias !182
  %index.next713 = add nuw i64 %index708, 32      ; 2 uses
  %i.qw = icmp eq i64 %index.next713, %n.vec706
  br i1 %i.qw, label %middle.block714, label %vector.body707, !llvm.loop !241

middle.block714:                                  ; preds = %vector.body707
  %cmp.n715 = icmp eq i64 %i.qm, %n.vec706
  br i1 %cmp.n715, label %._crit_edge.i.i.i, label %vec.epilog.iter.check720

vec.epilog.iter.check720:                         ; preds = %middle.block714
  %min.epilog.iters.check721 = icmp eq i64 %i.qn, 0
  br i1 %min.epilog.iters.check721, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph722, !prof !242

vec.epilog.ph722:                                 ; preds = %vector.main.loop.iter.check703, %vec.epilog.iter.check720
  %vec.epilog.resume.val716 = phi i64 [ %n.vec706, %vec.epilog.iter.check720 ], [ 0, %vector.main.loop.iter.check703 ]
  %n.vec723 = and i64 %i.qm, -8                   ; 3 uses
  %i.qx = sub i64 0, %n.vec723                    ; 2 uses
  %i.qy = getelementptr i8, ptr %i.qf, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qg, i64 %i.qx
  br label %vec.epilog.vector.body724

vec.epilog.vector.body724:                        ; preds = %vec.epilog.vector.body724, %vec.epilog.ph722
  %index725 = phi i64 [ %vec.epilog.resume.val716, %vec.epilog.ph722 ], [ %index.next729, %vec.epilog.vector.body724 ] ; 2 uses
  %i.ra = sub i64 0, %index725                    ; 2 uses
  %next.gep726 = getelementptr i8, ptr %i.qf, i64 %i.ra
  %next.gep727 = getelementptr i8, ptr %i.qg, i64 %i.ra
  %i.rb = getelementptr inbounds i8, ptr %next.gep727, i64 -8
  %wide.load728 = load <8 x i8>, ptr %i.rb, align 1, !tbaa !21, !noalias !182
  %i.rc = getelementptr i8, ptr %next.gep726, i64 -7
  store <8 x i8> %wide.load728, ptr %i.rc, align 1, !tbaa !21, !noalias !182
  %index.next729 = add nuw i64 %index725, 8       ; 2 uses
  %i.rd = icmp eq i64 %index.next729, %n.vec723
  br i1 %i.rd, label %vec.epilog.middle.block730, label %vec.epilog.vector.body724, !llvm.loop !243

vec.epilog.middle.block730:                       ; preds = %vec.epilog.vector.body724
  %cmp.n731 = icmp eq i64 %i.qm, %n.vec723
  br i1 %cmp.n731, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check718, %vec.epilog.iter.check720, %vec.epilog.middle.block730
  %.ph = phi ptr [ %i.qf, %iter.check718 ], [ %i.qp, %vec.epilog.iter.check720 ], [ %i.qy, %vec.epilog.middle.block730 ]
  %.0126.i.i.i.ph = phi ptr [ %i.qg, %iter.check718 ], [ %i.qq, %vec.epilog.iter.check720 ], [ %i.qz, %vec.epilog.middle.block730 ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block714, %vec.epilog.middle.block730, %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i
  br i1 %.not.i.i61.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %iter.check685

iter.check685:                                    ; preds = %._crit_edge.i.i.i
  %min.iters.check671 = icmp ult i64 %i.pk, 4
  %i.re = sub i64 %i.ni, %i.mu
  %diff.check670 = icmp ugt i64 %i.re, -32
  %or.cond767 = select i1 %min.iters.check671, i1 true, i1 %diff.check670
  br i1 %or.cond767, label %.lr.ph.i71.i.i.i.preheader, label %vector.main.loop.iter.check672

vector.main.loop.iter.check672:                   ; preds = %iter.check685
  %min.iters.check673 = icmp ult i64 %i.pk, 32
  br i1 %min.iters.check673, label %vec.epilog.ph689, label %vector.ph674

vector.ph674:                                     ; preds = %vector.main.loop.iter.check672
  %i.rf = and i64 %i.pk, 28
  %n.vec675 = and i64 %i.pk, -32                  ; 5 uses
  %i.rg = getelementptr i8, ptr %i.nh, i64 %n.vec675 ; 2 uses
  br label %vector.body676

vector.body676:                                   ; preds = %vector.body676, %vector.ph674
  %index677 = phi i64 [ 0, %vector.ph674 ], [ %index.next681, %vector.body676 ] ; 3 uses
  %next.gep678 = getelementptr i8, ptr %i.nh, i64 %index677 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pl, i64 %index677 ; 2 uses
  %i.ri = getelementptr i8, ptr %next.gep678, i64 16
  %wide.load679 = load <16 x i8>, ptr %next.gep678, align 1, !tbaa !21, !noalias !182
  %wide.load680 = load <16 x i8>, ptr %i.ri, align 1, !tbaa !21, !noalias !182
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  store <16 x i8> %wide.load679, ptr %i.rh, align 1, !tbaa !21, !noalias !182
  store <16 x i8> %wide.load680, ptr %i.rj, align 1, !tbaa !21, !noalias !182
  %index.next681 = add nuw i64 %index677, 32      ; 2 uses
  %i.rk = icmp eq i64 %index.next681, %n.vec675
  br i1 %i.rk, label %middle.block682, label %vector.body676, !llvm.loop !244

middle.block682:                                  ; preds = %vector.body676
  %cmp.n683 = icmp eq i64 %i.pk, %n.vec675
  br i1 %cmp.n683, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %vec.epilog.iter.check687

vec.epilog.iter.check687:                         ; preds = %middle.block682
  %min.epilog.iters.check688 = icmp eq i64 %i.rf, 0
  br i1 %min.epilog.iters.check688, label %.lr.ph.i71.i.i.i.preheader, label %vec.epilog.ph689, !prof !232

vec.epilog.ph689:                                 ; preds = %vector.main.loop.iter.check672, %vec.epilog.iter.check687
  %vec.epilog.resume.val684 = phi i64 [ %n.vec675, %vec.epilog.iter.check687 ], [ 0, %vector.main.loop.iter.check672 ]
  %n.vec690 = and i64 %i.pk, -4                   ; 4 uses
  %i.rl = getelementptr i8, ptr %i.nh, i64 %n.vec690 ; 2 uses
  br label %vec.epilog.vector.body691

vec.epilog.vector.body691:                        ; preds = %vec.epilog.vector.body691, %vec.epilog.ph689
  %index692 = phi i64 [ %vec.epilog.resume.val684, %vec.epilog.ph689 ], [ %index.next695, %vec.epilog.vector.body691 ] ; 3 uses
  %next.gep693 = getelementptr i8, ptr %i.nh, i64 %index692
  %i.rm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %index692
  %wide.load694 = load <4 x i8>, ptr %next.gep693, align 1, !tbaa !21, !noalias !182
  store <4 x i8> %wide.load694, ptr %i.rm, align 1, !tbaa !21, !noalias !182
  %index.next695 = add nuw i64 %index692, 4       ; 2 uses
  %i.rn = icmp eq i64 %index.next695, %n.vec690
  br i1 %i.rn, label %vec.epilog.middle.block696, label %vec.epilog.vector.body691, !llvm.loop !245

vec.epilog.middle.block696:                       ; preds = %vec.epilog.vector.body691
  %cmp.n697 = icmp eq i64 %i.pk, %n.vec690
  br i1 %cmp.n697, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %.lr.ph.i71.i.i.i.preheader

.lr.ph.i71.i.i.i.preheader:                       ; preds = %iter.check685, %vec.epilog.iter.check687, %vec.epilog.middle.block696
  %.sroa.0122.1.i.i.i.ph = phi ptr [ %i.nh, %iter.check685 ], [ %i.rg, %vec.epilog.iter.check687 ], [ %i.rl, %vec.epilog.middle.block696 ]
  %.05.i.i.i.i117.ph = phi i64 [ 0, %iter.check685 ], [ %n.vec675, %vec.epilog.iter.check687 ], [ %n.vec690, %vec.epilog.middle.block696 ]
  br label %.lr.ph.i71.i.i.i

.lr.ph.i71.i.i.i:                                 ; preds = %.lr.ph.i71.i.i.i.preheader, %.lr.ph.i71.i.i.i
  %.sroa.0122.1.i.i.i = phi ptr [ %i.rq, %.lr.ph.i71.i.i.i ], [ %.sroa.0122.1.i.i.i.ph, %.lr.ph.i71.i.i.i.preheader ] ; 2 uses
  %.05.i.i.i.i117 = phi i64 [ %i.rr, %.lr.ph.i71.i.i.i ], [ %.05.i.i.i.i117.ph, %.lr.ph.i71.i.i.i.preheader ] ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.05.i.i.i.i117
  %i.rp = load i8, ptr %.sroa.0122.1.i.i.i, align 1, !tbaa !21, !noalias !182
  store i8 %i.rp, ptr %i.ro, align 1, !tbaa !21, !noalias !182
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0122.1.i.i.i, i64 1 ; 2 uses
  %i.rr = add nuw i64 %.05.i.i.i.i117, 1          ; 2 uses
  %exitcond.not.i72.i.i.i = icmp eq i64 %i.rr, %i.pk
  br i1 %exitcond.not.i72.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %.lr.ph.i71.i.i.i, !llvm.loop !246

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.rs = phi ptr [ %i.rv, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0126.i.i.i = phi ptr [ %i.rt, %.lr.ph.i.i.i ], [ %.0126.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.rt = getelementptr inbounds i8, ptr %.0126.i.i.i, i64 -1 ; 2 uses
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !21, !noalias !182
  store i8 %i.ru, ptr %i.rs, align 1, !tbaa !21, !noalias !182
  %i.rv = getelementptr inbounds i8, ptr %i.rs, i64 -1 ; 2 uses
  %i.rw = icmp ult ptr %i.rv, %i.pm
  br i1 %i.rw, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !247

_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i: ; preds = %.lr.ph.i71.i.i.i, %middle.block682, %vec.epilog.middle.block696, %._crit_edge.i.i.i
  %.sroa.0122.2.i.i.i = phi ptr [ %i.nh, %._crit_edge.i.i.i ], [ %i.rl, %vec.epilog.middle.block696 ], [ %i.rg, %middle.block682 ], [ %i.rq, %.lr.ph.i71.i.i.i ] ; 7 uses
  %.sroa.0122.2.i.i.i638 = ptrtoaddr ptr %.sroa.0122.2.i.i.i to i64
  %.not.i73.i.i.i = icmp eq i64 %i.nj, %i.pk
  br i1 %.not.i73.i.i.i, label %.loopexit.i.i.i, label %iter.check654

iter.check654:                                    ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i
  %min.iters.check640 = icmp ult i64 %i.pp, 4
  br i1 %min.iters.check640, label %.lr.ph.i76.i.i.i.preheader, label %vector.memcheck637

vector.memcheck637:                               ; preds = %iter.check654
  %i.rx = add i64 %i.mt, %i.nj
  %i.ry = add i64 %i.rx, %.sink1.i.i.i.i
  %i.rz = add i64 %.sroa.speculated.i.i.i, %.sroa.0122.2.i.i.i638
  %i.sa = sub i64 %i.rz, %i.ry
  %diff.check639 = icmp ugt i64 %i.sa, -32
  br i1 %diff.check639, label %.lr.ph.i76.i.i.i.preheader, label %vector.main.loop.iter.check641

vector.main.loop.iter.check641:                   ; preds = %vector.memcheck637
  %min.iters.check642 = icmp ult i64 %i.pp, 32
  br i1 %min.iters.check642, label %vec.epilog.ph658, label %vector.ph643

vector.ph643:                                     ; preds = %vector.main.loop.iter.check641
  %i.sb = and i64 %i.pp, 28
  %n.vec644 = and i64 %i.pp, -32                  ; 5 uses
  %i.sc = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %n.vec644
  br label %vector.body645

vector.body645:                                   ; preds = %vector.body645, %vector.ph643
  %index646 = phi i64 [ 0, %vector.ph643 ], [ %index.next650, %vector.body645 ] ; 3 uses
  %next.gep647 = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %index646 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.po, i64 %index646 ; 2 uses
  %i.se = getelementptr i8, ptr %next.gep647, i64 16
  %wide.load648 = load <16 x i8>, ptr %next.gep647, align 1, !tbaa !21, !noalias !182
  %wide.load649 = load <16 x i8>, ptr %i.se, align 1, !tbaa !21, !noalias !182
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store <16 x i8> %wide.load648, ptr %i.sd, align 1, !tbaa !21, !noalias !182
  store <16 x i8> %wide.load649, ptr %i.sf, align 1, !tbaa !21, !noalias !182
  %index.next650 = add nuw i64 %index646, 32      ; 2 uses
  %i.sg = icmp eq i64 %index.next650, %n.vec644
  br i1 %i.sg, label %middle.block651, label %vector.body645, !llvm.loop !248

middle.block651:                                  ; preds = %vector.body645
  %cmp.n652 = icmp eq i64 %i.pp, %n.vec644
  br i1 %cmp.n652, label %.loopexit.i.i.i, label %vec.epilog.iter.check656

vec.epilog.iter.check656:                         ; preds = %middle.block651
  %min.epilog.iters.check657 = icmp eq i64 %i.sb, 0
  br i1 %min.epilog.iters.check657, label %.lr.ph.i76.i.i.i.preheader, label %vec.epilog.ph658, !prof !232

vec.epilog.ph658:                                 ; preds = %vector.main.loop.iter.check641, %vec.epilog.iter.check656
  %vec.epilog.resume.val653 = phi i64 [ %n.vec644, %vec.epilog.iter.check656 ], [ 0, %vector.main.loop.iter.check641 ]
  %n.vec659 = and i64 %i.pp, -4                   ; 4 uses
  %i.sh = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %n.vec659
  br label %vec.epilog.vector.body660

vec.epilog.vector.body660:                        ; preds = %vec.epilog.vector.body660, %vec.epilog.ph658
  %index661 = phi i64 [ %vec.epilog.resume.val653, %vec.epilog.ph658 ], [ %index.next664, %vec.epilog.vector.body660 ] ; 3 uses
  %next.gep662 = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %index661
  %i.si = getelementptr inbounds nuw i8, ptr %i.po, i64 %index661
  %wide.load663 = load <4 x i8>, ptr %next.gep662, align 1, !tbaa !21, !noalias !182
  store <4 x i8> %wide.load663, ptr %i.si, align 1, !tbaa !21, !noalias !182
  %index.next664 = add nuw i64 %index661, 4       ; 2 uses
  %i.sj = icmp eq i64 %index.next664, %n.vec659
  br i1 %i.sj, label %vec.epilog.middle.block665, label %vec.epilog.vector.body660, !llvm.loop !249

vec.epilog.middle.block665:                       ; preds = %vec.epilog.vector.body660
  %cmp.n666 = icmp eq i64 %i.pp, %n.vec659
  br i1 %cmp.n666, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i.preheader

.lr.ph.i76.i.i.i.preheader:                       ; preds = %vector.memcheck637, %iter.check654, %vec.epilog.iter.check656, %vec.epilog.middle.block665
  %.sroa.0122.3.i.i.i.ph = phi ptr [ %.sroa.0122.2.i.i.i, %iter.check654 ], [ %.sroa.0122.2.i.i.i, %vector.memcheck637 ], [ %i.sc, %vec.epilog.iter.check656 ], [ %i.sh, %vec.epilog.middle.block665 ] ; 2 uses
  %.06.i.i.i.i.ph = phi i64 [ 0, %iter.check654 ], [ 0, %vector.memcheck637 ], [ %n.vec644, %vec.epilog.iter.check656 ], [ %n.vec659, %vec.epilog.middle.block665 ] ; 3 uses
  %i.sk = sub i64 %.sroa.speculated.i.i.i, %.sink1.i.i.i.i
  %xtraiter828 = and i64 %i.sk, 3                 ; 2 uses
  %lcmp.mod829.not = icmp eq i64 %xtraiter828, 0
  br i1 %lcmp.mod829.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol

.lr.ph.i76.i.i.i.prol:                            ; preds = %.lr.ph.i76.i.i.i.preheader, %.lr.ph.i76.i.i.i.prol
  %.sroa.0122.3.i.i.i.prol = phi ptr [ %i.sn, %.lr.ph.i76.i.i.i.prol ], [ %.sroa.0122.3.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.prol = phi i64 [ %i.so, %.lr.ph.i76.i.i.i.prol ], [ %.06.i.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i76.i.i.i.prol ], [ 0, %.lr.ph.i76.i.i.i.preheader ]
  %i.sl = getelementptr inbounds nuw i8, ptr %i.po, i64 %.06.i.i.i.i.prol
  %i.sm = load i8, ptr %.sroa.0122.3.i.i.i.prol, align 1, !tbaa !21, !noalias !182
  store i8 %i.sm, ptr %i.sl, align 1, !tbaa !21, !noalias !182
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i.prol, i64 1 ; 2 uses
  %i.so = add nuw i64 %.06.i.i.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter828
  br i1 %prol.iter.cmp.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol, !llvm.loop !250

.lr.ph.i76.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i76.i.i.i.prol, %.lr.ph.i76.i.i.i.preheader
  %.sroa.0122.3.i.i.i.unr = phi ptr [ %.sroa.0122.3.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ], [ %i.sn, %.lr.ph.i76.i.i.i.prol ]
  %.06.i.i.i.i.unr = phi i64 [ %.06.i.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ], [ %i.so, %.lr.ph.i76.i.i.i.prol ]
  %i.sp = sub i64 %.06.i.i.i.i.ph, %.sroa.speculated.i.i.i
  %i.sq = add i64 %i.sp, %.sink1.i.i.i.i
  %i.sr = icmp ugt i64 %i.sq, -4
  br i1 %i.sr, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i

.lr.ph.i76.i.i.i:                                 ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i
  %.sroa.0122.3.i.i.i = phi ptr [ %i.tg, %.lr.ph.i76.i.i.i ], [ %.sroa.0122.3.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 5 uses
  %.06.i.i.i.i = phi i64 [ %i.th, %.lr.ph.i76.i.i.i ], [ %.06.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 5 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.po, i64 %.06.i.i.i.i
  %i.st = load i8, ptr %.sroa.0122.3.i.i.i, align 1, !tbaa !21, !noalias !182
  store i8 %i.st, ptr %i.ss, align 1, !tbaa !21, !noalias !182
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 1
  %i.sv = getelementptr inbounds nuw i8, ptr %i.po, i64 %.06.i.i.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 1
  %i.sx = load i8, ptr %i.su, align 1, !tbaa !21, !noalias !182
  store i8 %i.sx, ptr %i.sw, align 1, !tbaa !21, !noalias !182
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 2
  %i.sz = getelementptr inbounds nuw i8, ptr %i.po, i64 %.06.i.i.i.i
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 2
  %i.tb = load i8, ptr %i.sy, align 1, !tbaa !21, !noalias !182
  store i8 %i.tb, ptr %i.ta, align 1, !tbaa !21, !noalias !182
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 3
  %i.td = getelementptr inbounds nuw i8, ptr %i.po, i64 %.06.i.i.i.i
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 3
  %i.tf = load i8, ptr %i.tc, align 1, !tbaa !21, !noalias !182
  store i8 %i.tf, ptr %i.te, align 1, !tbaa !21, !noalias !182
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 4
  %i.th = add nuw i64 %.06.i.i.i.i, 4             ; 2 uses
  %exitcond.not.i77.i.i.i.3 = icmp eq i64 %i.th, %i.pp
  br i1 %exitcond.not.i77.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i, !llvm.loop !252

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i, %middle.block651, %vec.epilog.middle.block665, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i
  %i.ti = shl i64 %i.nj, 1
  %i.tj = load i64, ptr %9, align 8, !tbaa !20, !noalias !182
  %i.tk = add i64 %i.tj, %i.ti
  %.pre354.pre.i.i = load ptr, ptr %i.kg, align 8, !noalias !182
  br label %.noexc134.i.i

.noexc134.i.i:                                    ; preds = %.loopexit.i.i.i, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i
  %.pre354.i.i = phi ptr [ %.pre354.pre.i.i, %.loopexit.i.i.i ], [ %i.nt, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i ]
  %storemerge.i.i.i = phi i64 [ %i.tk, %.loopexit.i.i.i ], [ %i.pi, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i.i, ptr %9, align 8, !tbaa !20, !noalias !182
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i: ; preds = %.noexc134.i.i, %bb.da
  %i.tl = phi ptr [ %.pre354.i.i, %.noexc134.i.i ], [ %.pre355.i.i.a, %bb.da ]
  %i.tm = phi i64 [ %storemerge.i.i.i, %.noexc134.i.i ], [ %.pre353.i.i, %bb.da ] ; 3 uses
  %i.tn = trunc i64 %i.tm to i1
  %i.to = select i1 %i.tn, ptr %i.tl, ptr %i.kg   ; 3 uses
  %i.tp = lshr i64 %i.tm, 1                       ; 3 uses
  %i.tq = icmp ugt i64 %i.tm, 63
  br i1 %i.tq, label %bb.df, label %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.i.i.i

bb.df:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.tp
  %i.ts = getelementptr inbounds i8, ptr %i.tr, i64 -31
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %bb.df
  %.049.i.i.i.i = phi ptr [ %i.to, %bb.df ], [ %i.um, %bb.dg ] ; 5 uses
  %.047.i.i.i.i = phi i64 [ 6983438078262162902, %bb.df ], [ %i.tw, %bb.dg ]
  %.046.i.i.i.i = phi i64 [ -4417276706812531889, %bb.df ], [ %i.ub, %bb.dg ]
  %.045.i.i.i.i = phi i64 [ 0, %bb.df ], [ %i.ug, %bb.dg ]
  %.0.i.i136.i.i = phi i64 [ 7046029288634856825, %bb.df ], [ %i.ul, %bb.dg ]
  %.0.copyload.i.i.i.i = load i64, ptr %.049.i.i.i.i, align 1, !noalias !182
  %i.tt = mul i64 %.0.copyload.i.i.i.i, -4417276706812531889
  %i.tu = add i64 %i.tt, %.047.i.i.i.i            ; 2 uses
  %i.tv = call i64 @llvm.fshl.i64(i64 %i.tu, i64 %i.tu, i64 31) ; 2 uses
  %i.tw = mul i64 %i.tv, -7046029288634856825     ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 8
  %.0.copyload.i2.i.i.i = load i64, ptr %i.tx, align 1, !noalias !182
  %i.ty = mul i64 %.0.copyload.i2.i.i.i, -4417276706812531889
  %i.tz = add i64 %i.ty, %.046.i.i.i.i            ; 2 uses
  %i.ua = call i64 @llvm.fshl.i64(i64 %i.tz, i64 %i.tz, i64 31) ; 2 uses
  %i.ub = mul i64 %i.ua, -7046029288634856825     ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 16
  %.0.copyload.i3.i.i.i = load i64, ptr %i.uc, align 1, !noalias !182
  %i.ud = mul i64 %.0.copyload.i3.i.i.i, -4417276706812531889
  %i.ue = add i64 %i.ud, %.045.i.i.i.i            ; 2 uses
  %i.uf = call i64 @llvm.fshl.i64(i64 %i.ue, i64 %i.ue, i64 31) ; 2 uses
  %i.ug = mul i64 %i.uf, -7046029288634856825     ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 24
  %.0.copyload.i4.i.i.i = load i64, ptr %i.uh, align 1, !noalias !182
  %i.ui = mul i64 %.0.copyload.i4.i.i.i, -4417276706812531889
  %i.uj = add i64 %i.ui, %.0.i.i136.i.i           ; 2 uses
  %i.uk = call i64 @llvm.fshl.i64(i64 %i.uj, i64 %i.uj, i64 31) ; 2 uses
  %i.ul = mul i64 %i.uk, -7046029288634856825     ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 32 ; 3 uses
  %i.un = icmp ult ptr %i.um, %i.ts
  br i1 %i.un, label %bb.dg, label %bb.dh, !llvm.loop !253

bb.dh:                                            ; preds = %bb.dg
  %i.uo = call i64 @llvm.fshl.i64(i64 %i.tw, i64 %i.tw, i64 1)
  %i.up = call i64 @llvm.fshl.i64(i64 %i.ub, i64 %i.ub, i64 7)
  %i.uq = add i64 %i.up, %i.uo
  %i.ur = call i64 @llvm.fshl.i64(i64 %i.ug, i64 %i.ug, i64 12)
  %i.us = add i64 %i.uq, %i.ur
  %i.ut = call i64 @llvm.fshl.i64(i64 %i.ul, i64 %i.ul, i64 18)
  %i.uu = add i64 %i.us, %i.ut
  %i.uv = mul i64 %i.tv, -2381459717836149591     ; 2 uses
  %i.uw = call i64 @llvm.fshl.i64(i64 %i.uv, i64 %i.uv, i64 31)
  %i.ux = mul i64 %i.uw, -7046029288634856825
  %i.uy = xor i64 %i.uu, %i.ux
  %i.uz = mul i64 %i.uy, -7046029288634856825
  %i.va = add i64 %i.uz, -8796714831421723037
  %i.vb = mul i64 %i.ua, -2381459717836149591     ; 2 uses
  %i.vc = call i64 @llvm.fshl.i64(i64 %i.vb, i64 %i.vb, i64 31)
  %i.vd = mul i64 %i.vc, -7046029288634856825
  %i.ve = xor i64 %i.va, %i.vd
  %i.vf = mul i64 %i.ve, -7046029288634856825
  %i.vg = add i64 %i.vf, -8796714831421723037
  %i.vh = mul i64 %i.uf, -2381459717836149591     ; 2 uses
  %i.vi = call i64 @llvm.fshl.i64(i64 %i.vh, i64 %i.vh, i64 31)
  %i.vj = mul i64 %i.vi, -7046029288634856825
  %i.vk = xor i64 %i.vg, %i.vj
  %i.vl = mul i64 %i.vk, -7046029288634856825
  %i.vm = add i64 %i.vl, -8796714831421723037
  %i.vn = mul i64 %i.uk, -2381459717836149591     ; 2 uses
end_hunk_0
