Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVVEmitter?download=true
inline.NumInlined: 2723
inline.NumDeleted: 919
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5clang16EmitRVVBuiltinCGERKN4llvm12RecordKeeperERNS0_11raw_ostreamE:bb.a
  call void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN5clang5RISCV7RVVTypeEELb0EEEEE18_M_deallocate_nodeEPS8_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull %.06.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i3 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i.i.i3, label %_ZNSt10_HashtableImSt4pairIKmN5clang5RISCV7RVVTypeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i2, !llvm.loop !0

_ZNSt10_HashtableImSt4pairIKmN5clang5RISCV7RVVTypeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i2, %_ZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamE.exit
  %i.ii = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.ij = load i64, ptr %i.c, align 8, !tbaa !77
  %i.ik = shl i64 %i.ij, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ii, i8 0, i64 %i.ik, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.il = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.b
  br i1 %i.im, label %_ZN12_GLOBAL__N_110RVVEmitterD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN5clang5RISCV7RVVTypeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.in = load i64, ptr %i.c, align 8, !tbaa !77
  %i.io = shl i64 %i.in, 3
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #21
  br label %_ZN12_GLOBAL__N_110RVVEmitterD2Ev.exit

_ZN12_GLOBAL__N_110RVVEmitterD2Ev.exit:           ; preds = %_ZNSt10_HashtableImSt4pairIKmN5clang5RISCV7RVVTypeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang18EmitRVVBuiltinSemaERKN4llvm12RecordKeeperERNS0_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::set.188", align 8      ; 11 uses
  %3 = alloca %"class.std::vector.108", align 8   ; 7 uses
  %4 = alloca %"class.(anonymous namespace)::SemaSignatureTable", align 8 ; 13 uses
  %5 = alloca %"class.std::vector.166", align 8   ; 8 uses
  %6 = alloca %"class.(anonymous namespace)::RVVEmitter", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %0, ptr %6, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 1, ptr %i.c, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.g, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 96
  store ptr %i.g, ptr %i.j, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i64 0, ptr %i.k, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call fastcc void @_ZN12_GLOBAL__N_110RVVEmitter19createRVVIntrinsicsERSt6vectorISt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESaIS8_EEPS1_INS_10SemaRecordESaISC_EE(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %5)
  %.val.i = load ptr, ptr %5, align 8, !tbaa !124 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.val10.i = load ptr, ptr %i.l, align 8, !tbaa !125 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.m, ptr %i.p, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !87
  %.not28.i.i.i = icmp eq ptr %.val10.i, %.val.i
  br i1 %.not28.i.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable4initEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.thread.i.i, label %.lr.ph.i.i.i

_ZN12_GLOBAL__N_118SemaSignatureTable4initEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.thread.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %.val15.pre.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !85 ; 2 uses
  %.not2630.i.i.i = icmp eq ptr %.val15.pre.i.i.i, %i.m
  br i1 %.not2630.i.i.i, label %.lr.ph.i.i, label %.lr.ph33.i.i.i

