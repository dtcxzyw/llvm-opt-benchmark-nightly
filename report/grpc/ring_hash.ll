Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ring_hash?download=true
inline.NumInlined: 3519
inline.NumDeleted: 1868
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_18RingHash12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsE:bb.a
  %i.lg = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i.i35.i.i.i.i.i
  br i1 %i.lg, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %.lr.ph.i31.i.i.i.i.i
  %.sroa.0837.0.copyload = load <2 x i64>, ptr %.sroa.0.020.i32.i.i.i.i.i, align 8, !noalias !378
  %i.lh = ptrtoint ptr %.sroa.0.020.i32.i.i.i.i.i to i64
  %i.li = sub i64 %i.lh, %i.kp                    ; 3 uses
  %i.lj = ashr exact i64 %i.li, 4                 ; 2 uses
  %i.lk = icmp sgt i64 %i.lj, 1
  br i1 %i.lk, label %bb.cm, label %bb.cn, !prof !146

bb.cm:                                            ; preds = %bb.cl
  %i.ll = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i.i.i, i64 32
  %i.lm = sub nsw i64 0, %i.lj
  %i.ln = getelementptr inbounds [16 x i8], ptr %i.ll, i64 %i.lm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ln, ptr noundef nonnull align 8 dereferenceable(1) %.val88.i.i, i64 %i.li, i1 false), !noalias !378
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.lo = icmp eq i64 %i.li, 16
  br i1 %i.lo, label %bb.co, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.lp = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lp, ptr noundef nonnull readonly align 8 dereferenceable(16) %.val88.i.i, i64 16, i1 false), !tbaa.struct !164, !noalias !378
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i: ; preds = %bb.co, %bb.cn, %bb.cm
  store <2 x i64> %.sroa.0837.0.copyload, ptr %.val88.i.i, align 8, !noalias !378
  br label %bb.cq

bb.cp:                                            ; preds = %.lr.ph.i31.i.i.i.i.i
  %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i37.i.i.i.i.i = load i64, ptr %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %.val3.i11.i.i38.i.i.i.i.i = load i64, ptr %.pn19.i33.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.lq = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i11.i.i38.i.i.i.i.i
  br i1 %i.lq, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i"

.lr.ph.i.i44.i.i.i.i.i:                           ; preds = %bb.cp, %.lr.ph.i.i44.i.i.i.i.i
  %.sroa.0.013.i.i45.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i47.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ], [ %.pn19.i33.i.i.i.i.i, %bb.cp ] ; 4 uses
  %.sroa.09.012.i.i46.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i45.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ], [ %.sroa.0.020.i32.i.i.i.i.i, %bb.cp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i46.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i45.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !164, !noalias !378
  %.sroa.0.0.i.i47.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i45.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i48.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i47.i.i.i.i.i, align 8, !tbaa !163, !noalias !378
  %i.lr = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i.i.i48.i.i.i.i.i
  br i1 %i.lr, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i", !llvm.loop !315

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i.i, %bb.cp
  %.sroa.09.0.lcssa.i.i40.i.i.i.i.i = phi ptr [ %.sroa.0.020.i32.i.i.i.i.i, %bb.cp ], [ %.sroa.0.013.i.i45.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ] ; 2 uses
  store i64 %.val2.i.i34.i.i.i.i.i, ptr %.sroa.09.0.lcssa.i.i40.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  %.sroa.5.0..val.sroa_idx.i.i41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i40.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i37.i.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i41.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
  br label %bb.cq

bb.cq:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_.exit.i39.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i49.i.i.i.i.i
  %.sroa.0.0.i42.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i32.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i42.i.i.i.i.i, %.val89.i.i
  br i1 %.not.i43.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEEZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EvT_SG_T0_.exit.i.i", label %.lr.ph.i31.i.i.i.i.i, !llvm.loop !316

bb.cr:                                            ; preds = %._crit_edge305.i.i
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cs:                                            ; preds = %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESaIS4_EE11_M_allocateEm.exit.i.i.i, %bb.ca
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.ct:                                            ; preds = %._crit_edge310.i.i, %.lr.ph317.i.i
  %.063316.i.i = phi i64 [ 0, %.lr.ph317.i.i ], [ %i.aau, %._crit_edge310.i.i ] ; 4 uses
  %.064315.i.i = phi double [ 0.000000e+00, %.lr.ph317.i.i ], [ %i.mo, %._crit_edge310.i.i ]
  %.065314.i.i = phi double [ 0.000000e+00, %.lr.ph317.i.i ], [ %.166.lcssa.i.i, %._crit_edge310.i.i ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.4.i, i64 %.063316.i.i ; 3 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !38, !noalias !378
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !39, !noalias !378
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIcLm196ESaIcEE6AssignINS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr %i.lv, i64 noundef %i.lx)
          to label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i unwind label %bb.dq, !noalias !378

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i: ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !378
  store i8 95, ptr %i.c, align 1, !tbaa !42, !noalias !378
  %i.ly = load i64, ptr %9, align 8, !tbaa !41, !noalias !392 ; 2 uses
  %i.lz = trunc i64 %i.ly to i1                   ; 2 uses
  %i.ma = load i64, ptr %i.kf, align 8, !noalias !392
  %.sink.i.i.i.i.i = select i1 %i.lz, i64 %i.ma, i64 196
  %.sink1.i.i.i.i.i = lshr i64 %i.ly, 1           ; 2 uses
  %.not.i.i127.i.i = icmp eq i64 %.sink1.i.i.i.i.i, %.sink.i.i.i.i.i
  br i1 %.not.i.i127.i.i, label %bb.cv, label %bb.cu, !prof !63

bb.cu:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i
  %i.mb = load ptr, ptr %i.kg, align 8, !noalias !392
  %.sink2.i.i.i.i.i = select i1 %i.lz, ptr %i.mb, ptr %i.kg
  %i.mc = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i.i, i64 %.sink1.i.i.i.i.i
  store i8 95, ptr %i.mc, align 1, !tbaa !42, !noalias !378
  %i.md = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  %i.me = add i64 %i.md, 2                        ; 2 uses
  store i64 %i.me, ptr %9, align 8, !tbaa !41, !noalias !378
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i

bb.cv:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6assignIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEvSG_SG_.exit.i.i
  %i.mf = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIcLm196ESaIcEE15EmplaceBackSlowIJcEEERcDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i unwind label %bb.dr, !noalias !378 ; 0 uses

._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i: ; preds = %bb.cv
  %.pre353.i.i = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i: ; preds = %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i, %bb.cu
  %i.mg = phi i64 [ %.pre353.i.i, %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i ], [ %i.me, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !378
  %i.mh = trunc i64 %i.mg to i1
  %i.mi = load ptr, ptr %i.kg, align 8, !noalias !378
  %i.mj = select i1 %i.mh, ptr %i.mi, ptr %i.kg   ; 2 uses
  %i.mk = lshr i64 %i.mg, 1                       ; 4 uses
  %i.ml = getelementptr i8, ptr %i.mj, i64 %i.mk  ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !382, !noalias !378
  %i.mo = call double @llvm.fmuladd.f64(double %.sroa.speculated178.i.i, double %i.mn, double %.064315.i.i) ; 3 uses
  %i.mp = fcmp olt double %.065314.i.i, %i.mo
  br i1 %i.mp, label %.lr.ph309.i.i, label %._crit_edge310.i.i

.lr.ph309.i.i:                                    ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i
  %i.mq = ptrtoaddr ptr %i.mj to i64              ; 3 uses
  %i.mr = ptrtoint ptr %i.ml to i64               ; 5 uses
  %i.ms = add i64 %i.mk, %i.mq
  %i.mt = add i64 %i.mk, %i.mq
  %i.mu = add i64 %i.mk, %i.mq
  %i.mv = add i64 %i.mr, -1
  %invariant.op = sub i64 %i.mr, %i.mu
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i, %.lr.ph309.i.i
  %.062308.i.i = phi i64 [ 0, %.lr.ph309.i.i ], [ %i.aah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i ] ; 2 uses
  %.166307.i.i = phi double [ %.065314.i.i, %.lr.ph309.i.i ], [ %i.aag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !378
  %i.mw = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %.062308.i.i, ptr noundef nonnull %i.kh)
          to label %bb.cx unwind label %bb.ds, !noalias !378

bb.cx:                                            ; preds = %bb.cw
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = sub i64 %i.mx, %i.ki                    ; 5 uses
  store i64 %i.my, ptr %11, align 8, !tbaa !166, !noalias !378
  store ptr %i.kh, ptr %i.kj, align 8, !tbaa !167, !noalias !378
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  store ptr %i.kk, ptr %10, align 8, !tbaa !40, !alias.scope !393, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !394
  store i64 %i.my, ptr %i.a, align 8, !tbaa !41, !noalias !394
  %i.mz = icmp ugt i64 %i.my, 15
  br i1 %i.mz, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.cx
  %i.na = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc131.i.i unwind label %bb.ds, !noalias !378 ; 2 uses

.noexc131.i.i:                                    ; preds = %.noexc.i.i.i.i
  store ptr %i.na, ptr %10, align 8, !tbaa !38, !alias.scope !393, !noalias !378
  %i.nb = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !394
  store i64 %i.nb, ptr %i.kk, align 8, !tbaa !42, !alias.scope !393, !noalias !378
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc131.i.i, %bb.cx
  %i.nc = phi ptr [ %i.na, %.noexc131.i.i ], [ %i.kk, %bb.cx ] ; 2 uses
  switch i64 %i.my, label %bb.cz [
    i64 1, label %bb.cy
    i64 0, label %bb.da
  ]

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.nd = load i8, ptr %i.kh, align 8, !tbaa !42, !noalias !378
  store i8 %i.nd, ptr %i.nc, align 1, !tbaa !42, !noalias !378
  br label %bb.da

bb.cz:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nc, ptr nonnull align 8 %i.kh, i64 %i.my, i1 false), !noalias !378
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %._crit_edge.i.i.i.i.i
  %i.ne = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !394 ; 2 uses
  store i64 %i.ne, ptr %i.kl, align 8, !tbaa !39, !alias.scope !393, !noalias !378
  %i.nf = load ptr, ptr %10, align 8, !tbaa !38, !alias.scope !393, !noalias !378
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.ne
  store i8 0, ptr %i.ng, align 1, !tbaa !42, !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !394
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !378
  %i.nh = load ptr, ptr %10, align 8, !tbaa !38, !noalias !378 ; 8 uses
  %i.ni = ptrtoaddr ptr %i.nh to i64
  %i.nj = load i64, ptr %i.kl, align 8, !tbaa !39, !noalias !378 ; 13 uses
  %.not.i132.i.i = icmp samesign eq i64 %i.nj, 0
  %.pre354.i.i = load i64, ptr %9, align 8, !tbaa !41, !noalias !378 ; 3 uses
  %.pre356.i.i = load ptr, ptr %i.kg, align 8, !noalias !378 ; 2 uses
  br i1 %.not.i132.i.i, label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i, label %bb.db, !prof !63

bb.db:                                            ; preds = %bb.da
  %i.nk = trunc i64 %.pre354.i.i to i1            ; 2 uses
  %i.nl = load i64, ptr %i.kf, align 8, !noalias !395
  %.sink2.i.i.i.i = select i1 %i.nk, ptr %.pre356.i.i, ptr %i.kg ; 12 uses
  %.sink.i.i.i.i = select i1 %i.nk, i64 %i.nl, i64 196 ; 2 uses
  %.sink1.i.i.i.i = lshr i64 %.pre354.i.i, 1      ; 7 uses
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
  br i1 %i.ns, label %.noexc.i162.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i, !prof !63

.noexc.i162.i.i:                                  ; preds = %bb.dc
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc163.i.i unwind label %.loopexit.split-lp.i.i, !noalias !378

.noexc163.i.i:                                    ; preds = %.noexc.i162.i.i
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i: ; preds = %bb.dc
  %i.nt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated.i.i.i.i) #33
          to label %.lr.ph.i.i.preheader.i.i.i unwind label %.loopexit226.i.i, !noalias !378 ; 8 uses

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i
  %i.nu = ptrtoaddr ptr %i.nt to i64              ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nt, i64 %i.nn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nv, ptr align 1 %i.nh, i64 %i.nj, i1 false), !tbaa !42, !noalias !378
  %.not.i.i53.i.i.i = icmp eq ptr %i.ml, %.sink2.i.i.i.i
  br i1 %.not.i.i53.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %iter.check623

