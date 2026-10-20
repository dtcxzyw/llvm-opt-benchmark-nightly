Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ring_hash?download=true
inline.NumInlined: 3519
inline.NumDeleted: 1868
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_18RingHash12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsE:bb.a
  %.sroa.0.020.i32.i.i.i.i.i = phi ptr [ %.sroa.0.0.i42.i.i.i.i.i, %bb.ch ], [ %scevgep.i.i.i.i.i, %bb.cb ] ; 7 uses
  %.pn19.i33.i.i.i.i.i = phi ptr [ %.sroa.0.020.i32.i.i.i.i.i, %bb.ch ], [ %.val88.i.i, %bb.cb ] ; 5 uses
  %.val2.i.i34.i.i.i.i.i = load i64, ptr %.sroa.0.020.i32.i.i.i.i.i, align 8, !tbaa !163, !noalias !378 ; 4 uses
  %.val3.i.i35.i.i.i.i.i = load i64, ptr %.val88.i.i, align 8, !tbaa !163, !noalias !378
  %i.kl = icmp ult i64 %.val2.i.i34.i.i.i.i.i, %.val3.i.i35.i.i.i.i.i
  br i1 %i.kl, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %.lr.ph.i31.i.i.i.i.i
  %.sroa.0834.0.copyload = load <2 x i64>, ptr %.sroa.0.020.i32.i.i.i.i.i, align 8, !tbaa !41, !noalias !378
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
  store <2 x i64> %.sroa.0834.0.copyload, ptr %.val88.i.i, align 8, !tbaa !41, !noalias !378
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
  %.063305.i.i = phi i64 [ 0, %.lr.ph306.i.i ], [ %i.zz, %._crit_edge299.i.i ] ; 4 uses
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
  %.pre342.i.i.a = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  br label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i

_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i: ; preds = %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i, %bb.ck
  %i.lk = phi i64 [ %.pre342.i.i.a, %._ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit_crit_edge.i.i ], [ %i.li, %bb.ck ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !378
  %i.ll = trunc i64 %i.lk to i1
  %i.lm = load ptr, ptr %i.jl, align 8, !noalias !378
  %i.ln = select i1 %i.ll, ptr %i.lm, ptr %i.jl   ; 2 uses
  %i.lo = lshr i64 %i.lk, 1                       ; 4 uses
  %i.lp = getelementptr i8, ptr %i.ln, i64 %i.lo  ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !385, !noalias !378
  %i.ls = call double @llvm.fmuladd.f64(double %.sroa.speculated178.i.i, double %i.lr, double %.064304.i.i) ; 3 uses
  %i.lt = fcmp olt double %.065303.i.i, %i.ls
  br i1 %i.lt, label %.lr.ph298.i.i, label %._crit_edge299.i.i

.lr.ph298.i.i:                                    ; preds = %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE12emplace_backIJcEEERcDpOT_.exit.i.i
  %i.lu = ptrtoaddr ptr %i.ln to i64              ; 3 uses
  %i.lv = ptrtoint ptr %i.lp to i64               ; 5 uses
  %i.lw = add i64 %i.lo, %i.lu
  %i.lx = add i64 %i.lo, %i.lu
  %i.ly = add i64 %i.lo, %i.lu
  %i.lz = add i64 %i.lv, -1
  %invariant.op = sub i64 %i.lv, %i.ly
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i, %.lr.ph298.i.i
  %.062297.i.i = phi i64 [ 0, %.lr.ph298.i.i ], [ %i.zm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i ] ; 2 uses
  %.166296.i.i = phi double [ %.065303.i.i, %.lr.ph298.i.i ], [ %i.zl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !378
  %i.ma = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %.062297.i.i, ptr noundef nonnull %i.jm)
          to label %bb.cn unwind label %bb.di, !noalias !378

bb.cn:                                            ; preds = %bb.cm
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = sub i64 %i.mb, %i.jn                    ; 5 uses
  store i64 %i.mc, ptr %11, align 8, !tbaa !166, !noalias !378
  store ptr %i.jm, ptr %i.jo, align 8, !tbaa !167, !noalias !378
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  store ptr %i.jp, ptr %10, align 8, !tbaa !40, !alias.scope !391, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !392
  store i64 %i.mc, ptr %i.a, align 8, !tbaa !41, !noalias !392
  %i.md = icmp ugt i64 %i.mc, 15
  br i1 %i.md, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.cn
  %i.me = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc131.i.i unwind label %bb.di, !noalias !378 ; 2 uses

.noexc131.i.i:                                    ; preds = %.noexc.i.i.i.i
  store ptr %i.me, ptr %10, align 8, !tbaa !38, !alias.scope !391, !noalias !378
  %i.mf = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !392
  store i64 %i.mf, ptr %i.jp, align 8, !tbaa !42, !alias.scope !391, !noalias !378
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc131.i.i, %bb.cn
  %i.mg = phi ptr [ %i.me, %.noexc131.i.i ], [ %i.jp, %bb.cn ] ; 2 uses
  switch i64 %i.mc, label %bb.cp [
    i64 1, label %bb.co
    i64 0, label %bb.cq
  ]

bb.co:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.mh = load i8, ptr %i.jm, align 8, !tbaa !42, !noalias !378
  store i8 %i.mh, ptr %i.mg, align 1, !tbaa !42, !noalias !378
  br label %bb.cq

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mg, ptr nonnull align 8 %i.jm, i64 %i.mc, i1 false), !noalias !378
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %._crit_edge.i.i.i.i.i
  %i.mi = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !392 ; 2 uses
  store i64 %i.mi, ptr %i.jq, align 8, !tbaa !39, !alias.scope !391, !noalias !378
  %i.mj = load ptr, ptr %10, align 8, !tbaa !38, !alias.scope !391, !noalias !378
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mi
  store i8 0, ptr %i.mk, align 1, !tbaa !42, !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !378
  %i.ml = load ptr, ptr %10, align 8, !tbaa !38, !noalias !378 ; 8 uses
  %i.mm = ptrtoaddr ptr %i.ml to i64
  %i.mn = load i64, ptr %i.jq, align 8, !tbaa !39, !noalias !378 ; 13 uses
  %.not.i132.i.i = icmp samesign eq i64 %i.mn, 0
  %.pre343.i.i.a = load i64, ptr %9, align 8, !tbaa !41, !noalias !378 ; 3 uses
  %.pre345.i.i = load ptr, ptr %i.jl, align 8, !noalias !378 ; 2 uses
  br i1 %.not.i132.i.i, label %_ZN4absl12lts_2025051213InlinedVectorIcLm196ESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPcS8_SG_SG_.exit.i.i, label %bb.cr, !prof !63