.lr.ph33.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.pre51.i = load ptr, ptr %4, align 8
  br label %bb.b

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.029.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %.val.i, %bb.a ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 104
  call fastcc void @"_ZZN12_GLOBAL__N_118SemaSignatureTable4initEN4llvm8ArrayRefINS_10SemaRecordEEEENK3$_0clERKNS1_11SmallVectorIN5clang5RISCV19PrototypeDescriptorELj12EEE"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(64) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 168
  call fastcc void @"_ZZN12_GLOBAL__N_118SemaSignatureTable4initEN4llvm8ArrayRefINS_10SemaRecordEEEENK3$_0clERKNS1_11SmallVectorIN5clang5RISCV19PrototypeDescriptorELj12EEE"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(64) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 232
  call fastcc void @"_ZZN12_GLOBAL__N_118SemaSignatureTable4initEN4llvm8ArrayRefINS_10SemaRecordEEEENK3$_0clERKNS1_11SmallVectorIN5clang5RISCV19PrototypeDescriptorELj12EEE"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(64) %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 304 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %.val10.i
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_118SemaSignatureTable6insertEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i, %.lr.ph33.i.i.i
  %.val.i.i.i.i = phi ptr [ %.val.i.i.i.pre51.i, %.lr.ph33.i.i.i ], [ %.val.i.i.i52.i, %_ZN12_GLOBAL__N_118SemaSignatureTable6insertEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i ] ; 5 uses
  %.sroa.021.031.i.i.i = phi ptr [ %.val15.pre.i.i.i, %.lr.ph33.i.i.i ], [ %i.ba, %_ZN12_GLOBAL__N_118SemaSignatureTable6insertEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.021.031.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !127  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.021.031.i.i.i, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !128  ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = icmp eq i32 %i.z, 0
  br i1 %i.ab, label %_ZN12_GLOBAL__N_118SemaSignatureTable6insertEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val2.i.i.i.i = load ptr, ptr %i.r, align 8
  %i.ac = ptrtoint ptr %.val2.i.i.i.i to i64
  %i.ad = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2                 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.af, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %reass.sub.i.i.i.i.i = sub nuw nsw i64 %i.af, %i.aa
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.0911.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ax, %bb.g ] ; 4 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i, i64 %.0911.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f, %bb.d
  %.011.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.f ], [ %i.ah, %bb.d ] ; 4 uses
  %.0810.i.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %bb.f ], [ %i.x, %bb.d ] ; 4 uses
  %i.ai = load i8, ptr %.011.i.i.i.i.i.i.i.i.i, align 2, !tbaa !133
  %i.aj = load i8, ptr %.0810.i.i.i.i.i.i.i.i.i, align 2, !tbaa !133
  %i.ak = icmp eq i8 %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !134
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !134
  %i.ap = icmp eq i8 %i.am, %i.ao
  br i1 %i.ap, label %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i.i.i.i.i, label %bb.g

_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !135
  %i.as = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 2
  %i.at = load i16, ptr %i.as, align 2, !tbaa !135
  %i.au = icmp eq i16 %i.ar, %i.at
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.ag
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !189

bb.g:                                             ; preds = %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ax = add nuw i64 %.0911.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.0911.i.i.i.i.i, %reass.sub.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.thread.i.i.i.i, label %bb.d, !llvm.loop !190

_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i.i: ; preds = %bb.f
  %i.ay = and i64 %.0911.i.i.i.i.i, 4294967295
  %.not.i.i.i.i = icmp eq i64 %i.ay, 4294967295
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.thread.i.i.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable6insertEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i

_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.thread.i.i.i.i: ; preds = %bb.g, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i.i, %bb.c
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa
  call void @_ZNSt6vectorIN5clang5RISCV19PrototypeDescriptorESaIS2_EE15_M_range_insertIPKS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %.val.i.i.i.i, ptr noundef %i.x, ptr noundef nonnull %i.az)
  %.val.i.i.i.pre.i = load ptr, ptr %4, align 8
  br label %_ZN12_GLOBAL__N_118SemaSignatureTable6insertEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i

_ZN12_GLOBAL__N_118SemaSignatureTable6insertEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i: ; preds = %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.thread.i.i.i.i, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i.i, %bb.b
  %.val.i.i.i52.i = phi ptr [ %.val.i.i.i.pre.i, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.thread.i.i.i.i ], [ %.val.i.i.i.i, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i.i ], [ %.val.i.i.i.i, %bb.b ]
  %i.ba = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.021.031.i.i.i) #25 ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.ba, %i.m
  br i1 %.not26.i.i.i, label %.lr.ph.i.i, label %bb.b

