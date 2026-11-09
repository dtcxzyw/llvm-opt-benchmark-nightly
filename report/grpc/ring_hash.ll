Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ring_hash?download=true
inline.NumInlined: 3519
inline.NumDeleted: 1868
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_18RingHash12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsE:bb.a
  %.sroa.0.020.i.idx.i.i.i.i.i = phi i64 [ %.sroa.0.020.i.add.i.i.i.i.i, %bb.ca ], [ 16, %bb.bv ] ; 4 uses
  %.pn19.i.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i.i.i, %bb.ca ], [ %.val88.i.i, %bb.bv ] ; 3 uses
  %.sroa.0.020.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val88.i.i, i64 %.sroa.0.020.i.idx.i.i.i.i.i ; 6 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.020.i.ptr.i.i.i.i.i, align 8, !tbaa !163, !noalias !378 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load i64, ptr %.val88.i.i, align 8, !tbaa !163, !noalias !378
  %i.kb = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i
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
  %i.ke = load <2 x i64>, ptr %.sroa.0.020.i.ptr.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %.val3.i11.i.i.i.i.i.i.i = load i64, ptr %.pn19.i.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.kf = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val3.i11.i.i.i.i.i.i.i
  br i1 %i.kf, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bz, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.pn19.i.i.i.i.i.i, %bb.bz ] ; 4 uses
  %.sroa.09.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.020.i.ptr.i.i.i.i.i, %bb.bz ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !164, !noalias !378
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.kg = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i
  br i1 %i.kg, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !315

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.bz
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i.i.i, %bb.bz ], [ %.sroa.0.013.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  store <2 x i64> %i.ke, ptr %.sroa.09.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  br label %bb.ca

bb.ca:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i
  %.sroa.0.020.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.020.i.idx.i.i.i.i.i, 16 ; 2 uses
  %.not.i.i.i.i125.i.i = icmp eq i64 %.sroa.0.020.i.add.i.i.i.i.i, 256
  br i1 %.not.i.i.i.i125.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i124.i.i, !llvm.loop !316

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i": ; preds = %bb.ca
  %i.kh = getelementptr inbounds nuw i8, ptr %.val88.i.i, i64 256 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.kh, %.val89.i.i
  br i1 %.not6.i.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i15.i.i.i.i.i

.lr.ph.i15.i.i.i.i.i:                             ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.kl, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i" ], [ %i.kh, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_.exit.i.i.i.i.i" ] ; 6 uses
  %i.ki = load <2 x i64>, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %.sroa.06.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !41, !noalias !378 ; 2 uses
  %.sroa.0.010.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i11.i.i18.i.i.i.i.i = load i64, ptr %.sroa.0.010.i.i.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.kj = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i.i.i, %.val3.i11.i.i18.i.i.i.i.i
  br i1 %i.kj, label %.lr.ph.i.i23.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i"

.lr.ph.i.i23.i.i.i.i.i:                           ; preds = %.lr.ph.i15.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i
  %.sroa.0.013.i.i24.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i ] ; 4 uses
  %.sroa.09.012.i.i25.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i24.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i25.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i24.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !164, !noalias !378
  %.sroa.0.0.i.i26.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i24.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i27.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i26.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.kk = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i.i.i, %.val3.i.i.i27.i.i.i.i.i
  br i1 %i.kk, label %.lr.ph.i.i23.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i", !llvm.loop !315

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i": ; preds = %.lr.ph.i.i23.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i
  %.sroa.09.0.lcssa.i.i20.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i ], [ %.sroa.0.013.i.i24.i.i.i.i.i, %.lr.ph.i.i23.i.i.i.i.i ]
  store <2 x i64> %i.ki, ptr %.sroa.09.0.lcssa.i.i20.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i22.i.i.i.i.i = icmp eq ptr %i.kl, %.val89.i.i
  br i1 %.not.i22.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i15.i.i.i.i.i, !llvm.loop !317

bb.cb:                                            ; preds = %bb.bv
  %.not18.i30.i.i.i.i.i = icmp eq ptr %scevgep.i.i.i.i.i, %.val89.i.i
  br i1 %.not18.i30.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i31.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i:                             ; preds = %bb.cb, %bb.ch
  %.sroa.0.020.i32.i.i.i.i.i = phi ptr [ %.sroa.0.0.i42.i.i.i.i.i, %bb.ch ], [ %scevgep.i.i.i.i.i, %bb.cb ] ; 8 uses
  %.pn19.i33.i.i.i.i.i = phi ptr [ %.sroa.0.020.i32.i.i.i.i.i, %bb.ch ], [ %.val88.i.i, %bb.cb ] ; 4 uses
  %.val2.i.i34.i.i.i.i.i = load i64, ptr %.sroa.0.020.i32.i.i.i.i.i, align 8, !tbaa !163, !noalias !378 ; 3 uses
  %.val3.i.i35.i.i.i.i.i = load i64, ptr %.val88.i.i, align 8, !tbaa !163, !noalias !378
  %i.km = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i.i35.i.i.i.i.i
  br i1 %i.km, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %.lr.ph.i31.i.i.i.i.i
  %.sroa.0843.0.copyload = load <2 x i64>, ptr %.sroa.0.020.i32.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %i.kn = ptrtoint ptr %.sroa.0.020.i32.i.i.i.i.i to i64
  %i.ko = sub i64 %i.kn, %i.ju                    ; 3 uses
  %i.kp = ashr exact i64 %i.ko, 4                 ; 2 uses
  %i.kq = icmp sgt i64 %i.kp, 1
  br i1 %i.kq, label %bb.cd, label %bb.ce, !prof !146

bb.cd:                                            ; preds = %bb.cc
  %i.kr = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i.i.i, i64 32
  %i.ks = sub nsw i64 0, %i.kp
  %i.kt = getelementptr inbounds [16 x i8], ptr %i.kr, i64 %i.ks
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kt, ptr noundef nonnull align 8 dereferenceable(1) %.val88.i.i, i64 %i.ko, i1 false), !noalias !378
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.ku = icmp eq i64 %i.ko, 16
  br i1 %i.ku, label %bb.cf, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.kv = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, ptr noundef nonnull readonly align 8 dereferenceable(16) %.val88.i.i, i64 16, i1 false), !tbaa.struct !164, !noalias !378
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i: ; preds = %bb.cf, %bb.ce, %bb.cd
  store <2 x i64> %.sroa.0843.0.copyload, ptr %.val88.i.i, align 8, !tbaa !41, !noalias !378
  br label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i31.i.i.i.i.i
  %i.kw = load <2 x i64>, ptr %.sroa.0.020.i32.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %.val3.i11.i.i38.i.i.i.i.i = load i64, ptr %.pn19.i33.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.kx = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i11.i.i38.i.i.i.i.i
  br i1 %i.kx, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i"