iter.check623:                                    ; preds = %.lr.ph.i.i.preheader.i.i.i
  %min.iters.check609 = icmp ult i64 %i.nn, 4
  %i.nw = sub i64 %i.nm, %i.nu
  %diff.check608 = icmp ugt i64 %i.nw, -32
  %or.cond = or i1 %min.iters.check609, %diff.check608
  br i1 %or.cond, label %.lr.ph.i.i56.i.i.i.preheader, label %vector.main.loop.iter.check610

vector.main.loop.iter.check610:                   ; preds = %iter.check623
  %min.iters.check611 = icmp ult i64 %i.nn, 32
  br i1 %min.iters.check611, label %vec.epilog.ph627, label %vector.ph612

vector.ph612:                                     ; preds = %vector.main.loop.iter.check610
  %i.nx = and i64 %i.nn, 28
  %n.vec613 = and i64 %i.nn, -32                  ; 5 uses
  %i.ny = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %n.vec613 ; 2 uses
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %vector.ph612
  %index615 = phi i64 [ 0, %vector.ph612 ], [ %index.next619, %vector.body614 ] ; 3 uses
  %next.gep616 = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %index615 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nt, i64 %index615 ; 2 uses
  %i.oa = getelementptr i8, ptr %next.gep616, i64 16
  %wide.load617 = load <16 x i8>, ptr %next.gep616, align 1, !tbaa !42, !noalias !378
  %wide.load618 = load <16 x i8>, ptr %i.oa, align 1, !tbaa !42, !noalias !378
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store <16 x i8> %wide.load617, ptr %i.nz, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load618, ptr %i.ob, align 1, !tbaa !42, !noalias !378
  %index.next619 = add nuw i64 %index615, 32      ; 2 uses
  %i.oc = icmp eq i64 %index.next619, %n.vec613
  br i1 %i.oc, label %middle.block620, label %vector.body614, !llvm.loop !324

middle.block620:                                  ; preds = %vector.body614
  %cmp.n621 = icmp eq i64 %i.nn, %n.vec613
  br i1 %cmp.n621, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %vec.epilog.iter.check625

vec.epilog.iter.check625:                         ; preds = %middle.block620
  %min.epilog.iters.check626 = icmp eq i64 %i.nx, 0
  br i1 %min.epilog.iters.check626, label %.lr.ph.i.i56.i.i.i.preheader, label %vec.epilog.ph627, !prof !170

vec.epilog.ph627:                                 ; preds = %vector.main.loop.iter.check610, %vec.epilog.iter.check625
  %vec.epilog.resume.val622 = phi i64 [ %n.vec613, %vec.epilog.iter.check625 ], [ 0, %vector.main.loop.iter.check610 ]
  %n.vec628 = and i64 %i.nn, -4                   ; 4 uses
  %i.od = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %n.vec628 ; 2 uses
  br label %vec.epilog.vector.body629

vec.epilog.vector.body629:                        ; preds = %vec.epilog.vector.body629, %vec.epilog.ph627
  %index630 = phi i64 [ %vec.epilog.resume.val622, %vec.epilog.ph627 ], [ %index.next633, %vec.epilog.vector.body629 ] ; 3 uses
  %next.gep631 = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %index630
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nt, i64 %index630
  %wide.load632 = load <4 x i8>, ptr %next.gep631, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load632, ptr %i.oe, align 1, !tbaa !42, !noalias !378
  %index.next633 = add nuw i64 %index630, 4       ; 2 uses
  %i.of = icmp eq i64 %index.next633, %n.vec628
  br i1 %i.of, label %vec.epilog.middle.block634, label %vec.epilog.vector.body629, !llvm.loop !325