.lr.ph.i.i:                                       ; preds = %_ZN12_GLOBAL__N_118SemaSignatureTable6insertEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i.i, %._crit_edge.i.i.i
  %.val19.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !84
  call fastcc void @_ZNSt8_Rb_treeIN4llvm11SmallVectorIN5clang5RISCV19PrototypeDescriptorELj12EEES5_St9_IdentityIS5_EZN12_GLOBAL__N_118SemaSignatureTable4initENS0_8ArrayRefINS8_10SemaRecordEEEE7CompareSaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef %.val19.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit100.i.i, %.lr.ph.i.i
  %.sroa.12.0.i = phi ptr [ null, %.lr.ph.i.i ], [ %.sroa.12.1.i, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit100.i.i ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ null, %.lr.ph.i.i ], [ %.sroa.7.1.i, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit100.i.i ] ; 3 uses
  %.sroa.034.0.i = phi ptr [ null, %.lr.ph.i.i ], [ %.sroa.034.1.i, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit100.i.i ] ; 5 uses
  %.011.i.i = phi ptr [ %.val.i, %.lr.ph.i.i ], [ %i.hj, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit100.i.i ] ; 14 uses
  %.not.i70.i.i = icmp eq ptr %.sroa.7.0.i, %.sroa.12.0.i
  br i1 %.not.i70.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0.i, i8 0, i64 40, i1 false)
  br label %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.bc = ptrtoint ptr %.sroa.12.0.i to i64
  %i.bd = ptrtoint ptr %.sroa.034.0.i to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.k, label %_ZNKSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.835) #22
  unreachable

_ZNKSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.bg = sdiv exact i64 %i.be, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 230584300921369395)
  %i.bk = select i1 %i.bi, i64 230584300921369395, i64 %i.bj ; 3 uses
  %.not.i.i.i71.i.i = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i71.i.i)
  %i.bl = mul nuw nsw i64 %i.bk, 40
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #23 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, i8 0, i64 40, i1 false)
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.l, label %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %.sroa.034.0.i, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.034.0.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0.i, i64 noundef %i.be) #21
  br label %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bk
  br label %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i

_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i: ; preds = %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.i
  %.sroa.12.1.i = phi ptr [ %i.bp, %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.12.0.i, %bb.i ] ; 2 uses
  %.pn.i = phi ptr [ %i.bn, %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.7.0.i, %bb.i ] ; 14 uses
  %.sroa.034.1.i = phi ptr [ %i.bm, %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.034.0.i, %bb.i ] ; 2 uses
  %.sroa.7.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 40 ; 2 uses
  %i.bq = load ptr, ptr %.011.i.i, align 8, !tbaa !19
  store ptr %i.bq, ptr %.pn.i, align 8, !tbaa !193
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !194
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 104
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !127 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 112
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !128 ; 3 uses
  %i.by = zext i32 %i.bx to i64                   ; 3 uses
  %.val68.i.i = load ptr, ptr %4, align 8         ; 7 uses
  %i.bz = icmp eq i32 %i.bx, 0
  br i1 %i.bz, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i
  %.val69.i.i = load ptr, ptr %i.bb, align 8
  %i.ca = ptrtoint ptr %.val69.i.i to i64
  %i.cb = ptrtoint ptr %.val68.i.i to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 2                 ; 2 uses
  %.not.i72.i.i = icmp ult i64 %i.cd, %i.by
  br i1 %.not.i72.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i, label %.lr.ph.i73.i.i

.lr.ph.i73.i.i:                                   ; preds = %bb.n
  %reass.sub.i.i.i = sub nuw nsw i64 %i.cd, %i.by
  %.idx.i74.i.i = shl nuw nsw i64 %i.by, 2
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i74.i.i
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i73.i.i
  %.0911.i.i.i = phi i64 [ 0, %.lr.ph.i73.i.i ], [ %i.cv, %bb.r ] ; 4 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %.val68.i.i, i64 %.0911.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.q, %bb.o
  %.011.i.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.q ], [ %i.cf, %bb.o ] ; 4 uses
  %.0810.i.i.i.i.i.i.i = phi ptr [ %i.ct, %bb.q ], [ %i.bv, %bb.o ] ; 4 uses
  %i.cg = load i8, ptr %.011.i.i.i.i.i.i.i, align 2, !tbaa !133
  %i.ch = load i8, ptr %.0810.i.i.i.i.i.i.i, align 2, !tbaa !133
  %i.ci = icmp eq i8 %i.cg, %i.ch
  br i1 %i.ci, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !134
  %i.cl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !134
  %i.cn = icmp eq i8 %i.ck, %i.cm
  br i1 %i.cn, label %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i.i.i, label %bb.r

