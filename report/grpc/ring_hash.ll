Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ring_hash?download=true
inline.NumInlined: 3519
inline.NumDeleted: 1868
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_18RingHash12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsE:bb.a
  br i1 %i.kb, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i124.i.i
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.0.020.i.ptr.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %i.kc = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i.i.i.i, 16
  br i1 %i.kc, label %bb.bx, label %bb.by, !prof !146

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val88.i.i, i64 %.sroa.0.020.i.idx.i.i.i.i.i, i1 false), !noalias !378
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.bw
  %i.kd = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, ptr noundef nonnull readonly align 8 dereferenceable(16) %.val88.i.i, i64 16, i1 false), !tbaa.struct !164, !noalias !378
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i: ; preds = %bb.by, %bb.bx
  store <2 x i64> %.sroa.0.0.copyload, ptr %.val88.i.i, align 8, !tbaa !41, !noalias !378
  br label %bb.ca

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i124.i.i
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..val3.sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %.val3.i11.i.i.i.i.i.i.i = load i64, ptr %.pn19.i.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.ke = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val3.i11.i.i.i.i.i.i.i
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bz, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.pn19.i.i.i.i.i.i, %bb.bz ] ; 4 uses
  %.sroa.09.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.020.i.ptr.i.i.i.i.i, %bb.bz ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !164, !noalias !378
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.kf = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i
  br i1 %i.kf, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !315

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.bz
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i.i.i, %bb.bz ], [ %.sroa.0.013.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %.val2.i.i.i.i.i.i.i, ptr %.sroa.09.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  br label %bb.ca

bb.ca:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i
  %.sroa.0.020.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.020.i.idx.i.i.i.i.i, 16 ; 2 uses
  %.not.i.i.i.i125.i.i = icmp eq i64 %.sroa.0.020.i.add.i.i.i.i.i, 256
  br i1 %.not.i.i.i.i125.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i124.i.i, !llvm.loop !316

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i": ; preds = %bb.ca
  %i.kg = getelementptr inbounds nuw i8, ptr %.val88.i.i, i64 256 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.kg, %.val89.i.i
  br i1 %.not6.i.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i15.i.i.i.i.i

.lr.ph.i15.i.i.i.i.i:                             ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.kk, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i" ], [ %i.kg, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i" ] ; 6 uses
  %i.kh = load <2 x i64>, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %.sroa.06.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !41, !noalias !378 ; 2 uses
  %.sroa.0.010.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i11.i.i18.i.i.i.i.i = load i64, ptr %.sroa.0.010.i.i.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.ki = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i.i.i, %.val3.i11.i.i18.i.i.i.i.i
  br i1 %i.ki, label %.lr.ph.i.i23.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i"

.lr.ph.i.i23.i.i.i.i.i:                           ; preds = %.lr.ph.i15.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i
  %.sroa.0.013.i.i24.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i ] ; 4 uses
  %.sroa.09.012.i.i25.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i24.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i25.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i24.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !164, !noalias !378
  %.sroa.0.0.i.i26.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i24.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i27.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i26.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.kj = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i.i.i, %.val3.i.i.i27.i.i.i.i.i
  br i1 %i.kj, label %.lr.ph.i.i23.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i", !llvm.loop !315

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i": ; preds = %.lr.ph.i.i23.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i
  %.sroa.09.0.lcssa.i.i20.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i ], [ %.sroa.0.013.i.i24.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i ]
  store <2 x i64> %i.kh, ptr %.sroa.09.0.lcssa.i.i20.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i22.i.i.i.i.i = icmp eq ptr %i.kk, %.val89.i.i
  br i1 %.not.i22.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i15.i.i.i.i.i, !llvm.loop !317

bb.cb:                                            ; preds = %bb.bv
  %.not18.i30.i.i.i.i.i = icmp eq ptr %scevgep.i.i.i.i.i, %.val89.i.i
  br i1 %.not18.i30.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i31.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i:                             ; preds = %bb.cb, %bb.ch
  %.sroa.0.020.i32.i.i.i.i.i = phi ptr [ %.sroa.0.0.i42.i.i.i.i.i, %bb.ch ], [ %scevgep.i.i.i.i.i, %bb.cb ] ; 7 uses
  %.pn19.i33.i.i.i.i.i = phi ptr [ %.sroa.0.020.i32.i.i.i.i.i, %bb.ch ], [ %.val88.i.i, %bb.cb ] ; 5 uses
  %.val2.i.i34.i.i.i.i.i = load i64, ptr %.sroa.0.020.i32.i.i.i.i.i, align 8, !tbaa !163, !noalias !378 ; 4 uses
  %.val3.i.i35.i.i.i.i.i = load i64, ptr %.val88.i.i, align 8, !tbaa !163, !noalias !378
  %i.kl = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i.i35.i.i.i.i.i
  br i1 %i.kl, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %.lr.ph.i31.i.i.i.i.i
  %.sroa.0832.0.copyload = load <2 x i64>, ptr %.sroa.0.020.i32.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %i.km = ptrtoint ptr %.sroa.0.020.i32.i.i.i.i.i to i64
  %i.kn = sub i64 %i.km, %i.ju                    ; 3 uses
  %i.ko = ashr exact i64 %i.kn, 4                 ; 2 uses
  %i.kp = icmp sgt i64 %i.ko, 1
  br i1 %i.kp, label %bb.cd, label %bb.ce, !prof !146

bb.cd:                                            ; preds = %bb.cc
  %i.kq = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i.i.i, i64 32
  %i.kr = sub nsw i64 0, %i.ko
  %i.ks = getelementptr inbounds [16 x i8], ptr %i.kq, i64 %i.kr
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ks, ptr noundef nonnull align 8 dereferenceable(1) %.val88.i.i, i64 %i.kn, i1 false), !noalias !378
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.kt = icmp eq i64 %i.kn, 16
  br i1 %i.kt, label %bb.cf, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.ku = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ku, ptr noundef nonnull readonly align 8 dereferenceable(16) %.val88.i.i, i64 16, i1 false), !tbaa.struct !164, !noalias !378
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i: ; preds = %bb.cf, %bb.ce, %bb.cd
  store <2 x i64> %.sroa.0832.0.copyload, ptr %.val88.i.i, align 8, !tbaa !41, !noalias !378
  br label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i31.i.i.i.i.i
  %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i37.i.i.i.i.i = load i64, ptr %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %.val3.i11.i.i38.i.i.i.i.i = load i64, ptr %.pn19.i33.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.kv = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i11.i.i38.i.i.i.i.i
  br i1 %i.kv, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i"