bb.cr:                                            ; preds = %bb.cq
  %i.mo = trunc i64 %.pre343.i.i.a to i1          ; 2 uses
  %i.mp = load i64, ptr %i.jk, align 8, !noalias !393
  %.sink2.i.i.i.i = select i1 %i.mo, ptr %.pre345.i.i, ptr %i.jl ; 13 uses
  %.sink.i.i.i.i = select i1 %i.mo, i64 %i.mp, i64 196 ; 2 uses
  %.sink1.i.i.i.i = lshr i64 %.pre343.i.i.a, 1    ; 7 uses
  %i.mq = ptrtoint ptr %.sink2.i.i.i.i to i64     ; 5 uses
  %i.mr = sub i64 %i.lv, %i.mq                    ; 13 uses
  %i.ms = add i64 %i.mr, %i.mn                    ; 5 uses
  %i.mt = add i64 %.sink1.i.i.i.i, %i.mn          ; 5 uses
  %i.mu = icmp ugt i64 %i.mt, %.sink.i.i.i.i
  br i1 %i.mu, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.mv = shl i64 %.sink.i.i.i.i, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.mv, i64 %i.mt) ; 3 uses
  %i.mw = icmp slt i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.mw, label %.noexc.i162.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i, !prof !63

.noexc.i162.i.i:                                  ; preds = %bb.cs
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc163.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !378

.noexc163.i.i:                                    ; preds = %.noexc.i162.i.i
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i: ; preds = %bb.cs
  %i.mx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated.i.i.i.i) #33
          to label %.lr.ph.i.i.preheader.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !378 ; 8 uses

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i.i.i.i
  %i.my = ptrtoaddr ptr %i.mx to i64              ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mx, i64 %i.mr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mz, ptr align 1 %i.ml, i64 %i.mn, i1 false), !tbaa !42, !noalias !378
  %.not.i.i53.i.i.i = icmp eq ptr %i.lp, %.sink2.i.i.i.i
  br i1 %.not.i.i53.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %iter.check624

iter.check624:                                    ; preds = %.lr.ph.i.i.preheader.i.i.i
  %min.iters.check610 = icmp ult i64 %i.mr, 4
  %i.na = sub i64 %i.mq, %i.my
  %diff.check609 = icmp ugt i64 %i.na, -32
  %or.cond = or i1 %min.iters.check610, %diff.check609
  br i1 %or.cond, label %.lr.ph.i.i56.i.i.i.preheader, label %vector.main.loop.iter.check611

vector.main.loop.iter.check611:                   ; preds = %iter.check624
  %min.iters.check612 = icmp ult i64 %i.mr, 32
  br i1 %min.iters.check612, label %vec.epilog.ph628, label %vector.ph613

vector.ph613:                                     ; preds = %vector.main.loop.iter.check611
  %i.nb = and i64 %i.mr, 28
  %n.vec614 = and i64 %i.mr, -32                  ; 5 uses
  %i.nc = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %n.vec614 ; 2 uses
  br label %vector.body615

vector.body615:                                   ; preds = %vector.ph613, %vector.body615
  %index616 = phi i64 [ 0, %vector.ph613 ], [ %index.next620, %vector.body615 ] ; 3 uses
  %next.gep617 = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %index616 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 %index616 ; 2 uses
  %i.ne = getelementptr i8, ptr %next.gep617, i64 16
  %wide.load618 = load <16 x i8>, ptr %next.gep617, align 1, !tbaa !42, !noalias !378
  %wide.load619 = load <16 x i8>, ptr %i.ne, align 1, !tbaa !42, !noalias !378
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store <16 x i8> %wide.load618, ptr %i.nd, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load619, ptr %i.nf, align 1, !tbaa !42, !noalias !378
  %index.next620 = add nuw i64 %index616, 32      ; 2 uses
  %i.ng = icmp eq i64 %index.next620, %n.vec614
  br i1 %i.ng, label %middle.block621, label %vector.body615, !llvm.loop !324

