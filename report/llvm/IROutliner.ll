Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IROutliner?download=true
inline.NumInlined: 7896
inline.NumDeleted: 3677
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4llvm10IROutliner9doOutlineERNS_6ModuleE:bb.a
  %i.vd = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.vg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.vh = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.vi = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.vo = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.vs = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.vt = getelementptr inbounds nuw i8, ptr %23, i64 24
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93

._crit_edge534:                                   ; preds = %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread
  %.pre581 = load ptr, ptr %19, align 8, !tbaa !1760 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.pre582 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1760 ; 2 uses
  %i.vu = ptrtoint ptr %.sroa.50.12 to i64
  %.not411537 = icmp eq ptr %.pre581, %.pre582
  br i1 %.not411537, label %._crit_edge541, label %.lr.ph540

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93: ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93.lr.ph, %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread
  %.sroa.0316.0533 = phi ptr [ %.sroa.0378.0.lcssa, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93.lr.ph ], [ %i.anx, %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread ] ; 2 uses
  %.sroa.0340.5532 = phi ptr [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93.lr.ph ], [ %.sroa.0340.12, %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread ] ; 4 uses
  %.sroa.25.5531 = phi ptr [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93.lr.ph ], [ %.sroa.25.12, %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread ] ; 2 uses
  %.sroa.50.5530 = phi ptr [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93.lr.ph ], [ %.sroa.50.12, %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread ] ; 2 uses
  %i.vv = load ptr, ptr %.sroa.0316.0533, align 8, !tbaa !554 ; 25 uses
  %.not.i.i92 = icmp eq ptr %.sroa.25.5531, %.sroa.0340.5532
  %spec.select408 = select i1 %.not.i.i92, ptr %.sroa.25.5531, ptr %.sroa.0340.5532 ; 2 uses
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !213 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 8 ; 9 uses
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !213 ; 2 uses
  %.not412490 = icmp eq ptr %i.vw, %i.vy
  br i1 %.not412490, label %._crit_edge496, label %.lr.ph495

._crit_edge496:                                   ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93
  %.sroa.50.6.lcssa = phi ptr [ %.sroa.50.5530, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93 ], [ %.sroa.50.7, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101 ] ; 2 uses
  %.sroa.25.6.lcssa = phi ptr [ %spec.select408, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93 ], [ %.sroa.25.7, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101 ] ; 3 uses
  %.sroa.0340.6.lcssa = phi ptr [ %.sroa.0340.5532, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93 ], [ %.sroa.0340.7, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101 ] ; 3 uses
  %i.vz = ptrtoint ptr %.sroa.25.6.lcssa to i64
  %i.wa = ptrtoint ptr %.sroa.0340.6.lcssa to i64
  %i.wb = sub i64 %i.vz, %i.wa
  %i.wc = icmp ult i64 %i.wb, 9
  br i1 %i.wc, label %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread, label %bb.bu

.lr.ph495:                                        ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101
  %.sroa.0312.0494 = phi ptr [ %i.wv, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101 ], [ %i.vw, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93 ] ; 2 uses
  %.sroa.0340.6493 = phi ptr [ %.sroa.0340.7, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101 ], [ %.sroa.0340.5532, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93 ] ; 6 uses
  %.sroa.25.6492 = phi ptr [ %.sroa.25.7, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101 ], [ %spec.select408, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93 ] ; 5 uses
  %.sroa.50.6491 = phi ptr [ %.sroa.50.7, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101 ], [ %.sroa.50.5530, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit93 ] ; 3 uses
  %i.wd = load ptr, ptr %.sroa.0312.0494, align 8, !tbaa !217 ; 3 uses
  %i.we = call noundef zeroext i1 @_ZN4llvm10IROutliner35isCompatibleWithAlreadyOutlinedCodeERKNS_16OutlinableRegionE(ptr noundef nonnull align 8 dereferenceable(348) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.wd)
  br i1 %i.we, label %bb.bo, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101

bb.bo:                                            ; preds = %.lr.ph495
  %.not.i94 = icmp eq ptr %.sroa.25.6492, %.sroa.50.6491
  br i1 %.not.i94, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store ptr %i.wd, ptr %.sroa.25.6492, align 8, !tbaa !217
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.25.6492, i64 8
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101

bb.bq:                                            ; preds = %bb.bo
  %i.wg = ptrtoint ptr %.sroa.25.6492 to i64
  %i.wh = ptrtoint ptr %.sroa.0340.6493 to i64
  %i.wi = sub i64 %i.wg, %i.wh                    ; 6 uses
  %i.wj = icmp eq i64 %i.wi, 9223372036854775800
  br i1 %i.wj, label %bb.br, label %_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i95

bb.br:                                            ; preds = %bb.bq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #27
  unreachable

_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i95: ; preds = %bb.bq
  %i.wk = ashr exact i64 %i.wi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i96 = call i64 @llvm.umax.i64(i64 %i.wk, i64 1)
  %i.wl = add nsw i64 %.sroa.speculated.i.i.i96, %i.wk ; 2 uses
  %i.wm = icmp ult i64 %i.wl, %i.wk
  %i.wn = call i64 @llvm.umin.i64(i64 %i.wl, i64 1152921504606846975)
  %i.wo = select i1 %i.wm, i64 1152921504606846975, i64 %i.wn ; 3 uses
  %.not.i.i.i97 = icmp ne i64 %i.wo, 0
  call void @llvm.assume(i1 %.not.i.i.i97)
  %i.wp = shl nuw nsw i64 %i.wo, 3
  %i.wq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wp) #29 ; 4 uses
  %i.wr = getelementptr inbounds i8, ptr %i.wq, i64 %i.wi ; 2 uses
  store ptr %i.wd, ptr %i.wr, align 8, !tbaa !217
  %i.ws = icmp sgt i64 %i.wi, 0
  br i1 %i.ws, label %bb.bs, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i98

bb.bs:                                            ; preds = %_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i95
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wq, ptr align 8 %.sroa.0340.6493, i64 %i.wi, i1 false)
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i98

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i98: ; preds = %bb.bs, %_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i95
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %.not.i17.i.i99 = icmp eq ptr %.sroa.0340.6493, null
  br i1 %.not.i17.i.i99, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i100, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i98
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0340.6493, i64 noundef %i.wi) #28
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i100

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i100: ; preds = %bb.bt, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i98
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.wo
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit101: ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i100, %bb.bp, %.lr.ph495
  %.sroa.50.7 = phi ptr [ %.sroa.50.6491, %.lr.ph495 ], [ %i.wu, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i100 ], [ %.sroa.50.6491, %bb.bp ] ; 2 uses
  %.sroa.25.7 = phi ptr [ %.sroa.25.6492, %.lr.ph495 ], [ %i.wt, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i100 ], [ %i.wf, %bb.bp ] ; 2 uses
  %.sroa.0340.7 = phi ptr [ %.sroa.0340.6493, %.lr.ph495 ], [ %i.wq, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i100 ], [ %.sroa.0340.6493, %bb.bp ] ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.0312.0494, i64 8 ; 2 uses
  %.not412 = icmp eq ptr %i.wv, %i.vy
  br i1 %.not412, label %._crit_edge496, label %.lr.ph495

bb.bu:                                            ; preds = %._crit_edge496
  %i.ww = load ptr, ptr %i.vv, align 8, !tbaa !476 ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vv, i64 16 ; 6 uses
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !533
  store ptr %.sroa.0340.6.lcssa, ptr %i.vv, align 8, !tbaa !476
  store ptr %.sroa.25.6.lcssa, ptr %i.vx, align 8, !tbaa !512
  store ptr %.sroa.50.6.lcssa, ptr %i.wx, align 8, !tbaa !533
  %.not.i.i.i.i.i102 = icmp eq ptr %i.ww, null
  br i1 %.not.i.i.i.i.i102, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit103, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.wz = ptrtoint ptr %i.wy to i64
  %i.xa = ptrtoint ptr %i.ww to i64
  %i.xb = sub i64 %i.wz, %i.xa
  call void @_ZdlPvm(ptr noundef nonnull %i.ww, i64 noundef %i.xb) #28
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit103

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit103: ; preds = %bb.bu, %bb.bv
  %i.xc = load i8, ptr %i.ui, align 1, !tbaa !551, !range !68, !noundef !69
  %i.xd = trunc nuw i8 %i.xc to i1
  br i1 %i.xd, label %bb.bw, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106