.lr.ph.i.i44.i.i.i.i.i:                           ; preds = %bb.cg, %.lr.ph.i.i44.i.i.i.i.i
  %.sroa.0.013.i.i45.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i47.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ], [ %.pn19.i33.i.i.i.i.i, %bb.cg ] ; 4 uses
  %.sroa.09.012.i.i46.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i45.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ], [ %.sroa.0.020.i32.i.i.i.i.i, %bb.cg ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i46.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i45.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !164, !noalias !378
  %.sroa.0.0.i.i47.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i45.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i48.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i47.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.kw = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i.i.i48.i.i.i.i.i
  br i1 %i.kw, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i", !llvm.loop !315

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i.i, %bb.cg
  %.sroa.09.0.lcssa.i.i40.i.i.i.i.i = phi ptr [ %.sroa.0.020.i32.i.i.i.i.i, %bb.cg ], [ %.sroa.0.013.i.i45.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ] ; 2 uses
  store i64 %.val2.i.i34.i.i.i.i.i, ptr %.sroa.09.0.lcssa.i.i40.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %.sroa.5.0..val.sroa_idx.i.i41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i40.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i37.i.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i41.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  br label %bb.ch

bb.ch:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i
  %.sroa.0.0.i42.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i32.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i42.i.i.i.i.i, %.val89.i.i
  br i1 %.not.i43.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i31.i.i.i.i.i, !llvm.loop !316

bb.ci:                                            ; preds = %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESaIS4_EE11_M_allocateEm.exit.i.i.i, %._crit_edge294.i.i, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_18RingHash4RingC1EPS2_PNS1_16RingHashLbConfigEE14EndpointWeightSaIS7_EE11_M_allocateEm.exit.i.i.i, %.invoke.i.i
  %.sroa.0.6.i = phi ptr [ %.sroa.0.0.i, %.invoke.i.i ], [ %.sroa.0.5.i, %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESaIS4_EE11_M_allocateEm.exit.i.i.i ], [ %.sroa.0.5.i, %._crit_edge294.i.i ], [ null, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_18RingHash4RingC1EPS2_PNS1_16RingHashLbConfigEE14EndpointWeightSaIS7_EE11_M_allocateEm.exit.i.i.i ]
  %.sroa.10.6.i = phi ptr [ %.sroa.10.0.i, %.invoke.i.i ], [ %.sroa.10.5.i, %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESaIS4_EE11_M_allocateEm.exit.i.i.i ], [ %.sroa.10.5.i, %._crit_edge294.i.i ], [ null, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_18RingHash4RingC1EPS2_PNS1_16RingHashLbConfigEE14EndpointWeightSaIS7_EE11_M_allocateEm.exit.i.i.i ]
  %.sroa.17.6.i = phi ptr [ %.sroa.17.0.i, %.invoke.i.i ], [ %.sroa.17.5.i, %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESaIS4_EE11_M_allocateEm.exit.i.i.i ], [ %.sroa.17.5.i, %._crit_edge294.i.i ], [ null, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_18RingHash4RingC1EPS2_PNS1_16RingHashLbConfigEE14EndpointWeightSaIS7_EE11_M_allocateEm.exit.i.i.i ]
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.cj:                                            ; preds = %._crit_edge299.i.i, %.lr.ph306.i.i
  %.063305.i.i = phi i64 [ 0, %.lr.ph306.i.i ], [ %i.zy, %._crit_edge299.i.i ] ; 4 uses
  %.064304.i.i = phi double [ 0.000000e+00, %.lr.ph306.i.i ], [ %i.ls, %._crit_edge299.i.i ]
  %.065303.i.i = phi double [ 0.000000e+00, %.lr.ph306.i.i ], [ %.166.lcssa.i.i, %._crit_edge299.i.i ] ; 3 uses
  %i.ky = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.5.i, i64 %.063305.i.i ; 3 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !38, !noalias !378
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !39, !noalias !378
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIcLm196ESaIcEE6AssignINS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr %i.kz, i64 noundef %i.lb)
          to label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i unwind label %bb.dg, !noalias !378

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i: ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !378
  store i8 95, ptr %i.c, align 1, !tbaa !42, !noalias !378
  %i.lc = load i64, ptr %9, align 8, !tbaa !41, !noalias !390 ; 2 uses
  %i.ld = trunc i64 %i.lc to i1                   ; 2 uses
  %i.le = load i64, ptr %i.jk, align 8, !noalias !390
  %.sink.i.i.i.i.i = select i1 %i.ld, i64 %i.le, i64 196
  %.sink1.i.i.i.i.i = lshr i64 %i.lc, 1           ; 2 uses
  %.not.i.i127.i.i = icmp eq i64 %.sink1.i.i.i.i.i, %.sink.i.i.i.i.i
  br i1 %.not.i.i127.i.i, label %bb.cl, label %bb.ck, !prof !63

bb.ck:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i
  %i.lf = load ptr, ptr %i.jl, align 8, !noalias !390
  %.sink2.i.i.i.i.i = select i1 %i.ld, ptr %i.lf, ptr %i.jl
  %i.lg = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i.i, i64 %.sink1.i.i.i.i.i
  store i8 95, ptr %i.lg, align 1, !tbaa !42, !noalias !378
  %i.lh = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  %i.li = add i64 %i.lh, 2                        ; 2 uses
  store i64 %i.li, ptr %9, align 8, !tbaa !41, !noalias !378
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i

bb.cl:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i
  %i.lj = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIcLm196ESaIcEE15EmplaceBackSlowIJcEEERcDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i unwind label %bb.dh, !noalias !378 ; 0 uses

._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i: ; preds = %bb.cl
  %.pre342.i.i = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i: ; preds = %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i, %bb.ck
  %i.lk = phi i64 [ %.pre342.i.i, %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i ], [ %i.li, %bb.ck ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !378
  %i.ll = trunc i64 %i.lk to i1
  %i.lm = load ptr, ptr %i.jl, align 8, !noalias !378
  %i.ln = select i1 %i.ll, ptr %i.lm, ptr %i.jl   ; 2 uses
  %40 = ptrtoaddr ptr %i.ln to i64                ; 3 uses
  %i.lo = lshr i64 %i.lk, 1                       ; 4 uses
  %i.lp = getelementptr i8, ptr %i.ln, i64 %i.lo  ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !385, !noalias !378
  %i.ls = call double @llvm.fmuladd.f64(double %.sroa.speculated178.i.i, double %i.lr, double %.064304.i.i) ; 3 uses
  %i.lt = fcmp olt double %.065303.i.i, %i.ls
  br i1 %i.lt, label %.lr.ph298.i.i, label %._crit_edge299.i.i

.lr.ph298.i.i:                                    ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i
  %i.lu = ptrtoint ptr %i.lp to i64               ; 5 uses
  %i.lv = add i64 %i.lu, -1
  %i.lw = add i64 %40, %i.lo
  %i.lx = add i64 %i.lo, %40
  %i.ly = add i64 %40, %i.lo
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i, %.lr.ph298.i.i
  %.062297.i.i = phi i64 [ 0, %.lr.ph298.i.i ], [ %i.zl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i ] ; 2 uses
  %.166296.i.i = phi double [ %.065303.i.i, %.lr.ph298.i.i ], [ %i.zk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !378
  %i.lz = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %.062297.i.i, ptr noundef nonnull %i.jm)
          to label %bb.cn unwind label %bb.di, !noalias !378

bb.cn:                                            ; preds = %bb.cm
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = sub i64 %i.ma, %i.jn                    ; 5 uses
  store i64 %i.mb, ptr %11, align 8, !tbaa !166, !noalias !378
  store ptr %i.jm, ptr %i.jo, align 8, !tbaa !167, !noalias !378
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  store ptr %i.jp, ptr %10, align 8, !tbaa !40, !alias.scope !391, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !392
  store i64 %i.mb, ptr %i.a, align 8, !tbaa !41, !noalias !392
  %i.mc = icmp ugt i64 %i.mb, 15
  br i1 %i.mc, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.cn
  %i.md = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc131.i.i unwind label %bb.di, !noalias !378 ; 2 uses

.noexc131.i.i:                                    ; preds = %.noexc.i.i.i.i
  store ptr %i.md, ptr %10, align 8, !tbaa !38, !alias.scope !391, !noalias !378
  %i.me = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !392
  store i64 %i.me, ptr %i.jp, align 8, !tbaa !42, !alias.scope !391, !noalias !378
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc131.i.i, %bb.cn
  %i.mf = phi ptr [ %i.md, %.noexc131.i.i ], [ %i.jp, %bb.cn ] ; 2 uses
  switch i64 %i.mb, label %bb.cp [
    i64 1, label %bb.co
    i64 0, label %bb.cq
  ]

bb.co:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.mg = load i8, ptr %i.jm, align 8, !tbaa !42, !noalias !378
  store i8 %i.mg, ptr %i.mf, align 1, !tbaa !42, !noalias !378
  br label %bb.cq

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mf, ptr nonnull align 8 %i.jm, i64 %i.mb, i1 false), !noalias !378
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %._crit_edge.i.i.i.i.i
  %i.mh = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !392 ; 2 uses
  store i64 %i.mh, ptr %i.jq, align 8, !tbaa !39, !alias.scope !391, !noalias !378
  %i.mi = load ptr, ptr %10, align 8, !tbaa !38, !alias.scope !391, !noalias !378
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mh
  store i8 0, ptr %i.mj, align 1, !tbaa !42, !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !378
  %i.mk = load ptr, ptr %10, align 8, !tbaa !38, !noalias !378 ; 8 uses
  %i.ml = ptrtoaddr ptr %i.mk to i64
  %i.mm = load i64, ptr %i.jq, align 8, !tbaa !39, !noalias !378 ; 13 uses
  %.not.i132.i.i = icmp samesign eq i64 %i.mm, 0
  %.pre343.i.i = load i64, ptr %9, align 8, !tbaa !41, !noalias !378 ; 3 uses
  %.pre345.i.i = load ptr, ptr %i.jl, align 8, !noalias !378 ; 2 uses
  br i1 %.not.i132.i.i, label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i, label %bb.cr, !prof !63