_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 2
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !135
  %i.cq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i, i64 2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !135
  %i.cs = icmp eq i16 %i.cp, %i.cr
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.ce
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !189

bb.r:                                             ; preds = %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i.i.i, %bb.p, %.lr.ph.i.i.i.i.i.i.i
  %i.cv = add nuw i64 %.0911.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %.0911.i.i.i, %reass.sub.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i, label %bb.o, !llvm.loop !190

bb.s:                                             ; preds = %bb.q
  %i.cw = trunc i64 %.0911.i.i.i to i16
  br label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i

_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i: ; preds = %bb.r, %bb.s, %bb.n, %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i
  %.1.i.i.i = phi i16 [ %i.cw, %bb.s ], [ 0, %_ZNSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i ], [ -1, %bb.n ], [ -1, %bb.r ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  store i16 %.1.i.i.i, ptr %i.cx, align 8, !tbaa !195
  %i.cy = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 168
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !127 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 176
  %i.db = load i32, ptr %i.da, align 8, !tbaa !128 ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 3 uses
  %i.dd = icmp eq i32 %i.db, 0
  br i1 %i.dd, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit87.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i
  %.val67.i.i = load ptr, ptr %i.bb, align 8
  %i.de = ptrtoint ptr %.val67.i.i to i64
  %i.df = ptrtoint ptr %.val68.i.i to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 2                 ; 2 uses
  %.not.i75.i.i = icmp ult i64 %i.dh, %i.dc
  br i1 %.not.i75.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit87.i.i, label %.lr.ph.i76.i.i

.lr.ph.i76.i.i:                                   ; preds = %bb.t
  %reass.sub.i77.i.i = sub nuw nsw i64 %i.dh, %i.dc
  %.idx.i78.i.i = shl nuw nsw i64 %i.dc, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.i78.i.i
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.lr.ph.i76.i.i
  %.0911.i79.i.i = phi i64 [ 0, %.lr.ph.i76.i.i ], [ %i.dz, %bb.x ] ; 4 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %.val68.i.i, i64 %.0911.i79.i.i
  br label %.lr.ph.i.i.i.i.i80.i.i

.lr.ph.i.i.i.i.i80.i.i:                           ; preds = %bb.w, %bb.u
  %.011.i.i.i.i.i81.i.i = phi ptr [ %i.dy, %bb.w ], [ %i.dj, %bb.u ] ; 4 uses
  %.0810.i.i.i.i.i82.i.i = phi ptr [ %i.dx, %bb.w ], [ %i.cz, %bb.u ] ; 4 uses
  %i.dk = load i8, ptr %.011.i.i.i.i.i81.i.i, align 2, !tbaa !133
  %i.dl = load i8, ptr %.0810.i.i.i.i.i82.i.i, align 2, !tbaa !133
  %i.dm = icmp eq i8 %i.dk, %i.dl
  br i1 %i.dm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i80.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i81.i.i, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !134
  %i.dp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i82.i.i, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !134
  %i.dr = icmp eq i8 %i.do, %i.dq
  br i1 %i.dr, label %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i85.i.i, label %bb.x

_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i85.i.i: ; preds = %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i81.i.i, i64 2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !135
  %i.du = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i82.i.i, i64 2
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !135
  %i.dw = icmp eq i16 %i.dt, %i.dv
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i85.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i82.i.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i81.i.i, i64 4
  %.not.i.i.i.i.i86.i.i = icmp eq ptr %i.dx, %i.di
  br i1 %.not.i.i.i.i.i86.i.i, label %bb.y, label %.lr.ph.i.i.i.i.i80.i.i, !llvm.loop !189

bb.x:                                             ; preds = %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i85.i.i, %bb.v, %.lr.ph.i.i.i.i.i80.i.i
  %i.dz = add nuw i64 %.0911.i79.i.i, 1
  %exitcond.not.i83.i.i = icmp eq i64 %.0911.i79.i.i, %reass.sub.i77.i.i
  br i1 %exitcond.not.i83.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit87.i.i, label %bb.u, !llvm.loop !190

bb.y:                                             ; preds = %bb.w
  %i.ea = trunc i64 %.0911.i79.i.i to i16
  br label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit87.i.i

_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit87.i.i: ; preds = %bb.x, %bb.y, %bb.t, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i
  %.1.i84.i.i = phi i16 [ %i.ea, %bb.y ], [ 0, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit.i.i ], [ -1, %bb.t ], [ -1, %bb.x ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn.i, i64 26
  store i16 %.1.i84.i.i, ptr %i.eb, align 2, !tbaa !196
  %i.ec = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 232
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !127 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 240
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !128 ; 3 uses
  %i.eg = zext i32 %i.ef to i64                   ; 3 uses
  %i.eh = icmp eq i32 %i.ef, 0
  br i1 %i.eh, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit100.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit87.i.i
  %.val65.i.i = load ptr, ptr %i.bb, align 8
  %i.ei = ptrtoint ptr %.val65.i.i to i64
  %i.ej = ptrtoint ptr %.val68.i.i to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 2                 ; 2 uses
  %.not.i88.i.i = icmp ult i64 %i.el, %i.eg
  br i1 %.not.i88.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit100.i.i, label %.lr.ph.i89.i.i

.lr.ph.i89.i.i:                                   ; preds = %bb.z
  %reass.sub.i90.i.i = sub nuw nsw i64 %i.el, %i.eg
  %.idx.i91.i.i = shl nuw nsw i64 %i.eg, 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx.i91.i.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %.lr.ph.i89.i.i
  %.0911.i92.i.i = phi i64 [ 0, %.lr.ph.i89.i.i ], [ %i.fd, %bb.ad ] ; 4 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %.val68.i.i, i64 %.0911.i92.i.i
  br label %.lr.ph.i.i.i.i.i93.i.i

.lr.ph.i.i.i.i.i93.i.i:                           ; preds = %bb.ac, %bb.aa
  %.011.i.i.i.i.i94.i.i = phi ptr [ %i.fc, %bb.ac ], [ %i.en, %bb.aa ] ; 4 uses
  %.0810.i.i.i.i.i95.i.i = phi ptr [ %i.fb, %bb.ac ], [ %i.ed, %bb.aa ] ; 4 uses
  %i.eo = load i8, ptr %.011.i.i.i.i.i94.i.i, align 2, !tbaa !133
  %i.ep = load i8, ptr %.0810.i.i.i.i.i95.i.i, align 2, !tbaa !133
  %i.eq = icmp eq i8 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i93.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i94.i.i, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !134
  %i.et = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i95.i.i, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !134
  %i.ev = icmp eq i8 %i.es, %i.eu
  br i1 %i.ev, label %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i98.i.i, label %bb.ad

_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i98.i.i: ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i94.i.i, i64 2
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !135
  %i.ey = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i95.i.i, i64 2
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !135
  %i.fa = icmp eq i16 %i.ex, %i.ez
  br i1 %i.fa, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i98.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i95.i.i, i64 4 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i94.i.i, i64 4
  %.not.i.i.i.i.i99.i.i = icmp eq ptr %i.fb, %i.em
  br i1 %.not.i.i.i.i.i99.i.i, label %bb.ae, label %.lr.ph.i.i.i.i.i93.i.i, !llvm.loop !189

bb.ad:                                            ; preds = %_ZNK5clang5RISCV19PrototypeDescriptoreqERKS1_.exit.i.i.i.i.i98.i.i, %bb.ab, %.lr.ph.i.i.i.i.i93.i.i
  %i.fd = add nuw i64 %.0911.i92.i.i, 1
  %exitcond.not.i96.i.i = icmp eq i64 %.0911.i92.i.i, %reass.sub.i90.i.i
  br i1 %exitcond.not.i96.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit100.i.i, label %bb.aa, !llvm.loop !190

bb.ae:                                            ; preds = %bb.ac
  %i.fe = trunc i64 %.0911.i92.i.i to i16
  br label %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit100.i.i

_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit100.i.i: ; preds = %bb.ad, %bb.ae, %bb.z, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit87.i.i
  %.1.i97.i.i = phi i16 [ %i.fe, %bb.ae ], [ 0, %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit87.i.i ], [ -1, %bb.z ], [ -1, %bb.ad ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.pn.i, i64 28
  store i16 %.1.i97.i.i, ptr %i.ff, align 4, !tbaa !197
  %i.fg = trunc i32 %i.bx to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.pn.i, i64 30
  store i8 %i.fg, ptr %i.fh, align 2, !tbaa !198
  %i.fi = trunc i32 %i.db to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %.pn.i, i64 31
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !199
  %i.fk = trunc i32 %i.ef to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  store i8 %i.fk, ptr %i.fl, align 8, !tbaa !200
  %i.fm = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 72
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !19
  %i.fo = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !201
  %i.fp = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 64
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !142
  %i.fr = trunc i32 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %.pn.i, i64 34
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !202
  %i.ft = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 68
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !143
  %i.fv = trunc i32 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %.pn.i, i64 36
  store i8 %i.fv, ptr %i.fw, align 4, !tbaa !203
  %i.fx = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 296
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !144
  %i.fz = trunc i32 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %.pn.i, i64 37
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !204
  %i.gb = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 300 ; 10 uses
  %i.gc = load i16, ptr %i.gb, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %.pn.i, i64 38 ; 11 uses
  %i.ge = and i16 %i.gc, 1
  %i.gf = load i16, ptr %i.gd, align 2
  %i.gg = and i16 %i.gf, -2
  %i.gh = or disjoint i16 %i.gg, %i.ge            ; 2 uses
  store i16 %i.gh, ptr %i.gd, align 2
  %i.gi = load i16, ptr %i.gb, align 4
  %.lobit.i.i = and i16 %i.gi, 2
  %i.gj = and i16 %i.gh, -3
  %i.gk = or disjoint i16 %i.gj, %.lobit.i.i      ; 2 uses
  store i16 %i.gk, ptr %i.gd, align 2
  %i.gl = load i16, ptr %i.gb, align 4
  %.lobit56.i.i = and i16 %i.gl, 4
  %i.gm = and i16 %i.gk, -5
  %i.gn = or disjoint i16 %i.gm, %.lobit56.i.i    ; 2 uses
  store i16 %i.gn, ptr %i.gd, align 2
  %i.go = load i16, ptr %i.gb, align 4
  %.lobit57.i.i = and i16 %i.go, 8
  %i.gp = and i16 %i.gn, -9
  %i.gq = or disjoint i16 %i.gp, %.lobit57.i.i    ; 2 uses
  store i16 %i.gq, ptr %i.gd, align 2
  %i.gr = load i16, ptr %i.gb, align 4
  %.lobit58.i.i = and i16 %i.gr, 16
  %i.gs = and i16 %i.gq, -17
  %i.gt = or disjoint i16 %i.gs, %.lobit58.i.i    ; 2 uses
  store i16 %i.gt, ptr %i.gd, align 2
  %i.gu = load i16, ptr %i.gb, align 4
  %.lobit59.i.i = and i16 %i.gu, 64
  %i.gv = and i16 %i.gt, -65
  %i.gw = or disjoint i16 %i.gv, %.lobit59.i.i    ; 2 uses
  store i16 %i.gw, ptr %i.gd, align 2
  %7 = load i16, ptr %i.gb, align 4
  %8 = and i16 %7, 768
  %i.gx = and i16 %i.gw, -769
  %i.gy = or disjoint i16 %i.gx, %8               ; 2 uses
  store i16 %i.gy, ptr %i.gd, align 2
  %i.gz = load i16, ptr %i.gb, align 4
  %i.ha = and i16 %i.gz, 3072
  %i.hb = and i16 %i.gy, -3073
  %i.hc = or disjoint i16 %i.hb, %i.ha            ; 2 uses
  store i16 %i.hc, ptr %i.gd, align 2
  %i.hd = load i16, ptr %i.gb, align 4
  %.lobit60.i.i = and i16 %i.hd, 128
  %i.he = and i16 %i.hc, -129
  %i.hf = or disjoint i16 %i.he, %.lobit60.i.i    ; 2 uses
  store i16 %i.hf, ptr %i.gd, align 2
  %i.hg = load i16, ptr %i.gb, align 4
  %.lobit61.i.i = and i16 %i.hg, 32
  %i.hh = and i16 %i.hf, -33
  %i.hi = or disjoint i16 %i.hh, %.lobit61.i.i
  store i16 %i.hi, ptr %i.gd, align 2
  %i.hj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 304 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hj, %.val10.i
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.loopexit.i, label %bb.h

_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.loopexit.i: ; preds = %_ZN12_GLOBAL__N_118SemaSignatureTable8getIndexEN4llvm8ArrayRefIN5clang5RISCV19PrototypeDescriptorEEE.exit100.i.i
  %i.hk = ptrtoint ptr %.sroa.12.1.i to i64
  br label %_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.i

_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.i: ; preds = %_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.loopexit.i, %_ZN12_GLOBAL__N_118SemaSignatureTable4initEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.thread.i.i
  %.val11.i13 = phi ptr [ null, %_ZN12_GLOBAL__N_118SemaSignatureTable4initEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.thread.i.i ], [ %.val68.i.i, %_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.loopexit.i ]
  %.sroa.12.2.i = phi i64 [ 0, %_ZN12_GLOBAL__N_118SemaSignatureTable4initEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.thread.i.i ], [ %i.hk, %_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.loopexit.i ]
  %.sroa.7.2.i = phi ptr [ null, %_ZN12_GLOBAL__N_118SemaSignatureTable4initEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.thread.i.i ], [ %.sroa.7.1.i, %_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.loopexit.i ] ; 2 uses
  %.sroa.034.2.i = phi ptr [ null, %_ZN12_GLOBAL__N_118SemaSignatureTable4initEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.thread.i.i ], [ %.sroa.034.1.i, %_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.loopexit.i ] ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !46
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 15 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !47 ; 2 uses
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = icmp ult i64 %i.hr, 28
  br i1 %i.hs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.i
  %i.ht = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.846, i64 noundef 28) #20 ; 0 uses
  %.val11.i.pre = load ptr, ptr %4, align 8, !tbaa !205
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.ag:                                            ; preds = %_ZN12_GLOBAL__N_110RVVEmitter25createRVVIntrinsicRecordsERSt6vectorIN5clang5RISCV18RVVIntrinsicRecordESaIS4_EERNS_18SemaSignatureTableEN4llvm8ArrayRefINS_10SemaRecordEEE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ho, ptr noundef nonnull align 1 dereferenceable(28) @.str.846, i64 28, i1 false)
  %i.hu = load ptr, ptr %i.hn, align 8, !tbaa !47
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 28
  store ptr %i.hv, ptr %i.hn, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.ag, %bb.af
  %.val11.i = phi ptr [ %.val11.i13, %bb.ag ], [ %.val11.i.pre, %bb.af ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val12.i = load ptr, ptr %i.hw, align 8, !tbaa !205 ; 2 uses
  %.not4.i.i = icmp eq ptr %.val11.i, %.val12.i
  br i1 %.not4.i.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable5printERN4llvm11raw_ostreamE.exit.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i, %_ZN4llvm11raw_ostreamlsEPKc.exit15.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.jy, %_ZN4llvm11raw_ostreamlsEPKc.exit15.i.i ], [ %.val11.i, %_ZN4llvm11raw_ostreamlsEPKc.exit.i ] ; 4 uses
  %i.hx = load ptr, ptr %i.hl, align 8, !tbaa !46
  %i.hy = load ptr, ptr %i.hn, align 8, !tbaa !47 ; 2 uses
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = icmp ult i64 %i.ib, 20
  br i1 %i.ic, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i15.i
  %i.id = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.850, i64 noundef 20) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.ai:                                            ; preds = %.lr.ph.i15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.hy, ptr noundef nonnull align 1 dereferenceable(20) @.str.850, i64 20, i1 false)
  %i.ie = load ptr, ptr %i.hn, align 8, !tbaa !47
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 20
  store ptr %i.if, ptr %i.hn, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i = phi ptr [ %i.id, %bb.ah ], [ %1, %bb.ai ]
  %i.ig = load i8, ptr %.sroa.01.05.i.i, align 2, !tbaa !133
  %i.ih = zext i8 %i.ig to i64
  %i.ii = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i, i64 noundef %i.ih) #20 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !46
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 32 ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !47 ; 2 uses
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = icmp ult i64 %i.ip, 2
  br i1 %i.iq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.ir = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ii, ptr noundef nonnull @.str.20, i64 noundef 2) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9.i.i

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  store i16 8236, ptr %i.im, align 1
  %i.is = load ptr, ptr %i.il, align 8, !tbaa !47
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  store ptr %i.it, ptr %i.il, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit9.i.i:            ; preds = %bb.ak, %bb.aj
  %.0.i.i8.i.i = phi ptr [ %i.ir, %bb.aj ], [ %i.ii, %bb.ak ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !134
  %i.iw = zext i8 %i.iv to i64
  %i.ix = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i8.i.i, i64 noundef %i.iw) #20 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !46
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 32 ; 3 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !47 ; 2 uses
  %i.jc = ptrtoint ptr %i.iz to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = icmp ult i64 %i.je, 2
  br i1 %i.jf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9.i.i
  %i.jg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ix, ptr noundef nonnull @.str.20, i64 noundef 2) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12.i.i

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9.i.i
  store i16 8236, ptr %i.jb, align 1
  %i.jh = load ptr, ptr %i.ja, align 8, !tbaa !47
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  store ptr %i.ji, ptr %i.ja, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit12.i.i:           ; preds = %bb.am, %bb.al
  %.0.i.i11.i.i = phi ptr [ %i.jg, %bb.al ], [ %i.ix, %bb.am ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 2
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !135
  %i.jl = zext i16 %i.jk to i64
  %i.jm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i11.i.i, i64 noundef %i.jl) #20 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !46
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 32 ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !47 ; 2 uses
  %i.jr = ptrtoint ptr %i.jo to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = icmp ult i64 %i.jt, 3
  br i1 %i.ju, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12.i.i
  %i.jv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jm, ptr noundef nonnull @.str.851, i64 noundef 3) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15.i.i

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jq, ptr noundef nonnull align 1 dereferenceable(3) @.str.851, i64 3, i1 false)
  %i.jw = load ptr, ptr %i.jp, align 8, !tbaa !47
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 3
  store ptr %i.jx, ptr %i.jp, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit15.i.i:           ; preds = %bb.ao, %bb.an
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.jy, %.val12.i
  br i1 %.not.i16.i, label %_ZN12_GLOBAL__N_118SemaSignatureTable5printERN4llvm11raw_ostreamE.exit.i, label %.lr.ph.i15.i