middle.block621:                                  ; preds = %vector.body615
  %cmp.n622 = icmp eq i64 %i.mr, %n.vec614
  br i1 %cmp.n622, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %vec.epilog.iter.check626

vec.epilog.iter.check626:                         ; preds = %middle.block621
  %min.epilog.iters.check627 = icmp eq i64 %i.nb, 0
  br i1 %min.epilog.iters.check627, label %.lr.ph.i.i56.i.i.i.preheader, label %vec.epilog.ph628, !prof !170

vec.epilog.ph628:                                 ; preds = %vector.main.loop.iter.check611, %vec.epilog.iter.check626
  %vec.epilog.resume.val623 = phi i64 [ %n.vec614, %vec.epilog.iter.check626 ], [ 0, %vector.main.loop.iter.check611 ]
  %n.vec629 = and i64 %i.mr, -4                   ; 4 uses
  %i.nh = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %n.vec629 ; 2 uses
  br label %vec.epilog.vector.body630

vec.epilog.vector.body630:                        ; preds = %vec.epilog.vector.body630, %vec.epilog.ph628
  %index631 = phi i64 [ %vec.epilog.resume.val623, %vec.epilog.ph628 ], [ %index.next634, %vec.epilog.vector.body630 ] ; 3 uses
  %next.gep632 = getelementptr i8, ptr %.sink2.i.i.i.i, i64 %index631
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mx, i64 %index631
  %wide.load633 = load <4 x i8>, ptr %next.gep632, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load633, ptr %i.ni, align 1, !tbaa !42, !noalias !378
  %index.next634 = add nuw i64 %index631, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next634, %n.vec629
  br i1 %i.nj, label %vec.epilog.middle.block635, label %vec.epilog.vector.body630, !llvm.loop !325

vec.epilog.middle.block635:                       ; preds = %vec.epilog.vector.body630
  %cmp.n636 = icmp eq i64 %i.mr, %n.vec629
  br i1 %cmp.n636, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %.lr.ph.i.i56.i.i.i.preheader

.lr.ph.i.i56.i.i.i.preheader:                     ; preds = %iter.check624, %vec.epilog.iter.check626, %vec.epilog.middle.block635
  %.sroa.094.0.i.i.i.ph = phi ptr [ %.sink2.i.i.i.i, %iter.check624 ], [ %i.nc, %vec.epilog.iter.check626 ], [ %i.nh, %vec.epilog.middle.block635 ]
  %.012.i.i.i.i.i.ph = phi i64 [ 0, %iter.check624 ], [ %n.vec614, %vec.epilog.iter.check626 ], [ %n.vec629, %vec.epilog.middle.block635 ]
  br label %.lr.ph.i.i56.i.i.i

.lr.ph.i.i56.i.i.i:                               ; preds = %.lr.ph.i.i56.i.i.i.preheader, %.lr.ph.i.i56.i.i.i
  %.sroa.094.0.i.i.i = phi ptr [ %i.nm, %.lr.ph.i.i56.i.i.i ], [ %.sroa.094.0.i.i.i.ph, %.lr.ph.i.i56.i.i.i.preheader ] ; 2 uses
  %.012.i.i.i.i.i = phi i64 [ %i.nn, %.lr.ph.i.i56.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i56.i.i.i.preheader ] ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.012.i.i.i.i.i
  %i.nl = load i8, ptr %.sroa.094.0.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.nl, ptr %i.nk, align 1, !tbaa !42, !noalias !378
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.094.0.i.i.i, i64 1 ; 2 uses
  %i.nn = add nuw i64 %.012.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i57.i.i.i = icmp eq i64 %i.nn, %i.mr
  br i1 %exitcond.not.i.i57.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i, label %.lr.ph.i.i56.i.i.i, !llvm.loop !326

_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i: ; preds = %.lr.ph.i.i56.i.i.i, %middle.block621, %vec.epilog.middle.block635, %.lr.ph.i.i.preheader.i.i.i
  %.sroa.094.1.i.i.i = phi ptr [ %.sink2.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %i.nh, %vec.epilog.middle.block635 ], [ %i.nc, %middle.block621 ], [ %i.nm, %.lr.ph.i.i56.i.i.i ] ; 7 uses
  %.sroa.094.1.i.i.i597 = ptrtoaddr ptr %.sroa.094.1.i.i.i to i64
  %i.no = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.ms ; 3 uses
  %i.np = sub i64 %.sink1.i.i.i.i, %i.mr          ; 8 uses
  %.not.i.i160.i.i = icmp eq i64 %.sink1.i.i.i.i, %i.mr
  br i1 %.not.i.i160.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i
  %min.iters.check = icmp ult i64 %i.np, 4
  br i1 %min.iters.check, label %.lr.ph.i.i161.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.nq = add i64 %i.mn, %i.lv
  %i.nr = add i64 %i.nq, %i.my
  %i.ns = add i64 %i.mq, %.sroa.094.1.i.i.i597
  %i.nt = sub i64 %i.ns, %i.nr
  %diff.check = icmp ugt i64 %i.nt, -32
  br i1 %diff.check, label %.lr.ph.i.i161.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check598 = icmp ult i64 %i.np, 32
  br i1 %min.iters.check598, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nu = and i64 %i.np, 28
  %n.vec = and i64 %i.np, -32                     ; 5 uses
  %i.nv = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %index ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.no, i64 %index ; 2 uses
  %i.nx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !42, !noalias !378
  %wide.load599 = load <16 x i8>, ptr %i.nx, align 1, !tbaa !42, !noalias !378
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store <16 x i8> %wide.load, ptr %i.nw, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load599, ptr %i.ny, align 1, !tbaa !42, !noalias !378
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.nz = icmp eq i64 %index.next, %n.vec
  br i1 %i.nz, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.np, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i161.i.i.preheader, label %vec.epilog.ph, !prof !170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec600 = and i64 %i.np, -4                   ; 4 uses
  %i.oa = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %n.vec600
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index601 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next604, %vec.epilog.vector.body ] ; 3 uses
  %next.gep602 = getelementptr i8, ptr %.sroa.094.1.i.i.i, i64 %index601
  %i.ob = getelementptr inbounds nuw i8, ptr %i.no, i64 %index601
  %wide.load603 = load <4 x i8>, ptr %next.gep602, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load603, ptr %i.ob, align 1, !tbaa !42, !noalias !378
  %index.next604 = add nuw i64 %index601, 4       ; 2 uses
  %i.oc = icmp eq i64 %index.next604, %n.vec600
  br i1 %i.oc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !328

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n605 = icmp eq i64 %i.np, %n.vec600
  br i1 %cmp.n605, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %.lr.ph.i.i161.i.i.preheader