bb.cr:                                            ; preds = %bb.cq
  %i.mn = trunc i64 %.pre343.i.i to i1            ; 2 uses
  %i.mo = load i64, ptr %i.jk, align 8, !noalias !393
  %.sink2.i.i.i.i = select i1 %i.mn, ptr %.pre345.i.i, ptr %i.jl ; 12 uses
  %.sink.i.i.i.i = select i1 %i.mn, i64 %i.mo, i64 196 ; 2 uses
  %.sink1.i.i.i.i = lshr i64 %.pre343.i.i, 1      ; 7 uses
  %i.mp = ptrtoint ptr %.sink2.i.i.i.i to i64     ; 7 uses
  %i.mq = sub i64 %i.lu, %i.mp                    ; 13 uses
  %i.mr = add i64 %i.mq, %i.mm                    ; 5 uses
  %i.ms = add i64 %.sink1.i.i.i.i, %i.mm          ; 5 uses
  %i.mt = icmp ugt i64 %i.ms, %.sink.i.i.i.i
  br i1 %i.mt, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.mu = shl i64 %.sink.i.i.i.i, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.mu, i64 %i.ms) ; 3 uses
  %i.mv = icmp slt i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.mv, label %.noexc.i162.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i, !prof !63

.noexc.i162.i.i:                                  ; preds = %bb.cs
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc163.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !378

.noexc163.i.i:                                    ; preds = %.noexc.i162.i.i
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i: ; preds = %bb.cs
  %i.mw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated.i.i.i.i) #33
          to label %.lr.ph.i.i.preheader.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !378 ; 8 uses

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i
  %i.mx = ptrtoaddr ptr %i.mw to i64              ; 2 uses
  %i.my = getelementptr i8, ptr %i.mw, i64 %i.mq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.my, ptr align 1 %i.mk, i64 %i.mm, i1 false), !tbaa !42, !noalias !378
  %.not.i.i53.i.i.i = icmp eq ptr %i.lp, %.sink2.i.i.i.i
  br i1 %.not.i.i53.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %iter.check622

iter.check622:                                    ; preds = %.lr.ph.i.i.preheader.i.i.i
  %min.iters.check609 = icmp ult i64 %i.mq, 4
  %i.mz = sub i64 %i.mp, %i.mx
  %diff.check608 = icmp ugt i64 %i.mz, -32
  %or.cond = or i1 %min.iters.check609, %diff.check608
  br i1 %or.cond, label %.lr.ph.i.i56.i.i.i.preheader, label %vector.main.loop.iter.check610

vector.main.loop.iter.check610:                   ; preds = %iter.check622
  %min.iters.check611 = icmp ult i64 %i.mq, 32
  br i1 %min.iters.check611, label %vec.epilog.ph626, label %vector.ph612

vector.ph612:                                     ; preds = %vector.main.loop.iter.check610
  %i.na = and i64 %i.mq, 28
  %n.vec613 = and i64 %i.mq, -32                  ; 5 uses
  %i.nb = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %n.vec613 ; 2 uses
  br label %vector.body614

vector.body614:                                   ; preds = %vector.ph612, %vector.body614
  %index615 = phi i64 [ 0, %vector.ph612 ], [ %index.next619, %vector.body614 ] ; 3 uses
  %next.gep616 = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %index615 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 %index615 ; 2 uses
  %i.nd = getelementptr i8, ptr %next.gep616, i64 16
  %wide.load617 = load <16 x i8>, ptr %next.gep616, align 1, !tbaa !42, !noalias !378
  %wide.load618 = load <16 x i8>, ptr %i.nd, align 1, !tbaa !42, !noalias !378
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store <16 x i8> %wide.load617, ptr %i.nc, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load618, ptr %i.ne, align 1, !tbaa !42, !noalias !378
  %index.next619 = add nuw i64 %index615, 32      ; 2 uses
  %i.nf = icmp eq i64 %index.next619, %n.vec613
  br i1 %i.nf, label %middle.block620, label %vector.body614, !llvm.loop !324

middle.block620:                                  ; preds = %vector.body614
  %cmp.n621 = icmp eq i64 %i.mq, %n.vec613
  br i1 %cmp.n621, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %vec.epilog.iter.check623

vec.epilog.iter.check623:                         ; preds = %middle.block620
  %min.epilog.iters.check625 = icmp eq i64 %i.na, 0
  br i1 %min.epilog.iters.check625, label %.lr.ph.i.i56.i.i.i.preheader, label %vec.epilog.ph626, !prof !170

vec.epilog.ph626:                                 ; preds = %vector.main.loop.iter.check610, %vec.epilog.iter.check623
  %vec.epilog.resume.val627 = phi i64 [ %n.vec613, %vec.epilog.iter.check623 ], [ 0, %vector.main.loop.iter.check610 ]
  %n.vec628 = and i64 %i.mq, -4                   ; 4 uses
  %i.ng = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %n.vec628 ; 2 uses
  br label %vec.epilog.vector.body629

vec.epilog.vector.body629:                        ; preds = %vec.epilog.vector.body629, %vec.epilog.ph626
  %index630 = phi i64 [ %vec.epilog.resume.val627, %vec.epilog.ph626 ], [ %index.next633, %vec.epilog.vector.body629 ] ; 3 uses
  %next.gep631 = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %index630
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mw, i64 %index630
  %wide.load632 = load <4 x i8>, ptr %next.gep631, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load632, ptr %i.nh, align 1, !tbaa !42, !noalias !378
  %index.next633 = add nuw i64 %index630, 4       ; 2 uses
  %i.ni = icmp eq i64 %index.next633, %n.vec628
  br i1 %i.ni, label %vec.epilog.middle.block634, label %vec.epilog.vector.body629, !llvm.loop !325

vec.epilog.middle.block634:                       ; preds = %vec.epilog.vector.body629
  %cmp.n635 = icmp eq i64 %i.mq, %n.vec628
  br i1 %cmp.n635, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %.lr.ph.i.i56.i.i.i.preheader

.lr.ph.i.i56.i.i.i.preheader:                     ; preds = %iter.check622, %vec.epilog.iter.check623, %vec.epilog.middle.block634
  %.sroa.094.0.i.i.i.ph = phi ptr [ %.sink2.i.i.i.i, %iter.check622 ], [ %i.nb, %vec.epilog.iter.check623 ], [ %i.ng, %vec.epilog.middle.block634 ]
  %.012.i.i.i.i.i.ph = phi i64 [ 0, %iter.check622 ], [ %n.vec613, %vec.epilog.iter.check623 ], [ %n.vec628, %vec.epilog.middle.block634 ]
  br label %.lr.ph.i.i56.i.i.i