bb.bw:                                            ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit103
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vv, i64 232 ; 2 uses
  store i64 0, ptr %i.xe, align 8, !tbaa !189
  %.sroa.4307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vv, i64 240 ; 2 uses
  store i32 0, ptr %.sroa.4307.0..sroa_idx, align 8, !tbaa !552
  %i.xf = getelementptr inbounds nuw i8, ptr %i.vv, i64 248 ; 2 uses
  store i64 0, ptr %i.xf, align 8, !tbaa !189
  %.sroa.4304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vv, i64 256 ; 2 uses
  store i32 0, ptr %.sroa.4304.0..sroa_idx, align 8, !tbaa !552
  call void @_ZN4llvm10IROutliner15findCostBenefitERNS_6ModuleER15OutlinableGroup(ptr noundef nonnull align 8 dereferenceable(348) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr noundef nonnull align 8 dereferenceable(272) %i.vv)
  %i.xg = load i32, ptr %.sroa.4304.0..sroa_idx, align 8, !tbaa !552 ; 2 uses
  %i.xh = load i32, ptr %.sroa.4307.0..sroa_idx, align 8, !tbaa !552 ; 2 uses
  %i.xi = icmp slt i32 %i.xg, %i.xh
  br i1 %i.xi, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.xj = icmp slt i32 %i.xh, %i.xg
  br i1 %i.xj, label %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread, label %_ZNK4llvm15InstructionCostgeERKS0_.exit104

_ZNK4llvm15InstructionCostgeERKS0_.exit104:       ; preds = %bb.bx
  %i.xk = load i64, ptr %i.xf, align 8, !tbaa !189
  %i.xl = load i64, ptr %i.xe, align 8, !tbaa !189
  %.not413 = icmp slt i64 %i.xk, %i.xl
  br i1 %.not413, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106, label %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106: ; preds = %bb.bw, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit103, %_ZNK4llvm15InstructionCostgeERKS0_.exit104
  %i.xm = load ptr, ptr %i.vv, align 8, !tbaa !213 ; 3 uses
  %i.xn = load ptr, ptr %i.vx, align 8, !tbaa !213 ; 2 uses
  %.not414500 = icmp eq ptr %i.xm, %i.xn
  br i1 %.not414500, label %._crit_edge506, label %.lr.ph505

._crit_edge506.loopexit:                          ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit116
  %.pre573.a = load ptr, ptr %i.vv, align 8, !tbaa !476
  br label %._crit_edge506

._crit_edge506:                                   ; preds = %._crit_edge506.loopexit, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106
  %i.xo = phi ptr [ %i.xm, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106 ], [ %.pre573.a, %._crit_edge506.loopexit ] ; 3 uses
  %.sroa.50.8.lcssa = phi ptr [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106 ], [ %.sroa.50.9, %._crit_edge506.loopexit ]
  %.sroa.25.8.lcssa = phi ptr [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106 ], [ %.sroa.25.9, %._crit_edge506.loopexit ] ; 2 uses
  %.sroa.0340.8.lcssa = phi ptr [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106 ], [ %.sroa.0340.9, %._crit_edge506.loopexit ] ; 2 uses
  %i.xp = load ptr, ptr %i.wx, align 8, !tbaa !533
  store ptr %.sroa.0340.8.lcssa, ptr %i.vv, align 8, !tbaa !476
  store ptr %.sroa.25.8.lcssa, ptr %i.vx, align 8, !tbaa !512
  store ptr %.sroa.50.8.lcssa, ptr %i.wx, align 8, !tbaa !533
  %.not.i.i.i.i.i107 = icmp eq ptr %i.xo, null
  br i1 %.not.i.i.i.i.i107, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit108, label %bb.by

bb.by:                                            ; preds = %._crit_edge506
  %i.xq = ptrtoint ptr %i.xp to i64
  %i.xr = ptrtoint ptr %i.xo to i64
  %i.xs = sub i64 %i.xq, %i.xr
  call void @_ZdlPvm(ptr noundef nonnull %i.xo, i64 noundef %i.xs) #28
  %.pre574.a = load ptr, ptr %i.vx, align 8, !tbaa !512
  %.pre575 = load ptr, ptr %i.vv, align 8, !tbaa !476
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit108

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit108: ; preds = %._crit_edge506, %bb.by
  %i.xt = phi ptr [ %.sroa.0340.8.lcssa, %._crit_edge506 ], [ %.pre575, %bb.by ] ; 5 uses
  %i.xu = phi ptr [ %.sroa.25.8.lcssa, %._crit_edge506 ], [ %.pre574.a, %bb.by ] ; 4 uses
  %i.xv = ptrtoint ptr %i.xu to i64
  %i.xw = ptrtoint ptr %i.xt to i64
  %i.xx = sub i64 %i.xv, %i.xw
  %i.xy = icmp ult i64 %i.xx, 9
  %.not416526 = icmp eq ptr %i.xt, %i.xu          ; 2 uses
  br i1 %i.xy, label %.preheader, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader: ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit108
  br i1 %.not416526, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge, label %.lr.ph522

.preheader:                                       ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit108
  br i1 %.not416526, label %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread, label %.lr.ph528

.lr.ph505:                                        ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit116
  %.sroa.0300.0504 = phi ptr [ %i.yt, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit116 ], [ %i.xm, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106 ] ; 2 uses
  %.sroa.0340.8503 = phi ptr [ %.sroa.0340.9, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit116 ], [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106 ] ; 6 uses
  %.sroa.25.8502 = phi ptr [ %.sroa.25.9, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit116 ], [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106 ] ; 5 uses
  %.sroa.50.8501 = phi ptr [ %.sroa.50.9, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit116 ], [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit106 ] ; 3 uses
  %i.xz = load ptr, ptr %.sroa.0300.0504, align 8, !tbaa !217 ; 4 uses
  call void @_ZN4llvm16OutlinableRegion14splitCandidateEv(ptr noundef nonnull align 8 dereferenceable(264) %i.xz)
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 216
  %i.yb = load i8, ptr %i.ya, align 8, !tbaa !195, !range !68, !noundef !69
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %bb.bz, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit116

bb.bz:                                            ; preds = %.lr.ph505
  %.not.i109 = icmp eq ptr %.sroa.25.8502, %.sroa.50.8501
  br i1 %.not.i109, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store ptr %i.xz, ptr %.sroa.25.8502, align 8, !tbaa !217
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.25.8502, i64 8
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit116

bb.cb:                                            ; preds = %bb.bz
  %i.ye = ptrtoint ptr %.sroa.25.8502 to i64
  %i.yf = ptrtoint ptr %.sroa.0340.8503 to i64
  %i.yg = sub i64 %i.ye, %i.yf                    ; 6 uses
  %i.yh = icmp eq i64 %i.yg, 9223372036854775800
  br i1 %i.yh, label %bb.cc, label %_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i110

bb.cc:                                            ; preds = %bb.cb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #27
  unreachable