.lr.ph.i.i161.i.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.094.2.i.i.i.ph = phi ptr [ %.sroa.094.1.i.i.i, %iter.check ], [ %.sroa.094.1.i.i.i, %vector.memcheck ], [ %i.nv, %vec.epilog.iter.check ], [ %i.oa, %vec.epilog.middle.block ]
  %.012.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec600, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i161.i.i

.lr.ph.i.i161.i.i:                                ; preds = %.lr.ph.i.i161.i.i.preheader, %.lr.ph.i.i161.i.i
  %.sroa.094.2.i.i.i = phi ptr [ %i.of, %.lr.ph.i.i161.i.i ], [ %.sroa.094.2.i.i.i.ph, %.lr.ph.i.i161.i.i.preheader ] ; 2 uses
  %.012.i.i.i.i = phi i64 [ %i.og, %.lr.ph.i.i161.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i161.i.i.preheader ] ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.no, i64 %.012.i.i.i.i
  %i.oe = load i8, ptr %.sroa.094.2.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.oe, ptr %i.od, align 1, !tbaa !42, !noalias !378
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.094.2.i.i.i, i64 1
  %i.og = add nuw i64 %.012.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.og, %i.np
  br i1 %exitcond.not.i.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i, label %.lr.ph.i.i161.i.i, !llvm.loop !329

_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i: ; preds = %.lr.ph.i.i161.i.i, %middle.block, %vec.epilog.middle.block, %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit.i.i.i
  %i.oh = load i64, ptr %9, align 8, !tbaa !41, !noalias !378
  %i.oi = trunc i64 %i.oh to i1
  br i1 %i.oi, label %bb.ct, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i

bb.ct:                                            ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i
  %i.oj = load ptr, ptr %i.jl, align 8, !tbaa !42, !noalias !378
  %i.ok = load i64, ptr %i.jk, align 8, !tbaa !42, !noalias !378
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.ok) #35, !noalias !378
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit.i.i.i: ; preds = %bb.ct, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.i.i.i
  store ptr %i.mx, ptr %i.jl, align 8, !tbaa !42, !noalias !378
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.jk, align 8, !tbaa !42, !noalias !378
  %i.ol = shl i64 %i.mt, 1
  %i.om = or disjoint i64 %i.ol, 1
  br label %.noexc134.i.i

bb.cu:                                            ; preds = %bb.cr
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ms, i64 %.sink1.i.i.i.i) ; 11 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %.sroa.speculated.i.i.i ; 3 uses
  %i.oo = sub i64 %i.mt, %.sroa.speculated.i.i.i  ; 19 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.mr ; 5 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.ms
  %i.or = sub nuw i64 %.sroa.speculated.i.i.i, %i.ms
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.oo ; 7 uses
  %i.ot = sub i64 %i.mn, %i.oo                    ; 8 uses
  %.not.i.i61.i.i.i = icmp eq i64 %i.mt, %.sroa.speculated.i.i.i ; 2 uses
  br i1 %.not.i.i61.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %iter.check752

iter.check752:                                    ; preds = %bb.cu
  %i.ou = sub i64 %.sroa.speculated.i.i.i, %i.mn
  %i.ov = getelementptr inbounds nuw i8, ptr %.sink2.i.i.i.i, i64 %i.ou ; 5 uses
  %min.iters.check738 = icmp ult i64 %i.oo, 4
  %diff.check737 = icmp ult i64 %i.mn, 32
  %or.cond767 = or i1 %min.iters.check738, %diff.check737
  br i1 %or.cond767, label %.lr.ph.i.i64.i.i.i.preheader, label %vector.main.loop.iter.check739

vector.main.loop.iter.check739:                   ; preds = %iter.check752
  %min.iters.check740 = icmp ult i64 %i.oo, 32
  br i1 %min.iters.check740, label %vec.epilog.ph756, label %vector.ph741

