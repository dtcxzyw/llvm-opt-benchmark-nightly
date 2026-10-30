Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineBlockPlacement?download=true
inline.NumInlined: 4665
inline.NumDeleted: 2120
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 39
begin_hunk_0_@"_ZSt21__inplace_stable_sortIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_":bb.a
  store i32 %i.aq, ptr %i.ap, align 8, !tbaa !189
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !261
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.as, ptr %i.at, align 8, !tbaa !387
  %i.au = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.av = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !19

_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.d
  store i32 %.0.val.i, ptr %0, align 8, !tbaa !189
  store ptr %.sroa.418.0.copyload.i, ptr %i.g, align 8, !tbaa !387
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.0.val14.i.i = load i32, ptr %.pn21.i, align 8, !tbaa !189 ; 2 uses
  %i.aw = icmp ult i32 %.0.val14.i.i, %.0.val.i
  br i1 %i.aw, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.0.val17.i.i = phi i32 [ %.0.val.i.i, %.lr.ph.i.i ], [ %.0.val14.i.i, %bb.e ]
  %.016.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.e ] ; 3 uses
  %.0915.i.i = phi ptr [ %.016.i.i, %.lr.ph.i.i ], [ %.022.i, %bb.e ] ; 3 uses
  %i.ax = getelementptr i8, ptr %.0915.i.i, i64 -8
  store i32 %.0.val17.i.i, ptr %.0915.i.i, align 8, !tbaa !189
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !261
  %i.az = getelementptr inbounds nuw i8, ptr %.0915.i.i, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !387
  %.0.i.i = getelementptr inbounds i8, ptr %.016.i.i, i64 -16 ; 2 uses
  %.0.val.i.i = load i32, ptr %.0.i.i, align 4, !tbaa !189 ; 2 uses
  %i.ba = icmp ult i32 %.0.val.i.i, %.0.val.i
  br i1 %i.ba, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i", !llvm.loop !20