_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i110: ; preds = %bb.cb
  %i.yi = ashr exact i64 %i.yg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i111 = call i64 @llvm.umax.i64(i64 %i.yi, i64 1)
  %i.yj = add nsw i64 %.sroa.speculated.i.i.i111, %i.yi ; 2 uses
  %i.yk = icmp ult i64 %i.yj, %i.yi
  %i.yl = call i64 @llvm.umin.i64(i64 %i.yj, i64 1152921504606846975)
  %i.ym = select i1 %i.yk, i64 1152921504606846975, i64 %i.yl ; 3 uses
  %.not.i.i.i112 = icmp ne i64 %i.ym, 0
  call void @llvm.assume(i1 %.not.i.i.i112)
  %i.yn = shl nuw nsw i64 %i.ym, 3
  %i.yo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yn) #29 ; 4 uses
  %i.yp = getelementptr inbounds i8, ptr %i.yo, i64 %i.yg ; 2 uses
  store ptr %i.xz, ptr %i.yp, align 8, !tbaa !217
  %i.yq = icmp sgt i64 %i.yg, 0
  br i1 %i.yq, label %bb.cd, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i113

bb.cd:                                            ; preds = %_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i110
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yo, ptr align 8 %.sroa.0340.8503, i64 %i.yg, i1 false)
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i113

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i113: ; preds = %bb.cd, %_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i110
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %.not.i17.i.i114 = icmp eq ptr %.sroa.0340.8503, null
  br i1 %.not.i17.i.i114, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i115, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i113
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0340.8503, i64 noundef %i.yg) #28
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i115

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i115: ; preds = %bb.ce, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i113
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %i.ym
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit116

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit116: ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i115, %bb.ca, %.lr.ph505
  %.sroa.50.9 = phi ptr [ %.sroa.50.8501, %.lr.ph505 ], [ %i.ys, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i115 ], [ %.sroa.50.8501, %bb.ca ] ; 2 uses
  %.sroa.25.9 = phi ptr [ %.sroa.25.8502, %.lr.ph505 ], [ %i.yr, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i115 ], [ %i.yd, %bb.ca ] ; 2 uses
  %.sroa.0340.9 = phi ptr [ %.sroa.0340.8503, %.lr.ph505 ], [ %i.yo, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i115 ], [ %.sroa.0340.8503, %bb.ca ] ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.0300.0504, i64 8 ; 2 uses
  %.not414 = icmp eq ptr %i.yt, %i.xn
  br i1 %.not414, label %._crit_edge506.loopexit, label %.lr.ph505

.lr.ph528:                                        ; preds = %.preheader, %.lr.ph528
  %.sroa.0293.0527 = phi ptr [ %i.yv, %.lr.ph528 ], [ %i.xt, %.preheader ] ; 2 uses
  %i.yu = load ptr, ptr %.sroa.0293.0527, align 8, !tbaa !217
  call void @_ZN4llvm16OutlinableRegion17reattachCandidateEv(ptr noundef nonnull align 8 dereferenceable(264) %i.yu)
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.0293.0527, i64 8 ; 2 uses
  %.not416 = icmp eq ptr %i.yv, %i.xu
  br i1 %.not416, label %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread, label %.lr.ph528

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge.loopexit: ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EED2Ev.exit149
  %.pre578 = load ptr, ptr %i.vv, align 8, !tbaa !476
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge: ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge.loopexit, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader
  %24 = phi ptr [ %i.xt, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader ], [ %.pre578, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge.loopexit ] ; 3 uses
  %.sroa.50.10.lcssa = phi ptr [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader ], [ %.sroa.50.11, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge.loopexit ]
  %.sroa.25.10.lcssa = phi ptr [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader ], [ %.sroa.25.11, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge.loopexit ] ; 2 uses
  %.sroa.0340.10.lcssa = phi ptr [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader ], [ %.sroa.0340.11, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge.loopexit ] ; 2 uses
  %i.yw = load ptr, ptr %i.wx, align 8, !tbaa !533
  store ptr %.sroa.0340.10.lcssa, ptr %i.vv, align 8, !tbaa !476
  store ptr %.sroa.25.10.lcssa, ptr %i.vx, align 8, !tbaa !512
  store ptr %.sroa.50.10.lcssa, ptr %i.wx, align 8, !tbaa !533
  %.not.i.i.i.i.i119 = icmp eq ptr %24, null
  br i1 %.not.i.i.i.i.i119, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit120, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge
  %i.yx = ptrtoint ptr %i.yw to i64
  %i.yy = ptrtoint ptr %24 to i64
  %i.yz = sub i64 %i.yx, %i.yy
  call void @_ZdlPvm(ptr noundef nonnull %24, i64 noundef %i.yz) #28
  %.pre579 = load ptr, ptr %i.vv, align 8, !tbaa !213
  %.pre580 = load ptr, ptr %i.vx, align 8, !tbaa !213
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit120

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit120: ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge, %bb.cf
  %i.za = phi ptr [ %.sroa.25.10.lcssa, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge ], [ %.pre580, %bb.cf ]
  %i.zb = phi ptr [ %.sroa.0340.10.lcssa, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge ], [ %.pre579, %bb.cf ] ; 2 uses
  %i.zc = icmp eq ptr %i.zb, %i.za
  br i1 %i.zc, label %_ZNK4llvm15InstructionCostgeERKS0_.exit104.thread, label %bb.da