vector.ph741:                                     ; preds = %vector.main.loop.iter.check739
  %i.ow = and i64 %i.oo, 28
  %n.vec742 = and i64 %i.oo, -32                  ; 5 uses
  %i.ox = getelementptr i8, ptr %i.ov, i64 %n.vec742
  br label %vector.body743

vector.body743:                                   ; preds = %vector.ph741, %vector.body743
  %index744 = phi i64 [ 0, %vector.ph741 ], [ %index.next748, %vector.body743 ] ; 3 uses
  %next.gep745 = getelementptr i8, ptr %i.ov, i64 %index744 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.on, i64 %index744 ; 2 uses
  %i.oz = getelementptr i8, ptr %next.gep745, i64 16
  %wide.load746 = load <16 x i8>, ptr %next.gep745, align 1, !tbaa !42, !noalias !378
  %wide.load747 = load <16 x i8>, ptr %i.oz, align 1, !tbaa !42, !noalias !378
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store <16 x i8> %wide.load746, ptr %i.oy, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load747, ptr %i.pa, align 1, !tbaa !42, !noalias !378
  %index.next748 = add nuw i64 %index744, 32      ; 2 uses
  %i.pb = icmp eq i64 %index.next748, %n.vec742
  br i1 %i.pb, label %middle.block749, label %vector.body743, !llvm.loop !330

middle.block749:                                  ; preds = %vector.body743
  %cmp.n750 = icmp eq i64 %i.oo, %n.vec742
  br i1 %cmp.n750, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %vec.epilog.iter.check754

vec.epilog.iter.check754:                         ; preds = %middle.block749
  %min.epilog.iters.check755 = icmp eq i64 %i.ow, 0
  br i1 %min.epilog.iters.check755, label %.lr.ph.i.i64.i.i.i.preheader, label %vec.epilog.ph756, !prof !170

vec.epilog.ph756:                                 ; preds = %vector.main.loop.iter.check739, %vec.epilog.iter.check754
  %vec.epilog.resume.val751 = phi i64 [ %n.vec742, %vec.epilog.iter.check754 ], [ 0, %vector.main.loop.iter.check739 ]
  %n.vec757 = and i64 %i.oo, -4                   ; 4 uses
  %i.pc = getelementptr i8, ptr %i.ov, i64 %n.vec757
  br label %vec.epilog.vector.body758

vec.epilog.vector.body758:                        ; preds = %vec.epilog.vector.body758, %vec.epilog.ph756
  %index759 = phi i64 [ %vec.epilog.resume.val751, %vec.epilog.ph756 ], [ %index.next762, %vec.epilog.vector.body758 ] ; 3 uses
  %next.gep760 = getelementptr i8, ptr %i.ov, i64 %index759
  %i.pd = getelementptr inbounds nuw i8, ptr %i.on, i64 %index759
  %wide.load761 = load <4 x i8>, ptr %next.gep760, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load761, ptr %i.pd, align 1, !tbaa !42, !noalias !378
  %index.next762 = add nuw i64 %index759, 4       ; 2 uses
  %i.pe = icmp eq i64 %index.next762, %n.vec757
  br i1 %i.pe, label %vec.epilog.middle.block763, label %vec.epilog.vector.body758, !llvm.loop !331

vec.epilog.middle.block763:                       ; preds = %vec.epilog.vector.body758
  %cmp.n764 = icmp eq i64 %i.oo, %n.vec757
  br i1 %cmp.n764, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %.lr.ph.i.i64.i.i.i.preheader

.lr.ph.i.i64.i.i.i.preheader:                     ; preds = %iter.check752, %vec.epilog.iter.check754, %vec.epilog.middle.block763
  %.sroa.090.0.i.i.i.ph = phi ptr [ %i.ov, %iter.check752 ], [ %i.ox, %vec.epilog.iter.check754 ], [ %i.pc, %vec.epilog.middle.block763 ]
  %.012.i.i65.i.i.i.ph = phi i64 [ 0, %iter.check752 ], [ %n.vec742, %vec.epilog.iter.check754 ], [ %n.vec757, %vec.epilog.middle.block763 ]
  br label %.lr.ph.i.i64.i.i.i