.lr.ph.i.i44.i.i.i.i.i:                           ; preds = %bb.cg, %.lr.ph.i.i44.i.i.i.i.i
  %.sroa.0.013.i.i45.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i47.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ], [ %.pn19.i33.i.i.i.i.i, %bb.cg ] ; 4 uses
  %.sroa.09.012.i.i46.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i45.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ], [ %.sroa.0.020.i32.i.i.i.i.i, %bb.cg ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i46.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i45.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !164, !noalias !378
  %.sroa.0.0.i.i47.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i45.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i48.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i47.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.ky = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i.i.i48.i.i.i.i.i
  br i1 %i.ky, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i", !llvm.loop !315

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i.i, %bb.cg
  %.sroa.09.0.lcssa.i.i40.i.i.i.i.i = phi ptr [ %.sroa.0.020.i32.i.i.i.i.i, %bb.cg ], [ %.sroa.0.013.i.i45.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ]
  store <2 x i64> %i.kw, ptr %.sroa.09.0.lcssa.i.i40.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  br label %bb.ch

bb.ch:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i
  %.sroa.0.0.i42.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i32.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i42.i.i.i.i.i, %.val89.i.i
  br i1 %.not.i43.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i31.i.i.i.i.i, !llvm.loop !316

bb.ci:                                            ; preds = %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESaIS4_EE11_M_allocateEm.exit.i.i.i, %._crit_edge294.i.i, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_18RingHash4RingC1EPS2_PNS1_16RingHashLbConfigEE14EndpointWeightSaIS7_EE11_M_allocateEm.exit.i.i.i, %.invoke.i.i
  %.sroa.0.6.i = phi ptr [ %.sroa.0.0.i, %.invoke.i.i ], [ %.sroa.0.5.i, %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESaIS4_EE11_M_allocateEm.exit.i.i.i ], [ %.sroa.0.5.i, %._crit_edge294.i.i ], [ null, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_18RingHash4RingC1EPS2_PNS1_16RingHashLbConfigEE14EndpointWeightSaIS7_EE11_M_allocateEm.exit.i.i.i ]
  %.sroa.10.6.i = phi ptr [ %.sroa.10.0.i, %.invoke.i.i ], [ %.sroa.10.5.i, %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESaIS4_EE11_M_allocateEm.exit.i.i.i ], [ %.sroa.10.5.i, %._crit_edge294.i.i ], [ null, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_18RingHash4RingC1EPS2_PNS1_16RingHashLbConfigEE14EndpointWeightSaIS7_EE11_M_allocateEm.exit.i.i.i ]
  %.sroa.17.6.i = phi ptr [ %.sroa.17.0.i, %.invoke.i.i ], [ %.sroa.17.5.i, %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESaIS4_EE11_M_allocateEm.exit.i.i.i ], [ %.sroa.17.5.i, %._crit_edge294.i.i ], [ null, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_18RingHash4RingC1EPS2_PNS1_16RingHashLbConfigEE14EndpointWeightSaIS7_EE11_M_allocateEm.exit.i.i.i ]
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.cj:                                            ; preds = %._crit_edge299.i.i, %.lr.ph306.i.i
  %.063305.i.i = phi i64 [ 0, %.lr.ph306.i.i ], [ %i.zu, %._crit_edge299.i.i ] ; 4 uses
  %.064304.i.i = phi double [ 0.000000e+00, %.lr.ph306.i.i ], [ %i.lu, %._crit_edge299.i.i ]
  %.065303.i.i = phi double [ 0.000000e+00, %.lr.ph306.i.i ], [ %.166.lcssa.i.i, %._crit_edge299.i.i ] ; 3 uses
  %i.la = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.5.i, i64 %.063305.i.i ; 3 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !38, !noalias !378
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !39, !noalias !378
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIcLm196ESaIcEE6AssignINS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr %i.lb, i64 noundef %i.ld)
          to label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i unwind label %bb.dg, !noalias !378

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i: ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !378
  store i8 95, ptr %i.c, align 1, !tbaa !42, !noalias !378
  %i.le = load i64, ptr %9, align 8, !tbaa !41, !noalias !390 ; 2 uses
  %i.lf = trunc i64 %i.le to i1                   ; 2 uses
  %i.lg = load i64, ptr %i.jk, align 8, !noalias !390
  %.sink.i.i.i.i.i = select i1 %i.lf, i64 %i.lg, i64 196
  %.sink1.i.i.i.i.i = lshr i64 %i.le, 1           ; 2 uses
  %.not.i.i127.i.i = icmp eq i64 %.sink1.i.i.i.i.i, %.sink.i.i.i.i.i
  br i1 %.not.i.i127.i.i, label %bb.cl, label %bb.ck, !prof !63

bb.ck:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i
  %i.lh = load ptr, ptr %i.jl, align 8, !noalias !390
  %.sink2.i.i.i.i.i = select i1 %i.lf, ptr %i.lh, ptr %i.jl
  %i.li = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i.i, i64 %.sink1.i.i.i.i.i
  store i8 95, ptr %i.li, align 1, !tbaa !42, !noalias !378
  %i.lj = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  %i.lk = add i64 %i.lj, 2                        ; 2 uses
  store i64 %i.lk, ptr %9, align 8, !tbaa !41, !noalias !378
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i

bb.cl:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i
  %i.ll = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIcLm196ESaIcEE15EmplaceBackSlowIJcEEERcDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i unwind label %bb.dh, !noalias !378 ; 0 uses

._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i: ; preds = %bb.cl
  %.pre342.i.i = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i: ; preds = %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i, %bb.ck
  %i.lm = phi i64 [ %.pre342.i.i, %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i ], [ %i.lk, %bb.ck ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !378
  %i.ln = trunc i64 %i.lm to i1
  %i.lo = load ptr, ptr %i.jl, align 8, !noalias !378
  %i.lp = select i1 %i.ln, ptr %i.lo, ptr %i.jl   ; 2 uses
  %i.lq = lshr i64 %i.lm, 1                       ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lp, i64 %i.lq  ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.la, i64 40
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !385, !noalias !378
  %i.lu = call double @llvm.fmuladd.f64(double %.sroa.speculated178.i.i, double %i.lt, double %.064304.i.i) ; 3 uses
  %i.lv = fcmp olt double %.065303.i.i, %i.lu
  br i1 %i.lv, label %.lr.ph298.i.i, label %._crit_edge299.i.i

.lr.ph298.i.i:                                    ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i
  %40 = ptrtoaddr ptr %i.lp to i64
  %i.lw = ptrtoint ptr %i.lr to i64               ; 5 uses
  %i.lx = add i64 %i.lq, %40                      ; 3 uses
  %invariant.op.a = add i64 %i.lw, -1
  %invariant.op = sub i64 %i.lw, %i.lx
  %invariant.op899 = add i64 %i.lx, -1
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i, %.lr.ph298.i.i
  %.062297.i.i = phi i64 [ 0, %.lr.ph298.i.i ], [ %i.zh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i ] ; 2 uses
  %.166296.i.i = phi double [ %.065303.i.i, %.lr.ph298.i.i ], [ %i.zg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !378
  %i.ly = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %.062297.i.i, ptr noundef nonnull %i.jm)
          to label %bb.cn unwind label %bb.di, !noalias !378

bb.cn:                                            ; preds = %bb.cm
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = sub i64 %i.lz, %i.jn                    ; 5 uses
  store i64 %i.ma, ptr %11, align 8, !tbaa !166, !noalias !378
  store ptr %i.jm, ptr %i.jo, align 8, !tbaa !167, !noalias !378
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  store ptr %i.jp, ptr %10, align 8, !tbaa !40, !alias.scope !391, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !392
  store i64 %i.ma, ptr %i.a, align 8, !tbaa !41, !noalias !392
  %i.mb = icmp ugt i64 %i.ma, 15
  br i1 %i.mb, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.cn
  %i.mc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc131.i.i unwind label %bb.di, !noalias !378 ; 2 uses

.noexc131.i.i:                                    ; preds = %.noexc.i.i.i.i
  store ptr %i.mc, ptr %10, align 8, !tbaa !38, !alias.scope !391, !noalias !378
  %i.md = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !392
  store i64 %i.md, ptr %i.jp, align 8, !tbaa !42, !alias.scope !391, !noalias !378
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc131.i.i, %bb.cn
  %i.me = phi ptr [ %i.mc, %.noexc131.i.i ], [ %i.jp, %bb.cn ] ; 2 uses
  switch i64 %i.ma, label %bb.cp [
    i64 1, label %bb.co
    i64 0, label %bb.cq
  ]

bb.co:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.mf = load i8, ptr %i.jm, align 8, !tbaa !42, !noalias !378
  store i8 %i.mf, ptr %i.me, align 1, !tbaa !42, !noalias !378
  br label %bb.cq

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.me, ptr nonnull align 8 %i.jm, i64 %i.ma, i1 false), !noalias !378
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %._crit_edge.i.i.i.i.i
  %i.mg = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !392 ; 2 uses
  store i64 %i.mg, ptr %i.jq, align 8, !tbaa !39, !alias.scope !391, !noalias !378
  %i.mh = load ptr, ptr %10, align 8, !tbaa !38, !alias.scope !391, !noalias !378
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mg
  store i8 0, ptr %i.mi, align 1, !tbaa !42, !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !378
  %i.mj = load ptr, ptr %10, align 8, !tbaa !38, !noalias !378 ; 8 uses
  %i.mk = ptrtoaddr ptr %i.mj to i64
  %i.ml = load i64, ptr %i.jq, align 8, !tbaa !39, !noalias !378 ; 13 uses
  %.not.i132.i.i = icmp samesign eq i64 %i.ml, 0
  %.pre343.i.i = load i64, ptr %9, align 8, !tbaa !41, !noalias !378 ; 3 uses
  %.pre345.i.i = load ptr, ptr %i.jl, align 8, !noalias !378 ; 2 uses
  br i1 %.not.i132.i.i, label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i, label %bb.cr, !prof !63

