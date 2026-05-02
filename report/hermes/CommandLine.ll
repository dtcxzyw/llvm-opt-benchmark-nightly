inline.NumInlined: 2394
inline.NumDeleted: 987
begin_hunk_0_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %.0194653.i = phi i32 [ 0, %bb.ab ], [ %.1.i, %bb.au ] ; 6 uses
  %.0198652.i = phi i1 [ false, %bb.ab ], [ %i.gv, %bb.au ] ; 2 uses
  %.0204651.i = phi i64 [ 0, %bb.ab ], [ %i.gw, %bb.au ] ; 2 uses
  %.0569650.i = phi i8 [ 0, %bb.ab ], [ %.1570.i, %bb.au ] ; 4 uses
  %i.er = load ptr, ptr %i.eg, align 8, !tbaa !178
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.0204651.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !240 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %i.ey = load i32, ptr %i.ej, align 8, !tbaa !156
  %i.ez = icmp ult i32 %i.ey, 2                   ; 2 uses
  %brmerge625.i = or i1 %.not.i, %i.ez
  %.0569.mux.i = select i1 %i.ez, i8 %.0569650.i, i8 1
  br i1 %brmerge625.i, label %bb.au, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_1
begin_hunk_2_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  br label %bb.au

bb.au:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit294.i, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ae
  %.1570.i = phi i8 [ %.0569650.i, %bb.ae ], [ %.0569650.i, %bb.aj ], [ 1, %_ZN4llvh11raw_ostreamlsEPKc.exit294.i ], [ %.0569650.i, %bb.ai ], [ %.0569.mux.i, %bb.ag ], [ 1, %bb.ah ] ; 3 uses
  %.1.i = phi i32 [ %i.ew, %bb.ae ], [ %.0194653.i, %bb.aj ], [ %.0194653.i, %_ZN4llvh11raw_ostreamlsEPKc.exit294.i ], [ %.0194653.i, %bb.ai ], [ %.0194653.i, %bb.ag ], [ %.0194653.i, %bb.ah ] ; 3 uses
  %.val279.i = load i16, ptr %i.eu, align 4
  %i.gu = and i16 %.val279.i, 5