vec.epilog.middle.block634:                       ; preds = %vec.epilog.vector.body629
  %cmp.n635 = icmp eq i64 %i.nn, %n.vec628
  br i1 %cmp.n635, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %.lr.ph.i.i56.i.i.i.preheader

.lr.ph.i.i56.i.i.i.preheader:                     ; preds = %iter.check623, %vec.epilog.iter.check625, %vec.epilog.middle.block634
  %.sroa.094.0.i.i.i.ph = phi ptr [ %.sink2.i.i.i.i, %iter.check623 ], [ %i.ny, %vec.epilog.iter.check625 ], [ %i.od, %vec.epilog.middle.block634 ]
  %.012.i.i.i.i.i.ph = phi i64 [ 0, %iter.check623 ], [ %n.vec613, %vec.epilog.iter.check625 ], [ %n.vec628, %vec.epilog.middle.block634 ]
  br label %.lr.ph.i.i56.i.i.i

.lr.ph.i.i56.i.i.i:                               ; preds = %.lr.ph.i.i56.i.i.i.preheader, %.lr.ph.i.i56.i.i.i
  %.sroa.094.0.i.i.i = phi ptr [ %i.oi, %.lr.ph.i.i56.i.i.i ], [ %.sroa.094.0.i.i.i.ph, %.lr.ph.i.i56.i.i.i.preheader ] ; 2 uses
  %.012.i.i.i.i.i = phi i64 [ %i.oj, %.lr.ph.i.i56.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i56.i.i.i.preheader ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.012.i.i.i.i.i
  %i.oh = load i8, ptr %.sroa.094.0.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.oh, ptr %i.og, align 1, !tbaa !42, !noalias !378
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.094.0.i.i.i, i64 1 ; 2 uses
  %i.oj = add nuw i64 %.012.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i57.i.i.i = icmp eq i64 %i.oj, %i.nn
  br i1 %exitcond.not.i.i57.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %.lr.ph.i.i56.i.i.i, !llvm.loop !326

_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i: ; preds = %.lr.ph.i.i56.i.i.i, %middle.block620, %vec.epilog.middle.block634, %.lr.ph.i.i.preheader.i.i.i
  %.sroa.094.1.i.i.i = phi ptr [ %.sink2.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %i.od, %vec.epilog.middle.block634 ], [ %i.ny, %middle.block620 ], [ %i.oi, %.lr.ph.i.i56.i.i.i ] ; 7 uses
  %.sroa.094.1.i.i.i596 = ptrtoaddr ptr %.sroa.094.1.i.i.i to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.no ; 3 uses
  %i.ol = sub i64 %.sink1.i.i.i.i, %i.nn          ; 8 uses
  %.not.i.i160.i.i = icmp eq i64 %.sink1.i.i.i.i, %i.nn
  br i1 %.not.i.i160.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i
  %min.iters.check = icmp ult i64 %i.ol, 4
  br i1 %min.iters.check, label %.lr.ph.i.i161.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.om = add i64 %i.nj, %i.mr
  %i.on = add i64 %i.om, %i.nu
  %i.oo = add i64 %i.nm, %.sroa.094.1.i.i.i596
  %i.op = sub i64 %i.oo, %i.on
  %diff.check = icmp ugt i64 %i.op, -32
  br i1 %diff.check, label %.lr.ph.i.i161.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check597 = icmp ult i64 %i.ol, 32
  br i1 %min.iters.check597, label %vec.epilog.ph, label %vector.ph

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
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !42, !noalias !378
  %wide.load598 = load <16 x i8>, ptr %i.ot, align 1, !tbaa !42, !noalias !378
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  store <16 x i8> %wide.load, ptr %i.os, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load598, ptr %i.ou, align 1, !tbaa !42, !noalias !378
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ov = icmp eq i64 %index.next, %n.vec
  br i1 %i.ov, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ol, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.oq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i161.i.i.preheader, label %vec.epilog.ph, !prof !170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec599 = and i64 %i.ol, -4                   ; 4 uses
  %i.ow = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %n.vec599
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index600 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next603, %vec.epilog.vector.body ] ; 3 uses
  %next.gep601 = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %index600
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ok, i64 %index600
  %wide.load602 = load <4 x i8>, ptr %next.gep601, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load602, ptr %i.ox, align 1, !tbaa !42, !noalias !378
  %index.next603 = add nuw i64 %index600, 4       ; 2 uses
  %i.oy = icmp eq i64 %index.next603, %n.vec599
  br i1 %i.oy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !328

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n604 = icmp eq i64 %i.ol, %n.vec599
  br i1 %cmp.n604, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %.lr.ph.i.i161.i.i.preheader

.lr.ph.i.i161.i.i.preheader:                      ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.094.2.i.i.i.ph = phi ptr [ %.sroa.094.1.i.i.i, %iter.check ], [ %.sroa.094.1.i.i.i, %vector.memcheck ], [ %i.or, %vec.epilog.iter.check ], [ %i.ow, %vec.epilog.middle.block ]
  %.012.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec599, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i161.i.i

.lr.ph.i.i161.i.i:                                ; preds = %.lr.ph.i.i161.i.i.preheader, %.lr.ph.i.i161.i.i
  %.sroa.094.2.i.i.i = phi ptr [ %i.pb, %.lr.ph.i.i161.i.i ], [ %.sroa.094.2.i.i.i.ph, %.lr.ph.i.i161.i.i.preheader ] ; 2 uses
  %.012.i.i.i.i = phi i64 [ %i.pc, %.lr.ph.i.i161.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i161.i.i.preheader ] ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ok, i64 %.012.i.i.i.i
  %i.pa = load i8, ptr %.sroa.094.2.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.pa, ptr %i.oz, align 1, !tbaa !42, !noalias !378
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.094.2.i.i.i, i64 1
  %i.pc = add nuw i64 %.012.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.pc, %i.ol
  br i1 %exitcond.not.i.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %.lr.ph.i.i161.i.i, !llvm.loop !329

_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i: ; preds = %.lr.ph.i.i161.i.i, %middle.block, %vec.epilog.middle.block, %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i
  %i.pd = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  %i.pe = trunc i64 %i.pd to i1
  br i1 %i.pe, label %bb.dd, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i

bb.dd:                                            ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i
  %i.pf = load ptr, ptr %i.kg, align 8, !tbaa !42, !noalias !378
  %i.pg = load i64, ptr %i.kf, align 8, !tbaa !42, !noalias !378
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pg) #35, !noalias !378
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i: ; preds = %bb.dd, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i
  store ptr %i.nt, ptr %i.kg, align 8, !tbaa !42, !noalias !378
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.kf, align 8, !tbaa !42, !noalias !378
  %i.ph = shl i64 %i.np, 1
  %i.pi = or disjoint i64 %i.ph, 1
  br label %.noexc134.i.i

bb.de:                                            ; preds = %bb.db
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.no, i64 %.sink1.i.i.i.i) ; 11 uses
  %i.pj = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %.sroa.speculated.i.i.i ; 4 uses
  %i.pk = sub i64 %i.np, %.sroa.speculated.i.i.i  ; 19 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.nn ; 5 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.no
  %i.pn = sub nuw i64 %.sroa.speculated.i.i.i, %i.no
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pk ; 7 uses
  %i.pp = sub i64 %i.nj, %i.pk                    ; 8 uses
  %.not.i.i61.i.i.i = icmp eq i64 %i.np, %.sroa.speculated.i.i.i ; 2 uses
  br i1 %.not.i.i61.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %iter.check751

iter.check751:                                    ; preds = %bb.de
  %i.pq = sub i64 %.sroa.speculated.i.i.i, %i.nj
  %i.pr = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.pq ; 5 uses
  %min.iters.check737 = icmp ult i64 %i.pk, 4
  %diff.check736 = icmp ult i64 %i.nj, 32
  %or.cond766 = or i1 %min.iters.check737, %diff.check736
  br i1 %or.cond766, label %.lr.ph.i.i64.i.i.i.preheader, label %vector.main.loop.iter.check738

vector.main.loop.iter.check738:                   ; preds = %iter.check751
  %min.iters.check739 = icmp ult i64 %i.pk, 32
  br i1 %min.iters.check739, label %vec.epilog.ph755, label %vector.ph740

