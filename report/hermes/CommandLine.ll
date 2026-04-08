inline.NumInlined: 2394
inline.NumDeleted: 987
begin_hunk_0_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %i.ks = add nuw i64 %i.ka, 1
  %.sroa.speculated22.i.i = call i64 @llvm.umin.i64(i64 %.sroa.22.0655.i, i64 %i.ks) ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0483.0654.i, i64 %.sroa.speculated22.i.i
  %i.ku = sub i64 %.sroa.22.0655.i, %.sroa.speculated22.i.i
  br label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.i

_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.i: ; preds = %bb.bn, %bb.bl
end_hunk_0
begin_hunk_1_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %i.mk = add nuw i64 %i.ls, 1
  %.sroa.speculated22.i314.i = call i64 @llvm.umin.i64(i64 %.sroa.22.1657.i, i64 %i.mk) ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0483.1656.i, i64 %.sroa.speculated22.i314.i
  %i.mm = sub i64 %.sroa.22.1657.i, %.sroa.speculated22.i314.i
  br label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.i

_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.i: ; preds = %bb.bu, %bb.bs
end_hunk_1
begin_hunk_2_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
bb.bw:                                            ; preds = %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit.i.i
  %.sroa.speculated118.i.i = call i64 @llvm.umin.i64(i64 %.sroa.22.7584622.i, i64 %.sroa.3.0.lcssa.i.i.i) ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0483.1636.i, i64 %.sroa.speculated118.i.i
  %i.ns = sub i64 %.sroa.22.7584622.i, %.sroa.speculated118.i.i
  br label %.loopexit.i

.preheader.i.i:                                   ; preds = %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit.i.i, %bb.by
end_hunk_2
begin_hunk_3_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %.032.i.i = phi ptr [ %i.ot, %bb.by ], [ %i.nl, %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit.i.i ]
  %.sroa.speculated88.i.i = call i64 @llvm.umin.i64(i64 %i.nt, i64 %.0123.i.i) ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0483.4.i, i64 %.sroa.speculated88.i.i ; 5 uses
  %i.nv = sub i64 %i.nt, %.sroa.speculated88.i.i  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  store i32 0, ptr %i.h, align 4, !tbaa !3
  %i.nw = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef nonnull %.032.i.i, ptr %.sroa.0483.4.i, i64 %.sroa.speculated88.i.i, ptr null, i64 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
end_hunk_3
begin_hunk_4_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  %i.pg = add nuw i64 %i.pb, 1
  %i.ph = call i64 @llvm.umin.i64(i64 %i.pd, i64 %i.pg) ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.ph
  %i.pj = sub i64 %i.pd, %i.ph
  store ptr %i.pf, ptr %6, align 8, !tbaa !55, !alias.scope !250
  store i64 %i.pe, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !tbaa !56, !alias.scope !250
  store ptr %i.pi, ptr %i.hk, align 8, !tbaa !55, !alias.scope !250
end_hunk_4
begin_hunk_5_@_ZN4llvh2cl6Option12printHelpStrENS_9StringRefEmm:bb.a
  %i.j = add nuw i64 %i.d, 1
  %i.k = call i64 @llvm.umin.i64(i64 %i.g, i64 %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = sub i64 %i.g, %i.k
  store ptr %i.i, ptr %5, align 8, !tbaa !55, !alias.scope !286
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.h, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !tbaa !56, !alias.scope !286
end_hunk_5
begin_hunk_6_@_ZN4llvh2cl6Option12printHelpStrENS_9StringRefEmm:bb.a
  %i.bg = add nuw i64 %i.bb, 1
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bg) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bj = sub i64 %i.bd, %i.bh
  br label %_ZNK4llvh9StringRef5splitEc.exit10

_ZNK4llvh9StringRef5splitEc.exit10:               ; preds = %bb.l, %bb.m
end_hunk_6
begin_hunk_7_@_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi:bb.a
  %i.av = add nuw i64 %.025103.i, 1
  %.sroa.speculated59.i = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0101.i, i64 %i.av) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0102.i, i64 %.sroa.speculated59.i ; 5 uses
  %i.ax = sub i64 %.sroa.9.0101.i, %.sroa.speculated59.i ; 4 uses
  %.not97.i = icmp eq i64 %i.ax, 0
  br i1 %.not97.i, label %.thread.i, label %bb.o

end_hunk_7
begin_hunk_8_@_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi:bb.a
  %i.br = add nuw i64 %.025103.i68, 1
  %.sroa.speculated59.i72 = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0101.i70, i64 %i.br) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0102.i69, i64 %.sroa.speculated59.i72 ; 5 uses
  %i.bt = sub i64 %.sroa.9.0101.i70, %.sroa.speculated59.i72 ; 4 uses
  %.not97.i73 = icmp eq i64 %i.bt, 0
  br i1 %.not97.i73, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81, label %bb.u

end_hunk_8
begin_hunk_9_@_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi:bb.a
  %i.cx = add nuw i64 %.025103.i88, 1
  %.sroa.speculated59.i92 = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0101.i90, i64 %i.cx) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0102.i89, i64 %.sroa.speculated59.i92 ; 5 uses
  %i.cz = sub i64 %.sroa.9.0101.i90, %.sroa.speculated59.i92 ; 4 uses
  %.not97.i93 = icmp eq i64 %i.cz, 0
  br i1 %.not97.i93, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101, label %bb.ab

end_hunk_9