.lr.ph.i.i56.i.i.i:                               ; preds = %.lr.ph.i.i56.i.i.i.preheader, %.lr.ph.i.i56.i.i.i
  %.sroa.094.0.i.i.i = phi ptr [ %i.nl, %.lr.ph.i.i56.i.i.i ], [ %.sroa.094.0.i.i.i.ph, %.lr.ph.i.i56.i.i.i.preheader ] ; 2 uses
  %.012.i.i.i.i.i = phi i64 [ %i.nm, %.lr.ph.i.i56.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i56.i.i.i.preheader ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.012.i.i.i.i.i
  %i.nk = load i8, ptr %.sroa.094.0.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.nk, ptr %i.nj, align 1, !tbaa !42, !noalias !378
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.094.0.i.i.i, i64 1 ; 2 uses
  %i.nm = add nuw i64 %.012.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i57.i.i.i = icmp eq i64 %i.nm, %i.mq
  br i1 %exitcond.not.i.i57.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %.lr.ph.i.i56.i.i.i, !llvm.loop !326

_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i: ; preds = %.lr.ph.i.i56.i.i.i, %middle.block620, %vec.epilog.middle.block634, %.lr.ph.i.i.preheader.i.i.i
  %.sroa.094.1.i.i.i = phi ptr [ %.sink2.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %i.ng, %vec.epilog.middle.block634 ], [ %i.nb, %middle.block620 ], [ %i.nl, %.lr.ph.i.i56.i.i.i ] ; 7 uses
  %.sroa.094.1.i.i.i597 = ptrtoaddr ptr %.sroa.094.1.i.i.i to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mr ; 3 uses
  %i.no = sub i64 %.sink1.i.i.i.i, %i.mq          ; 8 uses
  %.not.i.i160.i.i = icmp eq i64 %.sink1.i.i.i.i, %i.mq
  br i1 %.not.i.i160.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i
  %min.iters.check = icmp ult i64 %i.no, 4
  br i1 %min.iters.check, label %.lr.ph.i.i161.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.np = add i64 %i.mm, %i.lu
  %i.nq = add i64 %i.np, %i.mx
  %i.nr = add i64 %i.mp, %.sroa.094.1.i.i.i597
  %i.ns = sub i64 %i.nr, %i.nq
  %diff.check = icmp ugt i64 %i.ns, -32
  br i1 %diff.check, label %.lr.ph.i.i161.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check598 = icmp ult i64 %i.no, 32
  br i1 %min.iters.check598, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nt = and i64 %i.no, 28
  %n.vec = and i64 %i.no, -32                     ; 5 uses
  %i.nu = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %index ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 %index ; 2 uses
  %i.nw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !42, !noalias !378
  %wide.load599 = load <16 x i8>, ptr %i.nw, align 1, !tbaa !42, !noalias !378
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store <16 x i8> %wide.load, ptr %i.nv, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load599, ptr %i.nx, align 1, !tbaa !42, !noalias !378
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ny = icmp eq i64 %index.next, %n.vec
  br i1 %i.ny, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.no, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i161.i.i.preheader, label %vec.epilog.ph, !prof !170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec600 = and i64 %i.no, -4                   ; 4 uses
  %i.nz = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %n.vec600
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index601 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next604, %vec.epilog.vector.body ] ; 3 uses
  %next.gep602 = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %index601
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nn, i64 %index601
  %wide.load603 = load <4 x i8>, ptr %next.gep602, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load603, ptr %i.oa, align 1, !tbaa !42, !noalias !378
  %index.next604 = add nuw i64 %index601, 4       ; 2 uses
  %i.ob = icmp eq i64 %index.next604, %n.vec600
  br i1 %i.ob, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !328

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n605 = icmp eq i64 %i.no, %n.vec600
  br i1 %cmp.n605, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %.lr.ph.i.i161.i.i.preheader

.lr.ph.i.i161.i.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.094.2.i.i.i.ph = phi ptr [ %.sroa.094.1.i.i.i, %iter.check ], [ %.sroa.094.1.i.i.i, %vector.memcheck ], [ %i.nu, %vec.epilog.iter.check ], [ %i.nz, %vec.epilog.middle.block ]
  %.012.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec600, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i161.i.i

.lr.ph.i.i161.i.i:                                ; preds = %.lr.ph.i.i161.i.i.preheader, %.lr.ph.i.i161.i.i
  %.sroa.094.2.i.i.i = phi ptr [ %i.oe, %.lr.ph.i.i161.i.i ], [ %.sroa.094.2.i.i.i.ph, %.lr.ph.i.i161.i.i.preheader ] ; 2 uses
  %.012.i.i.i.i = phi i64 [ %i.of, %.lr.ph.i.i161.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i161.i.i.preheader ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.012.i.i.i.i
  %i.od = load i8, ptr %.sroa.094.2.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.od, ptr %i.oc, align 1, !tbaa !42, !noalias !378
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.094.2.i.i.i, i64 1
  %i.of = add nuw i64 %.012.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.of, %i.no
  br i1 %exitcond.not.i.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %.lr.ph.i.i161.i.i, !llvm.loop !329

_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i: ; preds = %.lr.ph.i.i161.i.i, %middle.block, %vec.epilog.middle.block, %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i
  %i.og = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  %i.oh = trunc i64 %i.og to i1
  br i1 %i.oh, label %bb.ct, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i

bb.ct:                                            ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i
  %i.oi = load ptr, ptr %i.jl, align 8, !tbaa !42, !noalias !378
  %i.oj = load i64, ptr %i.jk, align 8, !tbaa !42, !noalias !378
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.oj) #35, !noalias !378
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i: ; preds = %bb.ct, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i
  store ptr %i.mw, ptr %i.jl, align 8, !tbaa !42, !noalias !378
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.jk, align 8, !tbaa !42, !noalias !378
  %i.ok = shl i64 %i.ms, 1
  %i.ol = or disjoint i64 %i.ok, 1
  br label %.noexc134.i.i

bb.cu:                                            ; preds = %bb.cr
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.mr, i64 %.sink1.i.i.i.i) ; 11 uses
  %i.om = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %.sroa.speculated.i.i.i ; 4 uses
  %i.on = sub i64 %i.ms, %.sroa.speculated.i.i.i  ; 19 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.mq ; 5 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.mr
  %i.oq = sub nuw i64 %.sroa.speculated.i.i.i, %i.mr
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.on ; 7 uses
  %i.os = sub i64 %i.mm, %i.on                    ; 8 uses
  %.not.i.i61.i.i.i = icmp eq i64 %i.ms, %.sroa.speculated.i.i.i ; 2 uses
  br i1 %.not.i.i61.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %iter.check749

iter.check749:                                    ; preds = %bb.cu
  %i.ot = sub i64 %.sroa.speculated.i.i.i, %i.mm
  %i.ou = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.ot ; 5 uses
  %min.iters.check736 = icmp ult i64 %i.on, 4
  %diff.check735 = icmp ult i64 %i.mm, 32
  %or.cond765 = or i1 %min.iters.check736, %diff.check735
  br i1 %or.cond765, label %.lr.ph.i.i64.i.i.i.preheader, label %vector.main.loop.iter.check737

vector.main.loop.iter.check737:                   ; preds = %iter.check749
  %min.iters.check738 = icmp ult i64 %i.on, 32
  br i1 %min.iters.check738, label %vec.epilog.ph753, label %vector.ph739

vector.ph739:                                     ; preds = %vector.main.loop.iter.check737
  %i.ov = and i64 %i.on, 28
  %n.vec740 = and i64 %i.on, -32                  ; 5 uses
  %i.ow = getelementptr i8, ptr %i.ou, i64 %n.vec740
  br label %vector.body741

vector.body741:                                   ; preds = %vector.ph739, %vector.body741
  %index742 = phi i64 [ 0, %vector.ph739 ], [ %index.next746, %vector.body741 ] ; 3 uses
  %next.gep743 = getelementptr i8, ptr %i.ou, i64 %index742 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 %index742 ; 2 uses
  %i.oy = getelementptr i8, ptr %next.gep743, i64 16
  %wide.load744 = load <16 x i8>, ptr %next.gep743, align 1, !tbaa !42, !noalias !378
  %wide.load745 = load <16 x i8>, ptr %i.oy, align 1, !tbaa !42, !noalias !378
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  store <16 x i8> %wide.load744, ptr %i.ox, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load745, ptr %i.oz, align 1, !tbaa !42, !noalias !378
  %index.next746 = add nuw i64 %index742, 32      ; 2 uses
  %i.pa = icmp eq i64 %index.next746, %n.vec740
  br i1 %i.pa, label %middle.block747, label %vector.body741, !llvm.loop !330

middle.block747:                                  ; preds = %vector.body741
  %cmp.n748 = icmp eq i64 %i.on, %n.vec740
  br i1 %cmp.n748, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %vec.epilog.iter.check750

vec.epilog.iter.check750:                         ; preds = %middle.block747
  %min.epilog.iters.check752 = icmp eq i64 %i.ov, 0
  br i1 %min.epilog.iters.check752, label %.lr.ph.i.i64.i.i.i.preheader, label %vec.epilog.ph753, !prof !170