"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i": ; preds = %.lr.ph.i.i, %bb.e
  %.09.lcssa.i.i = phi ptr [ %.022.i, %bb.e ], [ %.016.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %.0.val.i, ptr %.09.lcssa.i.i, align 8, !tbaa !189
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 8
  store ptr %.sroa.418.0.copyload.i, ptr %i.bb, align 8, !tbaa !387
  %.val.pre.i = load i32, ptr %0, align 4, !tbaa !189
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i", %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i
  %.val26.i = phi i32 [ %.0.val.i, %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i ], [ %.val.pre.i, %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i" ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.022.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %1
  br i1 %.not.i, label %common.ret30, label %bb.c, !llvm.loop !21

common.ret30:                                     ; preds = %.preheader.i, %bb.b, %bb.f, %bb.g
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bc = lshr i64 %i.d, 1                        ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 4 uses
  tail call fastcc void @"_ZSt21__inplace_stable_sortIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_"(ptr noundef %0, ptr noundef %i.bd)
  tail call fastcc void @"_ZSt21__inplace_stable_sortIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_"(ptr noundef %i.bd, ptr noundef %1)
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.a, %i.be
  %i.bg = ashr exact i64 %i.bf, 4
  tail call fastcc void @"_ZSt22__merge_without_bufferIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_SN_T0_SO_T1_"(ptr noundef %0, ptr noundef %i.bd, ptr noundef %1, i64 noundef %i.bc, i64 noundef %i.bg)
  br label %common.ret30
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_lN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_T1_T2_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret34:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_lN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_T1_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_lN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_T1_T2_"(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_SN_T0_SO_T1_SO_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret34

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_T1_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %2)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_T1_"(ptr noundef %i.g, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @"_ZSt16__merge_adaptiveIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_SN_T0_SO_T1_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt24__merge_sort_with_bufferIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #19 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.f = icmp sgt i64 %i.c, 96
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %"_ZSt16__insertion_sortIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_.exit.i"
  %i.g = phi i64 [ %i.jz, %"_ZSt16__insertion_sortIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_.exit.i" ], [ %i.b, %bb.a ] ; 6 uses
  %.040.i = phi ptr [ %i.jy, %"_ZSt16__insertion_sortIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_SN_T0_.exit.i" ], [ %0, %bb.a ] ; 31 uses
  %i.h = getelementptr i8, ptr %.040.i, i64 8     ; 6 uses
  %.val.pre24.i.i = load i32, ptr %.040.i, align 4, !tbaa !189 ; 2 uses
  %.022.i.ptr.i = getelementptr inbounds nuw i8, ptr %.040.i, i64 16 ; 6 uses
  %.0.val.i.i = load i32, ptr %.022.i.ptr.i, align 4, !tbaa !189 ; 3 uses
  %i.i = getelementptr i8, ptr %.040.i, i64 24
  %i.j = icmp ult i32 %.val.pre24.i.i, %.0.val.i.i
  %.sroa.418.0.copyload.i.i = load ptr, ptr %i.i, align 8
  br i1 %i.j, label %bb.b, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = ptrtoint ptr %.022.i.ptr.i to i64
  %i.l = sub i64 %i.k, %i.g
  %i.m = ashr exact i64 %i.l, 4                   ; 5 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.040.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %.069.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.022.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %i.p = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.r = load i32, ptr %i.p, align 8, !tbaa !189
  store i32 %i.r, ptr %i.q, align 8, !tbaa !189
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !261
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !387
  %i.v = add nsw i64 %.010.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1152

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.unr = phi ptr [ %.022.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.w = icmp ult i64 %i.m, 4
  br i1 %i.w, label %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -16
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -16
  %i.z = load i32, ptr %i.x, align 8, !tbaa !189
  store i32 %i.z, ptr %i.y, align 8, !tbaa !189
  %i.aa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !261
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !387
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -32
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -32
  %i.af = load i32, ptr %i.ad, align 8, !tbaa !189
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !189
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !261
  %i.ai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !387
  %i.aj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -48
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -48
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !189
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !189
  %i.am = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !261
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -40
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !387
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !189
  store i32 %i.ar, ptr %i.aq, align 8, !tbaa !189
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !261
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -56
  store ptr %i.at, ptr %i.au, align 8, !tbaa !387
  %i.av = add nsw i64 %.010.i.i.i.i.i.i.i, -4
  %i.aw = icmp sgt i64 %.010.i.i.i.i.i.i.i, 4
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.i, !llvm.loop !19

_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store i32 %.0.val.i.i, ptr %.040.i, align 8, !tbaa !189
  store ptr %.sroa.418.0.copyload.i.i, ptr %i.h, align 8, !tbaa !387
  br label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.i"

"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.i": ; preds = %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.i, %.lr.ph.i
  %.val26.i.i = phi i32 [ %.0.val.i.i, %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.i ], [ %.val.pre24.i.i, %.lr.ph.i ]
  %.022.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.040.i, i64 32 ; 8 uses
  %.0.val.i.1.i = load i32, ptr %.022.i.ptr.1.i, align 8, !tbaa !189 ; 6 uses
  %i.ax = getelementptr i8, ptr %.040.i, i64 40
  %i.ay = icmp ult i32 %.val26.i.i, %.0.val.i.1.i
  %.sroa.418.0.copyload.i.1.i = load ptr, ptr %i.ax, align 8 ; 2 uses
  br i1 %i.ay, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.i"
  %.0.val14.i.i.1.i = load i32, ptr %.022.i.ptr.i, align 8, !tbaa !189 ; 2 uses
  %i.az = icmp ult i32 %.0.val14.i.i.1.i, %.0.val.i.1.i
  br i1 %i.az, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.1.i"

.lr.ph.i.i.1.i:                                   ; preds = %bb.c, %.lr.ph.i.i.1.i
  %.0.val17.i.i.1.i = phi i32 [ %.0.val.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.0.val14.i.i.1.i, %bb.c ]
  %.016.i.i.1.i = phi ptr [ %.0.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.022.i.ptr.i, %bb.c ] ; 3 uses
  %.0915.i.i.1.i = phi ptr [ %.016.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.022.i.ptr.1.i, %bb.c ] ; 3 uses
  %i.ba = getelementptr i8, ptr %.0915.i.i.1.i, i64 -8
  store i32 %.0.val17.i.i.1.i, ptr %.0915.i.i.1.i, align 8, !tbaa !189
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !261
  %i.bc = getelementptr inbounds nuw i8, ptr %.0915.i.i.1.i, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !387
  %.0.i.i.1.i = getelementptr inbounds i8, ptr %.016.i.i.1.i, i64 -16 ; 2 uses
  %.0.val.i.i.1.i = load i32, ptr %.0.i.i.1.i, align 4, !tbaa !189 ; 2 uses
  %i.bd = icmp ult i32 %.0.val.i.i.1.i, %.0.val.i.1.i
  br i1 %i.bd, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.1.i", !llvm.loop !20

"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.1.i": ; preds = %.lr.ph.i.i.1.i, %bb.c
  %.09.lcssa.i.i.1.i = phi ptr [ %.022.i.ptr.1.i, %bb.c ], [ %.016.i.i.1.i, %.lr.ph.i.i.1.i ] ; 2 uses
  store i32 %.0.val.i.1.i, ptr %.09.lcssa.i.i.1.i, align 8, !tbaa !189
  %i.be = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.1.i, i64 8
  store ptr %.sroa.418.0.copyload.i.1.i, ptr %i.be, align 8, !tbaa !387
  %.val.pre.i.1.i = load i32, ptr %.040.i, align 8, !tbaa !189
  br label %bb.e

bb.d:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.i"
  %i.bf = ptrtoint ptr %.022.i.ptr.1.i to i64
  %i.bg = sub i64 %i.bf, %i.g
  %i.bh = ashr exact i64 %i.bg, 4                 ; 5 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.preheader.i.1.i, label %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.1.i

.lr.ph.i.i.i.i.i.preheader.i.1.i:                 ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.040.i, i64 48 ; 2 uses
  %xtraiter37 = and i64 %i.bh, 3                  ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol

.lr.ph.i.i.i.i.i.i.1.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.1.i, %.lr.ph.i.i.i.i.i.i.1.i.prol
  %.010.i.i.i.i.i.i.1.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %.069.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bj, %.lr.ph.i.i.i.i.i.preheader.i.1.i ] ; 2 uses
  %.078.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %.022.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ] ; 2 uses
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %i.bk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bm = load i32, ptr %i.bk, align 8, !tbaa !189
  store i32 %i.bm, ptr %i.bl, align 8, !tbaa !189
  %i.bn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i.prol, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !261
  %i.bp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i.prol, i64 -8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !387
  %i.bq = add nsw i64 %.010.i.i.i.i.i.i.1.i.prol, -1 ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol, !llvm.loop !1153