bb.cr:                                            ; preds = %bb.cq
  %i.mm = trunc i64 %.pre343.i.i to i1            ; 2 uses
  %i.mn = load i64, ptr %i.jk, align 8, !noalias !393
  %.sink2.i.i.i.i = select i1 %i.mm, ptr %.pre345.i.i, ptr %i.jl ; 12 uses
  %.sink.i.i.i.i = select i1 %i.mm, i64 %i.mn, i64 196 ; 2 uses
  %.sink1.i.i.i.i = lshr i64 %.pre343.i.i, 1      ; 7 uses
  %i.mo = ptrtoint ptr %.sink2.i.i.i.i to i64     ; 5 uses
  %i.mp = sub i64 %i.lw, %i.mo                    ; 13 uses
  %i.mq = add i64 %i.mp, %i.ml                    ; 5 uses
  %i.mr = add i64 %.sink1.i.i.i.i, %i.ml          ; 5 uses
  %i.ms = icmp ugt i64 %i.mr, %.sink.i.i.i.i
  br i1 %i.ms, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.mt = shl i64 %.sink.i.i.i.i, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.mt, i64 %i.mr) ; 3 uses
  %i.mu = icmp slt i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.mu, label %.noexc.i162.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i, !prof !63

.noexc.i162.i.i:                                  ; preds = %bb.cs
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc163.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !378

.noexc163.i.i:                                    ; preds = %.noexc.i162.i.i
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i: ; preds = %bb.cs
  %i.mv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated.i.i.i.i) #33
          to label %.lr.ph.i.i.preheader.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !378 ; 8 uses

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i
  %i.mw = ptrtoaddr ptr %i.mv to i64              ; 2 uses
  %i.mx = getelementptr i8, ptr %i.mv, i64 %i.mp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mx, ptr align 1 %i.mj, i64 %i.ml, i1 false), !tbaa !42, !noalias !378
  %.not.i.i53.i.i.i = icmp eq ptr %i.lr, %.sink2.i.i.i.i
  br i1 %.not.i.i53.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %iter.check625

iter.check625:                                    ; preds = %.lr.ph.i.i.preheader.i.i.i
  %min.iters.check610 = icmp ult i64 %i.mp, 4
  %i.my = sub i64 %i.mo, %i.mw
  %diff.check612 = icmp ugt i64 %i.my, -32
  %or.cond = or i1 %min.iters.check610, %diff.check612
  br i1 %or.cond, label %.lr.ph.i.i56.i.i.i.preheader, label %vector.main.loop.iter.check613

vector.main.loop.iter.check613:                   ; preds = %iter.check625
  %min.iters.check614 = icmp ult i64 %i.mp, 32
  br i1 %min.iters.check614, label %vec.epilog.ph629, label %vector.ph615

vector.ph615:                                     ; preds = %vector.main.loop.iter.check613
  %i.mz = and i64 %i.mp, 28
  %n.vec616 = and i64 %i.mp, -32                  ; 5 uses
  %i.na = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %n.vec616 ; 2 uses
  br label %vector.body617

vector.body617:                                   ; preds = %vector.ph615, %vector.body617
  %index618 = phi i64 [ 0, %vector.ph615 ], [ %index.next622, %vector.body617 ] ; 3 uses
  %next.gep619 = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %index618 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 %index618 ; 2 uses
  %i.nc = getelementptr i8, ptr %next.gep619, i64 16
  %wide.load620 = load <16 x i8>, ptr %next.gep619, align 1, !tbaa !42, !noalias !378
  %wide.load621 = load <16 x i8>, ptr %i.nc, align 1, !tbaa !42, !noalias !378
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <16 x i8> %wide.load620, ptr %i.nb, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load621, ptr %i.nd, align 1, !tbaa !42, !noalias !378
  %index.next622 = add nuw i64 %index618, 32      ; 2 uses
  %i.ne = icmp eq i64 %index.next622, %n.vec616
  br i1 %i.ne, label %middle.block623, label %vector.body617, !llvm.loop !324

middle.block623:                                  ; preds = %vector.body617
  %cmp.n624 = icmp eq i64 %i.mp, %n.vec616
  br i1 %cmp.n624, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %vec.epilog.iter.check626

vec.epilog.iter.check626:                         ; preds = %middle.block623
  %min.epilog.iters.check628 = icmp eq i64 %i.mz, 0
  br i1 %min.epilog.iters.check628, label %.lr.ph.i.i56.i.i.i.preheader, label %vec.epilog.ph629, !prof !170

vec.epilog.ph629:                                 ; preds = %vector.main.loop.iter.check613, %vec.epilog.iter.check626
  %vec.epilog.resume.val630 = phi i64 [ %n.vec616, %vec.epilog.iter.check626 ], [ 0, %vector.main.loop.iter.check613 ]
  %n.vec631 = and i64 %i.mp, -4                   ; 4 uses
  %i.nf = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %n.vec631 ; 2 uses
  br label %vec.epilog.vector.body632

vec.epilog.vector.body632:                        ; preds = %vec.epilog.vector.body632, %vec.epilog.ph629
  %index633 = phi i64 [ %vec.epilog.resume.val630, %vec.epilog.ph629 ], [ %index.next636, %vec.epilog.vector.body632 ] ; 3 uses
  %next.gep634 = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %index633
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mv, i64 %index633
  %wide.load635 = load <4 x i8>, ptr %next.gep634, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load635, ptr %i.ng, align 1, !tbaa !42, !noalias !378
  %index.next636 = add nuw i64 %index633, 4       ; 2 uses
  %i.nh = icmp eq i64 %index.next636, %n.vec631
  br i1 %i.nh, label %vec.epilog.middle.block637, label %vec.epilog.vector.body632, !llvm.loop !325

vec.epilog.middle.block637:                       ; preds = %vec.epilog.vector.body632
  %cmp.n638 = icmp eq i64 %i.mp, %n.vec631
  br i1 %cmp.n638, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %.lr.ph.i.i56.i.i.i.preheader

.lr.ph.i.i56.i.i.i.preheader:                     ; preds = %iter.check625, %vec.epilog.iter.check626, %vec.epilog.middle.block637
  %.sroa.094.0.i.i.i.ph = phi ptr [ %.sink2.i.i.i.i, %iter.check625 ], [ %i.na, %vec.epilog.iter.check626 ], [ %i.nf, %vec.epilog.middle.block637 ]
  %.012.i.i.i.i.i.ph = phi i64 [ 0, %iter.check625 ], [ %n.vec616, %vec.epilog.iter.check626 ], [ %n.vec631, %vec.epilog.middle.block637 ]
  br label %.lr.ph.i.i56.i.i.i