.lr.ph522:                                        ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EED2Ev.exit149
  %.sroa.0289.0521 = phi ptr [ %i.ahw, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EED2Ev.exit149 ], [ %i.xt, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader ] ; 2 uses
  %.sroa.0340.10520 = phi ptr [ %.sroa.0340.11, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EED2Ev.exit149 ], [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader ] ; 6 uses
  %.sroa.25.10519 = phi ptr [ %.sroa.25.11, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EED2Ev.exit149 ], [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader ] ; 5 uses
  %.sroa.50.10518 = phi ptr [ %.sroa.50.11, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EED2Ev.exit149 ], [ null, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118.preheader ] ; 3 uses
  %i.zd = load ptr, ptr %.sroa.0289.0521, align 8, !tbaa !217 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store ptr %i.uj, ptr %20, align 8, !tbaa !72
  store i32 0, ptr %i.uk, align 8, !tbaa !206
  store i32 6, ptr %i.ul, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !95 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !118
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !156 ; 2 uses
  %.sroa.07.0.in10.i121 = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %.sroa.07.011.i122 = load ptr, ptr %.sroa.07.0.in10.i121, align 8, !tbaa !163 ; 2 uses
  %.not12.i123 = icmp eq ptr %.sroa.07.011.i122, %i.zi
  br i1 %.not12.i123, label %_ZNK4llvm12IRSimilarity21IRSimilarityCandidate14getBasicBlocksERNS_8DenseSetIPNS_10BasicBlockENS_12DenseMapInfoIS4_vEEEERNS_11SmallVectorIS4_Lj6EEE.exit132, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %.lr.ph522, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i127
  %.sroa.07.013.i125 = phi ptr [ %.sroa.07.0.i129, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i127 ], [ %.sroa.07.011.i122, %.lr.ph522 ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i125, i64 16
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !148
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 40
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !116 ; 7 uses
  %i.zn = load ptr, ptr %21, align 8, !tbaa !203, !noalias !1761 ; 3 uses
  %i.zo = load ptr, ptr %i.um, align 8, !tbaa !202, !noalias !1761 ; 3 uses
  %i.zp = load i32, ptr %i.un, align 4, !tbaa !201, !noalias !1761 ; 4 uses
  %i.zq = icmp eq i32 %i.zp, 0
  br i1 %i.zq, label %.loopexit.i238, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i124
  %i.zr = add i32 %i.zp, -1                       ; 2 uses
  %i.zs = ptrtoint ptr %i.zm to i64
  %i.zt = mul i64 %i.zs, -4658895280553007687     ; 2 uses
  %i.zu = lshr i64 %i.zt, 31
  %i.zv = xor i64 %i.zu, %i.zt
  %i.zw = trunc i64 %i.zv to i32
  %i.zx = and i32 %i.zr, %i.zw                    ; 3 uses
  %i.zy = zext i32 %i.zx to i64                   ; 2 uses
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.zy ; 2 uses
  %i.aaa = lshr i64 %i.zy, 5
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %i.aaa
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !101, !noalias !1762
  %i.aad = and i32 %i.zx, 31
  %i.aae = lshr i32 %i.aac, %i.aad
  %i.aaf = trunc i32 %i.aae to i1
  br i1 %i.aaf, label %.lr.ph.i.i249, label %.loopexit.i238, !prof !102

.lr.ph.i.i249:                                    ; preds = %bb.cg, %bb.ch
  %i.aag = phi ptr [ %i.aam, %bb.ch ], [ %i.zz, %bb.cg ]
  %.024.i.i250 = phi i32 [ %i.aak, %bb.ch ], [ %i.zx, %bb.cg ]
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !164, !noalias !1762
  %i.aai = icmp eq ptr %i.zm, %i.aah
  br i1 %i.aai, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i127, label %bb.ch, !prof !105

bb.ch:                                            ; preds = %.lr.ph.i.i249
  %i.aaj = add nuw i32 %.024.i.i250, 1
  %i.aak = and i32 %i.aaj, %i.zr                  ; 3 uses
  %i.aal = zext i32 %i.aak to i64                 ; 2 uses
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.aal ; 2 uses
  %i.aan = lshr i64 %i.aal, 5
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %i.aan
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !101, !noalias !1762
  %i.aaq = and i32 %i.aak, 31
  %i.aar = lshr i32 %i.aap, %i.aaq
  %i.aas = trunc i32 %i.aar to i1
  br i1 %i.aas, label %.lr.ph.i.i249, label %.loopexit.i238, !prof !106, !llvm.loop !12

.loopexit.i238:                                   ; preds = %bb.ch, %bb.cg, %.lr.ph.i124
  %.lcssa28.sink.i.ph.i239 = phi ptr [ %i.zz, %bb.cg ], [ null, %.lr.ph.i124 ], [ %i.aam, %bb.ch ]
  %i.aat = load i32, ptr %i.uo, align 8, !tbaa !200, !noalias !1762
  %i.aau = shl i32 %i.aat, 2
  %i.aav = add i32 %i.aau, 4
  %i.aaw = mul i32 %i.zp, 3
  %.not.i.i240 = icmp ult i32 %i.aav, %i.aaw
  br i1 %.not.i.i240, label %.loopexit, label %bb.ci, !prof !105

bb.ci:                                            ; preds = %.loopexit.i238
  %i.aax = shl i32 %i.zp, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef %i.aax), !noalias !1762
  %i.aay = load ptr, ptr %21, align 8, !tbaa !203, !noalias !1763 ; 5 uses
  %i.aaz = load ptr, ptr %i.um, align 8, !tbaa !202, !noalias !1763 ; 5 uses
  %i.aba = load i32, ptr %i.un, align 4, !tbaa !201, !noalias !1763 ; 2 uses
  %i.abb = icmp ne i32 %i.aba, 0
  call void @llvm.assume(i1 %i.abb)
  %i.abc = add i32 %i.aba, -1                     ; 2 uses
  %i.abd = ptrtoint ptr %i.zm to i64
  %i.abe = mul i64 %i.abd, -4658895280553007687   ; 2 uses
  %i.abf = lshr i64 %i.abe, 31
  %i.abg = xor i64 %i.abf, %i.abe
  %i.abh = trunc i64 %i.abg to i32
  %i.abi = and i32 %i.abc, %i.abh                 ; 3 uses
  %i.abj = zext i32 %i.abi to i64                 ; 2 uses
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %i.abj ; 2 uses
  %i.abl = lshr i64 %i.abj, 5
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.abl
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !101, !noalias !1762
  %i.abo = and i32 %i.abi, 31
  %i.abp = lshr i32 %i.abn, %i.abo
  %i.abq = trunc i32 %i.abp to i1
  br i1 %i.abq, label %.lr.ph.i267, label %.loopexit, !prof !102

.lr.ph.i267:                                      ; preds = %bb.ci, %bb.cj
  %i.abr = phi ptr [ %i.abx, %bb.cj ], [ %i.abk, %bb.ci ] ; 2 uses
  %.024.i268 = phi i32 [ %i.abv, %bb.cj ], [ %i.abi, %bb.ci ]
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !164, !noalias !1762
  %i.abt = icmp eq ptr %i.zm, %i.abs
  br i1 %i.abt, label %.loopexit, label %bb.cj, !prof !105

bb.cj:                                            ; preds = %.lr.ph.i267
  %i.abu = add nuw i32 %.024.i268, 1
  %i.abv = and i32 %i.abu, %i.abc                 ; 3 uses
  %i.abw = zext i32 %i.abv to i64                 ; 2 uses
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %i.abw ; 2 uses
  %i.aby = lshr i64 %i.abw, 5
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !101, !noalias !1762
  %i.acb = and i32 %i.abv, 31
  %i.acc = lshr i32 %i.aca, %i.acb
  %i.acd = trunc i32 %i.acc to i1
  br i1 %i.acd, label %.lr.ph.i267, label %.loopexit, !prof !106, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph.i267, %bb.cj, %.loopexit.i238, %bb.ci
  %i.ace = phi ptr [ %i.zn, %.loopexit.i238 ], [ %i.aay, %bb.ci ], [ %i.aay, %bb.cj ], [ %i.aay, %.lr.ph.i267 ]
  %i.acf = phi ptr [ %i.zo, %.loopexit.i238 ], [ %i.aaz, %bb.ci ], [ %i.aaz, %bb.cj ], [ %i.aaz, %.lr.ph.i267 ]
  %i.acg = phi ptr [ %.lcssa28.sink.i.ph.i239, %.loopexit.i238 ], [ %i.abk, %bb.ci ], [ %i.abr, %.lr.ph.i267 ], [ %i.abx, %bb.cj ] ; 2 uses
  %i.ach = ptrtoint ptr %i.acg to i64
  %i.aci = ptrtoint ptr %i.ace to i64
  %i.acj = sub i64 %i.ach, %i.aci
  %i.ack = ashr exact i64 %i.acj, 3               ; 2 uses
  %i.acl = trunc i64 %i.ack to i32
  %i.acm = and i32 %i.acl, 31
  %i.acn = shl nuw i32 1, %i.acm
  %i.aco = lshr i64 %i.ack, 5
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.aco ; 2 uses
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !101, !noalias !1762
  %i.acr = or i32 %i.acn, %i.acq
  store i32 %i.acr, ptr %i.acp, align 4, !tbaa !101, !noalias !1762
  %i.acs = load i32, ptr %i.uo, align 8, !tbaa !200, !noalias !1762
  %i.act = add i32 %i.acs, 1
  store i32 %i.act, ptr %i.uo, align 8, !tbaa !200, !noalias !1762
  store ptr %i.zm, ptr %i.acg, align 8, !tbaa !164, !noalias !1762
  %i.acu = load i32, ptr %i.uk, align 8, !tbaa !206 ; 2 uses
  %i.acv = load i32, ptr %i.ul, align 4, !tbaa !207
  %.not.i.i131 = icmp ult i32 %i.acu, %i.acv
  br i1 %.not.i.i131, label %bb.cl, label %bb.ck, !prof !105

bb.ck:                                            ; preds = %.loopexit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(64) %20, ptr noundef %i.zm)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i127

bb.cl:                                            ; preds = %.loopexit
  %i.acw = zext i32 %i.acu to i64
  %i.acx = load ptr, ptr %20, align 8, !tbaa !72
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.acx, i64 %i.acw
  store ptr %i.zm, ptr %i.acy, align 1
  %i.acz = load i32, ptr %i.uk, align 8, !tbaa !206
  %i.ada = add i32 %i.acz, 1
  store i32 %i.ada, ptr %i.uk, align 8, !tbaa !206
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i127