.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.1.i
  %.010.i.i.i.i.i.i.1.i.unr = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.069.i.i.i.i.i.i.1.i.unr = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.078.i.i.i.i.i.i.1.i.unr = phi ptr [ %.022.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %i.br = icmp ult i64 %i.bh, 4
  br i1 %i.br, label %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.1.i, label %.lr.ph.i.i.i.i.i.i.1.i

.lr.ph.i.i.i.i.i.i.1.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i
  %.010.i.i.i.i.i.i.1.i = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.010.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.1.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.069.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.1.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.078.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %i.bs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -16
  %i.bt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -16
  %i.bu = load i32, ptr %i.bs, align 8, !tbaa !189
  store i32 %i.bu, ptr %i.bt, align 8, !tbaa !189
  %i.bv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !261
  %i.bx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !387
  %i.by = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -32
  %i.bz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -32
  %i.ca = load i32, ptr %i.by, align 8, !tbaa !189
  store i32 %i.ca, ptr %i.bz, align 8, !tbaa !189
  %i.cb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !261
  %i.cd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -24
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !387
  %i.ce = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -48
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -48
  %i.cg = load i32, ptr %i.ce, align 8, !tbaa !189
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !189
  %i.ch = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !261
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -40
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !387
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -64 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -64 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !189
  store i32 %i.cm, ptr %i.cl, align 8, !tbaa !189
  %i.cn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !261
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -56
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !387
  %i.cq = add nsw i64 %.010.i.i.i.i.i.i.1.i, -4
  %i.cr = icmp sgt i64 %.010.i.i.i.i.i.i.1.i, 4
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.1.i, label %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.1.i, !llvm.loop !19

_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.1.i: ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i, %bb.d
  store i32 %.0.val.i.1.i, ptr %.040.i, align 8, !tbaa !189
  store ptr %.sroa.418.0.copyload.i.1.i, ptr %i.h, align 8, !tbaa !387
  br label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.1.i, %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.1.i"
  %.val26.i.1.i = phi i32 [ %.0.val.i.1.i, %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.1.i ], [ %.val.pre.i.1.i, %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.1.i" ]
  %.022.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %.040.i, i64 48 ; 8 uses
  %.0.val.i.2.i = load i32, ptr %.022.i.ptr.2.i, align 8, !tbaa !189 ; 6 uses
  %i.cs = getelementptr i8, ptr %.040.i, i64 56
  %i.ct = icmp ult i32 %.val26.i.1.i, %.0.val.i.2.i
  %.sroa.418.0.copyload.i.2.i = load ptr, ptr %i.cs, align 8 ; 2 uses
  br i1 %i.ct, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.0.val14.i.i.2.i = load i32, ptr %.022.i.ptr.1.i, align 8, !tbaa !189 ; 2 uses
  %i.cu = icmp ult i32 %.0.val14.i.i.2.i, %.0.val.i.2.i
  br i1 %i.cu, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.2.i"

.lr.ph.i.i.2.i:                                   ; preds = %bb.f, %.lr.ph.i.i.2.i
  %.0.val17.i.i.2.i = phi i32 [ %.0.val.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.0.val14.i.i.2.i, %bb.f ]
  %.016.i.i.2.i = phi ptr [ %.0.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.022.i.ptr.1.i, %bb.f ] ; 3 uses
  %.0915.i.i.2.i = phi ptr [ %.016.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.022.i.ptr.2.i, %bb.f ] ; 3 uses
  %i.cv = getelementptr i8, ptr %.0915.i.i.2.i, i64 -8
  store i32 %.0.val17.i.i.2.i, ptr %.0915.i.i.2.i, align 8, !tbaa !189
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !261
  %i.cx = getelementptr inbounds nuw i8, ptr %.0915.i.i.2.i, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !387
  %.0.i.i.2.i = getelementptr inbounds i8, ptr %.016.i.i.2.i, i64 -16 ; 2 uses
  %.0.val.i.i.2.i = load i32, ptr %.0.i.i.2.i, align 4, !tbaa !189 ; 2 uses
  %i.cy = icmp ult i32 %.0.val.i.i.2.i, %.0.val.i.2.i
  br i1 %i.cy, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.2.i", !llvm.loop !20

"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_121MachineBlockPlacement19selectBestSuccessorEPKS3_RKNSA_10BlockChainEPKNS1_14SmallSetVectorISD_Lj16EEEE3$_0EEEvT_T0_.exit.i.2.i": ; preds = %.lr.ph.i.i.2.i, %bb.f
  %.09.lcssa.i.i.2.i = phi ptr [ %.022.i.ptr.2.i, %bb.f ], [ %.016.i.i.2.i, %.lr.ph.i.i.2.i ] ; 2 uses
  store i32 %.0.val.i.2.i, ptr %.09.lcssa.i.i.2.i, align 8, !tbaa !189
  %i.cz = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.2.i, i64 8
  store ptr %.sroa.418.0.copyload.i.2.i, ptr %i.cz, align 8, !tbaa !387
  %.val.pre.i.2.i = load i32, ptr %.040.i, align 8, !tbaa !189
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.da = ptrtoint ptr %.022.i.ptr.2.i to i64
  %i.db = sub i64 %i.da, %i.g
  %i.dc = ashr exact i64 %i.db, 4                 ; 5 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.preheader.i.2.i, label %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.2.i

.lr.ph.i.i.i.i.i.preheader.i.2.i:                 ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %.040.i, i64 64 ; 2 uses
  %xtraiter40 = and i64 %i.dc, 3                  ; 2 uses
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.i.prol

.lr.ph.i.i.i.i.i.i.2.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.2.i, %.lr.ph.i.i.i.i.i.i.2.i.prol
  %.010.i.i.i.i.i.i.2.i.prol = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.dc, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %.069.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.de, %.lr.ph.i.i.i.i.i.preheader.i.2.i ] ; 2 uses
  %.078.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %.022.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ] ; 2 uses
  %prol.iter42 = phi i64 [ %prol.iter42.next, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %i.df = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
  %i.dh = load i32, ptr %i.df, align 8, !tbaa !189
  store i32 %i.dh, ptr %i.dg, align 8, !tbaa !189
  %i.di = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i.prol, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !261
  %i.dk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i.prol, i64 -8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !387
  %i.dl = add nsw i64 %.010.i.i.i.i.i.i.2.i.prol, -1 ; 2 uses
  %prol.iter42.next = add i64 %prol.iter42, 1     ; 2 uses
  %prol.iter42.cmp.not = icmp eq i64 %prol.iter42.next, %xtraiter40
  br i1 %prol.iter42.cmp.not, label %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.i.prol, !llvm.loop !1154

.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.2.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.2.i
  %.010.i.i.i.i.i.i.2.i.unr = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %.069.i.i.i.i.i.i.2.i.unr = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %.078.i.i.i.i.i.i.2.i.unr = phi ptr [ %.022.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.df, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %i.dm = icmp ult i64 %i.dc, 4
  br i1 %i.dm, label %_ZSt13move_backwardIPSt4pairIN4llvm17BranchProbabilityEPNS1_17MachineBasicBlockEES6_ET0_T_S8_S7_.exit.i.2.i, label %.lr.ph.i.i.i.i.i.i.2.i

.lr.ph.i.i.i.i.i.i.2.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.2.i
  %.010.i.i.i.i.i.i.2.i = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.010.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.2.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.069.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.2.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.078.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 8 uses
  %i.dn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i, i64 -16
  %i.do = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i, i64 -16
  %i.dp = load i32, ptr %i.dn, align 8, !tbaa !189
  store i32 %i.dp, ptr %i.do, align 8, !tbaa !189
end_hunk_0