end_hunk_2
begin_hunk_3_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ac, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i
  %.2571.i = phi i8 [ 0, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i ], [ %.1570.i, %bb.ac ], [ %.1570.i, %bb.av ] ; 2 uses
  %.0195.i = phi i1 [ true, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i ], [ false, %bb.ac ], [ %i.gy, %bb.av ]
  %.2.i = phi i32 [ 0, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i ], [ %.1.i, %bb.ac ], [ %.1.i, %bb.av ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
end_hunk_3
begin_hunk_4_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %.0205672.i = phi ptr [ null, %.lr.ph674.i ], [ %.2207.i, %bb.ea ] ; 17 uses
  %.0210670.i = phi i1 [ false, %.lr.ph674.i ], [ %.1211.i, %bb.ea ] ; 9 uses
  %.promoted.i = phi i32 [ %.0196.i, %.lr.ph674.i ], [ %i.xr, %bb.ea ] ; 4 uses
  %.3572667.i = phi i8 [ %.2571.i, %.lr.ph674.i ], [ %.6.i, %bb.ea ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  store ptr %i.hd, ptr %24, align 8, !tbaa !94
  store i64 0, ptr %i.he, align 8, !tbaa !96
end_hunk_4
begin_hunk_5_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit.i.i: ; preds = %bb.bv
  %i.np = and i16 %i.nn, 384
  %i.nq = icmp eq i16 %i.np, 256
  br i1 %i.nq, label %bb.bw, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit.i.i
  %27 = trunc nuw i8 %.3572667.i to i1
  br label %.preheader.i.i

bb.bw:                                            ; preds = %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit.i.i
  %.sroa.speculated118.i.i = call i64 @llvm.umin.i64(i64 %.sroa.22.7584622.i, i64 %.sroa.3.0.lcssa.i.i.i) ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %i.ns = sub i64 %.sroa.22.7584622.i, %.sroa.speculated118.i.i
  br label %.loopexit.i

.preheader.i.i:                                   ; preds = %bb.by, %.preheader.i.preheader.i
  %.sroa.0483.4.i = phi ptr [ %i.nu, %bb.by ], [ %.sroa.0483.1636.i, %.preheader.i.preheader.i ] ; 2 uses
  %.15.i = phi i1 [ %i.nx, %bb.by ], [ %27, %.preheader.i.preheader.i ]
  %i.nt = phi i64 [ %i.nv, %bb.by ], [ %.sroa.22.7584622.i, %.preheader.i.preheader.i ] ; 2 uses
  %.0123.i.i = phi i64 [ %.sroa.3.0.lcssa.i63.i.i, %bb.by ], [ %.sroa.3.0.lcssa.i.i.i, %.preheader.i.preheader.i ]
  %.032.i.i = phi ptr [ %i.ot, %bb.by ], [ %i.nl, %.preheader.i.preheader.i ]
  %.sroa.speculated88.i.i = call i64 @llvm.umin.i64(i64 %i.nt, i64 %.0123.i.i) ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0483.4.i, i64 %.sroa.speculated88.i.i ; 5 uses
  %i.nv = sub i64 %i.nt, %.sroa.speculated88.i.i  ; 8 uses
end_hunk_6
begin_hunk_7_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  br i1 %i.ox, label %bb.by, label %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i

_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i: ; preds = %bb.bx, %.critedge.i62.i.i
  %28 = zext i1 %i.nx to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  %.not36.i.i = icmp eq i64 %.sroa.3.0.lcssa.i63.i.i, %i.nv
  br i1 %.not36.i.i, label %.loopexit.loopexit.i, label %.preheader.i.i, !llvm.loop !246

bb.bz:                                            ; preds = %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i, %bb.bv, %.critedge.i.i.i
  %.sroa.0483.2.ph.i = phi ptr [ %i.nu, %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i ], [ %.sroa.0483.1636.i, %bb.bv ], [ %.sroa.0483.1636.i, %.critedge.i.i.i ]
  %.sroa.22.2.ph.i = phi i64 [ %i.nv, %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i ], [ %.sroa.22.7584622.i, %bb.bv ], [ %.sroa.22.7584622.i, %.critedge.i.i.i ] ; 2 uses
  %.4573.ph.i = phi i8 [ %28, %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i ], [ %.3572667.i, %bb.bv ], [ %.3572667.i, %.critedge.i.i.i ] ; 3 uses
  %i.oy = load i32, ptr %i.hi, align 8, !tbaa !156 ; 2 uses
  %.not.i326.i = icmp eq i32 %i.oy, 0
  br i1 %.not.i326.i, label %bb.ca, label %.lr.ph666.i
end_hunk_7
begin_hunk_8_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  br i1 %i.pa, label %_ZL19LookupNearestOptionN4llvh9StringRefERKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.thread880.i
  %.4573.ph879884.i = phi i8 [ %.3572667.i, %.thread880.i ], [ %.4573.ph.i, %bb.ca ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
end_hunk_8
begin_hunk_9_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  br i1 %.not35.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i331.i

_ZL19LookupNearestOptionN4llvh9StringRefERKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.i, %bb.ca
  %.4573.ph879885.i = phi i8 [ %.4573.ph879884.i, %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.i ], [ %.4573.ph.i, %bb.ca ]
  %.0.i336.i = phi i1 [ %.028.lcssa.i.i, %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.i ], [ true, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i

_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i: ; preds = %_ZL19LookupNearestOptionN4llvh9StringRefERKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.ba
  %.5.ph886.i = phi i8 [ %.4573.ph879885.i, %_ZL19LookupNearestOptionN4llvh9StringRefERKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.3572667.i, %bb.ba ]
  %.0216.ph.i = phi i1 [ %.0.i336.i, %_ZL19LookupNearestOptionN4llvh9StringRefERKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ true, %bb.ba ]
  %.pr.i = load i32, ptr %i.hi, align 8, !tbaa !156 ; 2 uses
  %.not.i342.i = icmp eq i32 %.pr.i, 0
end_hunk_9
begin_hunk_10_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i

.lr.ph666.i:                                      ; preds = %_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i, %.thread872.i, %bb.bz
  %.5891.i = phi i8 [ %.5.ph886.i, %_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i ], [ %.3572667.i, %.thread872.i ], [ %.4573.ph.i, %bb.bz ]
  %i.wo = phi i32 [ %.pr.i, %_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i ], [ %i.oz, %.thread872.i ], [ %i.oy, %bb.bz ]
  %i.wp = load ptr, ptr %i.eh, align 8, !tbaa !178 ; 2 uses
  %i.wq = zext i32 %i.wo to i64
end_hunk_10
begin_hunk_11_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %.not247.i = icmp eq ptr %i.xd, %i.wr
  br i1 %.not247.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i, label %bb.dv, !llvm.loop !277

.loopexit.loopexit.i:                             ; preds = %bb.by
  %29 = zext i1 %i.nx to i8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.bw, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i, %bb.bo
  %i.xe = phi i16 [ %i.nn, %bb.bw ], [ %i.ky, %bb.bo ], [ %.pre739.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %i.ov, %.loopexit.loopexit.i ] ; 2 uses
  %.sroa.0483.3.ph.i = phi ptr [ %.sroa.0483.1636.i, %bb.bw ], [ %.sroa.0483.0654.i, %bb.bo ], [ %.sroa.0483.1656.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %i.nu, %.loopexit.loopexit.i ]
  %.sroa.22.3.ph.i = phi i64 [ %.sroa.speculated118.i.i, %bb.bw ], [ %.sroa.22.4.i, %bb.bo ], [ %.sroa.22.6.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %i.nv, %.loopexit.loopexit.i ]
  %.sroa.7532.1.ph.i = phi i64 [ %i.ns, %bb.bw ], [ %.sroa.7532.2.i, %bb.bo ], [ %.sroa.7532.4.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %.sroa.7532.5585620.i, %.loopexit.loopexit.i ] ; 2 uses
  %.sroa.0531.1.ph.i = phi ptr [ %i.nr, %bb.bw ], [ %.sroa.0531.2.i, %bb.bo ], [ %.sroa.0531.4.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %.sroa.0531.5586618.i, %.loopexit.loopexit.i ]
  %.5.ph.i = phi i8 [ %.3572667.i, %bb.bw ], [ %.3572667.i, %bb.bo ], [ %.3572667.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %29, %.loopexit.loopexit.i ] ; 2 uses
  %.1214.ph.i = phi ptr [ %i.nl, %bb.bw ], [ %i.kw, %bb.bo ], [ %i.mo, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %i.ot, %.loopexit.loopexit.i ] ; 4 uses
  %i.xf = and i16 %i.xe, 384
  %i.xg = icmp eq i16 %i.xf, 128
  br i1 %i.xg, label %bb.dx, label %bb.dz
end_hunk_11
begin_hunk_12_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a

bb.dz:                                            ; preds = %.loopexit.i
  %i.xk = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef nonnull %.1214.ph.i, ptr %.sroa.0483.3.ph.i, i64 %.sroa.22.3.ph.i, ptr %.sroa.0531.1.ph.i, i64 %.sroa.7532.1.ph.i, i32 noundef %i.ax, ptr noundef nonnull %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %30 = trunc nuw i8 %.5.ph.i to i1
  %i.xl = or i1 %i.xk, %30
  %31 = zext i1 %i.xl to i8
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i

_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i: ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit301.i, %.preheader.i
end_hunk_12
begin_hunk_13_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i

_ZN4llvh11raw_ostreamlsEPKc.exit370.i:            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i, %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i, %bb.dz, %bb.dy, %bb.dx, %bb.du, %bb.dt, %_ZN4llvh11raw_ostreamlsEPKc.exit362.i, %_ZN4llvh9StringRefC2EPKc.exit260.i, %bb.bg, %bb.bc, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i, %_ZN4llvh9StringRefC2EPKc.exit267.i
  %.6.i = phi i8 [ %.3572667.i, %_ZN4llvh9StringRefC2EPKc.exit260.i ], [ 1, %bb.dt ], [ %.5.ph.i, %bb.dx ], [ 1, %_ZN4llvh11raw_ostreamlsEPKc.exit362.i ], [ 1, %bb.dy ], [ %31, %bb.dz ], [ %.3572667.i, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i ], [ %.3572667.i, %bb.bc ], [ %.3572667.i, %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i ], [ %.3572667.i, %_ZN4llvh9StringRefC2EPKc.exit267.i ], [ %.3572667.i, %bb.bg ], [ 1, %bb.du ], [ %.5891.i, %_ZN4llvh9StringRefC2EPKc.exit.i ] ; 2 uses
  %.0212.i = phi i32 [ 7, %_ZN4llvh9StringRefC2EPKc.exit260.i ], [ 7, %bb.dt ], [ 0, %bb.dx ], [ 7, %_ZN4llvh11raw_ostreamlsEPKc.exit362.i ], [ 0, %bb.dy ], [ 0, %bb.dz ], [ 7, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i ], [ 7, %bb.bc ], [ 5, %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i ], [ 7, %_ZN4llvh9StringRefC2EPKc.exit267.i ], [ 7, %bb.bg ], [ 7, %bb.du ], [ 7, %_ZN4llvh9StringRefC2EPKc.exit.i ]
  %.1211.i = phi i1 [ false, %_ZN4llvh9StringRefC2EPKc.exit260.i ], [ %.0210670.i, %bb.dt ], [ false, %bb.dx ], [ %.0210670.i, %_ZN4llvh11raw_ostreamlsEPKc.exit362.i ], [ false, %bb.dy ], [ false, %bb.dz ], [ %.0210670.i, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i ], [ %.0210670.i, %bb.bc ], [ %.0210670.i, %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i ], [ %.0210670.i, %_ZN4llvh9StringRefC2EPKc.exit267.i ], [ true, %bb.bg ], [ %.0210670.i, %bb.du ], [ %.0210670.i, %_ZN4llvh9StringRefC2EPKc.exit.i ]
  %.2207.i = phi ptr [ %.0205672.i, %_ZN4llvh9StringRefC2EPKc.exit260.i ], [ %.0205672.i, %bb.dt ], [ %.1214.ph.i, %bb.dx ], [ %.0205672.i, %_ZN4llvh11raw_ostreamlsEPKc.exit362.i ], [ %.1214.ph.i, %bb.dy ], [ %.0205672.i, %bb.dz ], [ null, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i ], [ null, %bb.bc ], [ null, %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i ], [ %.0205672.i, %_ZN4llvh9StringRefC2EPKc.exit267.i ], [ %.0205672.i, %bb.bg ], [ %.0205672.i, %bb.du ], [ %.0205672.i, %_ZN4llvh9StringRefC2EPKc.exit.i ]
end_hunk_13
begin_hunk_14_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.aw
  %i.xt = phi i32 [ 0, %bb.aw ], [ %.pre740.i, %._crit_edge.loopexit.i ] ; 5 uses
  %.7.i = phi i8 [ %.2571.i, %bb.aw ], [ %.6.i, %._crit_edge.loopexit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #29
  %i.xu = zext i32 %.2.i to i64
  %i.xv = icmp ult i32 %i.xt, %.2.i
end_hunk_14
begin_hunk_15_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
._crit_edge683.i:                                 ; preds = %._crit_edge683.loopexit.i, %bb.fi
  %.pre745.i = phi i32 [ %i.xt, %bb.fi ], [ %.pre745.pre.i, %._crit_edge683.loopexit.i ] ; 2 uses
  %i.afg = phi i1 [ true, %bb.fi ], [ %i.aff, %._crit_edge683.loopexit.i ]
  %.8.lcssa.i = phi i8 [ %.7.i, %bb.fi ], [ %.9.i, %._crit_edge683.loopexit.i ] ; 3 uses
  %.0200.lcssa.i = phi i32 [ 0, %bb.fi ], [ %.1201.i, %._crit_edge683.loopexit.i ] ; 2 uses
  %i.afh = icmp eq i32 %.0200.lcssa.i, 0
  %or.cond7.i = select i1 %i.afg, i1 %i.afh, i1 false
end_hunk_15
begin_hunk_16_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
.lr.ph682.i:                                      ; preds = %bb.fi, %bb.fk
  %.0199680.i = phi i64 [ %i.afw, %bb.fk ], [ 1, %bb.fi ] ; 2 uses
  %.0200679.i = phi i32 [ %.1201.i, %bb.fk ], [ 0, %bb.fi ] ; 3 uses
  %.8678.i = phi i8 [ %.9.i, %bb.fk ], [ %.7.i, %bb.fi ] ; 2 uses
  %i.afi = load ptr, ptr %i.eg, align 8, !tbaa !178
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %.0199680.i
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !240 ; 4 uses
end_hunk_16
begin_hunk_17_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %.sroa.22.0.copyload.i435.i = load i64, ptr %.sroa.22.0..sroa_idx.i434.i, align 8, !tbaa !57
  %i.aft = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef nonnull %i.afk, ptr %.sroa.01.0.copyload.i433.i, i64 %.sroa.22.0.copyload.i435.i, ptr %.sroa.014.0.copyload.i, i64 %.sroa.215.0.copyload.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %32 = trunc nuw i8 %.8678.i to i1
  %i.afu = or i1 %i.aft, %32
  %33 = zext i1 %i.afu to i8
  %i.afv = add i32 %.0200679.i, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %.lr.ph682.i
  %.9.i = phi i8 [ %33, %bb.fj ], [ %.8678.i, %.lr.ph682.i ] ; 2 uses
  %.1201.i = phi i32 [ %i.afv, %bb.fj ], [ %.0200679.i, %.lr.ph682.i ] ; 2 uses
  %i.afw = add i64 %.0199680.i, 1                 ; 2 uses
  %.not254.i = icmp eq i64 %i.afw, %i.adt
end_hunk_17
begin_hunk_18_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %.sroa.22.0.copyload.i439.i = load i64, ptr %.sroa.22.0..sroa_idx.i438.i, align 8, !tbaa !57
  %i.agd = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef %i.afy, ptr %.sroa.01.0.copyload.i437.i, i64 %.sroa.22.0.copyload.i439.i, ptr %.sroa.012.0.copyload.i, i64 %.sroa.213.0.copyload.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %34 = trunc nuw i8 %.8.lcssa.i to i1
  %i.age = or i1 %i.agd, %34
  %35 = zext i1 %i.age to i8
  %.pre744.i = load i32, ptr %i.ha, align 8, !tbaa !156
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %._crit_edge683.i
  %i.agf = phi i32 [ %.pre745.i, %._crit_edge683.i ], [ %.pre744.i, %bb.fm ]
  %.10.i = phi i8 [ %.8.lcssa.i, %._crit_edge683.i ], [ %35, %bb.fm ] ; 2 uses
  %.2202.i = phi i32 [ %.0200.lcssa.i, %._crit_edge683.i ], [ 1, %bb.fm ] ; 2 uses
  %.not255686.i = icmp eq i32 %i.agf, %.2202.i
  br i1 %.not255686.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit403.i, label %.lr.ph690.preheader.i

.lr.ph690.preheader.i:                            ; preds = %bb.fn
  %36 = trunc nuw i8 %.10.i to i1
  br label %.lr.ph690.i

.lr.ph690.i:                                      ; preds = %.lr.ph690.i, %.lr.ph690.preheader.i
  %.3203688.i = phi i32 [ %i.agp, %.lr.ph690.i ], [ %.2202.i, %.lr.ph690.preheader.i ] ; 2 uses
  %.11687.i = phi i1 [ %i.ago, %.lr.ph690.i ], [ %36, %.lr.ph690.preheader.i ]
  %i.agg = zext i32 %.3203688.i to i64
  %i.agh = load ptr, ptr %i.ef, align 8, !tbaa !240 ; 3 uses
  %i.agi = load ptr, ptr %23, align 8, !tbaa !178
end_hunk_18
begin_hunk_19_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %i.agp = add i32 %.3203688.i, 1                 ; 2 uses
  %i.agq = load i32, ptr %i.ha, align 8, !tbaa !156
  %.not255.i = icmp eq i32 %i.agq, %i.agp
  br i1 %.not255.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit403.loopexit711.i, label %.lr.ph690.i, !llvm.loop !284

_ZN4llvh11raw_ostreamlsEPKc.exit403.loopexit711.i: ; preds = %.lr.ph690.i
  %37 = zext i1 %i.ago to i8
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit403.i

_ZN4llvh11raw_ostreamlsEPKc.exit403.i:            ; preds = %._crit_edge697.i, %_ZN4llvh11raw_ostreamlsEPKc.exit403.loopexit711.i, %bb.fn, %bb.fl, %bb.ff, %bb.fe, %bb.fd, %bb.er, %bb.eq
  %.12.i = phi i8 [ 1, %bb.er ], [ 1, %bb.fd ], [ %.7.i, %bb.ff ], [ 1, %bb.eq ], [ 1, %bb.fe ], [ %.8.lcssa.i, %bb.fl ], [ %.10.i, %bb.fn ], [ %37, %_ZN4llvh11raw_ostreamlsEPKc.exit403.loopexit711.i ], [ %.7.i, %._crit_edge697.i ] ; 2 uses
  %i.agr = load ptr, ptr %i.ei, align 8, !tbaa !143 ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %.0197.i, i64 136
  %i.agt = load i32, ptr %i.ags, align 8, !tbaa !146 ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  br i1 %.not629.i, label %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i, label %bb.fp

_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i: ; preds = %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i, %_ZN4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i
  %.13.lcssa.i = phi i8 [ %.12.i, %_ZN4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i ], [ %.14.i, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i ]
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !127 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit.i

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit.i: ; preds = %bb.fo, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i
  %38 = trunc nuw i8 %.13.lcssa.i to i1
  %.not257.i = xor i1 %38, true                   ; 2 uses
  %brmerge.i = or i1 %.not.i, %.not257.i
  br i1 %brmerge.i, label %bb.fu, label %bb.ft

bb.fp:                                            ; preds = %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i, %.lr.ph708.i
  %i.ahf = phi ptr [ %.pre757.i, %.lr.ph708.i ], [ %i.ahq, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i ]
  %.13707.i = phi i8 [ %.12.i, %.lr.ph708.i ], [ %.14.i, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i ] ; 2 uses
  %.sroa.0452.0706.i = phi ptr [ %.sroa.0.1.i.i, %.lr.ph708.i ], [ %storemerge.i.i, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !150 ; 3 uses
end_hunk_21
begin_hunk_22_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp
  %.14.i = phi i8 [ 1, %bb.fr ], [ %.13707.i, %bb.fq ], [ %.13707.i, %bb.fp ] ; 2 uses
  br label %.critedge.i.i444.i

.critedge.i.i444.i:                               ; preds = %.critedge.i.i444.i.backedge, %bb.fs
end_hunk_22