.lr.ph.i.i56.i.i.i:                               ; preds = %.lr.ph.i.i56.i.i.i.preheader, %.lr.ph.i.i56.i.i.i
  %.sroa.094.0.i.i.i = phi ptr [ %i.nk, %.lr.ph.i.i56.i.i.i ], [ %.sroa.094.0.i.i.i.ph, %.lr.ph.i.i56.i.i.i.preheader ] ; 2 uses
  %.012.i.i.i.i.i = phi i64 [ %i.nl, %.lr.ph.i.i56.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i56.i.i.i.preheader ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.012.i.i.i.i.i
  %i.nj = load i8, ptr %.sroa.094.0.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.nj, ptr %i.ni, align 1, !tbaa !42, !noalias !378
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.094.0.i.i.i, i64 1 ; 2 uses
  %i.nl = add nuw i64 %.012.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i57.i.i.i = icmp eq i64 %i.nl, %i.mp
  br i1 %exitcond.not.i.i57.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %.lr.ph.i.i56.i.i.i, !llvm.loop !326

_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i: ; preds = %.lr.ph.i.i56.i.i.i, %middle.block623, %vec.epilog.middle.block637, %.lr.ph.i.i.preheader.i.i.i
  %.sroa.094.1.i.i.i = phi ptr [ %.sink2.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %i.nf, %vec.epilog.middle.block637 ], [ %i.na, %middle.block623 ], [ %i.nk, %.lr.ph.i.i56.i.i.i ] ; 7 uses
  %.sroa.094.1.i.i.i598 = ptrtoaddr ptr %.sroa.094.1.i.i.i to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mq ; 3 uses
  %i.nn = sub i64 %.sink1.i.i.i.i, %i.mp          ; 8 uses
  %.not.i.i160.i.i = icmp eq i64 %.sink1.i.i.i.i, %i.mp
  br i1 %.not.i.i160.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i
  %min.iters.check = icmp ult i64 %i.nn, 4
  br i1 %min.iters.check, label %.lr.ph.i.i161.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.no = add i64 %i.ml, %i.lw
  %i.np = add i64 %i.no, %i.mw
  %i.nq = add i64 %i.mo, %.sroa.094.1.i.i.i598
  %i.nr = sub i64 %i.nq, %i.np
  %diff.check = icmp ugt i64 %i.nr, -32
  br i1 %diff.check, label %.lr.ph.i.i161.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check599 = icmp ult i64 %i.nn, 32
  br i1 %min.iters.check599, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ns = and i64 %i.nn, 28
  %n.vec = and i64 %i.nn, -32                     ; 5 uses
  %i.nt = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %index ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nm, i64 %index ; 2 uses
  %i.nv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !42, !noalias !378
  %wide.load600 = load <16 x i8>, ptr %i.nv, align 1, !tbaa !42, !noalias !378
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store <16 x i8> %wide.load, ptr %i.nu, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load600, ptr %i.nw, align 1, !tbaa !42, !noalias !378
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.nx = icmp eq i64 %index.next, %n.vec
  br i1 %i.nx, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nn, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ns, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i161.i.i.preheader, label %vec.epilog.ph, !prof !170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec601 = and i64 %i.nn, -4                   ; 4 uses
  %i.ny = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %n.vec601
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index602 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next605, %vec.epilog.vector.body ] ; 3 uses
  %next.gep603 = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %index602
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nm, i64 %index602
  %wide.load604 = load <4 x i8>, ptr %next.gep603, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load604, ptr %i.nz, align 1, !tbaa !42, !noalias !378
  %index.next605 = add nuw i64 %index602, 4       ; 2 uses
  %i.oa = icmp eq i64 %index.next605, %n.vec601
  br i1 %i.oa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !328

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n606 = icmp eq i64 %i.nn, %n.vec601
  br i1 %cmp.n606, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %.lr.ph.i.i161.i.i.preheader

.lr.ph.i.i161.i.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.094.2.i.i.i.ph = phi ptr [ %.sroa.094.1.i.i.i, %iter.check ], [ %.sroa.094.1.i.i.i, %vector.memcheck ], [ %i.nt, %vec.epilog.iter.check ], [ %i.ny, %vec.epilog.middle.block ]
  %.012.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec601, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i161.i.i

.lr.ph.i.i161.i.i:                                ; preds = %.lr.ph.i.i161.i.i.preheader, %.lr.ph.i.i161.i.i
  %.sroa.094.2.i.i.i = phi ptr [ %i.od, %.lr.ph.i.i161.i.i ], [ %.sroa.094.2.i.i.i.ph, %.lr.ph.i.i161.i.i.preheader ] ; 2 uses
  %.012.i.i.i.i = phi i64 [ %i.oe, %.lr.ph.i.i161.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i161.i.i.preheader ] ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nm, i64 %.012.i.i.i.i
  %i.oc = load i8, ptr %.sroa.094.2.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.oc, ptr %i.ob, align 1, !tbaa !42, !noalias !378
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.094.2.i.i.i, i64 1
  %i.oe = add nuw i64 %.012.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.oe, %i.nn
  br i1 %exitcond.not.i.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %.lr.ph.i.i161.i.i, !llvm.loop !329

_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i: ; preds = %.lr.ph.i.i161.i.i, %middle.block, %vec.epilog.middle.block, %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i
  %i.of = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  %i.og = trunc i64 %i.of to i1
  br i1 %i.og, label %bb.ct, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i

bb.ct:                                            ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i
  %i.oh = load ptr, ptr %i.jl, align 8, !tbaa !42, !noalias !378
  %i.oi = load i64, ptr %i.jk, align 8, !tbaa !42, !noalias !378
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.oi) #35, !noalias !378
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i: ; preds = %bb.ct, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i
  store ptr %i.mv, ptr %i.jl, align 8, !tbaa !42, !noalias !378
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.jk, align 8, !tbaa !42, !noalias !378
  %i.oj = shl i64 %i.mr, 1
  %i.ok = or disjoint i64 %i.oj, 1
  br label %.noexc134.i.i

bb.cu:                                            ; preds = %bb.cr
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.mq, i64 %.sink1.i.i.i.i) ; 11 uses
  %i.ol = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %.sroa.speculated.i.i.i ; 4 uses
  %i.om = sub i64 %i.mr, %.sroa.speculated.i.i.i  ; 19 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.mp ; 5 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.mq
  %i.op = sub nuw i64 %.sroa.speculated.i.i.i, %i.mq
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.om ; 7 uses
  %i.or = sub i64 %i.ml, %i.om                    ; 8 uses
  %.not.i.i61.i.i.i = icmp eq i64 %i.mr, %.sroa.speculated.i.i.i ; 2 uses
  br i1 %.not.i.i61.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %iter.check761

iter.check761:                                    ; preds = %bb.cu
  %i.os = sub i64 %.sroa.speculated.i.i.i, %i.ml
  %i.ot = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.os ; 5 uses
  %min.iters.check746 = icmp ult i64 %i.om, 4
  %diff.check748 = icmp ult i64 %i.ml, 32
  %or.cond777 = or i1 %min.iters.check746, %diff.check748
  br i1 %or.cond777, label %.lr.ph.i.i64.i.i.i.preheader, label %vector.main.loop.iter.check749

vector.main.loop.iter.check749:                   ; preds = %iter.check761
  %min.iters.check750 = icmp ult i64 %i.om, 32
  br i1 %min.iters.check750, label %vec.epilog.ph765, label %vector.ph751

vector.ph751:                                     ; preds = %vector.main.loop.iter.check749
  %i.ou = and i64 %i.om, 28
  %n.vec752 = and i64 %i.om, -32                  ; 5 uses
  %i.ov = getelementptr i8, ptr %i.ot, i64 %n.vec752
  br label %vector.body753

vector.body753:                                   ; preds = %vector.ph751, %vector.body753
  %index754 = phi i64 [ 0, %vector.ph751 ], [ %index.next758, %vector.body753 ] ; 3 uses
  %next.gep755 = getelementptr i8, ptr %i.ot, i64 %index754 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ol, i64 %index754 ; 2 uses
  %i.ox = getelementptr i8, ptr %next.gep755, i64 16
  %wide.load756 = load <16 x i8>, ptr %next.gep755, align 1, !tbaa !42, !noalias !378
  %wide.load757 = load <16 x i8>, ptr %i.ox, align 1, !tbaa !42, !noalias !378
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store <16 x i8> %wide.load756, ptr %i.ow, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load757, ptr %i.oy, align 1, !tbaa !42, !noalias !378
  %index.next758 = add nuw i64 %index754, 32      ; 2 uses
  %i.oz = icmp eq i64 %index.next758, %n.vec752
  br i1 %i.oz, label %middle.block759, label %vector.body753, !llvm.loop !330

middle.block759:                                  ; preds = %vector.body753
  %cmp.n760 = icmp eq i64 %i.om, %n.vec752
  br i1 %cmp.n760, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %vec.epilog.iter.check762

vec.epilog.iter.check762:                         ; preds = %middle.block759
  %min.epilog.iters.check764 = icmp eq i64 %i.ou, 0
  br i1 %min.epilog.iters.check764, label %.lr.ph.i.i64.i.i.i.preheader, label %vec.epilog.ph765, !prof !170