vector.ph740:                                     ; preds = %vector.main.loop.iter.check738
  %i.ps = and i64 %i.pk, 28
  %n.vec741 = and i64 %i.pk, -32                  ; 5 uses
  %i.pt = getelementptr i8, ptr %i.pr, i64 %n.vec741
  br label %vector.body742

vector.body742:                                   ; preds = %vector.body742, %vector.ph740
  %index743 = phi i64 [ 0, %vector.ph740 ], [ %index.next747, %vector.body742 ] ; 3 uses
  %next.gep744 = getelementptr i8, ptr %i.pr, i64 %index743 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pj, i64 %index743 ; 2 uses
  %i.pv = getelementptr i8, ptr %next.gep744, i64 16
  %wide.load745 = load <16 x i8>, ptr %next.gep744, align 1, !tbaa !42, !noalias !378
  %wide.load746 = load <16 x i8>, ptr %i.pv, align 1, !tbaa !42, !noalias !378
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  store <16 x i8> %wide.load745, ptr %i.pu, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load746, ptr %i.pw, align 1, !tbaa !42, !noalias !378
  %index.next747 = add nuw i64 %index743, 32      ; 2 uses
  %i.px = icmp eq i64 %index.next747, %n.vec741
  br i1 %i.px, label %middle.block748, label %vector.body742, !llvm.loop !330

middle.block748:                                  ; preds = %vector.body742
  %cmp.n749 = icmp eq i64 %i.pk, %n.vec741
  br i1 %cmp.n749, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %vec.epilog.iter.check753

vec.epilog.iter.check753:                         ; preds = %middle.block748
  %min.epilog.iters.check754 = icmp eq i64 %i.ps, 0
  br i1 %min.epilog.iters.check754, label %.lr.ph.i.i64.i.i.i.preheader, label %vec.epilog.ph755, !prof !170

vec.epilog.ph755:                                 ; preds = %vector.main.loop.iter.check738, %vec.epilog.iter.check753
  %vec.epilog.resume.val750 = phi i64 [ %n.vec741, %vec.epilog.iter.check753 ], [ 0, %vector.main.loop.iter.check738 ]
  %n.vec756 = and i64 %i.pk, -4                   ; 4 uses
  %i.py = getelementptr i8, ptr %i.pr, i64 %n.vec756
  br label %vec.epilog.vector.body757

vec.epilog.vector.body757:                        ; preds = %vec.epilog.vector.body757, %vec.epilog.ph755
  %index758 = phi i64 [ %vec.epilog.resume.val750, %vec.epilog.ph755 ], [ %index.next761, %vec.epilog.vector.body757 ] ; 3 uses
  %next.gep759 = getelementptr i8, ptr %i.pr, i64 %index758
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pj, i64 %index758
  %wide.load760 = load <4 x i8>, ptr %next.gep759, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load760, ptr %i.pz, align 1, !tbaa !42, !noalias !378
  %index.next761 = add nuw i64 %index758, 4       ; 2 uses
  %i.qa = icmp eq i64 %index.next761, %n.vec756
  br i1 %i.qa, label %vec.epilog.middle.block762, label %vec.epilog.vector.body757, !llvm.loop !331

vec.epilog.middle.block762:                       ; preds = %vec.epilog.vector.body757
  %cmp.n763 = icmp eq i64 %i.pk, %n.vec756
  br i1 %cmp.n763, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %.lr.ph.i.i64.i.i.i.preheader

.lr.ph.i.i64.i.i.i.preheader:                     ; preds = %iter.check751, %vec.epilog.iter.check753, %vec.epilog.middle.block762
  %.sroa.090.0.i.i.i.ph = phi ptr [ %i.pr, %iter.check751 ], [ %i.pt, %vec.epilog.iter.check753 ], [ %i.py, %vec.epilog.middle.block762 ]
  %.012.i.i65.i.i.i.ph = phi i64 [ 0, %iter.check751 ], [ %n.vec741, %vec.epilog.iter.check753 ], [ %n.vec756, %vec.epilog.middle.block762 ]
  br label %.lr.ph.i.i64.i.i.i