_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i127: ; preds = %.lr.ph.i.i249, %bb.cl, %bb.ck
  %.sroa.07.0.in.i128 = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i125, i64 8
  %.sroa.07.0.i129 = load ptr, ptr %.sroa.07.0.in.i128, align 8, !tbaa !163 ; 2 uses
  %.not.i130 = icmp eq ptr %.sroa.07.0.i129, %i.zi
  br i1 %.not.i130, label %_ZNK4llvm12IRSimilarity21IRSimilarityCandidate14getBasicBlocksERNS_8DenseSetIPNS_10BasicBlockENS_12DenseMapInfoIS4_vEEEERNS_11SmallVectorIS4_Lj6EEE.exit132, label %.lr.ph.i124

_ZNK4llvm12IRSimilarity21IRSimilarityCandidate14getBasicBlocksERNS_8DenseSetIPNS_10BasicBlockENS_12DenseMapInfoIS4_vEEEERNS_11SmallVectorIS4_Lj6EEE.exit132: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i127, %.lr.ph522
  %i.adb = load ptr, ptr %i.dx, align 8, !tbaa !517 ; 2 uses
  %i.adc = ptrtoint ptr %i.adb to i64
  %i.add = add i64 %i.adc, 320                    ; 2 uses
  %i.ade = load i64, ptr %i.up, align 8, !tbaa !518
  %i.adf = icmp ult i64 %i.add, %i.ade
  br i1 %i.adf, label %bb.cm, label %bb.cn, !prof !105

bb.cm:                                            ; preds = %_ZNK4llvm12IRSimilarity21IRSimilarityCandidate14getBasicBlocksERNS_8DenseSetIPNS_10BasicBlockENS_12DenseMapInfoIS4_vEEEERNS_11SmallVectorIS4_Lj6EEE.exit132
  %i.adg = inttoptr i64 %i.add to ptr
  store ptr %i.adg, ptr %i.dx, align 8, !tbaa !517
  br label %_ZN4llvm24SpecificBumpPtrAllocatorINS_13CodeExtractorEE8AllocateEm.exit134

bb.cn:                                            ; preds = %_ZNK4llvm12IRSimilarity21IRSimilarityCandidate14getBasicBlocksERNS_8DenseSetIPNS_10BasicBlockENS_12DenseMapInfoIS4_vEEEERNS_11SmallVectorIS4_Lj6EEE.exit132
  %i.adh = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.dx, i64 noundef 320, i64 noundef 320, i8 0)
  br label %_ZN4llvm24SpecificBumpPtrAllocatorINS_13CodeExtractorEE8AllocateEm.exit134

_ZN4llvm24SpecificBumpPtrAllocatorINS_13CodeExtractorEE8AllocateEm.exit134: ; preds = %bb.cm, %bb.cn
  %.0.i.i133 = phi ptr [ %i.adb, %bb.cm ], [ %i.adh, %bb.cn ] ; 2 uses
  %i.adi = load ptr, ptr %20, align 8, !tbaa !72
  %i.adj = load i32, ptr %i.uk, align 8, !tbaa !206
  %i.adk = zext i32 %i.adj to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store ptr %i.uq, ptr %23, align 8, !tbaa !184
  store i64 7234309775510762863, ptr %i.uq, align 8
  store i64 8, ptr %i.ur, align 8, !tbaa !187
  store i8 0, ptr %i.vt, align 8, !tbaa !188
  call void @_ZN4llvm13CodeExtractorC1ENS_8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbPNS_18BlockFrequencyInfoEPNS_21BranchProbabilityInfoEPNS_15AssumptionCacheEbbS3_S4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(320) %.0.i.i133, ptr %i.adi, i64 %i.adk, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.394") align 8 %22, ptr nofree noundef nonnull align 8 dereferenceable(32) %23, i1 noundef zeroext false, i1 noundef zeroext true) #26
  %i.adl = getelementptr inbounds nuw i8, ptr %i.zd, i64 192
  store ptr %.0.i.i133, ptr %i.adl, align 8, !tbaa !379
  %i.adm = load ptr, ptr %23, align 8, !tbaa !190 ; 2 uses
  %i.adn = icmp eq ptr %i.adm, %i.uq
  br i1 %i.adn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

end_hunk_0
begin_hunk_1_@_ZN4llvm10IROutliner9doOutlineERNS_6ModuleE:bb.a
  %i.ado = load i64, ptr %i.uq, align 8, !tbaa !188
  %i.adp = add i64 %i.ado, 1
  call void @_ZdlPvm(ptr noundef %i.adm, i64 noundef %i.adp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZN4llvm24SpecificBumpPtrAllocatorINS_13CodeExtractorEE8AllocateEm.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.adq = call noundef zeroext i1 @_ZN4llvm10IROutliner14extractSectionERNS_16OutlinableRegionE(ptr noundef nonnull align 8 dereferenceable(348) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.zd)
  br i1 %i.adq, label %bb.co, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit147

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.adr = load ptr, ptr %i.zd, align 8, !tbaa !95 ; 2 uses
  %i.ads = load i32, ptr %i.adr, align 8, !tbaa !513 ; 3 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !514
  %i.adv = add i32 %i.ads, -1
  %i.adw = add i32 %i.adv, %i.adu                 ; 2 uses
  %.not510 = icmp ugt i32 %i.ads, %i.adw
  br i1 %.not510, label %._crit_edge516, label %.lr.ph515.preheader

.lr.ph515.preheader:                              ; preds = %bb.co
  %.pre576 = load ptr, ptr %i.us, align 8, !tbaa !220, !noalias !1764
  %.pre577 = load ptr, ptr %i.ut, align 8, !tbaa !221, !noalias !1764
  br label %.lr.ph515

._crit_edge516:                                   ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_.exit, %bb.co
  %.not.i140 = icmp eq ptr %.sroa.25.10519, %.sroa.50.10518
  br i1 %.not.i140, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %._crit_edge516
  store ptr %i.zd, ptr %.sroa.25.10519, align 8, !tbaa !217
  %i.adx = getelementptr inbounds nuw i8, ptr %.sroa.25.10519, i64 8
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit147

bb.cq:                                            ; preds = %._crit_edge516
  %i.ady = ptrtoint ptr %.sroa.25.10519 to i64
  %i.adz = ptrtoint ptr %.sroa.0340.10520 to i64
  %i.aea = sub i64 %i.ady, %i.adz                 ; 6 uses
  %i.aeb = icmp eq i64 %i.aea, 9223372036854775800
  br i1 %i.aeb, label %bb.cr, label %_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i141

bb.cr:                                            ; preds = %bb.cq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #27
  unreachable

_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i141: ; preds = %bb.cq
  %i.aec = ashr exact i64 %i.aea, 3               ; 3 uses
  %.sroa.speculated.i.i.i142 = call i64 @llvm.umax.i64(i64 %i.aec, i64 1)
  %i.aed = add nsw i64 %.sroa.speculated.i.i.i142, %i.aec ; 2 uses
  %i.aee = icmp ult i64 %i.aed, %i.aec
  %i.aef = call i64 @llvm.umin.i64(i64 %i.aed, i64 1152921504606846975)
  %i.aeg = select i1 %i.aee, i64 1152921504606846975, i64 %i.aef ; 3 uses
  %.not.i.i.i143 = icmp ne i64 %i.aeg, 0
  call void @llvm.assume(i1 %.not.i.i.i143)
  %i.aeh = shl nuw nsw i64 %i.aeg, 3
  %i.aei = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aeh) #29 ; 4 uses
  %i.aej = getelementptr inbounds i8, ptr %i.aei, i64 %i.aea ; 2 uses
  store ptr %i.zd, ptr %i.aej, align 8, !tbaa !217
  %i.aek = icmp sgt i64 %i.aea, 0
  br i1 %i.aek, label %bb.cs, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i144