vec.epilog.ph765:                                 ; preds = %vector.main.loop.iter.check749, %vec.epilog.iter.check762
  %vec.epilog.resume.val766 = phi i64 [ %n.vec752, %vec.epilog.iter.check762 ], [ 0, %vector.main.loop.iter.check749 ]
  %n.vec767 = and i64 %i.om, -4                   ; 4 uses
  %i.pa = getelementptr i8, ptr %i.ot, i64 %n.vec767
  br label %vec.epilog.vector.body768

vec.epilog.vector.body768:                        ; preds = %vec.epilog.vector.body768, %vec.epilog.ph765
  %index769 = phi i64 [ %vec.epilog.resume.val766, %vec.epilog.ph765 ], [ %index.next772, %vec.epilog.vector.body768 ] ; 3 uses
  %next.gep770 = getelementptr i8, ptr %i.ot, i64 %index769
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ol, i64 %index769
  %wide.load771 = load <4 x i8>, ptr %next.gep770, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load771, ptr %i.pb, align 1, !tbaa !42, !noalias !378
  %index.next772 = add nuw i64 %index769, 4       ; 2 uses
  %i.pc = icmp eq i64 %index.next772, %n.vec767
  br i1 %i.pc, label %vec.epilog.middle.block773, label %vec.epilog.vector.body768, !llvm.loop !331

vec.epilog.middle.block773:                       ; preds = %vec.epilog.vector.body768
  %cmp.n774 = icmp eq i64 %i.om, %n.vec767
  br i1 %cmp.n774, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %.lr.ph.i.i64.i.i.i.preheader

.lr.ph.i.i64.i.i.i.preheader:                     ; preds = %iter.check761, %vec.epilog.iter.check762, %vec.epilog.middle.block773
  %.sroa.090.0.i.i.i.ph = phi ptr [ %i.ot, %iter.check761 ], [ %i.ov, %vec.epilog.iter.check762 ], [ %i.pa, %vec.epilog.middle.block773 ]
  %.012.i.i65.i.i.i.ph = phi i64 [ 0, %iter.check761 ], [ %n.vec752, %vec.epilog.iter.check762 ], [ %n.vec767, %vec.epilog.middle.block773 ]
  br label %.lr.ph.i.i64.i.i.i

.lr.ph.i.i64.i.i.i:                               ; preds = %.lr.ph.i.i64.i.i.i.preheader, %.lr.ph.i.i64.i.i.i
  %.sroa.090.0.i.i.i = phi ptr [ %i.pf, %.lr.ph.i.i64.i.i.i ], [ %.sroa.090.0.i.i.i.ph, %.lr.ph.i.i64.i.i.i.preheader ] ; 2 uses
  %.012.i.i65.i.i.i = phi i64 [ %i.pg, %.lr.ph.i.i64.i.i.i ], [ %.012.i.i65.i.i.i.ph, %.lr.ph.i.i64.i.i.i.preheader ] ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ol, i64 %.012.i.i65.i.i.i
  %i.pe = load i8, ptr %.sroa.090.0.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.pe, ptr %i.pd, align 1, !tbaa !42, !noalias !378
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.090.0.i.i.i, i64 1
  %i.pg = add nuw i64 %.012.i.i65.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i66.i.i.i = icmp eq i64 %i.pg, %i.om
  br i1 %exitcond.not.i.i66.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %.lr.ph.i.i64.i.i.i, !llvm.loop !332

_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i: ; preds = %.lr.ph.i.i64.i.i.i, %middle.block759, %vec.epilog.middle.block773, %bb.cu
  %.not.i158.i.i = icmp sgt i64 %.sroa.speculated.i.i.i, %i.mq
  br i1 %.not.i158.i.i, label %iter.check727, label %._crit_edge.i.i.i

iter.check727:                                    ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i
  %i.ph = getelementptr i8, ptr %i.ol, i64 -1     ; 5 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.op ; 5 uses
  %i.pj = add i64 %i.mo, -1
  %i.pk = add i64 %i.pj, %.sroa.speculated.i.i.i
  %i.pl = add i64 %invariant.op.a, %i.ml
  %i.pm = add i64 %i.mo, -2
  %i.pn = add i64 %i.pm, %.sroa.speculated.i.i.i
  %umin = call i64 @llvm.umin.i64(i64 %i.pl, i64 %i.pn)
  %i.po = sub i64 %i.pk, %umin                    ; 7 uses
  %min.iters.check711 = icmp ult i64 %i.po, 8
  %.reass = add i64 %i.ml, %invariant.op
  %diff.check713 = icmp ugt i64 %.reass, -32
  %or.cond902 = select i1 %min.iters.check711, i1 true, i1 %diff.check713
  br i1 %or.cond902, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check714

vector.main.loop.iter.check714:                   ; preds = %iter.check727
  %min.iters.check715 = icmp ult i64 %i.po, 32
  br i1 %min.iters.check715, label %vec.epilog.ph731, label %vector.ph716

vector.ph716:                                     ; preds = %vector.main.loop.iter.check714
  %i.pp = and i64 %i.po, 24
  %n.vec717 = and i64 %i.po, -32                  ; 4 uses
  %i.pq = sub i64 0, %n.vec717                    ; 2 uses
  %i.pr = getelementptr i8, ptr %i.ph, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pi, i64 %i.pq
  br label %vector.body718

vector.body718:                                   ; preds = %vector.ph716, %vector.body718
  %index719 = phi i64 [ 0, %vector.ph716 ], [ %index.next724, %vector.body718 ] ; 2 uses
  %i.pt = sub i64 0, %index719                    ; 2 uses
  %next.gep720 = getelementptr i8, ptr %i.ph, i64 %i.pt ; 2 uses
  %next.gep721 = getelementptr i8, ptr %i.pi, i64 %i.pt ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %next.gep721, i64 -16
  %i.pv = getelementptr inbounds i8, ptr %next.gep721, i64 -32
  %wide.load722 = load <16 x i8>, ptr %i.pu, align 1, !tbaa !42, !noalias !378
  %wide.load723 = load <16 x i8>, ptr %i.pv, align 1, !tbaa !42, !noalias !378
  %i.pw = getelementptr i8, ptr %next.gep720, i64 -15
  %i.px = getelementptr i8, ptr %next.gep720, i64 -31
  store <16 x i8> %wide.load722, ptr %i.pw, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load723, ptr %i.px, align 1, !tbaa !42, !noalias !378
  %index.next724 = add nuw i64 %index719, 32      ; 2 uses
  %i.py = icmp eq i64 %index.next724, %n.vec717
  br i1 %i.py, label %middle.block725, label %vector.body718, !llvm.loop !333

middle.block725:                                  ; preds = %vector.body718
  %cmp.n726 = icmp eq i64 %i.po, %n.vec717
  br i1 %cmp.n726, label %._crit_edge.i.i.i, label %vec.epilog.iter.check728

vec.epilog.iter.check728:                         ; preds = %middle.block725
  %min.epilog.iters.check730 = icmp eq i64 %i.pp, 0
  br i1 %min.epilog.iters.check730, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph731, !prof !394

vec.epilog.ph731:                                 ; preds = %vector.main.loop.iter.check714, %vec.epilog.iter.check728
  %vec.epilog.resume.val732 = phi i64 [ %n.vec717, %vec.epilog.iter.check728 ], [ 0, %vector.main.loop.iter.check714 ]
  %n.vec733 = and i64 %i.po, -8                   ; 3 uses
  %i.pz = sub i64 0, %n.vec733                    ; 2 uses
  %i.qa = getelementptr i8, ptr %i.ph, i64 %i.pz
  %i.qb = getelementptr i8, ptr %i.pi, i64 %i.pz
  br label %vec.epilog.vector.body734