vec.epilog.ph753:                                 ; preds = %vector.main.loop.iter.check737, %vec.epilog.iter.check750
  %vec.epilog.resume.val754 = phi i64 [ %n.vec740, %vec.epilog.iter.check750 ], [ 0, %vector.main.loop.iter.check737 ]
  %n.vec755 = and i64 %i.on, -4                   ; 4 uses
  %i.pb = getelementptr i8, ptr %i.ou, i64 %n.vec755
  br label %vec.epilog.vector.body756

vec.epilog.vector.body756:                        ; preds = %vec.epilog.vector.body756, %vec.epilog.ph753
  %index757 = phi i64 [ %vec.epilog.resume.val754, %vec.epilog.ph753 ], [ %index.next760, %vec.epilog.vector.body756 ] ; 3 uses
  %next.gep758 = getelementptr i8, ptr %i.ou, i64 %index757
  %i.pc = getelementptr inbounds nuw i8, ptr %i.om, i64 %index757
  %wide.load759 = load <4 x i8>, ptr %next.gep758, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load759, ptr %i.pc, align 1, !tbaa !42, !noalias !378
  %index.next760 = add nuw i64 %index757, 4       ; 2 uses
  %i.pd = icmp eq i64 %index.next760, %n.vec755
  br i1 %i.pd, label %vec.epilog.middle.block761, label %vec.epilog.vector.body756, !llvm.loop !331

vec.epilog.middle.block761:                       ; preds = %vec.epilog.vector.body756
  %cmp.n762 = icmp eq i64 %i.on, %n.vec755
  br i1 %cmp.n762, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %.lr.ph.i.i64.i.i.i.preheader

.lr.ph.i.i64.i.i.i.preheader:                     ; preds = %iter.check749, %vec.epilog.iter.check750, %vec.epilog.middle.block761
  %.sroa.090.0.i.i.i.ph = phi ptr [ %i.ou, %iter.check749 ], [ %i.ow, %vec.epilog.iter.check750 ], [ %i.pb, %vec.epilog.middle.block761 ]
  %.012.i.i65.i.i.i.ph = phi i64 [ 0, %iter.check749 ], [ %n.vec740, %vec.epilog.iter.check750 ], [ %n.vec755, %vec.epilog.middle.block761 ]
  br label %.lr.ph.i.i64.i.i.i