bb.cs:                                            ; preds = %_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i141
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aei, ptr align 8 %.sroa.0340.10520, i64 %i.aea, i1 false)
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i144

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i144: ; preds = %bb.cs, %_ZNKSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE12_M_check_lenEmPKc.exit.i.i141
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aej, i64 8
  %.not.i17.i.i145 = icmp eq ptr %.sroa.0340.10520, null
  br i1 %.not.i17.i.i145, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i146, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0340.10520, i64 noundef %i.aea) #28
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i146

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i146: ; preds = %bb.ct, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i144
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.aei, i64 %i.aeg
  br label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit147

.lr.ph515:                                        ; preds = %.lr.ph515.preheader, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_.exit
  %i.aen = phi ptr [ %i.ahi, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_.exit ], [ %.pre577, %.lr.ph515.preheader ] ; 4 uses
  %i.aeo = phi ptr [ %i.ahj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_.exit ], [ %.pre576, %.lr.ph515.preheader ] ; 4 uses
  %storemerge511 = phi i32 [ %i.ahk, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_.exit ], [ %i.ads, %.lr.ph515.preheader ] ; 6 uses
  %i.aep = load i32, ptr %i.uu, align 4, !tbaa !222, !noalias !1764 ; 4 uses
  %i.aeq = icmp eq i32 %i.aep, 0
  br i1 %i.aeq, label %.loopexit.i253, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph515
  %i.aer = add i32 %i.aep, -1                     ; 2 uses
  %i.aes = mul i32 %storemerge511, 37
  %.024.i.i252 = and i32 %i.aer, %i.aes           ; 3 uses
  %i.aet = zext i32 %.024.i.i252 to i64           ; 2 uses
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %i.aet ; 2 uses
  %i.aev = lshr i64 %i.aet, 5
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %i.aev
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !101, !noalias !1765
  %i.aey = and i32 %.024.i.i252, 31
  %i.aez = lshr i32 %i.aex, %i.aey
  %i.afa = trunc i32 %i.aez to i1
  br i1 %i.afa, label %.lr.ph.i.i262, label %.loopexit.i253, !prof !102

bb.cv:                                            ; preds = %.lr.ph.i.i262
  %i.afb = add nuw i32 %.025.i.i, 1
  %.0.i.i263 = and i32 %i.afb, %i.aer             ; 3 uses
  %i.afc = zext i32 %.0.i.i263 to i64             ; 2 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %i.afc ; 2 uses
  %i.afe = lshr i64 %i.afc, 5
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %i.afe
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !101, !noalias !1765
  %i.afh = and i32 %.0.i.i263, 31
  %i.afi = lshr i32 %i.afg, %i.afh
  %i.afj = trunc i32 %i.afi to i1
  br i1 %i.afj, label %.lr.ph.i.i262, label %.loopexit.i253, !prof !106, !llvm.loop !2

.lr.ph.i.i262:                                    ; preds = %bb.cu, %bb.cv
  %i.afk = phi ptr [ %i.afd, %bb.cv ], [ %i.aeu, %bb.cu ]
  %.025.i.i = phi i32 [ %.0.i.i263, %bb.cv ], [ %.024.i.i252, %bb.cu ]
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !101, !noalias !1765
  %i.afm = icmp eq i32 %storemerge511, %i.afl
  br i1 %i.afm, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_.exit, label %bb.cv, !prof !105

.loopexit.i253:                                   ; preds = %bb.cv, %bb.cu, %.lr.ph515
  %.lcssa30.sink.i.ph.i = phi ptr [ %i.aeu, %bb.cu ], [ null, %.lr.ph515 ], [ %i.afd, %bb.cv ]
  %i.afn = load i32, ptr %i.uv, align 8, !tbaa !229, !noalias !1765
  %i.afo = shl i32 %i.afn, 2
  %i.afp = add i32 %i.afo, 4
  %i.afq = mul i32 %i.aep, 3
  %.not.i.i254 = icmp ult i32 %i.afp, %i.afq
  br i1 %.not.i.i254, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit.i, label %bb.cw, !prof !105

bb.cw:                                            ; preds = %.loopexit.i253
  %i.afr = shl i32 %i.aep, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 8 dereferenceable(24) %i.us, i32 noundef %i.afr), !noalias !1765
  %i.afs = load ptr, ptr %i.us, align 8, !tbaa !220, !noalias !1766 ; 5 uses
  %i.aft = load ptr, ptr %i.ut, align 8, !tbaa !221, !noalias !1766 ; 5 uses
  %i.afu = load i32, ptr %i.uu, align 4, !tbaa !222, !noalias !1766 ; 2 uses
  %i.afv = icmp ne i32 %i.afu, 0
  call void @llvm.assume(i1 %i.afv)
  %i.afw = add i32 %i.afu, -1                     ; 2 uses
  %i.afx = mul i32 %storemerge511, 37
  %.024.i270 = and i32 %i.afw, %i.afx             ; 3 uses
  %i.afy = zext i32 %.024.i270 to i64             ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.afy ; 2 uses
  %i.aga = lshr i64 %i.afy, 5
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.aga
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !101, !noalias !1765
  %i.agd = and i32 %.024.i270, 31
  %i.age = lshr i32 %i.agc, %i.agd
  %i.agf = trunc i32 %i.age to i1
  br i1 %i.agf, label %.lr.ph.i272, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit.i, !prof !102

bb.cx:                                            ; preds = %.lr.ph.i272
  %i.agg = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.agg, %i.afw                  ; 3 uses
  %i.agh = zext i32 %.0.i to i64                  ; 2 uses
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.agh ; 2 uses
  %i.agj = lshr i64 %i.agh, 5
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.agj
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !101, !noalias !1765
  %i.agm = and i32 %.0.i, 31
  %i.agn = lshr i32 %i.agl, %i.agm
  %i.ago = trunc i32 %i.agn to i1
  br i1 %i.ago, label %.lr.ph.i272, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit.i, !prof !106, !llvm.loop !2

.lr.ph.i272:                                      ; preds = %bb.cw, %bb.cx
  %i.agp = phi ptr [ %i.agi, %bb.cx ], [ %i.afz, %bb.cw ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.cx ], [ %.024.i270, %bb.cw ]
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !101, !noalias !1765
  %i.agr = icmp eq i32 %storemerge511, %i.agq
  br i1 %i.agr, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit.i, label %bb.cx, !prof !105

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit.i: ; preds = %.lr.ph.i272, %bb.cx, %bb.cw, %.loopexit.i253
  %i.ags = phi ptr [ %i.aen, %.loopexit.i253 ], [ %i.aft, %bb.cw ], [ %i.aft, %bb.cx ], [ %i.aft, %.lr.ph.i272 ] ; 2 uses
  %i.agt = phi ptr [ %i.aeo, %.loopexit.i253 ], [ %i.afs, %bb.cw ], [ %i.afs, %bb.cx ], [ %i.afs, %.lr.ph.i272 ] ; 2 uses
  %i.agu = phi ptr [ %.lcssa30.sink.i.ph.i, %.loopexit.i253 ], [ %i.afz, %bb.cw ], [ %i.agp, %.lr.ph.i272 ], [ %i.agi, %bb.cx ] ; 2 uses
  %i.agv = ptrtoint ptr %i.agu to i64
  %i.agw = ptrtoint ptr %i.agt to i64
  %i.agx = sub i64 %i.agv, %i.agw
  %i.agy = ashr exact i64 %i.agx, 2               ; 2 uses
  %i.agz = trunc i64 %i.agy to i32
  %i.aha = and i32 %i.agz, 31
  %i.ahb = shl nuw i32 1, %i.aha
  %i.ahc = lshr i64 %i.agy, 5
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.ahc ; 2 uses
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !101, !noalias !1765
  %i.ahf = or i32 %i.ahb, %i.ahe
  store i32 %i.ahf, ptr %i.ahd, align 4, !tbaa !101, !noalias !1765
  %i.ahg = load i32, ptr %i.uv, align 8, !tbaa !229, !noalias !1765
  %i.ahh = add i32 %i.ahg, 1
  store i32 %i.ahh, ptr %i.uv, align 8, !tbaa !229, !noalias !1765
  store i32 %storemerge511, ptr %i.agu, align 4, !tbaa !101, !noalias !1765
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i262, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit.i
  %i.ahi = phi ptr [ %i.ags, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit.i ], [ %i.aen, %.lr.ph.i.i262 ]
  %i.ahj = phi ptr [ %i.agt, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit.i ], [ %i.aeo, %.lr.ph.i.i262 ]
  %i.ahk = add i32 %storemerge511, 1              ; 2 uses
  %.not = icmp ugt i32 %i.ahk, %i.adw
  br i1 %.not, label %._crit_edge516, label %.lr.ph515, !llvm.loop !1725