vec.epilog.vector.body734:                        ; preds = %vec.epilog.vector.body734, %vec.epilog.ph731
  %index735 = phi i64 [ %vec.epilog.resume.val732, %vec.epilog.ph731 ], [ %index.next739, %vec.epilog.vector.body734 ] ; 2 uses
  %i.qc = sub i64 0, %index735                    ; 2 uses
  %next.gep736 = getelementptr i8, ptr %i.ph, i64 %i.qc
  %next.gep737 = getelementptr i8, ptr %i.pi, i64 %i.qc
  %i.qd = getelementptr inbounds i8, ptr %next.gep737, i64 -8
  %wide.load738 = load <8 x i8>, ptr %i.qd, align 1, !tbaa !42, !noalias !378
  %i.qe = getelementptr i8, ptr %next.gep736, i64 -7
  store <8 x i8> %wide.load738, ptr %i.qe, align 1, !tbaa !42, !noalias !378
  %index.next739 = add nuw i64 %index735, 8       ; 2 uses
  %i.qf = icmp eq i64 %index.next739, %n.vec733
  br i1 %i.qf, label %vec.epilog.middle.block740, label %vec.epilog.vector.body734, !llvm.loop !334

vec.epilog.middle.block740:                       ; preds = %vec.epilog.vector.body734
  %cmp.n741 = icmp eq i64 %i.po, %n.vec733
  br i1 %cmp.n741, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check727, %vec.epilog.iter.check728, %vec.epilog.middle.block740
  %.ph = phi ptr [ %i.ph, %iter.check727 ], [ %i.qa, %vec.epilog.middle.block740 ], [ %i.pr, %vec.epilog.iter.check728 ]
  %.0126.i.i.i.ph = phi ptr [ %i.pi, %iter.check727 ], [ %i.qb, %vec.epilog.middle.block740 ], [ %i.ps, %vec.epilog.iter.check728 ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block725, %vec.epilog.middle.block740, %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i
  br i1 %.not.i.i61.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %iter.check693

iter.check693:                                    ; preds = %._crit_edge.i.i.i
  %min.iters.check678 = icmp ult i64 %i.om, 4
  %i.qg = sub i64 %i.mk, %i.lx
  %diff.check680 = icmp ugt i64 %i.qg, -32
  %or.cond901 = select i1 %min.iters.check678, i1 true, i1 %diff.check680
  br i1 %or.cond901, label %.lr.ph.i71.i.i.i.preheader, label %vector.main.loop.iter.check681

vector.main.loop.iter.check681:                   ; preds = %iter.check693
  %min.iters.check682 = icmp ult i64 %i.om, 32
  br i1 %min.iters.check682, label %vec.epilog.ph697, label %vector.ph683

vector.ph683:                                     ; preds = %vector.main.loop.iter.check681
  %i.qh = and i64 %i.om, 28
  %n.vec684 = and i64 %i.om, -32                  ; 5 uses
  %i.qi = getelementptr i8, ptr %i.mj, i64 %n.vec684 ; 2 uses
  br label %vector.body685

vector.body685:                                   ; preds = %vector.ph683, %vector.body685
  %index686 = phi i64 [ 0, %vector.ph683 ], [ %index.next690, %vector.body685 ] ; 3 uses
  %next.gep687 = getelementptr i8, ptr %i.mj, i64 %index686 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.on, i64 %index686 ; 2 uses
  %i.qk = getelementptr i8, ptr %next.gep687, i64 16
  %wide.load688 = load <16 x i8>, ptr %next.gep687, align 1, !tbaa !42, !noalias !378
  %wide.load689 = load <16 x i8>, ptr %i.qk, align 1, !tbaa !42, !noalias !378
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store <16 x i8> %wide.load688, ptr %i.qj, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load689, ptr %i.ql, align 1, !tbaa !42, !noalias !378
  %index.next690 = add nuw i64 %index686, 32      ; 2 uses
  %i.qm = icmp eq i64 %index.next690, %n.vec684
  br i1 %i.qm, label %middle.block691, label %vector.body685, !llvm.loop !335

middle.block691:                                  ; preds = %vector.body685
  %cmp.n692 = icmp eq i64 %i.om, %n.vec684
  br i1 %cmp.n692, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %vec.epilog.iter.check694

vec.epilog.iter.check694:                         ; preds = %middle.block691
  %min.epilog.iters.check696 = icmp eq i64 %i.qh, 0
  br i1 %min.epilog.iters.check696, label %.lr.ph.i71.i.i.i.preheader, label %vec.epilog.ph697, !prof !170

vec.epilog.ph697:                                 ; preds = %vector.main.loop.iter.check681, %vec.epilog.iter.check694
  %vec.epilog.resume.val698 = phi i64 [ %n.vec684, %vec.epilog.iter.check694 ], [ 0, %vector.main.loop.iter.check681 ]
  %n.vec699 = and i64 %i.om, -4                   ; 4 uses
  %i.qn = getelementptr i8, ptr %i.mj, i64 %n.vec699 ; 2 uses
  br label %vec.epilog.vector.body700

vec.epilog.vector.body700:                        ; preds = %vec.epilog.vector.body700, %vec.epilog.ph697
  %index701 = phi i64 [ %vec.epilog.resume.val698, %vec.epilog.ph697 ], [ %index.next704, %vec.epilog.vector.body700 ] ; 3 uses
  %next.gep702 = getelementptr i8, ptr %i.mj, i64 %index701
  %i.qo = getelementptr inbounds nuw i8, ptr %i.on, i64 %index701
  %wide.load703 = load <4 x i8>, ptr %next.gep702, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load703, ptr %i.qo, align 1, !tbaa !42, !noalias !378
  %index.next704 = add nuw i64 %index701, 4       ; 2 uses
  %i.qp = icmp eq i64 %index.next704, %n.vec699
  br i1 %i.qp, label %vec.epilog.middle.block705, label %vec.epilog.vector.body700, !llvm.loop !336

vec.epilog.middle.block705:                       ; preds = %vec.epilog.vector.body700
  %cmp.n706 = icmp eq i64 %i.om, %n.vec699
  br i1 %cmp.n706, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %.lr.ph.i71.i.i.i.preheader

.lr.ph.i71.i.i.i.preheader:                       ; preds = %iter.check693, %vec.epilog.iter.check694, %vec.epilog.middle.block705
  %.sroa.0122.1.i.i.i.ph = phi ptr [ %i.mj, %iter.check693 ], [ %i.qi, %vec.epilog.iter.check694 ], [ %i.qn, %vec.epilog.middle.block705 ]
  %.05.i.i.i.i117.ph = phi i64 [ 0, %iter.check693 ], [ %n.vec684, %vec.epilog.iter.check694 ], [ %n.vec699, %vec.epilog.middle.block705 ]
  br label %.lr.ph.i71.i.i.i

.lr.ph.i71.i.i.i:                                 ; preds = %.lr.ph.i71.i.i.i.preheader, %.lr.ph.i71.i.i.i
  %.sroa.0122.1.i.i.i = phi ptr [ %i.qs, %.lr.ph.i71.i.i.i ], [ %.sroa.0122.1.i.i.i.ph, %.lr.ph.i71.i.i.i.preheader ] ; 2 uses
  %.05.i.i.i.i117 = phi i64 [ %i.qt, %.lr.ph.i71.i.i.i ], [ %.05.i.i.i.i117.ph, %.lr.ph.i71.i.i.i.preheader ] ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.on, i64 %.05.i.i.i.i117
  %i.qr = load i8, ptr %.sroa.0122.1.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.qr, ptr %i.qq, align 1, !tbaa !42, !noalias !378
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0122.1.i.i.i, i64 1 ; 2 uses
  %i.qt = add nuw i64 %.05.i.i.i.i117, 1          ; 2 uses
  %exitcond.not.i72.i.i.i = icmp eq i64 %i.qt, %i.om
  br i1 %exitcond.not.i72.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %.lr.ph.i71.i.i.i, !llvm.loop !337

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.qu = phi ptr [ %i.qx, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0126.i.i.i = phi ptr [ %i.qv, %.lr.ph.i.i.i ], [ %.0126.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.qv = getelementptr inbounds i8, ptr %.0126.i.i.i, i64 -1 ; 2 uses
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !42, !noalias !378
  store i8 %i.qw, ptr %i.qu, align 1, !tbaa !42, !noalias !378
  %i.qx = getelementptr inbounds i8, ptr %i.qu, i64 -1 ; 2 uses
  %i.qy = icmp ult ptr %i.qx, %i.oo
  br i1 %i.qy, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !338

_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i: ; preds = %.lr.ph.i71.i.i.i, %middle.block691, %vec.epilog.middle.block705, %._crit_edge.i.i.i
  %.sroa.0122.2.i.i.i = phi ptr [ %i.mj, %._crit_edge.i.i.i ], [ %i.qn, %vec.epilog.middle.block705 ], [ %i.qi, %middle.block691 ], [ %i.qs, %.lr.ph.i71.i.i.i ] ; 7 uses
  %.sroa.0122.2.i.i.i644 = ptrtoaddr ptr %.sroa.0122.2.i.i.i to i64
  %.not.i73.i.i.i = icmp eq i64 %i.ml, %i.om
  br i1 %.not.i73.i.i.i, label %.loopexit.i.i.i, label %iter.check660

iter.check660:                                    ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i
  %min.iters.check645 = icmp ult i64 %i.or, 4
  br i1 %min.iters.check645, label %.lr.ph.i76.i.i.i.preheader, label %vector.memcheck646

vector.memcheck646:                               ; preds = %iter.check660
  %.reass900 = add i64 %i.ml, %.sink1.i.i.i.i
  %i.qz = add i64 %.sroa.speculated.i.i.i, %.sroa.0122.2.i.i.i644
  %41 = sub i64 %.reass900, %i.qz
  %.reass901 = add i64 %41, %invariant.op899
  %diff.check647 = icmp ult i64 %.reass901, 31
  br i1 %diff.check647, label %.lr.ph.i76.i.i.i.preheader, label %vector.main.loop.iter.check648

vector.main.loop.iter.check648:                   ; preds = %vector.memcheck646
  %min.iters.check649 = icmp ult i64 %i.or, 32
  br i1 %min.iters.check649, label %vec.epilog.ph664, label %vector.ph650

vector.ph650:                                     ; preds = %vector.main.loop.iter.check648
  %i.ra = and i64 %i.or, 28
  %n.vec651 = and i64 %i.or, -32                  ; 5 uses
  %i.rb = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %n.vec651
  br label %vector.body652

vector.body652:                                   ; preds = %vector.ph650, %vector.body652
  %index653 = phi i64 [ 0, %vector.ph650 ], [ %index.next657, %vector.body652 ] ; 3 uses
  %next.gep654 = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %index653 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.oq, i64 %index653 ; 2 uses
  %i.rd = getelementptr i8, ptr %next.gep654, i64 16
  %wide.load655 = load <16 x i8>, ptr %next.gep654, align 1, !tbaa !42, !noalias !378
  %wide.load656 = load <16 x i8>, ptr %i.rd, align 1, !tbaa !42, !noalias !378
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  store <16 x i8> %wide.load655, ptr %i.rc, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load656, ptr %i.re, align 1, !tbaa !42, !noalias !378
  %index.next657 = add nuw i64 %index653, 32      ; 2 uses
  %i.rf = icmp eq i64 %index.next657, %n.vec651
  br i1 %i.rf, label %middle.block658, label %vector.body652, !llvm.loop !339

middle.block658:                                  ; preds = %vector.body652
  %cmp.n659 = icmp eq i64 %i.or, %n.vec651
  br i1 %cmp.n659, label %.loopexit.i.i.i, label %vec.epilog.iter.check661

vec.epilog.iter.check661:                         ; preds = %middle.block658
  %min.epilog.iters.check663 = icmp eq i64 %i.ra, 0
  br i1 %min.epilog.iters.check663, label %.lr.ph.i76.i.i.i.preheader, label %vec.epilog.ph664, !prof !170

vec.epilog.ph664:                                 ; preds = %vector.main.loop.iter.check648, %vec.epilog.iter.check661
  %vec.epilog.resume.val665 = phi i64 [ %n.vec651, %vec.epilog.iter.check661 ], [ 0, %vector.main.loop.iter.check648 ]
  %n.vec666 = and i64 %i.or, -4                   ; 4 uses
  %i.rg = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %n.vec666
  br label %vec.epilog.vector.body667

vec.epilog.vector.body667:                        ; preds = %vec.epilog.vector.body667, %vec.epilog.ph664
  %index668 = phi i64 [ %vec.epilog.resume.val665, %vec.epilog.ph664 ], [ %index.next671, %vec.epilog.vector.body667 ] ; 3 uses
  %next.gep669 = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %index668
  %i.rh = getelementptr inbounds nuw i8, ptr %i.oq, i64 %index668
  %wide.load670 = load <4 x i8>, ptr %next.gep669, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load670, ptr %i.rh, align 1, !tbaa !42, !noalias !378
  %index.next671 = add nuw i64 %index668, 4       ; 2 uses
  %i.ri = icmp eq i64 %index.next671, %n.vec666
  br i1 %i.ri, label %vec.epilog.middle.block672, label %vec.epilog.vector.body667, !llvm.loop !340

vec.epilog.middle.block672:                       ; preds = %vec.epilog.vector.body667
  %cmp.n673 = icmp eq i64 %i.or, %n.vec666
  br i1 %cmp.n673, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i.preheader

.lr.ph.i76.i.i.i.preheader:                       ; preds = %iter.check660, %vector.memcheck646, %vec.epilog.iter.check661, %vec.epilog.middle.block672
  %.sroa.0122.3.i.i.i.ph = phi ptr [ %.sroa.0122.2.i.i.i, %iter.check660 ], [ %.sroa.0122.2.i.i.i, %vector.memcheck646 ], [ %i.rb, %vec.epilog.iter.check661 ], [ %i.rg, %vec.epilog.middle.block672 ] ; 2 uses
  %.06.i.i.i.i.ph = phi i64 [ 0, %iter.check660 ], [ 0, %vector.memcheck646 ], [ %n.vec651, %vec.epilog.iter.check661 ], [ %n.vec666, %vec.epilog.middle.block672 ] ; 3 uses
  %i.rj = sub i64 %.sroa.speculated.i.i.i, %.sink1.i.i.i.i
  %xtraiter = and i64 %i.rj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol

.lr.ph.i76.i.i.i.prol:                            ; preds = %.lr.ph.i76.i.i.i.preheader, %.lr.ph.i76.i.i.i.prol
  %.sroa.0122.3.i.i.i.prol = phi ptr [ %i.rm, %.lr.ph.i76.i.i.i.prol ], [ %.sroa.0122.3.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.prol = phi i64 [ %i.rn, %.lr.ph.i76.i.i.i.prol ], [ %.06.i.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i76.i.i.i.prol ], [ 0, %.lr.ph.i76.i.i.i.preheader ]
  %i.rk = getelementptr inbounds nuw i8, ptr %i.oq, i64 %.06.i.i.i.i.prol
  %i.rl = load i8, ptr %.sroa.0122.3.i.i.i.prol, align 1, !tbaa !42, !noalias !378
  store i8 %i.rl, ptr %i.rk, align 1, !tbaa !42, !noalias !378
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i.prol, i64 1 ; 2 uses
  %i.rn = add nuw i64 %.06.i.i.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol, !llvm.loop !341

.lr.ph.i76.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i76.i.i.i.prol, %.lr.ph.i76.i.i.i.preheader
  %.sroa.0122.3.i.i.i.unr = phi ptr [ %.sroa.0122.3.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ], [ %i.rm, %.lr.ph.i76.i.i.i.prol ]
  %.06.i.i.i.i.unr = phi i64 [ %.06.i.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ], [ %i.rn, %.lr.ph.i76.i.i.i.prol ]
  %i.ro = sub i64 %.06.i.i.i.i.ph, %.sroa.speculated.i.i.i
  %i.rp = add i64 %i.ro, %.sink1.i.i.i.i
  %i.rq = icmp ugt i64 %i.rp, -4
  br i1 %i.rq, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i

.lr.ph.i76.i.i.i:                                 ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i
  %.sroa.0122.3.i.i.i = phi ptr [ %i.sf, %.lr.ph.i76.i.i.i ], [ %.sroa.0122.3.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 5 uses
  %.06.i.i.i.i = phi i64 [ %i.sg, %.lr.ph.i76.i.i.i ], [ %.06.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 5 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.oq, i64 %.06.i.i.i.i
  %i.rs = load i8, ptr %.sroa.0122.3.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.rs, ptr %i.rr, align 1, !tbaa !42, !noalias !378
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 1
  %i.ru = getelementptr inbounds nuw i8, ptr %i.oq, i64 %.06.i.i.i.i
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  %i.rw = load i8, ptr %i.rt, align 1, !tbaa !42, !noalias !378
  store i8 %i.rw, ptr %i.rv, align 1, !tbaa !42, !noalias !378
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 2
  %i.ry = getelementptr inbounds nuw i8, ptr %i.oq, i64 %.06.i.i.i.i
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 2
  %i.sa = load i8, ptr %i.rx, align 1, !tbaa !42, !noalias !378
  store i8 %i.sa, ptr %i.rz, align 1, !tbaa !42, !noalias !378
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 3
  %i.sc = getelementptr inbounds nuw i8, ptr %i.oq, i64 %.06.i.i.i.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 3
  %i.se = load i8, ptr %i.sb, align 1, !tbaa !42, !noalias !378
  store i8 %i.se, ptr %i.sd, align 1, !tbaa !42, !noalias !378
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 4
  %i.sg = add nuw i64 %.06.i.i.i.i, 4             ; 2 uses
  %exitcond.not.i77.i.i.i.3 = icmp eq i64 %i.sg, %i.or
  br i1 %exitcond.not.i77.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i, !llvm.loop !342

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i, %middle.block658, %vec.epilog.middle.block672, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i
  %i.sh = shl i64 %i.ml, 1
  %i.si = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  %i.sj = add i64 %i.si, %i.sh
  %.pre344.pre.i.i = load ptr, ptr %i.jl, align 8, !noalias !378
  br label %.noexc134.i.i

.noexc134.i.i:                                    ; preds = %.loopexit.i.i.i, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i
  %.pre344.i.i = phi ptr [ %.pre344.pre.i.i, %.loopexit.i.i.i ], [ %i.mv, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i ]
  %storemerge.i.i.i = phi i64 [ %i.sj, %.loopexit.i.i.i ], [ %i.ok, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i.i, ptr %9, align 8, !tbaa !41, !noalias !378
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i: ; preds = %.noexc134.i.i, %bb.cq
  %i.sk = phi ptr [ %.pre344.i.i, %.noexc134.i.i ], [ %.pre345.i.i, %bb.cq ]
  %i.sl = phi i64 [ %storemerge.i.i.i, %.noexc134.i.i ], [ %.pre343.i.i, %bb.cq ] ; 3 uses
  %i.sm = trunc i64 %i.sl to i1
  %i.sn = select i1 %i.sm, ptr %i.sk, ptr %i.jl   ; 3 uses
  %i.so = lshr i64 %i.sl, 1                       ; 3 uses
  %i.sp = icmp ugt i64 %i.sl, 63
  br i1 %i.sp, label %bb.cv, label %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.i.i.i

bb.cv:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.so
  %i.sr = getelementptr inbounds i8, ptr %i.sq, i64 -31
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %bb.cv
  %.049.i.i.i.i = phi ptr [ %i.sn, %bb.cv ], [ %i.tl, %bb.cw ] ; 5 uses
  %.047.i.i.i.i = phi i64 [ 6983438078262162902, %bb.cv ], [ %i.sv, %bb.cw ]
  %.046.i.i.i.i = phi i64 [ -4417276706812531889, %bb.cv ], [ %i.ta, %bb.cw ]
  %.045.i.i.i.i = phi i64 [ 0, %bb.cv ], [ %i.tf, %bb.cw ]
  %.0.i.i136.i.i = phi i64 [ 7046029288634856825, %bb.cv ], [ %i.tk, %bb.cw ]
  %.0.copyload.i.i.i.i = load i64, ptr %.049.i.i.i.i, align 1, !noalias !378
  %i.ss = mul i64 %.0.copyload.i.i.i.i, -4417276706812531889
  %i.st = add i64 %i.ss, %.047.i.i.i.i            ; 2 uses
  %i.su = call i64 @llvm.fshl.i64(i64 %i.st, i64 %i.st, i64 31) ; 2 uses
  %i.sv = mul i64 %i.su, -7046029288634856825     ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 8
  %.0.copyload.i2.i.i.i = load i64, ptr %i.sw, align 1, !noalias !378
  %i.sx = mul i64 %.0.copyload.i2.i.i.i, -4417276706812531889
  %i.sy = add i64 %i.sx, %.046.i.i.i.i            ; 2 uses
  %i.sz = call i64 @llvm.fshl.i64(i64 %i.sy, i64 %i.sy, i64 31) ; 2 uses
  %i.ta = mul i64 %i.sz, -7046029288634856825     ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 16
  %.0.copyload.i3.i.i.i = load i64, ptr %i.tb, align 1, !noalias !378
  %i.tc = mul i64 %.0.copyload.i3.i.i.i, -4417276706812531889
  %i.td = add i64 %i.tc, %.045.i.i.i.i            ; 2 uses
  %i.te = call i64 @llvm.fshl.i64(i64 %i.td, i64 %i.td, i64 31) ; 2 uses
  %i.tf = mul i64 %i.te, -7046029288634856825     ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 24
  %.0.copyload.i4.i.i.i = load i64, ptr %i.tg, align 1, !noalias !378
  %i.th = mul i64 %.0.copyload.i4.i.i.i, -4417276706812531889
  %i.ti = add i64 %i.th, %.0.i.i136.i.i           ; 2 uses
  %i.tj = call i64 @llvm.fshl.i64(i64 %i.ti, i64 %i.ti, i64 31) ; 2 uses
  %i.tk = mul i64 %i.tj, -7046029288634856825     ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 32 ; 3 uses
  %i.tm = icmp ult ptr %i.tl, %i.sr
  br i1 %i.tm, label %bb.cw, label %bb.cx, !llvm.loop !3

bb.cx:                                            ; preds = %bb.cw
  %i.tn = call i64 @llvm.fshl.i64(i64 %i.sv, i64 %i.sv, i64 1)
  %i.to = call i64 @llvm.fshl.i64(i64 %i.ta, i64 %i.ta, i64 7)
  %i.tp = add i64 %i.to, %i.tn
  %i.tq = call i64 @llvm.fshl.i64(i64 %i.tf, i64 %i.tf, i64 12)
  %i.tr = add i64 %i.tp, %i.tq
  %i.ts = call i64 @llvm.fshl.i64(i64 %i.tk, i64 %i.tk, i64 18)
  %i.tt = add i64 %i.tr, %i.ts
  %i.tu = mul i64 %i.su, -2381459717836149591     ; 2 uses
  %i.tv = call i64 @llvm.fshl.i64(i64 %i.tu, i64 %i.tu, i64 31)
  %i.tw = mul i64 %i.tv, -7046029288634856825
  %i.tx = xor i64 %i.tt, %i.tw
  %i.ty = mul i64 %i.tx, -7046029288634856825
  %i.tz = add i64 %i.ty, -8796714831421723037
  %i.ua = mul i64 %i.sz, -2381459717836149591     ; 2 uses
  %i.ub = call i64 @llvm.fshl.i64(i64 %i.ua, i64 %i.ua, i64 31)
  %i.uc = mul i64 %i.ub, -7046029288634856825
  %i.ud = xor i64 %i.tz, %i.uc
  %i.ue = mul i64 %i.ud, -7046029288634856825
  %i.uf = add i64 %i.ue, -8796714831421723037
  %i.ug = mul i64 %i.te, -2381459717836149591     ; 2 uses
  %i.uh = call i64 @llvm.fshl.i64(i64 %i.ug, i64 %i.ug, i64 31)
  %i.ui = mul i64 %i.uh, -7046029288634856825
  %i.uj = xor i64 %i.uf, %i.ui
  %i.uk = mul i64 %i.uj, -7046029288634856825
  %i.ul = add i64 %i.uk, -8796714831421723037
  %i.um = mul i64 %i.tj, -2381459717836149591     ; 2 uses
  %i.un = call i64 @llvm.fshl.i64(i64 %i.um, i64 %i.um, i64 31)
  %i.uo = mul i64 %i.un, -7046029288634856825
  %i.up = xor i64 %i.ul, %i.uo
  %i.uq = mul i64 %i.up, -7046029288634856825
end_hunk_0