.lr.ph.i.i64.i.i.i:                               ; preds = %.lr.ph.i.i64.i.i.i.preheader, %.lr.ph.i.i64.i.i.i
  %.sroa.090.0.i.i.i = phi ptr [ %i.qd, %.lr.ph.i.i64.i.i.i ], [ %.sroa.090.0.i.i.i.ph, %.lr.ph.i.i64.i.i.i.preheader ] ; 2 uses
  %.012.i.i65.i.i.i = phi i64 [ %i.qe, %.lr.ph.i.i64.i.i.i ], [ %.012.i.i65.i.i.i.ph, %.lr.ph.i.i64.i.i.i.preheader ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.012.i.i65.i.i.i
  %i.qc = load i8, ptr %.sroa.090.0.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.qc, ptr %i.qb, align 1, !tbaa !42, !noalias !378
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.090.0.i.i.i, i64 1
  %i.qe = add nuw i64 %.012.i.i65.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i66.i.i.i = icmp eq i64 %i.qe, %i.pk
  br i1 %exitcond.not.i.i66.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %.lr.ph.i.i64.i.i.i, !llvm.loop !332

_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i: ; preds = %.lr.ph.i.i64.i.i.i, %middle.block748, %vec.epilog.middle.block762, %bb.de
  %.not.i158.i.i = icmp sgt i64 %.sroa.speculated.i.i.i, %i.no
  br i1 %.not.i158.i.i, label %iter.check719, label %._crit_edge.i.i.i

iter.check719:                                    ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i
  %i.qf = getelementptr i8, ptr %i.pj, i64 -1     ; 5 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pn ; 5 uses
  %i.qh = add i64 %i.nm, -1
  %i.qi = add i64 %i.qh, %.sroa.speculated.i.i.i
  %i.qj = add i64 %i.mv, %i.nj
  %i.qk = add i64 %i.nm, -2
  %i.ql = add i64 %i.qk, %.sroa.speculated.i.i.i
  %umin = call i64 @llvm.umin.i64(i64 %i.qj, i64 %i.ql)
  %i.qm = sub i64 %i.qi, %umin                    ; 7 uses
  %min.iters.check703 = icmp ult i64 %i.qm, 8
  %.reass = add i64 %i.nj, %invariant.op
  %diff.check702 = icmp ugt i64 %.reass, -32
  %or.cond896 = select i1 %min.iters.check703, i1 true, i1 %diff.check702
  br i1 %or.cond896, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check704

vector.main.loop.iter.check704:                   ; preds = %iter.check719
  %min.iters.check705 = icmp ult i64 %i.qm, 32
  br i1 %min.iters.check705, label %vec.epilog.ph723, label %vector.ph706

vector.ph706:                                     ; preds = %vector.main.loop.iter.check704
  %i.qn = and i64 %i.qm, 24
  %n.vec707 = and i64 %i.qm, -32                  ; 4 uses
  %i.qo = sub i64 0, %n.vec707                    ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qf, i64 %i.qo
  %i.qq = getelementptr i8, ptr %i.qg, i64 %i.qo
  br label %vector.body708

vector.body708:                                   ; preds = %vector.body708, %vector.ph706
  %index709 = phi i64 [ 0, %vector.ph706 ], [ %index.next714, %vector.body708 ] ; 2 uses
  %i.qr = sub i64 0, %index709                    ; 2 uses
  %next.gep710 = getelementptr i8, ptr %i.qf, i64 %i.qr ; 2 uses
  %next.gep711 = getelementptr i8, ptr %i.qg, i64 %i.qr ; 2 uses
  %i.qs = getelementptr inbounds i8, ptr %next.gep711, i64 -16
  %i.qt = getelementptr inbounds i8, ptr %next.gep711, i64 -32
  %wide.load712 = load <16 x i8>, ptr %i.qs, align 1, !tbaa !42, !noalias !378
  %wide.load713 = load <16 x i8>, ptr %i.qt, align 1, !tbaa !42, !noalias !378
  %i.qu = getelementptr i8, ptr %next.gep710, i64 -15
  %i.qv = getelementptr i8, ptr %next.gep710, i64 -31
  store <16 x i8> %wide.load712, ptr %i.qu, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load713, ptr %i.qv, align 1, !tbaa !42, !noalias !378
  %index.next714 = add nuw i64 %index709, 32      ; 2 uses
  %i.qw = icmp eq i64 %index.next714, %n.vec707
  br i1 %i.qw, label %middle.block715, label %vector.body708, !llvm.loop !333

middle.block715:                                  ; preds = %vector.body708
  %cmp.n716 = icmp eq i64 %i.qm, %n.vec707
  br i1 %cmp.n716, label %._crit_edge.i.i.i, label %vec.epilog.iter.check721

vec.epilog.iter.check721:                         ; preds = %middle.block715
  %min.epilog.iters.check722 = icmp eq i64 %i.qn, 0
  br i1 %min.epilog.iters.check722, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph723, !prof !396

vec.epilog.ph723:                                 ; preds = %vector.main.loop.iter.check704, %vec.epilog.iter.check721
  %vec.epilog.resume.val717 = phi i64 [ %n.vec707, %vec.epilog.iter.check721 ], [ 0, %vector.main.loop.iter.check704 ]
  %n.vec724 = and i64 %i.qm, -8                   ; 3 uses
  %i.qx = sub i64 0, %n.vec724                    ; 2 uses
  %i.qy = getelementptr i8, ptr %i.qf, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qg, i64 %i.qx
  br label %vec.epilog.vector.body725

vec.epilog.vector.body725:                        ; preds = %vec.epilog.vector.body725, %vec.epilog.ph723
  %index726 = phi i64 [ %vec.epilog.resume.val717, %vec.epilog.ph723 ], [ %index.next730, %vec.epilog.vector.body725 ] ; 2 uses
  %i.ra = sub i64 0, %index726                    ; 2 uses
  %next.gep727 = getelementptr i8, ptr %i.qf, i64 %i.ra
  %next.gep728 = getelementptr i8, ptr %i.qg, i64 %i.ra
  %i.rb = getelementptr inbounds i8, ptr %next.gep728, i64 -8
  %wide.load729 = load <8 x i8>, ptr %i.rb, align 1, !tbaa !42, !noalias !378
  %i.rc = getelementptr i8, ptr %next.gep727, i64 -7
  store <8 x i8> %wide.load729, ptr %i.rc, align 1, !tbaa !42, !noalias !378
  %index.next730 = add nuw i64 %index726, 8       ; 2 uses
  %i.rd = icmp eq i64 %index.next730, %n.vec724
  br i1 %i.rd, label %vec.epilog.middle.block731, label %vec.epilog.vector.body725, !llvm.loop !334

vec.epilog.middle.block731:                       ; preds = %vec.epilog.vector.body725
  %cmp.n732 = icmp eq i64 %i.qm, %n.vec724
  br i1 %cmp.n732, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check719, %vec.epilog.iter.check721, %vec.epilog.middle.block731
  %.ph = phi ptr [ %i.qf, %iter.check719 ], [ %i.qy, %vec.epilog.middle.block731 ], [ %i.qp, %vec.epilog.iter.check721 ]
  %.0126.i.i.i.ph = phi ptr [ %i.qg, %iter.check719 ], [ %i.qz, %vec.epilog.middle.block731 ], [ %i.qq, %vec.epilog.iter.check721 ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block715, %vec.epilog.middle.block731, %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i
  br i1 %.not.i.i61.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %iter.check686

iter.check686:                                    ; preds = %._crit_edge.i.i.i
  %min.iters.check672 = icmp ult i64 %i.pk, 4
  %i.re = sub i64 %i.ni, %i.mt
  %diff.check671 = icmp ugt i64 %i.re, -32
  %or.cond767 = select i1 %min.iters.check672, i1 true, i1 %diff.check671
  br i1 %or.cond767, label %.lr.ph.i71.i.i.i.preheader, label %vector.main.loop.iter.check673

vector.main.loop.iter.check673:                   ; preds = %iter.check686
  %min.iters.check674 = icmp ult i64 %i.pk, 32
  br i1 %min.iters.check674, label %vec.epilog.ph690, label %vector.ph675

vector.ph675:                                     ; preds = %vector.main.loop.iter.check673
  %i.rf = and i64 %i.pk, 28
  %n.vec676 = and i64 %i.pk, -32                  ; 5 uses
  %i.rg = getelementptr i8, ptr %i.nh, i64 %n.vec676 ; 2 uses
  br label %vector.body677

vector.body677:                                   ; preds = %vector.body677, %vector.ph675
  %index678 = phi i64 [ 0, %vector.ph675 ], [ %index.next682, %vector.body677 ] ; 3 uses
  %next.gep679 = getelementptr i8, ptr %i.nh, i64 %index678 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pl, i64 %index678 ; 2 uses
  %i.ri = getelementptr i8, ptr %next.gep679, i64 16
  %wide.load680 = load <16 x i8>, ptr %next.gep679, align 1, !tbaa !42, !noalias !378
  %wide.load681 = load <16 x i8>, ptr %i.ri, align 1, !tbaa !42, !noalias !378
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  store <16 x i8> %wide.load680, ptr %i.rh, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load681, ptr %i.rj, align 1, !tbaa !42, !noalias !378
  %index.next682 = add nuw i64 %index678, 32      ; 2 uses
  %i.rk = icmp eq i64 %index.next682, %n.vec676
  br i1 %i.rk, label %middle.block683, label %vector.body677, !llvm.loop !335

middle.block683:                                  ; preds = %vector.body677
  %cmp.n684 = icmp eq i64 %i.pk, %n.vec676
  br i1 %cmp.n684, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %vec.epilog.iter.check688

vec.epilog.iter.check688:                         ; preds = %middle.block683
  %min.epilog.iters.check689 = icmp eq i64 %i.rf, 0
  br i1 %min.epilog.iters.check689, label %.lr.ph.i71.i.i.i.preheader, label %vec.epilog.ph690, !prof !170

vec.epilog.ph690:                                 ; preds = %vector.main.loop.iter.check673, %vec.epilog.iter.check688
  %vec.epilog.resume.val685 = phi i64 [ %n.vec676, %vec.epilog.iter.check688 ], [ 0, %vector.main.loop.iter.check673 ]
  %n.vec691 = and i64 %i.pk, -4                   ; 4 uses
  %i.rl = getelementptr i8, ptr %i.nh, i64 %n.vec691 ; 2 uses
  br label %vec.epilog.vector.body692

vec.epilog.vector.body692:                        ; preds = %vec.epilog.vector.body692, %vec.epilog.ph690
  %index693 = phi i64 [ %vec.epilog.resume.val685, %vec.epilog.ph690 ], [ %index.next696, %vec.epilog.vector.body692 ] ; 3 uses
  %next.gep694 = getelementptr i8, ptr %i.nh, i64 %index693
  %i.rm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %index693
  %wide.load695 = load <4 x i8>, ptr %next.gep694, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load695, ptr %i.rm, align 1, !tbaa !42, !noalias !378
  %index.next696 = add nuw i64 %index693, 4       ; 2 uses
  %i.rn = icmp eq i64 %index.next696, %n.vec691
  br i1 %i.rn, label %vec.epilog.middle.block697, label %vec.epilog.vector.body692, !llvm.loop !336

vec.epilog.middle.block697:                       ; preds = %vec.epilog.vector.body692
  %cmp.n698 = icmp eq i64 %i.pk, %n.vec691
  br i1 %cmp.n698, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %.lr.ph.i71.i.i.i.preheader

.lr.ph.i71.i.i.i.preheader:                       ; preds = %iter.check686, %vec.epilog.iter.check688, %vec.epilog.middle.block697
  %.sroa.0122.1.i.i.i.ph = phi ptr [ %i.nh, %iter.check686 ], [ %i.rg, %vec.epilog.iter.check688 ], [ %i.rl, %vec.epilog.middle.block697 ]
  %.05.i.i.i.i117.ph = phi i64 [ 0, %iter.check686 ], [ %n.vec676, %vec.epilog.iter.check688 ], [ %n.vec691, %vec.epilog.middle.block697 ]
  br label %.lr.ph.i71.i.i.i

.lr.ph.i71.i.i.i:                                 ; preds = %.lr.ph.i71.i.i.i.preheader, %.lr.ph.i71.i.i.i
  %.sroa.0122.1.i.i.i = phi ptr [ %i.rq, %.lr.ph.i71.i.i.i ], [ %.sroa.0122.1.i.i.i.ph, %.lr.ph.i71.i.i.i.preheader ] ; 2 uses
  %.05.i.i.i.i117 = phi i64 [ %i.rr, %.lr.ph.i71.i.i.i ], [ %.05.i.i.i.i117.ph, %.lr.ph.i71.i.i.i.preheader ] ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.05.i.i.i.i117
  %i.rp = load i8, ptr %.sroa.0122.1.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.rp, ptr %i.ro, align 1, !tbaa !42, !noalias !378
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0122.1.i.i.i, i64 1 ; 2 uses
  %i.rr = add nuw i64 %.05.i.i.i.i117, 1          ; 2 uses
  %exitcond.not.i72.i.i.i = icmp eq i64 %i.rr, %i.pk
  br i1 %exitcond.not.i72.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %.lr.ph.i71.i.i.i, !llvm.loop !337

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.rs = phi ptr [ %i.rv, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0126.i.i.i = phi ptr [ %i.rt, %.lr.ph.i.i.i ], [ %.0126.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.rt = getelementptr inbounds i8, ptr %.0126.i.i.i, i64 -1 ; 2 uses
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !42, !noalias !378
  store i8 %i.ru, ptr %i.rs, align 1, !tbaa !42, !noalias !378
  %i.rv = getelementptr inbounds i8, ptr %i.rs, i64 -1 ; 2 uses
  %i.rw = icmp ult ptr %i.rv, %i.pm
  br i1 %i.rw, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !338

_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i: ; preds = %.lr.ph.i71.i.i.i, %middle.block683, %vec.epilog.middle.block697, %._crit_edge.i.i.i
  %.sroa.0122.2.i.i.i = phi ptr [ %i.nh, %._crit_edge.i.i.i ], [ %i.rl, %vec.epilog.middle.block697 ], [ %i.rg, %middle.block683 ], [ %i.rq, %.lr.ph.i71.i.i.i ] ; 7 uses
  %.sroa.0122.2.i.i.i639 = ptrtoaddr ptr %.sroa.0122.2.i.i.i to i64
  %.not.i73.i.i.i = icmp eq i64 %i.nj, %i.pk
  br i1 %.not.i73.i.i.i, label %.loopexit.i.i.i, label %iter.check655

iter.check655:                                    ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i
  %min.iters.check641 = icmp ult i64 %i.pp, 4
  br i1 %min.iters.check641, label %.lr.ph.i76.i.i.i.preheader, label %vector.memcheck638

vector.memcheck638:                               ; preds = %iter.check655
  %i.rx = add i64 %i.ms, %i.nj
  %i.ry = add i64 %i.rx, %.sink1.i.i.i.i
  %i.rz = add i64 %.sroa.speculated.i.i.i, %.sroa.0122.2.i.i.i639
  %i.sa = sub i64 %i.rz, %i.ry
  %diff.check640 = icmp ugt i64 %i.sa, -32
  br i1 %diff.check640, label %.lr.ph.i76.i.i.i.preheader, label %vector.main.loop.iter.check642

vector.main.loop.iter.check642:                   ; preds = %vector.memcheck638
  %min.iters.check643 = icmp ult i64 %i.pp, 32
  br i1 %min.iters.check643, label %vec.epilog.ph659, label %vector.ph644

vector.ph644:                                     ; preds = %vector.main.loop.iter.check642
  %i.sb = and i64 %i.pp, 28
  %n.vec645 = and i64 %i.pp, -32                  ; 5 uses
  %i.sc = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %n.vec645
  br label %vector.body646

vector.body646:                                   ; preds = %vector.body646, %vector.ph644
  %index647 = phi i64 [ 0, %vector.ph644 ], [ %index.next651, %vector.body646 ] ; 3 uses
  %next.gep648 = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %index647 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.po, i64 %index647 ; 2 uses
  %i.se = getelementptr i8, ptr %next.gep648, i64 16
  %wide.load649 = load <16 x i8>, ptr %next.gep648, align 1, !tbaa !42, !noalias !378
  %wide.load650 = load <16 x i8>, ptr %i.se, align 1, !tbaa !42, !noalias !378
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store <16 x i8> %wide.load649, ptr %i.sd, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load650, ptr %i.sf, align 1, !tbaa !42, !noalias !378
  %index.next651 = add nuw i64 %index647, 32      ; 2 uses
  %i.sg = icmp eq i64 %index.next651, %n.vec645
  br i1 %i.sg, label %middle.block652, label %vector.body646, !llvm.loop !339

middle.block652:                                  ; preds = %vector.body646
  %cmp.n653 = icmp eq i64 %i.pp, %n.vec645
  br i1 %cmp.n653, label %.loopexit.i.i.i, label %vec.epilog.iter.check657

vec.epilog.iter.check657:                         ; preds = %middle.block652
  %min.epilog.iters.check658 = icmp eq i64 %i.sb, 0
  br i1 %min.epilog.iters.check658, label %.lr.ph.i76.i.i.i.preheader, label %vec.epilog.ph659, !prof !170

vec.epilog.ph659:                                 ; preds = %vector.main.loop.iter.check642, %vec.epilog.iter.check657
  %vec.epilog.resume.val654 = phi i64 [ %n.vec645, %vec.epilog.iter.check657 ], [ 0, %vector.main.loop.iter.check642 ]
  %n.vec660 = and i64 %i.pp, -4                   ; 4 uses
  %i.sh = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %n.vec660
  br label %vec.epilog.vector.body661

vec.epilog.vector.body661:                        ; preds = %vec.epilog.vector.body661, %vec.epilog.ph659
  %index662 = phi i64 [ %vec.epilog.resume.val654, %vec.epilog.ph659 ], [ %index.next665, %vec.epilog.vector.body661 ] ; 3 uses
  %next.gep663 = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %index662
  %i.si = getelementptr inbounds nuw i8, ptr %i.po, i64 %index662
  %wide.load664 = load <4 x i8>, ptr %next.gep663, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load664, ptr %i.si, align 1, !tbaa !42, !noalias !378
  %index.next665 = add nuw i64 %index662, 4       ; 2 uses
  %i.sj = icmp eq i64 %index.next665, %n.vec660
  br i1 %i.sj, label %vec.epilog.middle.block666, label %vec.epilog.vector.body661, !llvm.loop !340

vec.epilog.middle.block666:                       ; preds = %vec.epilog.vector.body661
  %cmp.n667 = icmp eq i64 %i.pp, %n.vec660
  br i1 %cmp.n667, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i.preheader

.lr.ph.i76.i.i.i.preheader:                       ; preds = %vector.memcheck638, %iter.check655, %vec.epilog.iter.check657, %vec.epilog.middle.block666
  %.sroa.0122.3.i.i.i.ph = phi ptr [ %.sroa.0122.2.i.i.i, %iter.check655 ], [ %.sroa.0122.2.i.i.i, %vector.memcheck638 ], [ %i.sc, %vec.epilog.iter.check657 ], [ %i.sh, %vec.epilog.middle.block666 ] ; 2 uses
  %.06.i.i.i.i.ph = phi i64 [ 0, %iter.check655 ], [ 0, %vector.memcheck638 ], [ %n.vec645, %vec.epilog.iter.check657 ], [ %n.vec660, %vec.epilog.middle.block666 ] ; 3 uses
  %40 = sub i64 %.sroa.speculated.i.i.i, %.sink1.i.i.i.i
  %xtraiter828 = and i64 %40, 3                   ; 2 uses
  %lcmp.mod829.not = icmp eq i64 %xtraiter828, 0
  br i1 %lcmp.mod829.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol

.lr.ph.i76.i.i.i.prol:                            ; preds = %.lr.ph.i76.i.i.i.preheader, %.lr.ph.i76.i.i.i.prol
  %.sroa.0122.3.i.i.i.prol = phi ptr [ %i.sm, %.lr.ph.i76.i.i.i.prol ], [ %.sroa.0122.3.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.prol = phi i64 [ %i.sn, %.lr.ph.i76.i.i.i.prol ], [ %.06.i.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i76.i.i.i.prol ], [ 0, %.lr.ph.i76.i.i.i.preheader ]
  %i.sk = getelementptr inbounds nuw i8, ptr %i.po, i64 %.06.i.i.i.i.prol
  %i.sl = load i8, ptr %.sroa.0122.3.i.i.i.prol, align 1, !tbaa !42, !noalias !378
  store i8 %i.sl, ptr %i.sk, align 1, !tbaa !42, !noalias !378
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i.prol, i64 1 ; 2 uses
  %i.sn = add nuw i64 %.06.i.i.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter828
  br i1 %prol.iter.cmp.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol, !llvm.loop !341

.lr.ph.i76.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i76.i.i.i.prol, %.lr.ph.i76.i.i.i.preheader
  %.sroa.0122.3.i.i.i.unr = phi ptr [ %.sroa.0122.3.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ], [ %i.sm, %.lr.ph.i76.i.i.i.prol ]
  %.06.i.i.i.i.unr = phi i64 [ %.06.i.i.i.i.ph, %.lr.ph.i76.i.i.i.preheader ], [ %i.sn, %.lr.ph.i76.i.i.i.prol ]
  %i.so = sub i64 %.06.i.i.i.i.ph, %.sroa.speculated.i.i.i
  %i.sp = add i64 %i.so, %.sink1.i.i.i.i
  %i.sq = icmp ugt i64 %i.sp, -4
  br i1 %i.sq, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i

.lr.ph.i76.i.i.i:                                 ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i
  %.sroa.0122.3.i.i.i = phi ptr [ %i.tf, %.lr.ph.i76.i.i.i ], [ %.sroa.0122.3.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 5 uses
  %.06.i.i.i.i = phi i64 [ %i.tg, %.lr.ph.i76.i.i.i ], [ %.06.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 5 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.po, i64 %.06.i.i.i.i
  %i.ss = load i8, ptr %.sroa.0122.3.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.ss, ptr %i.sr, align 1, !tbaa !42, !noalias !378
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 1
  %i.su = getelementptr inbounds nuw i8, ptr %i.po, i64 %.06.i.i.i.i
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 1
  %i.sw = load i8, ptr %i.st, align 1, !tbaa !42, !noalias !378
  store i8 %i.sw, ptr %i.sv, align 1, !tbaa !42, !noalias !378
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 2
  %i.sy = getelementptr inbounds nuw i8, ptr %i.po, i64 %.06.i.i.i.i
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 2
  %i.ta = load i8, ptr %i.sx, align 1, !tbaa !42, !noalias !378
  store i8 %i.ta, ptr %i.sz, align 1, !tbaa !42, !noalias !378
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 3
  %i.tc = getelementptr inbounds nuw i8, ptr %i.po, i64 %.06.i.i.i.i
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 3
  %i.te = load i8, ptr %i.tb, align 1, !tbaa !42, !noalias !378
  store i8 %i.te, ptr %i.td, align 1, !tbaa !42, !noalias !378
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0122.3.i.i.i, i64 4
  %i.tg = add nuw i64 %.06.i.i.i.i, 4             ; 2 uses
  %exitcond.not.i77.i.i.i.3 = icmp eq i64 %i.tg, %i.pp
  br i1 %exitcond.not.i77.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i76.i.i.i, !llvm.loop !342

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i, %middle.block652, %vec.epilog.middle.block666, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i
  %i.th = shl i64 %i.nj, 1
  %i.ti = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  %i.tj = add i64 %i.ti, %i.th
  %.pre355.pre.i.i = load ptr, ptr %i.kg, align 8, !noalias !378
  br label %.noexc134.i.i

.noexc134.i.i:                                    ; preds = %.loopexit.i.i.i, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i
  %.pre355.i.i = phi ptr [ %.pre355.pre.i.i, %.loopexit.i.i.i ], [ %i.nt, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i ]
  %storemerge.i.i.i = phi i64 [ %i.tj, %.loopexit.i.i.i ], [ %i.pi, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i.i, ptr %9, align 8, !tbaa !41, !noalias !378
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i: ; preds = %.noexc134.i.i, %bb.da
  %i.tk = phi ptr [ %.pre355.i.i, %.noexc134.i.i ], [ %.pre356.i.i, %bb.da ]
  %i.tl = phi i64 [ %storemerge.i.i.i, %.noexc134.i.i ], [ %.pre354.i.i, %bb.da ] ; 3 uses
  %i.tm = trunc i64 %i.tl to i1
  %i.tn = select i1 %i.tm, ptr %i.tk, ptr %i.kg   ; 3 uses
  %i.to = lshr i64 %i.tl, 1                       ; 3 uses
  %i.tp = icmp ugt i64 %i.tl, 63
  br i1 %i.tp, label %bb.df, label %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.i.i.i

bb.df:                                            ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.to
  %i.tr = getelementptr inbounds i8, ptr %i.tq, i64 -31
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %bb.df
  %.049.i.i.i.i = phi ptr [ %i.tn, %bb.df ], [ %i.ul, %bb.dg ] ; 5 uses
  %.047.i.i.i.i = phi i64 [ 6983438078262162902, %bb.df ], [ %i.tv, %bb.dg ]
  %.046.i.i.i.i = phi i64 [ -4417276706812531889, %bb.df ], [ %i.ua, %bb.dg ]
  %.045.i.i.i.i = phi i64 [ 0, %bb.df ], [ %i.uf, %bb.dg ]
  %.0.i.i136.i.i = phi i64 [ 7046029288634856825, %bb.df ], [ %i.uk, %bb.dg ]
  %.0.copyload.i.i.i.i = load i64, ptr %.049.i.i.i.i, align 1, !noalias !378
  %i.ts = mul i64 %.0.copyload.i.i.i.i, -4417276706812531889
  %i.tt = add i64 %i.ts, %.047.i.i.i.i            ; 2 uses
  %i.tu = call i64 @llvm.fshl.i64(i64 %i.tt, i64 %i.tt, i64 31) ; 2 uses
  %i.tv = mul i64 %i.tu, -7046029288634856825     ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 8
  %.0.copyload.i2.i.i.i = load i64, ptr %i.tw, align 1, !noalias !378
  %i.tx = mul i64 %.0.copyload.i2.i.i.i, -4417276706812531889
  %i.ty = add i64 %i.tx, %.046.i.i.i.i            ; 2 uses
  %i.tz = call i64 @llvm.fshl.i64(i64 %i.ty, i64 %i.ty, i64 31) ; 2 uses
  %i.ua = mul i64 %i.tz, -7046029288634856825     ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 16
  %.0.copyload.i3.i.i.i = load i64, ptr %i.ub, align 1, !noalias !378
  %i.uc = mul i64 %.0.copyload.i3.i.i.i, -4417276706812531889
  %i.ud = add i64 %i.uc, %.045.i.i.i.i            ; 2 uses
  %i.ue = call i64 @llvm.fshl.i64(i64 %i.ud, i64 %i.ud, i64 31) ; 2 uses
  %i.uf = mul i64 %i.ue, -7046029288634856825     ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 24
  %.0.copyload.i4.i.i.i = load i64, ptr %i.ug, align 1, !noalias !378
  %i.uh = mul i64 %.0.copyload.i4.i.i.i, -4417276706812531889
  %i.ui = add i64 %i.uh, %.0.i.i136.i.i           ; 2 uses
  %i.uj = call i64 @llvm.fshl.i64(i64 %i.ui, i64 %i.ui, i64 31) ; 2 uses
  %i.uk = mul i64 %i.uj, -7046029288634856825     ; 3 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 32 ; 3 uses
  %i.um = icmp ult ptr %i.ul, %i.tr
  br i1 %i.um, label %bb.dg, label %bb.dh, !llvm.loop !3

bb.dh:                                            ; preds = %bb.dg
  %i.un = call i64 @llvm.fshl.i64(i64 %i.tv, i64 %i.tv, i64 1)
  %i.uo = call i64 @llvm.fshl.i64(i64 %i.ua, i64 %i.ua, i64 7)
  %i.up = add i64 %i.uo, %i.un
  %i.uq = call i64 @llvm.fshl.i64(i64 %i.uf, i64 %i.uf, i64 12)
  %i.ur = add i64 %i.up, %i.uq
  %i.us = call i64 @llvm.fshl.i64(i64 %i.uk, i64 %i.uk, i64 18)
  %i.ut = add i64 %i.ur, %i.us
  %i.uu = mul i64 %i.tu, -2381459717836149591     ; 2 uses
  %i.uv = call i64 @llvm.fshl.i64(i64 %i.uu, i64 %i.uu, i64 31)
  %i.uw = mul i64 %i.uv, -7046029288634856825
  %i.ux = xor i64 %i.ut, %i.uw
  %i.uy = mul i64 %i.ux, -7046029288634856825
  %i.uz = add i64 %i.uy, -8796714831421723037
  %i.va = mul i64 %i.tz, -2381459717836149591     ; 2 uses
  %i.vb = call i64 @llvm.fshl.i64(i64 %i.va, i64 %i.va, i64 31)
  %i.vc = mul i64 %i.vb, -7046029288634856825
  %i.vd = xor i64 %i.uz, %i.vc
  %i.ve = mul i64 %i.vd, -7046029288634856825
  %i.vf = add i64 %i.ve, -8796714831421723037
  %i.vg = mul i64 %i.ue, -2381459717836149591     ; 2 uses
  %i.vh = call i64 @llvm.fshl.i64(i64 %i.vg, i64 %i.vg, i64 31)
  %i.vi = mul i64 %i.vh, -7046029288634856825
  %i.vj = xor i64 %i.vf, %i.vi
  %i.vk = mul i64 %i.vj, -7046029288634856825
  %i.vl = add i64 %i.vk, -8796714831421723037
  %i.vm = mul i64 %i.uj, -2381459717836149591     ; 2 uses
  %i.vn = call i64 @llvm.fshl.i64(i64 %i.vm, i64 %i.vm, i64 31)
  %i.vo = mul i64 %i.vn, -7046029288634856825
  %i.vp = xor i64 %i.vl, %i.vo
  %i.vq = mul i64 %i.vp, -7046029288634856825
  %i.vr = add i64 %i.vq, -8796714831421723037
  br label %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.i.i.i

_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.i.i.i: ; preds = %bb.dh, %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i
  %.1.i.i.i.i = phi ptr [ %i.ul, %bb.dh ], [ %i.tn, %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i ] ; 4 uses
  %.048.i.i.i.i = phi i64 [ %i.vr, %bb.dh ], [ 2870177450012600261, %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i ]
  %i.vs = add i64 %.048.i.i.i.i, %i.to            ; 3 uses
  %i.vt = and i64 %i.to, 31                       ; 5 uses
  %i.vu = icmp samesign ugt i64 %i.vt, 7
  br i1 %i.vu, label %.lr.ph.i.i.i.i118.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i118.preheader:                      ; preds = %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.i.i.i
  %i.vv = add nsw i64 %i.vt, -8                   ; 2 uses
  %i.vw = and i64 %i.vv, 8
  %lcmp.mod831.not.not = icmp eq i64 %i.vw, 0
  br i1 %lcmp.mod831.not.not, label %.lr.ph.i.i.i.i118.prol, label %.lr.ph.i.i.i.i118.prol.loopexit

.lr.ph.i.i.i.i118.prol:                           ; preds = %.lr.ph.i.i.i.i118.preheader
  %.0.copyload.i.i.i.i.i.prol = load i64, ptr %.1.i.i.i.i, align 1, !noalias !378
  %i.vx = mul i64 %.0.copyload.i.i.i.i.i.prol, -4417276706812531889 ; 2 uses
  %i.vy = call i64 @llvm.fshl.i64(i64 %i.vx, i64 %i.vx, i64 31)
  %i.vz = mul i64 %i.vy, -7046029288634856825
  %i.wa = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8 ; 2 uses
  %i.wb = xor i64 %i.vz, %i.vs                    ; 2 uses
  %i.wc = call i64 @llvm.fshl.i64(i64 %i.wb, i64 %i.wb, i64 27)
  %i.wd = mul i64 %i.wc, -7046029288634856825
  %i.we = add i64 %i.wd, -8796714831421723037     ; 2 uses
  %i.wf = add nsw i64 %i.vt, -8                   ; 2 uses
  br label %.lr.ph.i.i.i.i118.prol.loopexit

.lr.ph.i.i.i.i118.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i118.prol, %.lr.ph.i.i.i.i118.preheader
  %.031.i.i.i.i.unr = phi i64 [ %i.vs, %.lr.ph.i.i.i.i118.preheader ], [ %i.we, %.lr.ph.i.i.i.i118.prol ]
  %.02230.i.i.i.i.unr = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i118.preheader ], [ %i.wa, %.lr.ph.i.i.i.i118.prol ]
  %.02529.i.i.i.i.unr = phi i64 [ %i.vt, %.lr.ph.i.i.i.i118.preheader ], [ %i.wf, %.lr.ph.i.i.i.i118.prol ]
  %.lcssa785.unr = phi ptr [ poison, %.lr.ph.i.i.i.i118.preheader ], [ %i.wa, %.lr.ph.i.i.i.i118.prol ]
  %.lcssa784.unr = phi i64 [ poison, %.lr.ph.i.i.i.i118.preheader ], [ %i.we, %.lr.ph.i.i.i.i118.prol ]
  %.lcssa783.unr = phi i64 [ poison, %.lr.ph.i.i.i.i118.preheader ], [ %i.wf, %.lr.ph.i.i.i.i118.prol ]
  %i.wg = icmp ult i64 %i.vv, 8
  br i1 %i.wg, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i118

.lr.ph.i.i.i.i118:                                ; preds = %.lr.ph.i.i.i.i118.prol.loopexit, %.lr.ph.i.i.i.i118
  %.031.i.i.i.i = phi i64 [ %i.ww, %.lr.ph.i.i.i.i118 ], [ %.031.i.i.i.i.unr, %.lr.ph.i.i.i.i118.prol.loopexit ]
  %.02230.i.i.i.i = phi ptr [ %i.ws, %.lr.ph.i.i.i.i118 ], [ %.02230.i.i.i.i.unr, %.lr.ph.i.i.i.i118.prol.loopexit ] ; 3 uses
  %.02529.i.i.i.i = phi i64 [ %i.wx, %.lr.ph.i.i.i.i118 ], [ %.02529.i.i.i.i.unr, %.lr.ph.i.i.i.i118.prol.loopexit ]
  %.0.copyload.i.i.i.i.i = load i64, ptr %.02230.i.i.i.i, align 1, !noalias !378
  %i.wh = mul i64 %.0.copyload.i.i.i.i.i, -4417276706812531889 ; 2 uses
  %i.wi = call i64 @llvm.fshl.i64(i64 %i.wh, i64 %i.wh, i64 31)
  %i.wj = mul i64 %i.wi, -7046029288634856825
  %i.wk = getelementptr inbounds nuw i8, ptr %.02230.i.i.i.i, i64 8
  %i.wl = xor i64 %i.wj, %.031.i.i.i.i            ; 2 uses
  %i.wm = call i64 @llvm.fshl.i64(i64 %i.wl, i64 %i.wl, i64 27)
  %i.wn = mul i64 %i.wm, -7046029288634856825
  %i.wo = add i64 %i.wn, -8796714831421723037
  %.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.wk, align 1, !noalias !378
  %i.wp = mul i64 %.0.copyload.i.i.i.i.i.1, -4417276706812531889 ; 2 uses
  %i.wq = call i64 @llvm.fshl.i64(i64 %i.wp, i64 %i.wp, i64 31)
  %i.wr = mul i64 %i.wq, -7046029288634856825
  %i.ws = getelementptr inbounds nuw i8, ptr %.02230.i.i.i.i, i64 16 ; 2 uses
  %i.wt = xor i64 %i.wr, %i.wo                    ; 2 uses
end_hunk_0