_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit147: ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i146, %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %.sroa.50.11 = phi ptr [ %.sroa.50.10518, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %i.aem, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i146 ], [ %.sroa.50.10518, %bb.cp ] ; 2 uses
  %.sroa.25.11 = phi ptr [ %.sroa.25.10519, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %i.ael, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i146 ], [ %i.adx, %bb.cp ] ; 2 uses
  %.sroa.0340.11 = phi ptr [ %.sroa.0340.10520, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %i.aei, %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i146 ], [ %.sroa.0340.10520, %bb.cp ] ; 2 uses
  %i.ahl = load i32, ptr %i.un, align 4, !tbaa !201 ; 2 uses
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit148, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit147
  %i.ahn = load ptr, ptr %21, align 8, !tbaa !203
  %i.aho = zext i32 %i.ahl to i64                 ; 2 uses
  %i.ahp = shl nuw nsw i64 %i.aho, 3
  %i.ahq = add nuw nsw i64 %i.aho, 31
  %i.ahr = lshr i64 %i.ahq, 3
  %i.ahs = and i64 %i.ahr, 1073741820
  %i.aht = add nuw nsw i64 %i.ahs, %i.ahp
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ahn, i64 noundef %i.aht, i64 noundef 8) #26
  br label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit148

_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit148: ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE9push_backERKS2_.exit147, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.ahu = load ptr, ptr %20, align 8, !tbaa !72  ; 2 uses
  %i.ahv = icmp eq ptr %i.ahu, %i.uj
  br i1 %i.ahv, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EED2Ev.exit149, label %bb.cz

bb.cz:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit148
  call void @free(ptr noundef %i.ahu) #26
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EED2Ev.exit149

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EED2Ev.exit149: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit148, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.0289.0521, i64 8 ; 2 uses
  %.not415 = icmp eq ptr %i.ahw, %i.xu
  br i1 %.not415, label %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EE5clearEv.exit118._crit_edge.loopexit, label %.lr.ph522

bb.da:                                            ; preds = %_ZNSt6vectorIPN4llvm16OutlinableRegionESaIS2_EEaSEOS4_.exit120
  %i.ahx = load ptr, ptr %i.zb, align 8, !tbaa !217
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 200
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !373
  %i.aia = call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ahz) #26
  %i.aib = load ptr, ptr %i.uw, align 8, !tbaa !1747
  %i.aic = load i64, ptr %i.ux, align 8, !tbaa !1748
  %i.aid = call noundef nonnull align 8 dereferenceable(24) ptr %i.aib(i64 noundef %i.aic, ptr noundef nonnull align 8 dereferenceable(140) %i.aia) #26, !inline_history !1686 ; 3 uses
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !1756
  %i.aif = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.aie) #26
  %i.aig = call noundef ptr @_ZN4llvm11LLVMContext21getLLVMRemarkStreamerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aif) #26
  %.not.i.i150 = icmp eq ptr %i.aig, null
  br i1 %.not.i.i150, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i228, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i151

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i228: ; preds = %bb.da
  %i.aih = load ptr, ptr %i.aid, align 8, !tbaa !1756
  %i.aii = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.aih) #26
  %i.aij = call noundef ptr @_ZNK4llvm11LLVMContext17getDiagHandlerPtrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aii) #26 ; 2 uses
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !60
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 48
  %i.aim = load ptr, ptr %i.ail, align 8
  %i.ain = call noundef zeroext i1 %i.aim(ptr noundef nonnull align 8 dereferenceable(32) %i.aij) #26, !inline_history !1726
  br i1 %i.ain, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i151, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZNS_10IROutliner9doOutlineERNS_6ModuleEE3$_3EEvT_PDTclfL0p_EE.exit"

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i151: ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i228, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.aio = load ptr, ptr %i.vv, align 8, !tbaa !476, !noalias !1767
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !217, !noalias !1767
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !95, !noalias !1767
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !160, !noalias !1767
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !148, !noalias !1767
  call void @_ZN4llvm18OptimizationRemarkC1EPKcNS_9StringRefEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(432) %7, ptr noundef nonnull @.str.21, ptr nonnull @.str.30, i64 8, ptr noundef %i.aiu) #26
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %7, ptr nonnull @.str.31, i64 9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !1767
  %i.aiv = load ptr, ptr %i.vx, align 8, !tbaa !512, !noalias !1767
  %i.aiw = load ptr, ptr %i.vv, align 8, !tbaa !476, !noalias !1767
  %i.aix = ptrtoint ptr %i.aiv to i64
  %i.aiy = ptrtoint ptr %i.aiw to i64
  %i.aiz = sub i64 %i.aix, %i.aiy
  %i.aja = ashr exact i64 %i.aiz, 3               ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  %i.ajb = icmp ult i64 %i.aja, 10
  br i1 %i.ajb, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i155, label %.lr.ph.i.i.i.i152

.lr.ph.i.i.i.i152:                                ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i151, %bb.dg
  %.029.i.i.i.i153 = phi i32 [ %i.ajj, %bb.dg ], [ 1, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i151 ] ; 4 uses
  %.02328.i.i.i.i154 = phi i64 [ %i.aji, %bb.dg ], [ %i.aja, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i151 ] ; 5 uses
  %i.ajc = icmp ult i64 %.02328.i.i.i.i154, 100
  br i1 %i.ajc, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.lr.ph.i.i.i.i152
  %i.ajd = add i32 %.029.i.i.i.i153, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i155

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i152
  %i.aje = icmp ult i64 %.02328.i.i.i.i154, 1000
  br i1 %i.aje, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ajf = add i32 %.029.i.i.i.i153, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i155

bb.de:                                            ; preds = %bb.dc
  %i.ajg = icmp ult i64 %.02328.i.i.i.i154, 10000
  br i1 %i.ajg, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ajh = add i32 %.029.i.i.i.i153, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i155

bb.dg:                                            ; preds = %bb.de
  %i.aji = udiv i64 %.02328.i.i.i.i154, 10000
  %i.ajj = add i32 %.029.i.i.i.i153, 4            ; 2 uses
  %i.ajk = icmp ult i64 %.02328.i.i.i.i154, 100000
  br i1 %i.ajk, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i155, label %.lr.ph.i.i.i.i152, !llvm.loop !1692

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i155: ; preds = %bb.dg, %bb.df, %bb.dd, %bb.db, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i151
  %.022.i.i.i.i156 = phi i32 [ %i.ajh, %bb.df ], [ %i.ajd, %bb.db ], [ %i.ajf, %bb.dd ], [ 1, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i151 ], [ %i.ajj, %bb.dg ]
  %i.ajl = zext i32 %.022.i.i.i.i156 to i64
  store ptr %i.uy, ptr %5, align 8, !tbaa !184, !alias.scope !1768, !noalias !1767
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ajl, i8 noundef signext 0) #26
  %i.ajm = load ptr, ptr %5, align 8, !tbaa !190, !alias.scope !1768, !noalias !1767 ; 4 uses
  %i.ajn = icmp ugt i64 %i.aja, 99
  br i1 %i.ajn, label %.lr.ph.preheader.i.i.i.i224, label %._crit_edge.i.i.i.i157