_ZN12_GLOBAL__N_118SemaSignatureTable5printERN4llvm11raw_ostreamE.exit.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.jz = load ptr, ptr %i.hl, align 8, !tbaa !46
  %i.ka = load ptr, ptr %i.hn, align 8, !tbaa !47 ; 2 uses
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = icmp ult i64 %i.kd, 7
  br i1 %i.ke, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN12_GLOBAL__N_118SemaSignatureTable5printERN4llvm11raw_ostreamE.exit.i
  %i.kf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.847, i64 noundef 7) #20 ; 0 uses
  %.pre.i = load ptr, ptr %i.hn, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19.i

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_118SemaSignatureTable5printERN4llvm11raw_ostreamE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ka, ptr noundef nonnull align 1 dereferenceable(7) @.str.847, i64 7, i1 false)
  %i.kg = load ptr, ptr %i.hn, align 8, !tbaa !47
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 7 ; 2 uses
  store ptr %i.kh, ptr %i.hn, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19.i

_ZN4llvm11raw_ostreamlsEPKc.exit19.i:             ; preds = %bb.aq, %bb.ap
  %i.ki = phi ptr [ %.pre.i, %bb.ap ], [ %i.kh, %bb.aq ] ; 2 uses
  %i.kj = load ptr, ptr %i.hl, align 8, !tbaa !46
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.ki to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = icmp ult i64 %i.km, 30
  br i1 %i.kn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19.i
  %i.ko = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.848, i64 noundef 30) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit22.i

bb.as:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.ki, ptr noundef nonnull align 1 dereferenceable(30) @.str.848, i64 30, i1 false)
end_hunk_0