.lr.ph.i.i64.i.i.i:                               ; preds = %.lr.ph.i.i64.i.i.i.preheader, %.lr.ph.i.i64.i.i.i
  %.sroa.090.0.i.i.i = phi ptr [ %i.pg, %.lr.ph.i.i64.i.i.i ], [ %.sroa.090.0.i.i.i.ph, %.lr.ph.i.i64.i.i.i.preheader ] ; 2 uses
  %.012.i.i65.i.i.i = phi i64 [ %i.ph, %.lr.ph.i.i64.i.i.i ], [ %.012.i.i65.i.i.i.ph, %.lr.ph.i.i64.i.i.i.preheader ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.om, i64 %.012.i.i65.i.i.i
  %i.pf = load i8, ptr %.sroa.090.0.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.pf, ptr %i.pe, align 1, !tbaa !42, !noalias !378
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.090.0.i.i.i, i64 1
  %i.ph = add nuw i64 %.012.i.i65.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i66.i.i.i = icmp eq i64 %i.ph, %i.on
  br i1 %exitcond.not.i.i66.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %.lr.ph.i.i64.i.i.i, !llvm.loop !332

_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i: ; preds = %.lr.ph.i.i64.i.i.i, %middle.block747, %vec.epilog.middle.block761, %bb.cu
  %.not.i158.i.i = icmp sgt i64 %.sroa.speculated.i.i.i, %i.mr
  br i1 %.not.i158.i.i, label %iter.check717, label %._crit_edge.i.i.i

iter.check717:                                    ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i
  %i.pi = getelementptr i8, ptr %i.om, i64 -1     ; 6 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.oq ; 6 uses
  %i.pk = add i64 %i.mp, -1
  %i.pl = add i64 %i.pk, %.sroa.speculated.i.i.i
  %i.pm = add i64 %i.lv, %i.mm
  %i.pn = add i64 %i.mp, -2
  %i.po = add i64 %i.pn, %.sroa.speculated.i.i.i
  %umin = call i64 @llvm.umin.i64(i64 %i.pm, i64 %i.po)
  %i.pp = sub i64 %i.pl, %umin                    ; 7 uses
  %min.iters.check703 = icmp ult i64 %i.pp, 8
  br i1 %min.iters.check703, label %.lr.ph.i.i.i.preheader, label %vector.memcheck712

vector.memcheck712:                               ; preds = %iter.check717
  %41 = add i64 %i.mm, %i.lu
  %42 = add i64 %41, %i.mp
  %.reass = add i64 %i.mp, %i.lw
  %43 = sub i64 %42, %.reass
  %diff.check713 = icmp ugt i64 %43, -32
  br i1 %diff.check713, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check704

vector.main.loop.iter.check704:                   ; preds = %vector.memcheck712
  %min.iters.check705 = icmp ult i64 %i.pp, 32
  br i1 %min.iters.check705, label %vec.epilog.ph721, label %vector.ph706

vector.ph706:                                     ; preds = %vector.main.loop.iter.check704
  %i.pq = and i64 %i.pp, 24
  %n.vec707 = and i64 %i.pp, -32                  ; 4 uses
  %i.pr = sub i64 0, %n.vec707                    ; 2 uses
  %i.ps = getelementptr i8, ptr %i.pi, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.pj, i64 %i.pr
  br label %vector.body708

vector.body708:                                   ; preds = %vector.ph706, %vector.body708
  %index709 = phi i64 [ 0, %vector.ph706 ], [ %index.next714, %vector.body708 ] ; 2 uses
  %i.pu = sub i64 0, %index709                    ; 2 uses
  %next.gep710 = getelementptr i8, ptr %i.pi, i64 %i.pu ; 2 uses
  %next.gep711 = getelementptr i8, ptr %i.pj, i64 %i.pu ; 2 uses
  %i.pv = getelementptr inbounds i8, ptr %next.gep711, i64 -16
  %i.pw = getelementptr inbounds i8, ptr %next.gep711, i64 -32
  %wide.load712 = load <16 x i8>, ptr %i.pv, align 1, !tbaa !42, !noalias !378
  %wide.load713 = load <16 x i8>, ptr %i.pw, align 1, !tbaa !42, !noalias !378
  %i.px = getelementptr i8, ptr %next.gep710, i64 -15
  %i.py = getelementptr i8, ptr %next.gep710, i64 -31
  store <16 x i8> %wide.load712, ptr %i.px, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load713, ptr %i.py, align 1, !tbaa !42, !noalias !378
  %index.next714 = add nuw i64 %index709, 32      ; 2 uses
  %i.pz = icmp eq i64 %index.next714, %n.vec707
  br i1 %i.pz, label %middle.block715, label %vector.body708, !llvm.loop !333

middle.block715:                                  ; preds = %vector.body708
  %cmp.n716 = icmp eq i64 %i.pp, %n.vec707
  br i1 %cmp.n716, label %._crit_edge.i.i.i, label %vec.epilog.iter.check718

vec.epilog.iter.check718:                         ; preds = %middle.block715
  %min.epilog.iters.check720 = icmp eq i64 %i.pq, 0
  br i1 %min.epilog.iters.check720, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph721, !prof !394

vec.epilog.ph721:                                 ; preds = %vector.main.loop.iter.check704, %vec.epilog.iter.check718
  %vec.epilog.resume.val722 = phi i64 [ %n.vec707, %vec.epilog.iter.check718 ], [ 0, %vector.main.loop.iter.check704 ]
  %n.vec723 = and i64 %i.pp, -8                   ; 3 uses
  %i.qa = sub i64 0, %n.vec723                    ; 2 uses
  %i.qb = getelementptr i8, ptr %i.pi, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.pj, i64 %i.qa
  br label %vec.epilog.vector.body724

vec.epilog.vector.body724:                        ; preds = %vec.epilog.vector.body724, %vec.epilog.ph721
  %index725 = phi i64 [ %vec.epilog.resume.val722, %vec.epilog.ph721 ], [ %index.next729, %vec.epilog.vector.body724 ] ; 2 uses
  %i.qd = sub i64 0, %index725                    ; 2 uses
  %next.gep726 = getelementptr i8, ptr %i.pi, i64 %i.qd
  %next.gep727 = getelementptr i8, ptr %i.pj, i64 %i.qd
  %i.qe = getelementptr inbounds i8, ptr %next.gep727, i64 -8
  %wide.load728 = load <8 x i8>, ptr %i.qe, align 1, !tbaa !42, !noalias !378
  %i.qf = getelementptr i8, ptr %next.gep726, i64 -7
  store <8 x i8> %wide.load728, ptr %i.qf, align 1, !tbaa !42, !noalias !378
  %index.next729 = add nuw i64 %index725, 8       ; 2 uses
  %i.qg = icmp eq i64 %index.next729, %n.vec723
  br i1 %i.qg, label %vec.epilog.middle.block730, label %vec.epilog.vector.body724, !llvm.loop !334

vec.epilog.middle.block730:                       ; preds = %vec.epilog.vector.body724
  %cmp.n731 = icmp eq i64 %i.pp, %n.vec723
  br i1 %cmp.n731, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check717, %vector.memcheck712, %vec.epilog.iter.check718, %vec.epilog.middle.block730
  %.ph = phi ptr [ %i.pi, %iter.check717 ], [ %i.pi, %vector.memcheck712 ], [ %i.ps, %vec.epilog.iter.check718 ], [ %i.qb, %vec.epilog.middle.block730 ]
  %.0126.i.i.i.ph = phi ptr [ %i.pj, %iter.check717 ], [ %i.pj, %vector.memcheck712 ], [ %i.pt, %vec.epilog.iter.check718 ], [ %i.qc, %vec.epilog.middle.block730 ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block715, %vec.epilog.middle.block730, %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i
  br i1 %.not.i.i61.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %iter.check685

iter.check685:                                    ; preds = %._crit_edge.i.i.i
  %min.iters.check672 = icmp ult i64 %i.on, 4
  %i.qh = sub i64 %i.ml, %i.lx
  %diff.check671 = icmp ugt i64 %i.qh, -32
  %or.cond766 = select i1 %min.iters.check672, i1 true, i1 %diff.check671
  br i1 %or.cond766, label %.lr.ph.i71.i.i.i.preheader, label %vector.main.loop.iter.check673

vector.main.loop.iter.check673:                   ; preds = %iter.check685
  %min.iters.check674 = icmp ult i64 %i.on, 32
  br i1 %min.iters.check674, label %vec.epilog.ph689, label %vector.ph675

vector.ph675:                                     ; preds = %vector.main.loop.iter.check673
  %i.qi = and i64 %i.on, 28
  %n.vec676 = and i64 %i.on, -32                  ; 5 uses
  %i.qj = getelementptr i8, ptr %i.mk, i64 %n.vec676 ; 2 uses
  br label %vector.body677

vector.body677:                                   ; preds = %vector.ph675, %vector.body677
  %index678 = phi i64 [ 0, %vector.ph675 ], [ %index.next682, %vector.body677 ] ; 3 uses
  %next.gep679 = getelementptr i8, ptr %i.mk, i64 %index678 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.oo, i64 %index678 ; 2 uses
  %i.ql = getelementptr i8, ptr %next.gep679, i64 16
  %wide.load680 = load <16 x i8>, ptr %next.gep679, align 1, !tbaa !42, !noalias !378
  %wide.load681 = load <16 x i8>, ptr %i.ql, align 1, !tbaa !42, !noalias !378
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  store <16 x i8> %wide.load680, ptr %i.qk, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load681, ptr %i.qm, align 1, !tbaa !42, !noalias !378
  %index.next682 = add nuw i64 %index678, 32      ; 2 uses
  %i.qn = icmp eq i64 %index.next682, %n.vec676
  br i1 %i.qn, label %middle.block683, label %vector.body677, !llvm.loop !335

middle.block683:                                  ; preds = %vector.body677
  %cmp.n684 = icmp eq i64 %i.on, %n.vec676
  br i1 %cmp.n684, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %vec.epilog.iter.check686

vec.epilog.iter.check686:                         ; preds = %middle.block683
  %min.epilog.iters.check688 = icmp eq i64 %i.qi, 0
  br i1 %min.epilog.iters.check688, label %.lr.ph.i71.i.i.i.preheader, label %vec.epilog.ph689, !prof !170

vec.epilog.ph689:                                 ; preds = %vector.main.loop.iter.check673, %vec.epilog.iter.check686
  %vec.epilog.resume.val690 = phi i64 [ %n.vec676, %vec.epilog.iter.check686 ], [ 0, %vector.main.loop.iter.check673 ]
  %n.vec691 = and i64 %i.on, -4                   ; 4 uses
  %i.qo = getelementptr i8, ptr %i.mk, i64 %n.vec691 ; 2 uses
  br label %vec.epilog.vector.body692

vec.epilog.vector.body692:                        ; preds = %vec.epilog.vector.body692, %vec.epilog.ph689
  %index693 = phi i64 [ %vec.epilog.resume.val690, %vec.epilog.ph689 ], [ %index.next696, %vec.epilog.vector.body692 ] ; 3 uses
  %next.gep694 = getelementptr i8, ptr %i.mk, i64 %index693
  %i.qp = getelementptr inbounds nuw i8, ptr %i.oo, i64 %index693
  %wide.load695 = load <4 x i8>, ptr %next.gep694, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load695, ptr %i.qp, align 1, !tbaa !42, !noalias !378
  %index.next696 = add nuw i64 %index693, 4       ; 2 uses
  %i.qq = icmp eq i64 %index.next696, %n.vec691
  br i1 %i.qq, label %vec.epilog.middle.block697, label %vec.epilog.vector.body692, !llvm.loop !336

vec.epilog.middle.block697:                       ; preds = %vec.epilog.vector.body692
  %cmp.n698 = icmp eq i64 %i.on, %n.vec691
  br i1 %cmp.n698, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %.lr.ph.i71.i.i.i.preheader

.lr.ph.i71.i.i.i.preheader:                       ; preds = %iter.check685, %vec.epilog.iter.check686, %vec.epilog.middle.block697
  %.sroa.0122.1.i.i.i.ph = phi ptr [ %i.mk, %iter.check685 ], [ %i.qo, %vec.epilog.middle.block697 ], [ %i.qj, %vec.epilog.iter.check686 ]
  %.05.i.i.i.i117.ph = phi i64 [ 0, %iter.check685 ], [ %n.vec691, %vec.epilog.middle.block697 ], [ %n.vec676, %vec.epilog.iter.check686 ]
  br label %.lr.ph.i71.i.i.i

.lr.ph.i71.i.i.i:                                 ; preds = %.lr.ph.i71.i.i.i.preheader, %.lr.ph.i71.i.i.i
  %.sroa.0122.1.i.i.i = phi ptr [ %i.qt, %.lr.ph.i71.i.i.i ], [ %.sroa.0122.1.i.i.i.ph, %.lr.ph.i71.i.i.i.preheader ] ; 2 uses
  %.05.i.i.i.i117 = phi i64 [ %i.qu, %.lr.ph.i71.i.i.i ], [ %.05.i.i.i.i117.ph, %.lr.ph.i71.i.i.i.preheader ] ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.oo, i64 %.05.i.i.i.i117
  %i.qs = load i8, ptr %.sroa.0122.1.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.qs, ptr %i.qr, align 1, !tbaa !42, !noalias !378
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0122.1.i.i.i, i64 1 ; 2 uses
  %i.qu = add nuw i64 %.05.i.i.i.i117, 1          ; 2 uses
  %exitcond.not.i72.i.i.i = icmp eq i64 %i.qu, %i.on
  br i1 %exitcond.not.i72.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %.lr.ph.i71.i.i.i, !llvm.loop !337

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.qv = phi ptr [ %i.qy, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0126.i.i.i = phi ptr [ %i.qw, %.lr.ph.i.i.i ], [ %.0126.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.qw = getelementptr inbounds i8, ptr %.0126.i.i.i, i64 -1 ; 2 uses
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !42, !noalias !378
  store i8 %i.qx, ptr %i.qv, align 1, !tbaa !42, !noalias !378
  %i.qy = getelementptr inbounds i8, ptr %i.qv, i64 -1 ; 2 uses
  %i.qz = icmp ult ptr %i.qy, %i.op
  br i1 %i.qz, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !338

_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i: ; preds = %.lr.ph.i71.i.i.i, %middle.block683, %vec.epilog.middle.block697, %._crit_edge.i.i.i
  %.sroa.0122.2.i.i.i = phi ptr [ %i.mk, %._crit_edge.i.i.i ], [ %i.qo, %vec.epilog.middle.block697 ], [ %i.qj, %middle.block683 ], [ %i.qt, %.lr.ph.i71.i.i.i ] ; 7 uses
  %.sroa.0122.2.i.i.i639 = ptrtoaddr ptr %.sroa.0122.2.i.i.i to i64
  %.not.i73.i.i.i = icmp eq i64 %i.mm, %i.on
  br i1 %.not.i73.i.i.i, label %.loopexit.i.i.i, label %iter.check654

iter.check654:                                    ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i
  %min.iters.check641 = icmp ult i64 %i.os, 4
  br i1 %min.iters.check641, label %.lr.ph.i76.i.i.i.preheader, label %vector.memcheck638

vector.memcheck638:                               ; preds = %iter.check654
  %i.ra = add i64 %i.mm, %i.ly
  %i.rb = add i64 %i.ra, %.sink1.i.i.i.i
  %i.rc = add i64 %.sroa.speculated.i.i.i, %.sroa.0122.2.i.i.i639
  %i.rd = sub i64 %i.rc, %i.rb
  %diff.check640 = icmp ugt i64 %i.rd, -32
  br i1 %diff.check640, label %.lr.ph.i76.i.i.i.preheader, label %vector.main.loop.iter.check642

vector.main.loop.iter.check642:                   ; preds = %vector.memcheck638
  %min.iters.check643 = icmp ult i64 %i.os, 32
  br i1 %min.iters.check643, label %vec.epilog.ph658, label %vector.ph644

vector.ph644:                                     ; preds = %vector.main.loop.iter.check642
  %i.re = and i64 %i.os, 28
  %n.vec645 = and i64 %i.os, -32                  ; 5 uses
  %i.rf = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %n.vec645
  br label %vector.body646

vector.body646:                                   ; preds = %vector.ph644, %vector.body646
  %index647 = phi i64 [ 0, %vector.ph644 ], [ %index.next651, %vector.body646 ] ; 3 uses
  %next.gep648 = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %index647 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.or, i64 %index647 ; 2 uses
  %i.rh = getelementptr i8, ptr %next.gep648, i64 16
  %wide.load649 = load <16 x i8>, ptr %next.gep648, align 1, !tbaa !42, !noalias !378
  %wide.load650 = load <16 x i8>, ptr %i.rh, align 1, !tbaa !42, !noalias !378
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  store <16 x i8> %wide.load649, ptr %i.rg, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load650, ptr %i.ri, align 1, !tbaa !42, !noalias !378
  %index.next651 = add nuw i64 %index647, 32      ; 2 uses
  %i.rj = icmp eq i64 %index.next651, %n.vec645
  br i1 %i.rj, label %middle.block652, label %vector.body646, !llvm.loop !339

middle.block652:                                  ; preds = %vector.body646
  %cmp.n653 = icmp eq i64 %i.os, %n.vec645
  br i1 %cmp.n653, label %.loopexit.i.i.i, label %vec.epilog.iter.check655

vec.epilog.iter.check655:                         ; preds = %middle.block652
  %min.epilog.iters.check657 = icmp eq i64 %i.re, 0
  br i1 %min.epilog.iters.check657, label %.lr.ph.i76.i.i.i.preheader, label %vec.epilog.ph658, !prof !170

vec.epilog.ph658:                                 ; preds = %vector.main.loop.iter.check642, %vec.epilog.iter.check655
  %vec.epilog.resume.val659 = phi i64 [ %n.vec645, %vec.epilog.iter.check655 ], [ 0, %vector.main.loop.iter.check642 ]
  %n.vec660 = and i64 %i.os, -4                   ; 4 uses
  %i.rk = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %n.vec660
  br label %vec.epilog.vector.body661

vec.epilog.vector.body661:                        ; preds = %vec.epilog.vector.body661, %vec.epilog.ph658
  %index662 = phi i64 [ %vec.epilog.resume.val659, %vec.epilog.ph658 ], [ %index.next665, %vec.epilog.vector.body661 ] ; 3 uses
  %next.gep663 = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %index662
  %i.rl = getelementptr inbounds nuw i8, ptr %i.or, i64 %index662
  %wide.load664 = load <4 x i8>, ptr %next.gep663, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load664, ptr %i.rl, align 1, !tbaa !42, !noalias !378
  %index.next665 = add nuw i64 %index662, 4       ; 2 uses
  %i.rm = icmp eq i64 %index.next665, %n.vec660
  br i1 %i.rm, label %vec.epilog.middle.block666, label %vec.epilog.vector.body661, !llvm.loop !340

vec.epilog.middle.block666:                       ; preds = %vec.epilog.vector.body661
  %cmp.n667 = icmp eq i64 %i.os, %n.vec660
  br i1 %cmp.n667, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i.preheader

.lr.ph.i76.i.i.i.preheader:                       ; preds = %iter.check654, %vector.memcheck638, %vec.epilog.iter.check655, %vec.epilog.middle.block666
  %.sroa.0122.3.i.i.i.ph = phi ptr [ %.sroa.0122.2.i.i.i, %iter.check654 ], [ %.sroa.0122.2.i.i.i, %vector.memcheck638 ], [ %i.rf, %vec.epilog.iter.check655 ], [ %i.rk, %vec.epilog.middle.block666 ] ; 2 uses
  %.06.i.i.i.i.ph = phi i64 [ 0, %iter.check654 ], [ 0, %vector.memcheck638 ], [ %n.vec645, %vec.epilog.iter.check655 ], [ %n.vec660, %vec.epilog.middle.block666 ] ; 3 uses
  %i.rn = sub i64 %.sroa.speculated.i.i.i, %.sink1.i.i.i.i
  %xtraiter = and i64 %i.rn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol

.lr.ph.i76.i.i.i.prol:                            ; preds = %.lr.ph.i76.i.i.i.preheader, %.lr.ph.i76.i.i.i.prol
  %.sroa.0122.3.i.i.i.prol = phi ptr [ %i.rq, %.lr.ph.i76.i.i.i.prol ], [ %.sroa.0122.3.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.prol = phi i64 [ %i.rr, %.lr.ph.i76.i.i.i.prol ], [ %.06.i.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i76.i.i.i.prol ], [ 0, %.lr.ph.i76.i.i.i.preheader ]
  %i.ro = getelementptr inbounds nuw i8, ptr %i.or, i64 %.06.i.i.i.i.prol
  %i.rp = load i8, ptr %.sroa.0122.3.i.i.i.prol, align 1, !tbaa !42, !noalias !378
  store i8 %i.rp, ptr %i.ro, align 1, !tbaa !42, !noalias !378
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i.prol, i64 1 ; 2 uses
  %i.rr = add nuw i64 %.06.i.i.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol, !llvm.loop !341

.lr.ph.i76.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i76.i.i.i.prol, %.lr.ph.i76.i.i.i.preheader
  %.sroa.0122.3.i.i.i.unr = phi ptr [ %.sroa.0122.3.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ], [ %i.rq, %.lr.ph.i76.i.i.i.prol ]
  %.06.i.i.i.i.unr = phi i64 [ %.06.i.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ], [ %i.rr, %.lr.ph.i76.i.i.i.prol ]
  %i.rs = sub i64 %.06.i.i.i.i.ph, %.sroa.speculated.i.i.i
  %i.rt = add i64 %i.rs, %.sink1.i.i.i.i
  %i.ru = icmp ugt i64 %i.rt, -4
  br i1 %i.ru, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i

.lr.ph.i76.i.i.i:                                 ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i
  %.sroa.0122.3.i.i.i = phi ptr [ %i.sj, %.lr.ph.i76.i.i.i ], [ %.sroa.0122.3.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 5 uses
  %.06.i.i.i.i = phi i64 [ %i.sk, %.lr.ph.i76.i.i.i ], [ %.06.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 5 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.or, i64 %.06.i.i.i.i
  %i.rw = load i8, ptr %.sroa.0122.3.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.rw, ptr %i.rv, align 1, !tbaa !42, !noalias !378
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 1
  %i.ry = getelementptr inbounds nuw i8, ptr %i.or, i64 %.06.i.i.i.i
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 1
  %i.sa = load i8, ptr %i.rx, align 1, !tbaa !42, !noalias !378
  store i8 %i.sa, ptr %i.rz, align 1, !tbaa !42, !noalias !378
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 2
  %i.sc = getelementptr inbounds nuw i8, ptr %i.or, i64 %.06.i.i.i.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 2
  %i.se = load i8, ptr %i.sb, align 1, !tbaa !42, !noalias !378
  store i8 %i.se, ptr %i.sd, align 1, !tbaa !42, !noalias !378
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 3
  %i.sg = getelementptr inbounds nuw i8, ptr %i.or, i64 %.06.i.i.i.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 3
  %i.si = load i8, ptr %i.sf, align 1, !tbaa !42, !noalias !378
  store i8 %i.si, ptr %i.sh, align 1, !tbaa !42, !noalias !378
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 4
  %i.sk = add nuw i64 %.06.i.i.i.i, 4             ; 2 uses
  %exitcond.not.i77.i.i.i.3 = icmp eq i64 %i.sk, %i.os
  br i1 %exitcond.not.i77.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i, !llvm.loop !342

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i, %middle.block652, %vec.epilog.middle.block666, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i
  %i.sl = shl i64 %i.mm, 1
  %i.sm = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  %i.sn = add i64 %i.sm, %i.sl
  %.pre344.pre.i.i = load ptr, ptr %i.jl, align 8, !noalias !378
  br label %.noexc134.i.i

.noexc134.i.i:                                    ; preds = %.loopexit.i.i.i, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i
  %.pre344.i.i = phi ptr [ %.pre344.pre.i.i, %.loopexit.i.i.i ], [ %i.mw, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i ]
  %storemerge.i.i.i = phi i64 [ %i.sn, %.loopexit.i.i.i ], [ %i.ol, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i.i, ptr %9, align 8, !tbaa !41, !noalias !378
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i: ; preds = %.noexc134.i.i, %bb.cq
  %i.so = phi ptr [ %.pre344.i.i, %.noexc134.i.i ], [ %.pre345.i.i, %bb.cq ]
  %i.sp = phi i64 [ %storemerge.i.i.i, %.noexc134.i.i ], [ %.pre343.i.i, %bb.cq ] ; 3 uses
  %i.sq = trunc i64 %i.sp to i1
  %i.sr = select i1 %i.sq, ptr %i.so, ptr %i.jl   ; 3 uses
  %i.ss = lshr i64 %i.sp, 1                       ; 3 uses
  %i.st = icmp ugt i64 %i.sp, 63
  br i1 %i.st, label %bb.cv, label %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.i.i.i

bb.cv:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.ss
  %i.sv = getelementptr inbounds i8, ptr %i.su, i64 -31
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %bb.cv
  %.049.i.i.i.i = phi ptr [ %i.sr, %bb.cv ], [ %i.tp, %bb.cw ] ; 5 uses
  %.047.i.i.i.i = phi i64 [ 6983438078262162902, %bb.cv ], [ %i.sz, %bb.cw ]
  %.046.i.i.i.i = phi i64 [ -4417276706812531889, %bb.cv ], [ %i.te, %bb.cw ]
  %.045.i.i.i.i = phi i64 [ 0, %bb.cv ], [ %i.tj, %bb.cw ]
  %.0.i.i136.i.i = phi i64 [ 7046029288634856825, %bb.cv ], [ %i.to, %bb.cw ]
  %.0.copyload.i.i.i.i = load i64, ptr %.049.i.i.i.i, align 1, !noalias !378
  %i.sw = mul i64 %.0.copyload.i.i.i.i, -4417276706812531889
  %i.sx = add i64 %i.sw, %.047.i.i.i.i            ; 2 uses
  %i.sy = call i64 @llvm.fshl.i64(i64 %i.sx, i64 %i.sx, i64 31) ; 2 uses
  %i.sz = mul i64 %i.sy, -7046029288634856825     ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 8
  %.0.copyload.i2.i.i.i = load i64, ptr %i.ta, align 1, !noalias !378
  %i.tb = mul i64 %.0.copyload.i2.i.i.i, -4417276706812531889
  %i.tc = add i64 %i.tb, %.046.i.i.i.i            ; 2 uses
  %i.td = call i64 @llvm.fshl.i64(i64 %i.tc, i64 %i.tc, i64 31) ; 2 uses
  %i.te = mul i64 %i.td, -7046029288634856825     ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 16
  %.0.copyload.i3.i.i.i = load i64, ptr %i.tf, align 1, !noalias !378
  %i.tg = mul i64 %.0.copyload.i3.i.i.i, -4417276706812531889
  %i.th = add i64 %i.tg, %.045.i.i.i.i            ; 2 uses
  %i.ti = call i64 @llvm.fshl.i64(i64 %i.th, i64 %i.th, i64 31) ; 2 uses
  %i.tj = mul i64 %i.ti, -7046029288634856825     ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 24
  %.0.copyload.i4.i.i.i = load i64, ptr %i.tk, align 1, !noalias !378
  %i.tl = mul i64 %.0.copyload.i4.i.i.i, -4417276706812531889
  %i.tm = add i64 %i.tl, %.0.i.i136.i.i           ; 2 uses
  %i.tn = call i64 @llvm.fshl.i64(i64 %i.tm, i64 %i.tm, i64 31) ; 2 uses
  %i.to = mul i64 %i.tn, -7046029288634856825     ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 32 ; 3 uses
  %i.tq = icmp ult ptr %i.tp, %i.sv
  br i1 %i.tq, label %bb.cw, label %bb.cx, !llvm.loop !3

bb.cx:                                            ; preds = %bb.cw
  %i.tr = call i64 @llvm.fshl.i64(i64 %i.sz, i64 %i.sz, i64 1)
  %i.ts = call i64 @llvm.fshl.i64(i64 %i.te, i64 %i.te, i64 7)
  %i.tt = add i64 %i.ts, %i.tr
  %i.tu = call i64 @llvm.fshl.i64(i64 %i.tj, i64 %i.tj, i64 12)
  %i.tv = add i64 %i.tt, %i.tu
  %i.tw = call i64 @llvm.fshl.i64(i64 %i.to, i64 %i.to, i64 18)
  %i.tx = add i64 %i.tv, %i.tw
  %i.ty = mul i64 %i.sy, -2381459717836149591     ; 2 uses
  %i.tz = call i64 @llvm.fshl.i64(i64 %i.ty, i64 %i.ty, i64 31)
  %i.ua = mul i64 %i.tz, -7046029288634856825
  %i.ub = xor i64 %i.tx, %i.ua
  %i.uc = mul i64 %i.ub, -7046029288634856825
  %i.ud = add i64 %i.uc, -8796714831421723037
  %i.ue = mul i64 %i.td, -2381459717836149591     ; 2 uses
  %i.uf = call i64 @llvm.fshl.i64(i64 %i.ue, i64 %i.ue, i64 31)
  %i.ug = mul i64 %i.uf, -7046029288634856825
  %i.uh = xor i64 %i.ud, %i.ug
  %i.ui = mul i64 %i.uh, -7046029288634856825
  %i.uj = add i64 %i.ui, -8796714831421723037
  %i.uk = mul i64 %i.ti, -2381459717836149591     ; 2 uses
  %i.ul = call i64 @llvm.fshl.i64(i64 %i.uk, i64 %i.uk, i64 31)
  %i.um = mul i64 %i.ul, -7046029288634856825
  %i.un = xor i64 %i.uj, %i.um
  %i.uo = mul i64 %i.un, -7046029288634856825
  %i.up = add i64 %i.uo, -8796714831421723037
  %i.uq = mul i64 %i.tn, -2381459717836149591     ; 2 uses
end_hunk_0