.lr.ph.preheader.i.i.i.i224:                      ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i155
  %i.ajo = load i64, ptr %i.uz, align 8, !tbaa !187, !alias.scope !1768, !noalias !1767
  %i.ajp = trunc i64 %i.ajo to i32
  %i.ajq = add i32 %i.ajp, -1
  br label %.lr.ph.i2.i.i.i225

.lr.ph.i2.i.i.i225:                               ; preds = %.lr.ph.i2.i.i.i225, %.lr.ph.preheader.i.i.i.i224
  %.020.i.i.i.i226 = phi i64 [ %i.ajt, %.lr.ph.i2.i.i.i225 ], [ %i.aja, %.lr.ph.preheader.i.i.i.i224 ] ; 3 uses
  %.01819.i.i.i.i227 = phi i32 [ %i.akd, %.lr.ph.i2.i.i.i225 ], [ %i.ajq, %.lr.ph.preheader.i.i.i.i224 ] ; 3 uses
  %i.ajr = urem i64 %.020.i.i.i.i226, 100
  %i.ajs = shl nuw nsw i64 %i.ajr, 1
  %i.ajt = udiv i64 %.020.i.i.i.i226, 100         ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ajs ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 1
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !188, !noalias !1769
  %i.ajx = zext i32 %.01819.i.i.i.i227 to i64
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajx
  store i8 %i.ajw, ptr %i.ajy, align 1, !tbaa !188
  %i.ajz = load i8, ptr %i.aju, align 2, !tbaa !188, !noalias !1769
  %i.aka = add i32 %.01819.i.i.i.i227, -1
  %i.akb = zext i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.akb
  store i8 %i.ajz, ptr %i.akc, align 1, !tbaa !188
  %i.akd = add i32 %.01819.i.i.i.i227, -2
  %i.ake = icmp ugt i64 %.020.i.i.i.i226, 9999
  br i1 %i.ake, label %.lr.ph.i2.i.i.i225, label %._crit_edge.i.i.i.i157, !llvm.loop !1693

._crit_edge.i.i.i.i157:                           ; preds = %.lr.ph.i2.i.i.i225, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i155
  %.0.lcssa.i.i.i.i158 = phi i64 [ %i.aja, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i155 ], [ %i.ajt, %.lr.ph.i2.i.i.i225 ] ; 3 uses
  %i.akf = icmp samesign ugt i64 %.0.lcssa.i.i.i.i158, 9
  br i1 %i.akf, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %._crit_edge.i.i.i.i157
  %i.akg = shl nuw nsw i64 %.0.lcssa.i.i.i.i158, 1
  %i.akh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.akg ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 1
  %i.akj = load i8, ptr %i.aki, align 1, !tbaa !188, !noalias !1769
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajm, i64 1
  store i8 %i.akj, ptr %i.akk, align 1, !tbaa !188
  %i.akl = load i8, ptr %i.akh, align 2, !tbaa !188, !noalias !1769
  br label %_ZNSt7__cxx119to_stringEm.exit.i.i159

bb.di:                                            ; preds = %._crit_edge.i.i.i.i157
  %i.akm = trunc nuw nsw i64 %.0.lcssa.i.i.i.i158 to i8
  %i.akn = or disjoint i8 %i.akm, 48
  br label %_ZNSt7__cxx119to_stringEm.exit.i.i159

_ZNSt7__cxx119to_stringEm.exit.i.i159:            ; preds = %bb.di, %bb.dh
  %storemerge.i.i.i.i160 = phi i8 [ %i.akn, %bb.di ], [ %i.akl, %bb.dh ]
  store i8 %storemerge.i.i.i.i160, ptr %i.ajm, align 1, !tbaa !188
  %i.ako = load ptr, ptr %5, align 8, !tbaa !190, !noalias !1767 ; 3 uses
  %i.akp = load i64, ptr %i.uz, align 8, !tbaa !187, !noalias !1767 ; 5 uses
  store ptr %i.va, ptr %4, align 8, !tbaa !184, !noalias !1767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.va, ptr noundef nonnull align 1 dereferenceable(6) @.str.27, i64 6, i1 false), !noalias !1767
  store i64 6, ptr %i.vb, align 8, !tbaa !187, !noalias !1767
  store i8 0, ptr %i.vc, align 2, !tbaa !188, !noalias !1767
  store ptr %i.ve, ptr %i.vd, align 8, !tbaa !184, !noalias !1767
  %i.akq = icmp eq ptr %i.ako, null
  %i.akr = icmp ne i64 %i.akp, 0
  %or.cond.i.i.i.i.i.i161 = and i1 %i.akq, %i.akr
  br i1 %or.cond.i.i.i.i.i.i161, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZNSt7__cxx119to_stringEm.exit.i.i159
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #27
  unreachable

bb.dk:                                            ; preds = %_ZNSt7__cxx119to_stringEm.exit.i.i159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !1767
  store i64 %i.akp, ptr %i.a, align 8, !tbaa !189, !noalias !1767
  %i.aks = icmp ugt i64 %i.akp, 15
  br i1 %i.aks, label %bb.dl, label %._crit_edge.i.i.i.i.i.i.i162

bb.dl:                                            ; preds = %bb.dk
  %i.akt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.vd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.akt, ptr %i.vd, align 8, !tbaa !190, !noalias !1767
  %i.aku = load i64, ptr %i.a, align 8, !tbaa !189, !noalias !1767
  store i64 %i.aku, ptr %i.ve, align 8, !tbaa !188, !noalias !1767
  br label %._crit_edge.i.i.i.i.i.i.i162

._crit_edge.i.i.i.i.i.i.i162:                     ; preds = %bb.dl, %bb.dk
  %i.akv = phi ptr [ %i.akt, %bb.dl ], [ %i.ve, %bb.dk ] ; 2 uses
  switch i64 %i.akp, label %bb.dn [
    i64 1, label %bb.dm
    i64 0, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ENS_9StringRefE.exit.i.i163
  ]

bb.dm:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i162
  %i.akw = load i8, ptr %i.ako, align 1, !tbaa !188
  store i8 %i.akw, ptr %i.akv, align 1, !tbaa !188
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ENS_9StringRefE.exit.i.i163

bb.dn:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i162
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.akv, ptr align 1 %i.ako, i64 %i.akp, i1 false)
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ENS_9StringRefE.exit.i.i163

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ENS_9StringRefE.exit.i.i163: ; preds = %bb.dn, %bb.dm, %._crit_edge.i.i.i.i.i.i.i162
  %i.akx = load i64, ptr %i.a, align 8, !tbaa !189, !noalias !1767 ; 2 uses
  store i64 %i.akx, ptr %i.vf, align 8, !tbaa !187, !noalias !1767
  %i.aky = load ptr, ptr %i.vd, align 8, !tbaa !190, !noalias !1767
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 %i.akx
  store i8 0, ptr %i.akz, align 1, !tbaa !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !1767
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vg, i8 0, i64 16, i1 false), !noalias !1767
  %i.ala = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsIRNS_18OptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %7, ptr nofree noundef nonnull align 8 dereferenceable(80) %4) ; 2 uses
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %i.ala, ptr nonnull @.str.32, i64 26) #26
  %i.alb = getelementptr inbounds nuw i8, ptr %i.vv, i64 232
  %i.alc = getelementptr inbounds nuw i8, ptr %i.vv, i64 248
  %.sroa.0.0.copyload.i.i.i164 = load i64, ptr %i.alb, align 8, !tbaa !189, !noalias !1767
  %.sroa.4.0..sroa_idx.i.i.i165 = getelementptr inbounds nuw i8, ptr %i.vv, i64 240
  %.sroa.4.0.copyload.i.i.i166 = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i165, align 8, !tbaa !552, !noalias !1767
end_hunk_1