.lr.ph.i.i64.i.i.i:                               ; preds = %.lr.ph.i.i64.i.i.i.preheader, %.lr.ph.i.i64.i.i.i
  %.sroa.090.0.i.i.i = phi ptr [ %i.ph, %.lr.ph.i.i64.i.i.i ], [ %.sroa.090.0.i.i.i.ph, %.lr.ph.i.i64.i.i.i.preheader ] ; 2 uses
  %.012.i.i65.i.i.i = phi i64 [ %i.pi, %.lr.ph.i.i64.i.i.i ], [ %.012.i.i65.i.i.i.ph, %.lr.ph.i.i64.i.i.i.preheader ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.on, i64 %.012.i.i65.i.i.i
  %i.pg = load i8, ptr %.sroa.090.0.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.pg, ptr %i.pf, align 1, !tbaa !42, !noalias !378
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.090.0.i.i.i, i64 1
  %i.pi = add nuw i64 %.012.i.i65.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i66.i.i.i = icmp eq i64 %i.pi, %i.oo
  br i1 %exitcond.not.i.i66.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i, label %.lr.ph.i.i64.i.i.i, !llvm.loop !332

_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i: ; preds = %.lr.ph.i.i64.i.i.i, %middle.block749, %vec.epilog.middle.block763, %bb.cu
  %40 = add nsw i64 %.sroa.speculated.i.i.i, -1   ; 2 uses
  %41 = icmp slt i64 %40, %i.ms
  br i1 %41, label %._crit_edge.i.i.i, label %iter.check720

iter.check720:                                    ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i
  %i.pj = getelementptr inbounds i8, ptr %.sink2.i.i.i.i, i64 %40 ; 5 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.or ; 5 uses
  %i.pl = add i64 %i.mq, -1
  %i.pm = add i64 %i.pl, %.sroa.speculated.i.i.i
  %i.pn = add i64 %i.lz, %i.mn
  %i.po = add i64 %i.mq, -2
  %i.pp = add i64 %i.po, %.sroa.speculated.i.i.i
  %umin = call i64 @llvm.umin.i64(i64 %i.pn, i64 %i.pp)
  %i.pq = sub i64 %i.pm, %umin                    ; 7 uses
  %min.iters.check704 = icmp ult i64 %i.pq, 8
  %.reass = add i64 %i.mn, %invariant.op
  %diff.check703 = icmp ugt i64 %.reass, -32
  %or.cond890 = select i1 %min.iters.check704, i1 true, i1 %diff.check703
  br i1 %or.cond890, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check705

vector.main.loop.iter.check705:                   ; preds = %iter.check720
  %min.iters.check706 = icmp ult i64 %i.pq, 32
  br i1 %min.iters.check706, label %vec.epilog.ph724, label %vector.ph707

vector.ph707:                                     ; preds = %vector.main.loop.iter.check705
  %i.pr = and i64 %i.pq, 24
  %n.vec708 = and i64 %i.pq, -32                  ; 4 uses
  %i.ps = sub i64 0, %n.vec708                    ; 2 uses
  %i.pt = getelementptr i8, ptr %i.pj, i64 %i.ps
  %i.pu = getelementptr i8, ptr %i.pk, i64 %i.ps
  br label %vector.body709

vector.body709:                                   ; preds = %vector.ph707, %vector.body709
  %index710 = phi i64 [ 0, %vector.ph707 ], [ %index.next715, %vector.body709 ] ; 2 uses
  %i.pv = sub i64 0, %index710                    ; 2 uses
  %next.gep711 = getelementptr i8, ptr %i.pj, i64 %i.pv ; 2 uses
  %next.gep712 = getelementptr i8, ptr %i.pk, i64 %i.pv ; 2 uses
  %i.pw = getelementptr inbounds i8, ptr %next.gep712, i64 -16
  %i.px = getelementptr inbounds i8, ptr %next.gep712, i64 -32
  %wide.load713 = load <16 x i8>, ptr %i.pw, align 1, !tbaa !42, !noalias !378
  %wide.load714 = load <16 x i8>, ptr %i.px, align 1, !tbaa !42, !noalias !378
  %i.py = getelementptr i8, ptr %next.gep711, i64 -15
  %i.pz = getelementptr i8, ptr %next.gep711, i64 -31
  store <16 x i8> %wide.load713, ptr %i.py, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load714, ptr %i.pz, align 1, !tbaa !42, !noalias !378
  %index.next715 = add nuw i64 %index710, 32      ; 2 uses
  %i.qa = icmp eq i64 %index.next715, %n.vec708
  br i1 %i.qa, label %middle.block716, label %vector.body709, !llvm.loop !333

middle.block716:                                  ; preds = %vector.body709
  %cmp.n717 = icmp eq i64 %i.pq, %n.vec708
  br i1 %cmp.n717, label %._crit_edge.i.i.i, label %vec.epilog.iter.check722

vec.epilog.iter.check722:                         ; preds = %middle.block716
  %min.epilog.iters.check723 = icmp eq i64 %i.pr, 0
  br i1 %min.epilog.iters.check723, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph724, !prof !394

vec.epilog.ph724:                                 ; preds = %vector.main.loop.iter.check705, %vec.epilog.iter.check722
  %vec.epilog.resume.val718 = phi i64 [ %n.vec708, %vec.epilog.iter.check722 ], [ 0, %vector.main.loop.iter.check705 ]
  %n.vec725 = and i64 %i.pq, -8                   ; 3 uses
  %i.qb = sub i64 0, %n.vec725                    ; 2 uses
  %i.qc = getelementptr i8, ptr %i.pj, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.pk, i64 %i.qb
  br label %vec.epilog.vector.body726

vec.epilog.vector.body726:                        ; preds = %vec.epilog.vector.body726, %vec.epilog.ph724
  %index727 = phi i64 [ %vec.epilog.resume.val718, %vec.epilog.ph724 ], [ %index.next731, %vec.epilog.vector.body726 ] ; 2 uses
  %i.qe = sub i64 0, %index727                    ; 2 uses
  %next.gep728 = getelementptr i8, ptr %i.pj, i64 %i.qe
  %next.gep729 = getelementptr i8, ptr %i.pk, i64 %i.qe
  %i.qf = getelementptr inbounds i8, ptr %next.gep729, i64 -8
  %wide.load730 = load <8 x i8>, ptr %i.qf, align 1, !tbaa !42, !noalias !378
  %i.qg = getelementptr i8, ptr %next.gep728, i64 -7
  store <8 x i8> %wide.load730, ptr %i.qg, align 1, !tbaa !42, !noalias !378
  %index.next731 = add nuw i64 %index727, 8       ; 2 uses
  %i.qh = icmp eq i64 %index.next731, %n.vec725
  br i1 %i.qh, label %vec.epilog.middle.block732, label %vec.epilog.vector.body726, !llvm.loop !334

vec.epilog.middle.block732:                       ; preds = %vec.epilog.vector.body726
  %cmp.n733 = icmp eq i64 %i.pq, %n.vec725
  br i1 %cmp.n733, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check720, %vec.epilog.iter.check722, %vec.epilog.middle.block732
  %.ph = phi ptr [ %i.pj, %iter.check720 ], [ %i.qc, %vec.epilog.middle.block732 ], [ %i.pt, %vec.epilog.iter.check722 ]
  %.0126.i.i.i.ph = phi ptr [ %i.pk, %iter.check720 ], [ %i.qd, %vec.epilog.middle.block732 ], [ %i.pu, %vec.epilog.iter.check722 ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block716, %vec.epilog.middle.block732, %_ZN4absl12lts_2025051223inlined_vector_internal23ConstructionTransactionISaIcEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvS8_RT_m.exit67.i.i.i
  br i1 %.not.i.i61.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %iter.check687

iter.check687:                                    ; preds = %._crit_edge.i.i.i
  %min.iters.check673 = icmp ult i64 %i.oo, 4
  %i.qi = sub i64 %i.mm, %i.lx
  %diff.check672 = icmp ugt i64 %i.qi, -32
  %or.cond768 = select i1 %min.iters.check673, i1 true, i1 %diff.check672
  br i1 %or.cond768, label %.lr.ph.i71.i.i.i.preheader, label %vector.main.loop.iter.check674

vector.main.loop.iter.check674:                   ; preds = %iter.check687
  %min.iters.check675 = icmp ult i64 %i.oo, 32
  br i1 %min.iters.check675, label %vec.epilog.ph691, label %vector.ph676

vector.ph676:                                     ; preds = %vector.main.loop.iter.check674
  %i.qj = and i64 %i.oo, 28
  %n.vec677 = and i64 %i.oo, -32                  ; 5 uses
  %i.qk = getelementptr i8, ptr %i.ml, i64 %n.vec677 ; 2 uses
  br label %vector.body678

vector.body678:                                   ; preds = %vector.ph676, %vector.body678
  %index679 = phi i64 [ 0, %vector.ph676 ], [ %index.next683, %vector.body678 ] ; 3 uses
  %next.gep680 = getelementptr i8, ptr %i.ml, i64 %index679 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.op, i64 %index679 ; 2 uses
  %i.qm = getelementptr i8, ptr %next.gep680, i64 16
  %wide.load681 = load <16 x i8>, ptr %next.gep680, align 1, !tbaa !42, !noalias !378
  %wide.load682 = load <16 x i8>, ptr %i.qm, align 1, !tbaa !42, !noalias !378
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  store <16 x i8> %wide.load681, ptr %i.ql, align 1, !tbaa !42, !noalias !378
  store <16 x i8> %wide.load682, ptr %i.qn, align 1, !tbaa !42, !noalias !378
  %index.next683 = add nuw i64 %index679, 32      ; 2 uses
  %i.qo = icmp eq i64 %index.next683, %n.vec677
  br i1 %i.qo, label %middle.block684, label %vector.body678, !llvm.loop !335

middle.block684:                                  ; preds = %vector.body678
  %cmp.n685 = icmp eq i64 %i.oo, %n.vec677
  br i1 %cmp.n685, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %vec.epilog.iter.check689

vec.epilog.iter.check689:                         ; preds = %middle.block684
  %min.epilog.iters.check690 = icmp eq i64 %i.qj, 0
  br i1 %min.epilog.iters.check690, label %.lr.ph.i71.i.i.i.preheader, label %vec.epilog.ph691, !prof !170

vec.epilog.ph691:                                 ; preds = %vector.main.loop.iter.check674, %vec.epilog.iter.check689
  %vec.epilog.resume.val686 = phi i64 [ %n.vec677, %vec.epilog.iter.check689 ], [ 0, %vector.main.loop.iter.check674 ]
  %n.vec692 = and i64 %i.oo, -4                   ; 4 uses
  %i.qp = getelementptr i8, ptr %i.ml, i64 %n.vec692 ; 2 uses
  br label %vec.epilog.vector.body693

vec.epilog.vector.body693:                        ; preds = %vec.epilog.vector.body693, %vec.epilog.ph691
  %index694 = phi i64 [ %vec.epilog.resume.val686, %vec.epilog.ph691 ], [ %index.next697, %vec.epilog.vector.body693 ] ; 3 uses
  %next.gep695 = getelementptr i8, ptr %i.ml, i64 %index694
  %i.qq = getelementptr inbounds nuw i8, ptr %i.op, i64 %index694
  %wide.load696 = load <4 x i8>, ptr %next.gep695, align 1, !tbaa !42, !noalias !378
  store <4 x i8> %wide.load696, ptr %i.qq, align 1, !tbaa !42, !noalias !378
  %index.next697 = add nuw i64 %index694, 4       ; 2 uses
  %i.qr = icmp eq i64 %index.next697, %n.vec692
  br i1 %i.qr, label %vec.epilog.middle.block698, label %vec.epilog.vector.body693, !llvm.loop !336

vec.epilog.middle.block698:                       ; preds = %vec.epilog.vector.body693
  %cmp.n699 = icmp eq i64 %i.oo, %n.vec692
  br i1 %cmp.n699, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %.lr.ph.i71.i.i.i.preheader

.lr.ph.i71.i.i.i.preheader:                       ; preds = %iter.check687, %vec.epilog.iter.check689, %vec.epilog.middle.block698
  %.sroa.0122.1.i.i.i.ph = phi ptr [ %i.ml, %iter.check687 ], [ %i.qk, %vec.epilog.iter.check689 ], [ %i.qp, %vec.epilog.middle.block698 ]
  %.05.i.i.i.i117.ph = phi i64 [ 0, %iter.check687 ], [ %n.vec677, %vec.epilog.iter.check689 ], [ %n.vec692, %vec.epilog.middle.block698 ]
  br label %.lr.ph.i71.i.i.i

.lr.ph.i71.i.i.i:                                 ; preds = %.lr.ph.i71.i.i.i.preheader, %.lr.ph.i71.i.i.i
  %.sroa.0122.1.i.i.i = phi ptr [ %i.qu, %.lr.ph.i71.i.i.i ], [ %.sroa.0122.1.i.i.i.ph, %.lr.ph.i71.i.i.i.preheader ] ; 2 uses
  %.05.i.i.i.i117 = phi i64 [ %i.qv, %.lr.ph.i71.i.i.i ], [ %.05.i.i.i.i117.ph, %.lr.ph.i71.i.i.i.preheader ] ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.op, i64 %.05.i.i.i.i117
  %i.qt = load i8, ptr %.sroa.0122.1.i.i.i, align 1, !tbaa !42, !noalias !378
  store i8 %i.qt, ptr %i.qs, align 1, !tbaa !42, !noalias !378
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0122.1.i.i.i, i64 1 ; 2 uses
  %i.qv = add nuw i64 %.05.i.i.i.i117, 1          ; 2 uses
  %exitcond.not.i72.i.i.i = icmp eq i64 %i.qv, %i.oo
  br i1 %exitcond.not.i72.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i, label %.lr.ph.i71.i.i.i, !llvm.loop !337

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.qw = phi ptr [ %i.qz, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0126.i.i.i = phi ptr [ %i.qx, %.lr.ph.i.i.i ], [ %.0126.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.qx = getelementptr inbounds i8, ptr %.0126.i.i.i, i64 -1 ; 2 uses
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !42, !noalias !378
  store i8 %i.qy, ptr %i.qw, align 1, !tbaa !42, !noalias !378
  %i.qz = getelementptr inbounds i8, ptr %i.qw, i64 -1 ; 2 uses
  %i.ra = icmp ult ptr %i.qz, %i.oq
  br i1 %i.ra, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !338

_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i: ; preds = %.lr.ph.i71.i.i.i, %middle.block684, %vec.epilog.middle.block698, %._crit_edge.i.i.i
  %.sroa.0122.2.i.i.i = phi ptr [ %i.ml, %._crit_edge.i.i.i ], [ %i.qp, %vec.epilog.middle.block698 ], [ %i.qk, %middle.block684 ], [ %i.qu, %.lr.ph.i71.i.i.i ] ; 7 uses
  %.sroa.0122.2.i.i.i640 = ptrtoaddr ptr %.sroa.0122.2.i.i.i to i64
  %.not.i73.i.i.i = icmp eq i64 %i.mn, %i.oo
  br i1 %.not.i73.i.i.i, label %.loopexit.i.i.i, label %iter.check656

iter.check656:                                    ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit.i.i.i
  %min.iters.check642 = icmp ult i64 %i.ot, 4
  br i1 %min.iters.check642, label %.lr.ph.i76.i.i.i.preheader, label %vector.memcheck639

vector.memcheck639:                               ; preds = %iter.check656
  %i.rb = add i64 %i.lw, %i.mn
  %i.rc = add i64 %i.rb, %.sink1.i.i.i.i
  %i.rd = add i64 %.sroa.speculated.i.i.i, %.sroa.0122.2.i.i.i640
  %i.re = sub i64 %i.rd, %i.rc
  %diff.check641 = icmp ugt i64 %i.re, -32
  br i1 %diff.check641, label %.lr.ph.i76.i.i.i.preheader, label %vector.main.loop.iter.check643

vector.main.loop.iter.check643:                   ; preds = %vector.memcheck639
  %min.iters.check644 = icmp ult i64 %i.ot, 32
  br i1 %min.iters.check644, label %vec.epilog.ph660, label %vector.ph645

vector.ph645:                                     ; preds = %vector.main.loop.iter.check643
  %i.rf = and i64 %i.ot, 28
  %n.vec646 = and i64 %i.ot, -32                  ; 5 uses
  %i.rg = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %n.vec646
  br label %vector.body647

vector.body647:                                   ; preds = %vector.ph645, %vector.body647
  %index648 = phi i64 [ 0, %vector.ph645 ], [ %index.next652, %vector.body647 ] ; 3 uses
  %next.gep649 = getelementptr i8, ptr %.sroa.0122.2.i.i.i, i64 %index648 ; 2 uses
end_hunk_0
