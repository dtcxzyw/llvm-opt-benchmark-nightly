Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$procfs_core..process..mount..MountNFSStatistics$GT$$GT$17h6de4f896bc09b071E":bb.a
  %.sroa.0.010.i.i.i21.i = phi i64 [ %i.af, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i24.i" ], [ 0, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h8416d45117a39df4E.exit17.i" ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.val.i18.i, i64 %.sroa.0.010.i.i.i21.i ; 2 uses
  %i.af = add nuw i64 %.sroa.0.010.i.i.i21.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5154)
  %.val.i.i.i.i22.i = load i64, ptr %i.ae, align 8, !alias.scope !5155, !noalias !5152 ; 2 uses
  %i.ag = icmp eq i64 %.val.i.i.i.i22.i, 0
  br i1 %i.ag, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i24.i", label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i20.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val1.i.i.i.i23.i = load ptr, ptr %i.ah, align 8, !alias.scope !5155, !noalias !5152, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i23.i, i64 noundef %.val.i.i.i.i22.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5156
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i24.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i24.i": ; preds = %bb.h, %.lr.ph.i.i.i20.i
  %i.ai = icmp eq i64 %i.af, %.val1.i19.i
  br i1 %i.ai, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4ed3d7a1c5bc059E.exit.i25.i", label %.lr.ph.i.i.i20.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4ed3d7a1c5bc059E.exit.i25.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i24.i", %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h8416d45117a39df4E.exit17.i"
  %.val2.i26.i = load i64, ptr %i.aa, align 8, !range !14, !alias.scope !5152, !noundef !4 ; 2 uses
  %i.aj = icmp eq i64 %.val2.i26.i, 0
  br i1 %i.aj, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h8416d45117a39df4E.exit27.i", label %bb.i

bb.i:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4ed3d7a1c5bc059E.exit.i25.i"
  %i.ak = mul nuw i64 %.val2.i26.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i18.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !5152
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h8416d45117a39df4E.exit27.i"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h8416d45117a39df4E.exit27.i": ; preds = %bb.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4ed3d7a1c5bc059E.exit.i25.i"
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5161)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !5162, !noundef !4 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %"_ZN4core3ptr68drop_in_place$LT$procfs_core..process..mount..MountNFSStatistics$GT$17h5287a6a4481ef9b8E.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h8416d45117a39df4E.exit27.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5163)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !5164, !noundef !4 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h74df8d6e65f73628E.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.al, align 8, !alias.scope !5164, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.as, align 16, !noalias !5165
  %i.at = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = bitcast <16 x i1> %i.at to i16
  br label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$procfs_core..process..mount..NFSOperationStat$RP$$GT$17ha16d1ae865cb8979E.exit.i.i.i.i.i.i.i", %bb.k
  %.sroa.07.018.i.i.i.i.i.i.i = phi ptr [ %i.as, %bb.k ], [ %.sroa.07.1.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$procfs_core..process..mount..NFSOperationStat$RP$$GT$17ha16d1ae865cb8979E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i.i = phi ptr [ %i.au, %bb.k ], [ %.sroa.6.1.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$procfs_core..process..mount..NFSOperationStat$RP$$GT$17ha16d1ae865cb8979E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i.i = phi i16 [ %i.av, %bb.k ], [ %i.be, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$procfs_core..process..mount..NFSOperationStat$RP$$GT$17ha16d1ae865cb8979E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.k ], [ %i.bh, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$procfs_core..process..mount..NFSOperationStat$RP$$GT$17ha16d1ae865cb8979E.exit.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h8df48ef856bcded5E.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i.i
  %i.aw = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.07.018.i.i.i.i.i.i.i, %bb.l ]
  %.val11.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aw, align 16, !noalias !5166
  %i.ay = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -1792 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ay to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h8df48ef856bcded5E.exit.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h8df48ef856bcded5E.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.l
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i.i, %bb.l ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i.i, %bb.l ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i.i, %bb.l ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bb = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.lcssa.i.i.i.i.i.i.i.i
  %i.bf = sub nsw i64 0, %i.bd
  %i.bg = getelementptr inbounds [112 x i8], ptr %.sroa.07.1.i.i.i.i.i.i.i, i64 %i.bf ; 2 uses
  %i.bh = add i64 %.sroa.109.015.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -112
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !5167, !noalias !5164 ; 2 uses
  %i.bj = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$procfs_core..process..mount..NFSOperationStat$RP$$GT$17ha16d1ae865cb8979E.exit.i.i.i.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h8df48ef856bcded5E.exit.i.i.i.i.i.i.i"
  %i.bk = getelementptr i8, ptr %i.bg, i64 -104
  %.val6.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !noalias !5164, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5168
  br label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$procfs_core..process..mount..NFSOperationStat$RP$$GT$17ha16d1ae865cb8979E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$procfs_core..process..mount..NFSOperationStat$RP$$GT$17ha16d1ae865cb8979E.exit.i.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h8df48ef856bcded5E.exit.i.i.i.i.i.i.i"
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h74df8d6e65f73628E.exit.i.i.i.i.i.i, label %bb.l

_ZN9hashbrown3raw13RawTableInner13drop_elements17h74df8d6e65f73628E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$procfs_core..process..mount..NFSOperationStat$RP$$GT$17ha16d1ae865cb8979E.exit.i.i.i.i.i.i.i", %bb.j
  %i.bm = mul i64 %i.an, 112                      ; 2 uses
  %i.bn = add i64 %i.bm, 112                      ; 2 uses
  %i.bo = add i64 %i.an, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 4 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = icmp ult i64 %i.bp, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bq)
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %"_ZN4core3ptr68drop_in_place$LT$procfs_core..process..mount..MountNFSStatistics$GT$17h5287a6a4481ef9b8E.exit", label %bb.n

bb.n:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h74df8d6e65f73628E.exit.i.i.i.i.i.i
  %i.bt = load ptr, ptr %i.al, align 8, !alias.scope !5162, !nonnull !4, !noundef !4
  %i.bu = sub i64 -112, %i.bm
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !5162
  br label %"_ZN4core3ptr68drop_in_place$LT$procfs_core..process..mount..MountNFSStatistics$GT$17h5287a6a4481ef9b8E.exit"
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$procfs_core..iomem..PhysicalMemoryMap$RP$$GT$$GT$17ha6b1649cb7f2e4ceE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5175)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hffd43c70c7a5160eE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr74drop_in_place$LT$$LP$usize$C$procfs_core..iomem..PhysicalMemoryMap$RP$$GT$17hf1c06d79b9770d29E.exit.i.i"
  %.sroa.0.011.i.i = phi i64 [ %i.e, %"_ZN4core3ptr74drop_in_place$LT$$LP$usize$C$procfs_core..iomem..PhysicalMemoryMap$RP$$GT$17hf1c06d79b9770d29E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.011.i.i, 1          ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val8.i.i = load i64, ptr %i.f, align 8, !alias.scope !5176 ; 2 uses
  %i.g = icmp eq i64 %.val8.i.i, 0
  br i1 %i.g, label %"_ZN4core3ptr74drop_in_place$LT$$LP$usize$C$procfs_core..iomem..PhysicalMemoryMap$RP$$GT$17hf1c06d79b9770d29E.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr i8, ptr %i.d, i64 16
  %.val9.i.i = load ptr, ptr %i.h, align 8, !alias.scope !5175, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5177
  br label %"_ZN4core3ptr74drop_in_place$LT$$LP$usize$C$procfs_core..iomem..PhysicalMemoryMap$RP$$GT$17hf1c06d79b9770d29E.exit.i.i"

"_ZN4core3ptr74drop_in_place$LT$$LP$usize$C$procfs_core..iomem..PhysicalMemoryMap$RP$$GT$17hf1c06d79b9770d29E.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hffd43c70c7a5160eE.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hffd43c70c7a5160eE.exit": ; preds = %"_ZN4core3ptr74drop_in_place$LT$$LP$usize$C$procfs_core..iomem..PhysicalMemoryMap$RP$$GT$17hf1c06d79b9770d29E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !14, !noundef !4 ; 2 uses
  %i.j = icmp eq i64 %.val2, 0
  br i1 %i.j, label %"_ZN4core3ptr104drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$usize$C$procfs_core..iomem..PhysicalMemoryMap$RP$$GT$$GT$17h295ef5759da10bcfE.exit6", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hffd43c70c7a5160eE.exit"
  %i.k = mul nuw i64 %.val2, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr104drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$usize$C$procfs_core..iomem..PhysicalMemoryMap$RP$$GT$$GT$17h295ef5759da10bcfE.exit6"

"_ZN4core3ptr104drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$usize$C$procfs_core..iomem..PhysicalMemoryMap$RP$$GT$$GT$17h295ef5759da10bcfE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hffd43c70c7a5160eE.exit", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$$GT$17ha1a3c6b6093ca090E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5184)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4d2183e834c5cedfE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit.i.i"
  %.sroa.0.09.i.i = phi i64 [ %i.e, %"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.09.i.i, 1           ; 4 uses
  %i.f = load i64, ptr %i.d, align 8, !range !9, !alias.scope !5185, !noundef !4
  %i.g = icmp eq i64 %i.f, -9223372036854775803
  br i1 %i.g, label %"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h07c28042ff914719E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.d)
          to label %"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit.i.i" unwind label %bb.c

"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4d2183e834c5cedfE.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.l, %"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit8.i.i" ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.l = add nuw i64 %.sroa.0.110.i.i, 1          ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !range !9, !alias.scope !5186, !noundef !4
  %i.n = icmp eq i64 %i.m, -9223372036854775803
  br i1 %i.n, label %"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit8.i.i", label %bb.d

bb.d:                                             ; preds = %.lr.ph12.i.i
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h07c28042ff914719E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.k)
          to label %"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit8.i.i" unwind label %bb.e

"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit8.i.i": ; preds = %bb.d, %.lr.ph12.i.i
  %i.o = icmp eq i64 %i.l, %.val1
  br i1 %i.o, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !5184
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit8.i.i", %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !14, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val4, 0
  br i1 %i.q, label %"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$$GT$17h8662f119283167e1E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.r = mul nuw i64 %.val4, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$$GT$17h8662f119283167e1E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4d2183e834c5cedfE.exit": ; preds = %"_ZN4core3ptr76drop_in_place$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$17he53f46b5cdfd5401E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !14, !noundef !4 ; 2 uses
  %i.s = icmp eq i64 %.val2, 0
  br i1 %i.s, label %"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$$GT$17h8662f119283167e1E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4d2183e834c5cedfE.exit"
  %i.t = mul nuw i64 %.val2, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$$GT$17h8662f119283167e1E.exit6"

"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$$GT$17h8662f119283167e1E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4d2183e834c5cedfE.exit", %bb.g
  ret void

"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$u8$C$procfs_core..ProcError$GT$$GT$$GT$17h8662f119283167e1E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h921eef8f3a0a02baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i"
  %i.c = phi i64 [ %i.aq, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i" ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i" ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !5213, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i": ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !5213, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i", label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i"
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !5213, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.i.i.i", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i"
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !5213, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i", %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i"
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.i.i.i" ], [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i" ], [ %i.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i" ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.i.i.i" ], [ %i.ab, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i" ], [ %i.q, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i" ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i"
    i32 13, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i"
    i32 12, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i"
    i32 11, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i"
    i32 10, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i"
    i32 9, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i"
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i, 127
  br i1 %i.ar, label %bb.e, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit"

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit" [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i"

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !5214, !noundef !4
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i"

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !5214, !noundef !4
  %i.bf = lshr i8 %i.be, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i": ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i", label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i", %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit": ; preds = %bb.e, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i", %bb.d, %bb.a
  %.sroa.4.121 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i" ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.019 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i" ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i" ], [ %i.c, %bb.e ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.121, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit", %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit" ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !5215, !noundef !4 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i.i": ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.121, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !5215, !noundef !4 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i.i", label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i.i"
end_hunk_0
begin_hunk_1_@"_ZN74_$LT$procfs_core..process..stat..Stat$u20$as$u20$procfs_core..FromRead$GT$9from_read17h555460a6da1ef1b4E":bb.a
  %i.ef = alloca [16 x i8], align 8               ; 5 uses
  %i.eg = alloca [24 x i8], align 8               ; 2 uses
  %i.eh = alloca [48 x i8], align 8               ; 6 uses
  %i.ei = alloca [48 x i8], align 8               ; 4 uses
  %i.ej = alloca [16 x i8], align 8               ; 5 uses
  %i.ek = alloca [24 x i8], align 8               ; 2 uses
  %i.el = alloca [48 x i8], align 8               ; 6 uses
  %i.em = alloca [48 x i8], align 8               ; 4 uses
  %i.en = alloca [16 x i8], align 8               ; 5 uses
  %i.eo = alloca [24 x i8], align 8               ; 2 uses
  %i.ep = alloca [48 x i8], align 8               ; 6 uses
  %i.eq = alloca [48 x i8], align 8               ; 4 uses
  %i.er = alloca [16 x i8], align 8               ; 5 uses
  %i.es = alloca [24 x i8], align 8               ; 2 uses
  %i.et = alloca [48 x i8], align 8               ; 6 uses
  %i.eu = alloca [48 x i8], align 8               ; 4 uses
  %i.ev = alloca [16 x i8], align 8               ; 5 uses
  %i.ew = alloca [24 x i8], align 8               ; 2 uses
  %i.ex = alloca [48 x i8], align 8               ; 6 uses
  %i.ey = alloca [48 x i8], align 8               ; 4 uses
  %i.ez = alloca [16 x i8], align 8               ; 5 uses
  %i.fa = alloca [24 x i8], align 8               ; 2 uses
  %i.fb = alloca [48 x i8], align 8               ; 6 uses
  %i.fc = alloca [48 x i8], align 8               ; 4 uses
  %i.fd = alloca [16 x i8], align 8               ; 5 uses
  %i.fe = alloca [24 x i8], align 8               ; 2 uses
  %i.ff = alloca [48 x i8], align 8               ; 6 uses
  %i.fg = alloca [48 x i8], align 8               ; 4 uses
  %i.fh = alloca [16 x i8], align 8               ; 5 uses
  %i.fi = alloca [24 x i8], align 8               ; 2 uses
  %i.fj = alloca [48 x i8], align 8               ; 6 uses
  %i.fk = alloca [48 x i8], align 8               ; 4 uses
  %i.fl = alloca [16 x i8], align 8               ; 5 uses
  %i.fm = alloca [24 x i8], align 8               ; 2 uses
  %i.fn = alloca [48 x i8], align 8               ; 6 uses
  %i.fo = alloca [48 x i8], align 8               ; 4 uses
  %i.fp = alloca [16 x i8], align 8               ; 5 uses
  %i.fq = alloca [24 x i8], align 8               ; 2 uses
  %i.fr = alloca [48 x i8], align 8               ; 6 uses
  %i.fs = alloca [48 x i8], align 8               ; 4 uses
  %i.ft = alloca [16 x i8], align 8               ; 5 uses
  %i.fu = alloca [24 x i8], align 8               ; 2 uses
  %i.fv = alloca [48 x i8], align 8               ; 6 uses
  %i.fw = alloca [48 x i8], align 8               ; 4 uses
  %i.fx = alloca [16 x i8], align 8               ; 5 uses
  %i.fy = alloca [24 x i8], align 8               ; 2 uses
  %i.fz = alloca [48 x i8], align 8               ; 6 uses
  %i.ga = alloca [48 x i8], align 8               ; 4 uses
  %i.gb = alloca [16 x i8], align 8               ; 5 uses
  %i.gc = alloca [24 x i8], align 8               ; 2 uses
  %i.gd = alloca [48 x i8], align 8               ; 6 uses
  %i.ge = alloca [48 x i8], align 8               ; 4 uses
  %i.gf = alloca [16 x i8], align 8               ; 5 uses
  %i.gg = alloca [24 x i8], align 8               ; 2 uses
  %i.gh = alloca [48 x i8], align 8               ; 6 uses
  %i.gi = alloca [48 x i8], align 8               ; 4 uses
  %i.gj = alloca [16 x i8], align 8               ; 5 uses
  %i.gk = alloca [24 x i8], align 8               ; 2 uses
  %i.gl = alloca [48 x i8], align 8               ; 6 uses
  %i.gm = alloca [48 x i8], align 8               ; 4 uses
  %i.gn = alloca [16 x i8], align 8               ; 5 uses
  %i.go = alloca [24 x i8], align 8               ; 2 uses
  %i.gp = alloca [48 x i8], align 8               ; 6 uses
  %i.gq = alloca [48 x i8], align 8               ; 4 uses
  %i.gr = alloca [16 x i8], align 8               ; 5 uses
  %i.gs = alloca [24 x i8], align 8               ; 2 uses
  %i.gt = alloca [48 x i8], align 8               ; 6 uses
  %i.gu = alloca [48 x i8], align 8               ; 4 uses
  %i.gv = alloca [16 x i8], align 8               ; 5 uses
  %i.gw = alloca [24 x i8], align 8               ; 2 uses
  %i.gx = alloca [48 x i8], align 8               ; 6 uses
  %i.gy = alloca [48 x i8], align 8               ; 4 uses
  %i.gz = alloca [16 x i8], align 8               ; 5 uses
  %i.ha = alloca [24 x i8], align 8               ; 2 uses
  %i.hb = alloca [48 x i8], align 8               ; 6 uses
  %i.hc = alloca [48 x i8], align 8               ; 4 uses
  %i.hd = alloca [16 x i8], align 8               ; 5 uses
  %i.he = alloca [24 x i8], align 8               ; 2 uses
  %i.hf = alloca [48 x i8], align 8               ; 6 uses
  %i.hg = alloca [48 x i8], align 8               ; 4 uses
  %i.hh = alloca [16 x i8], align 8               ; 5 uses
  %i.hi = alloca [24 x i8], align 8               ; 2 uses
  %i.hj = alloca [48 x i8], align 8               ; 6 uses
  %i.hk = alloca [48 x i8], align 8               ; 4 uses
  %i.hl = alloca [16 x i8], align 8               ; 5 uses
  %i.hm = alloca [24 x i8], align 8               ; 2 uses
  %i.hn = alloca [48 x i8], align 8               ; 6 uses
  %i.ho = alloca [48 x i8], align 8               ; 4 uses
  %i.hp = alloca [16 x i8], align 8               ; 5 uses
  %i.hq = alloca [24 x i8], align 8               ; 2 uses
  %i.hr = alloca [48 x i8], align 8               ; 6 uses
  %i.hs = alloca [48 x i8], align 8               ; 4 uses
  %i.ht = alloca [16 x i8], align 8               ; 5 uses
  %i.hu = alloca [24 x i8], align 8               ; 2 uses
  %i.hv = alloca [48 x i8], align 8               ; 6 uses
  %i.hw = alloca [48 x i8], align 8               ; 4 uses
  %i.hx = alloca [16 x i8], align 8               ; 5 uses
  %i.hy = alloca [24 x i8], align 8               ; 2 uses
  %i.hz = alloca [48 x i8], align 8               ; 6 uses
  %i.ia = alloca [48 x i8], align 8               ; 4 uses
  %i.ib = alloca [16 x i8], align 8               ; 5 uses
  %i.ic = alloca [24 x i8], align 8               ; 2 uses
  %i.id = alloca [48 x i8], align 8               ; 6 uses
  %i.ie = alloca [48 x i8], align 8               ; 4 uses
  %i.if = alloca [16 x i8], align 8               ; 5 uses
  %i.ig = alloca [24 x i8], align 8               ; 2 uses
  %i.ih = alloca [48 x i8], align 8               ; 6 uses
  %i.ii = alloca [48 x i8], align 8               ; 4 uses
  %i.ij = alloca [16 x i8], align 8               ; 5 uses
  %i.ik = alloca [24 x i8], align 8               ; 2 uses
  %i.il = alloca [48 x i8], align 8               ; 6 uses
  %i.im = alloca [48 x i8], align 8               ; 4 uses
  %i.in = alloca [16 x i8], align 8               ; 5 uses
  %i.io = alloca [24 x i8], align 8               ; 2 uses
  %i.ip = alloca [48 x i8], align 8               ; 6 uses
  %i.iq = alloca [48 x i8], align 8               ; 4 uses
  %i.ir = alloca [16 x i8], align 8               ; 5 uses
  %i.is = alloca [24 x i8], align 8               ; 2 uses
  %i.it = alloca [72 x i8], align 8               ; 64 uses
  %i.iu = alloca [16 x i8], align 8               ; 5 uses
  %i.iv = alloca [24 x i8], align 8               ; 2 uses
  %i.iw = alloca [1 x i8], align 1                ; 4 uses
  %i.ix = alloca [16 x i8], align 8               ; 5 uses
  %i.iy = alloca [24 x i8], align 8               ; 2 uses
  %i.iz = alloca [16 x i8], align 8               ; 5 uses
  %i.ja = alloca [24 x i8], align 8               ; 2 uses
  %i.jb = alloca [24 x i8], align 8               ; 9 uses
  %i.jc = alloca [24 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jc)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !24214
  %i.jd = tail call noundef dereferenceable_or_null(512) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef range(i64 1, 9) 1) #42, !noalias !24214 ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 512, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @723) #43
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit": ; preds = %bb.e, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit", %bb.c
  %.pn986 = phi { ptr, i32 } [ %i.jf, %bb.c ], [ %.pn984, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit" ], [ %.pn984, %bb.e ]
  call void @"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1) #44
  resume { ptr, i32 } %.pn986

bb.c:                                             ; preds = %bb.b
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit"

bb.d:                                             ; preds = %bb.a
  store i64 512, ptr %i.jc, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 5 uses
  store ptr %i.jd, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  store i64 0, ptr %i.jh, align 8
  %i.ji = invoke { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$11read_to_end17ha6c38e3bf203a018E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jc)
          to label %bb.g unwind label %bb.f       ; 2 uses

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit", %bb.k, %bb.f
  %.pn984 = phi { ptr, i32 } [ %i.jk, %bb.f ], [ %.pn982, %bb.k ], [ %.pn982, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit" ] ; 2 uses
  %.val991 = load i64, ptr %i.jc, align 8         ; 2 uses
  %i.jj = icmp eq i64 %.val991, 0
  br i1 %i.jj, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"
  %.val992 = load ptr, ptr %i.jg, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val992, i64 noundef %.val991, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit"

bb.f:                                             ; preds = %bb.i, %bb.h, %bb.d
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

bb.g:                                             ; preds = %bb.d
  %i.jl = extractvalue { i64, ptr } %i.ji, 0
  %i.jm = trunc nuw i64 %i.jl to i1
  br i1 %i.jm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.jn = extractvalue { i64, ptr } %i.ji, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bc, ptr noundef nonnull %i.jn)
          to label %bb.mu unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jb)
  %i.jo = load ptr, ptr %i.jg, align 8, !nonnull !4, !noundef !4
  %i.jp = load i64, ptr %i.jh, align 8, !noundef !4
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jo, i64 noundef %i.jp)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 4 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !nonnull !4
  %i.js = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jt = load i64, ptr %i.js, align 8
  %i.ju = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h921eef8f3a0a02baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jr, i64 noundef %i.jt) ; 2 uses
  %i.jv = extractvalue { ptr, i64 } %i.ju, 0      ; 16 uses
  %i.jw = extractvalue { ptr, i64 } %i.ju, 1      ; 15 uses
  br label %.backedge.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %.loopexit1542, %.loopexit.split-lp1543.loopexit.split-lp, %.loopexit.split-lp1543.loopexit, %bb.af, %bb.ae
  %.pn982 = phi { ptr, i32 } [ %.pn, %bb.af ], [ %.pn, %bb.ae ], [ %lpad.loopexit1544, %.loopexit1542 ], [ %lpad.loopexit1547, %.loopexit.split-lp1543.loopexit ], [ %lpad.loopexit.split-lp1548, %.loopexit.split-lp1543.loopexit.split-lp ] ; 2 uses
  %.val997 = load i64, ptr %i.jb, align 8, !range !10, !noundef !4 ; 2 uses
  %switch = icmp sgt i64 %.val997, 0
  br i1 %switch, label %bb.k, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

bb.k:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"
  %.val998 = load ptr, ptr %i.jq, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val998, i64 noundef %.val997, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !24215
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

.loopexit1542:                                    ; preds = %.preheader
  %lpad.loopexit1544 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

.loopexit.split-lp1543.loopexit:                  ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %lpad.loopexit1547 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

.loopexit.split-lp1543.loopexit.split-lp:         ; preds = %.thread1499.invoke, %bb.aa, %bb.s, %.thread1488
  %lpad.loopexit.split-lp1548 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.j
  %i.jx = phi i64 [ 0, %bb.j ], [ %i.kk, %.backedge.i.backedge ] ; 5 uses
  %i.jy = sub nuw i64 %i.jw, %i.jx                ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jx ; 2 uses
  %i.ka = icmp ult i64 %i.jy, 16
  br i1 %i.ka, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %.backedge.i
  %.not.i.i.i = icmp eq i64 %i.jw, %i.jx
  br i1 %.not.i.i.i, label %.thread1488, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.l
  %.sroa.01.05.i.i.i = phi i64 [ %i.ke, %bb.l ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.sroa.01.05.i.i.i
  %i.kc = load i8, ptr %i.kb, align 1, !alias.scope !24216, !noalias !24217, !noundef !4
  %i.kd = icmp eq i8 %i.kc, 40
  br i1 %i.kd, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ke = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ke, %i.jy
  br i1 %exitcond.not.i.i.i, label %.thread1488, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %.backedge.i
  %i.kf = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jz, i64 noundef %i.jy)
          to label %.noexc999 unwind label %.loopexit.split-lp1543.loopexit ; 2 uses

.noexc999:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %i.kg = extractvalue { i64, i64 } %i.kf, 0
  %i.kh = extractvalue { i64, i64 } %i.kf, 1
  %i.ki = trunc nuw i64 %i.kg to i1
  br i1 %i.ki, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %.thread1488

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %.noexc999
  %.sroa.4.0.i27.i.i = phi i64 [ %i.kh, %.noexc999 ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.kj = add i64 %i.jx, 1
  %i.kk = add i64 %i.kj, %.sroa.4.0.i27.i.i       ; 2 uses
  %.not21.i.i = icmp ugt i64 %i.kk, %i.jw         ; 2 uses
  %i.kl = add i64 %.sroa.4.0.i27.i.i, %i.jx       ; 7 uses
  %or.cond.i.not.i = icmp ult i64 %i.kl, %i.jw
  br i1 %or.cond.i.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %.thread1488, label %.backedge.i.backedge

bb.n:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.kl
  %lhsc.i = load i8, ptr %i.km, align 1, !alias.scope !24218
  %i.kn = icmp eq i8 %lhsc.i, 40                  ; 2 uses
  %brmerge.i = or i1 %.not21.i.i, %i.kn
  br i1 %brmerge.i, label %bb.o, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.n, %bb.m
  br label %.backedge.i

bb.o:                                             ; preds = %bb.n
  br i1 %i.kn, label %.preheader, label %.thread1488

.thread1488:                                      ; preds = %.preheader.i.i.i, %.noexc999, %bb.m, %bb.l, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iz)
  store ptr %i.a, ptr %i.iz, align 8
  %.sroa.4580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4580.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !24219
  store ptr @3, ptr %i.bb, align 8, !noalias !24220
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24220
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.iz, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !24220
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !24220
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !24220
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ja, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bb)
          to label %bb.mr unwind label %.loopexit.split-lp1543.loopexit.split-lp

.preheader:                                       ; preds = %bb.o, %bb.p
  %i.ko = phi i64 [ %i.ks, %bb.p ], [ %i.jw, %bb.o ]
  %i.kp = invoke { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef 41, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jv, i64 noundef %i.ko)
          to label %.noexc1004 unwind label %.loopexit1542 ; 2 uses

.noexc1004:                                       ; preds = %.preheader
  %i.kq = extractvalue { i64, i64 } %i.kp, 0
  %i.kr = trunc nuw i64 %i.kq to i1
  br i1 %i.kr, label %bb.q, label %bb.s

bb.p:                                             ; preds = %bb.r, %bb.q
  %.not.i.i = icmp ugt i64 %i.ks, %i.jw
  br i1 %.not.i.i, label %bb.s, label %.preheader

bb.q:                                             ; preds = %.noexc1004
  %i.ks = extractvalue { i64, i64 } %i.kp, 1      ; 10 uses
  %or.cond25.i.not.i = icmp ult i64 %i.ks, %i.jw
  br i1 %or.cond25.i.not.i, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.ks
  %lhsc.i1003 = load i8, ptr %i.kt, align 1, !alias.scope !24221
  %i.ku = icmp eq i8 %lhsc.i1003, 41
  br i1 %i.ku, label %bb.t, label %bb.p

bb.s:                                             ; preds = %.noexc1004, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ix)
  store ptr %i.a, ptr %i.ix, align 8
  %.sroa.4586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4586.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !24222
  store ptr @3, ptr %i.ba, align 8, !noalias !24223
  %.sroa.41146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 1, ptr %.sroa.41146.0..sroa_idx, align 8, !noalias !24223
  %.sroa.51147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.ix, ptr %.sroa.51147.0..sroa_idx, align 8, !noalias !24223
  %.sroa.61148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 1, ptr %.sroa.61148.0..sroa_idx, align 8, !noalias !24223
  %.sroa.71149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr null, ptr %.sroa.71149.0..sroa_idx, align 8, !noalias !24223
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ba)
          to label %bb.mp unwind label %.loopexit.split-lp1543.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  %i.kv = add i64 %i.kl, -1                       ; 12 uses
  %i.kw = icmp eq i64 %i.kv, 0
  br i1 %i.kw, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i = icmp ult i64 %i.kv, %i.jw
  br i1 %.not.i, label %bb.v, label %.split.i

.split.i:                                         ; preds = %bb.u
  %i.kx = icmp eq i64 %i.kv, %i.jw
  br i1 %i.kx, label %bb.w, label %.thread1499.invoke

bb.v:                                             ; preds = %bb.u
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.kv
  %i.kz = load i8, ptr %i.ky, align 1, !alias.scope !24224, !noundef !4
  %i.la = icmp sgt i8 %i.kz, -65
  br i1 %i.la, label %bb.w, label %.thread1499.invoke

bb.w:                                             ; preds = %bb.v, %.split.i, %bb.t
  %i.lb = add nuw i64 %i.kl, 1                    ; 5 uses
  %.not.i1007.not = icmp ult i64 %i.kl, %i.ks
  br i1 %.not.i1007.not, label %bb.x, label %.thread1499.invoke

bb.x:                                             ; preds = %bb.w
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.lb ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !alias.scope !24225, !noundef !4
  %i.le = icmp sgt i8 %i.ld, -65
  br i1 %i.le, label %bb.z, label %.thread1499.invoke

bb.y:                                             ; preds = %.thread1507
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.lf = sub nuw i64 %i.ks, %i.lb                ; 8 uses
  %i.lg = icmp slt i64 %i.lf, 0
  br i1 %i.lg, label %bb.aa, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !6

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.z
  %i.lh = icmp eq i64 %i.ks, %i.lb                ; 3 uses
  br i1 %i.lh, label %bb.ab, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !24226
  %i.li = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.lf, i64 noundef range(i64 1, 9) 1) #42, !noalias !24226 ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.z
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.z ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.lf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43
          to label %.noexc1010 unwind label %.loopexit.split-lp1543.loopexit.split-lp

.noexc1010:                                       ; preds = %bb.aa
  unreachable

.thread1499.invoke:                               ; preds = %bb.x, %bb.w, %.split.i, %bb.v
  %i.lk = phi i64 [ 0, %.split.i ], [ 0, %bb.v ], [ %i.lb, %bb.w ], [ %i.lb, %bb.x ]
  %i.ll = phi i64 [ %i.kv, %.split.i ], [ %i.kv, %bb.v ], [ %i.ks, %bb.w ], [ %i.ks, %bb.x ]
  %i.lm = phi ptr [ @724, %.split.i ], [ @724, %bb.v ], [ @725, %bb.w ], [ @725, %bb.x ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jv, i64 noundef %i.jw, i64 noundef %i.lk, i64 noundef %i.ll, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lm) #43
          to label %.thread1499.cont unwind label %.loopexit.split-lp1543.loopexit.split-lp

.thread1499.cont:                                 ; preds = %.thread1499.invoke
  unreachable

bb.ab:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.li, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.lc, i64 %i.lf, i1 false), !noalias !24227
  %i.ln = add i64 %i.ks, 2                        ; 7 uses
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i1011 = icmp ult i64 %i.ln, %i.jw
  br i1 %.not.i1011, label %bb.ad, label %.split.i1012

.split.i1012:                                     ; preds = %bb.ac
  %i.lp = icmp eq i64 %i.ln, %i.jw
  br i1 %i.lp, label %bb.ag, label %.thread1507

bb.ad:                                            ; preds = %bb.ac
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.ln
  %i.lr = load i8, ptr %i.lq, align 1, !alias.scope !24228, !noundef !4
  %i.ls = icmp sgt i8 %i.lr, -65
  br i1 %i.ls, label %bb.ag, label %.thread1507

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.mh, %bb.me, %bb.mb, %bb.ly, %bb.lv, %bb.ls, %bb.lp, %bb.lm, %bb.lj, %bb.lg, %bb.ld, %bb.la, %bb.kx, %bb.ku, %bb.kr, %bb.ko, %bb.kl, %bb.ki, %bb.kf, %bb.kc, %bb.jz, %bb.jw, %bb.jt, %bb.jq, %bb.jn, %bb.jk, %bb.jh, %bb.je, %bb.jb, %bb.iy, %bb.iv, %bb.is, %bb.ip, %bb.im, %bb.ij, %bb.ig, %bb.id, %bb.ia, %bb.hx, %bb.hu, %bb.hr, %bb.ho, %bb.hl, %bb.hi, %bb.hf, %bb.hc, %bb.gz, %bb.gw, %bb.gs
  %.pn = phi { ptr, i32 } [ %i.vo, %bb.gs ], [ %i.zh, %bb.mh ], [ %i.zf, %bb.me ], [ %i.zd, %bb.mb ], [ %i.zb, %bb.ly ], [ %i.yz, %bb.lv ], [ %i.yx, %bb.ls ], [ %i.yv, %bb.lp ], [ %i.yt, %bb.lm ], [ %i.yr, %bb.lj ], [ %i.yp, %bb.lg ], [ %i.yn, %bb.ld ], [ %i.yl, %bb.la ], [ %i.yj, %bb.kx ], [ %i.yh, %bb.ku ], [ %i.yf, %bb.kr ], [ %i.yd, %bb.ko ], [ %i.yb, %bb.kl ], [ %i.xz, %bb.ki ], [ %i.xx, %bb.kf ], [ %i.xv, %bb.kc ], [ %i.xt, %bb.jz ], [ %i.xr, %bb.jw ], [ %i.xp, %bb.jt ], [ %i.xn, %bb.jq ], [ %i.xl, %bb.jn ], [ %i.xj, %bb.jk ], [ %i.xh, %bb.jh ], [ %i.xf, %bb.je ], [ %i.xd, %bb.jb ], [ %i.xb, %bb.iy ], [ %i.wz, %bb.iv ], [ %i.wx, %bb.is ], [ %i.wv, %bb.ip ], [ %i.wt, %bb.im ], [ %i.wr, %bb.ij ], [ %i.wp, %bb.ig ], [ %i.wn, %bb.id ], [ %i.wl, %bb.ia ], [ %i.wj, %bb.hx ], [ %i.wh, %bb.hu ], [ %i.wf, %bb.hr ], [ %i.wd, %bb.ho ], [ %i.wb, %bb.hl ], [ %i.vz, %bb.hi ], [ %i.vx, %bb.hf ], [ %i.vv, %bb.hc ], [ %i.vt, %bb.gz ], [ %i.vr, %bb.gw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  br i1 %i.lh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit", label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.lf, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !24229
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

.loopexit:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i1022
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %.thread1507, %.thread, %bb.bb, %bb.be, %bb.bh, %bb.bk, %bb.bn, %bb.bq, %bb.bt, %bb.bw, %bb.bz, %bb.cc, %bb.cf, %bb.ci, %bb.cl, %bb.co, %bb.cr, %bb.cu, %bb.cx, %bb.da, %bb.dd, %bb.dg, %bb.dj, %bb.dm, %bb.dp, %bb.ds, %bb.dv, %bb.dy, %bb.eb, %bb.ee, %bb.eh, %bb.ek, %bb.en, %bb.eq, %bb.et, %bb.ew, %bb.ez, %bb.fc, %bb.ff, %bb.fi, %bb.fl, %bb.fo, %bb.fr, %bb.fu, %bb.fx, %bb.ga, %bb.gd, %bb.gg, %bb.gj, %bb.gm, %bb.gt, %bb.gx, %bb.ha, %bb.hd, %bb.hg, %bb.hj, %bb.hm, %bb.hp, %bb.hs, %bb.hv, %bb.hy, %bb.ib, %bb.ie, %bb.ih, %bb.ik, %bb.in, %bb.iq, %bb.it, %bb.iw, %bb.iz, %bb.jc, %bb.jf, %bb.ji, %bb.jl, %bb.jo, %bb.jr, %bb.ju, %bb.jx, %bb.ka, %bb.kd, %bb.kg, %bb.kj, %bb.km, %bb.kp, %bb.ks, %bb.kv, %bb.ky, %bb.lb, %bb.le, %bb.lh, %bb.lk, %bb.ln, %bb.lq, %bb.lt, %bb.lw, %bb.lz, %bb.mc, %bb.mf, %bb.mi, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread", %.thread1528
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ab, %.split.i1012, %bb.ad
  %i.lt = sub nuw i64 %i.jw, %i.ln                ; 10 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.ln ; 7 uses
  switch i64 %i.kv, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i64 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.lv = load i8, ptr %i.jv, align 1, !alias.scope !24230, !noundef !4 ; 2 uses
  switch i8 %i.lv, label %bb.ai [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.ag
  %.pr.i = load i8, ptr %i.jv, align 1, !alias.scope !24230
  br label %bb.ai

bb.ai:                                            ; preds = %thread-pre-split.i, %bb.ah
  %i.lw = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.lv, %bb.ah ]
  switch i8 %i.lw, label %bb.ao [
    i8 43, label %bb.aj
    i8 45, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jv, i64 1 ; 2 uses
  %i.ly = add i64 %i.kl, -2                       ; 3 uses
  %i.lz = icmp ult i64 %i.kv, 9
  br i1 %i.lz, label %.preheader.i, label %.preheader102.i

bb.ak:                                            ; preds = %bb.ai
  %i.ma = getelementptr inbounds nuw i8, ptr %i.jv, i64 1 ; 2 uses
  %i.mb = add i64 %i.kl, -2                       ; 3 uses
  %i.mc = icmp ult i64 %i.kv, 9
  %.not91118.i = icmp eq i64 %i.mb, 0             ; 2 uses
  br i1 %i.mc, label %.preheader105.i, label %.preheader108.i.preheader

.preheader108.i.preheader:                        ; preds = %bb.ak
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph

.preheader105.i:                                  ; preds = %bb.ak
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph.i

bb.al:                                            ; preds = %bb.ap
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i1692, i64 1
  %i.me = add i64 %.sroa.27.0.i1691, -1           ; 2 uses
  %i.mf = extractvalue { i32, i1 } %i.nl, 0       ; 2 uses
  %.not92.i = icmp eq i64 %i.me, 0
  br i1 %.not92.i, label %.loopexit.i, label %.lr.ph1693

.preheader108.i:                                  ; preds = %bb.am
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i1688, i64 1
  %i.mh = add i64 %.sroa.27.2.i1687, -1           ; 2 uses
  %i.mi = extractvalue { i32, i1 } %i.ms, 0       ; 2 uses
  %.not.i1015 = icmp eq i64 %i.mh, 0
  br i1 %.not.i1015, label %.loopexit.i, label %.lr.ph

.loopexit.i:                                      ; preds = %.preheader108.i, %bb.an, %bb.al, %bb.aq, %.preheader108.i.preheader, %.preheader102.i, %.preheader.i, %.preheader105.i
  %.sroa.033.3.i = phi i32 [ %i.nc, %bb.an ], [ %i.nu, %bb.aq ], [ %i.mf, %bb.al ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader102.i ], [ 0, %.preheader108.i.preheader ], [ %i.mi, %.preheader108.i ]
  %i.mj = zext i32 %.sroa.033.3.i to i64
  %i.mk = shl nuw i64 %i.mj, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph:                                           ; preds = %.preheader108.i.preheader, %.preheader108.i
  %.sroa.03.2.i1688 = phi ptr [ %i.mg, %.preheader108.i ], [ %i.ma, %.preheader108.i.preheader ] ; 2 uses
  %.sroa.27.2.i1687 = phi i64 [ %i.mh, %.preheader108.i ], [ %i.mb, %.preheader108.i.preheader ]
  %.sroa.033.2.i1686 = phi i32 [ %i.mi, %.preheader108.i ], [ 0, %.preheader108.i.preheader ]
  %i.ml = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i1686, i32 10) ; 2 uses
  %i.mm = extractvalue { i32, i1 } %i.ml, 1
  %i.mn = load i8, ptr %.sroa.03.2.i1688, align 1, !alias.scope !24230, !noundef !4
  %i.mo = zext i8 %i.mn to i32
  %i.mp = add nsw i32 %i.mo, -48                  ; 2 uses
  %i.mq = icmp ugt i32 %i.mp, 9                   ; 2 uses
  %brmerge.i1016 = select i1 %i.mq, i1 true, i1 %i.mm
  br i1 %brmerge.i1016, label %.loopexit110.split.loop.exit116.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph
  %i.mr = extractvalue { i32, i1 } %i.ml, 0
  %i.ms = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.mr, i32 %i.mp) ; 2 uses
  %i.mt = extractvalue { i32, i1 } %i.ms, 1
  br i1 %i.mt, label %.loopexit101.i, label %.preheader108.i

.loopexit104.split.loop.exit122.i:                ; preds = %.lr.ph1693
  %.mux97.le.i = select i1 %i.nj, i64 256, i64 512
  br label %.loopexit101.i

.loopexit110.split.loop.exit116.i:                ; preds = %.lr.ph
  %.mux.le.i = select i1 %i.mq, i64 256, i64 768
  br label %.loopexit101.i

.loopexit101.i:                                   ; preds = %bb.am, %.lr.ph.i, %bb.ap, %.lr.ph129.i, %.loopexit110.split.loop.exit116.i, %.loopexit104.split.loop.exit122.i
  %.sroa.12.2.i = phi i64 [ 256, %.lr.ph129.i ], [ 512, %bb.ap ], [ 256, %.lr.ph.i ], [ %.mux97.le.i, %.loopexit104.split.loop.exit122.i ], [ %.mux.le.i, %.loopexit110.split.loop.exit116.i ], [ 768, %bb.am ]
  %i.mu = or disjoint i64 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph.i:                                         ; preds = %.preheader105.i, %bb.an
  %.sroa.03.3121.i = phi ptr [ %i.nb, %bb.an ], [ %i.ma, %.preheader105.i ] ; 2 uses
  %.sroa.27.3120.i = phi i64 [ %i.na, %bb.an ], [ %i.mb, %.preheader105.i ]
  %.sroa.033.4119.i = phi i32 [ %i.nc, %bb.an ], [ 0, %.preheader105.i ]
  %i.mv = load i8, ptr %.sroa.03.3121.i, align 1, !alias.scope !24230, !noundef !4
  %i.mw = zext i8 %i.mv to i32
  %i.mx = add nsw i32 %i.mw, -48                  ; 2 uses
  %i.my = icmp ult i32 %i.mx, 10
  br i1 %i.my, label %bb.an, label %.loopexit101.i

bb.an:                                            ; preds = %.lr.ph.i
  %i.mz = mul i32 %.sroa.033.4119.i, 10
  %i.na = add nsw i64 %.sroa.27.3120.i, -1        ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i, i64 1
  %i.nc = sub i32 %i.mz, %i.mx                    ; 2 uses
  %.not91.i = icmp eq i64 %i.na, 0
  br i1 %.not91.i, label %.loopexit.i, label %.lr.ph.i

bb.ao:                                            ; preds = %bb.ai
  %i.nd = icmp ult i64 %i.kv, 8
  br i1 %i.nd, label %.lr.ph129.i.preheader, label %.preheader102.i

.lr.ph129.i.preheader:                            ; preds = %.preheader.i, %bb.ao
  %.sroa.03.1128.i.ph = phi ptr [ %i.jv, %bb.ao ], [ %i.lx, %.preheader.i ]
  %.sroa.27.1127.i.ph = phi i64 [ %i.kv, %bb.ao ], [ %i.ly, %.preheader.i ]
  br label %.lr.ph129.i

.preheader102.i:                                  ; preds = %bb.ao, %bb.aj
  %.sroa.27.0.ph.i = phi i64 [ %i.kv, %bb.ao ], [ %i.ly, %bb.aj ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.jv, %bb.ao ], [ %i.lx, %bb.aj ]
  %.not92.i1689 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not92.i1689, label %.loopexit.i, label %.lr.ph1693

.preheader.i:                                     ; preds = %bb.aj
  %.not93125.i = icmp eq i64 %i.ly, 0
  br i1 %.not93125.i, label %.loopexit.i, label %.lr.ph129.i.preheader

.lr.ph1693:                                       ; preds = %.preheader102.i, %bb.al
  %.sroa.03.0.i1692 = phi ptr [ %i.md, %bb.al ], [ %.sroa.03.0.ph.i, %.preheader102.i ] ; 2 uses
  %.sroa.27.0.i1691 = phi i64 [ %i.me, %bb.al ], [ %.sroa.27.0.ph.i, %.preheader102.i ]
  %.sroa.033.0.i1690 = phi i32 [ %i.mf, %bb.al ], [ 0, %.preheader102.i ]
  %i.ne = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i1690, i32 10) ; 2 uses
  %i.nf = extractvalue { i32, i1 } %i.ne, 1
  %i.ng = load i8, ptr %.sroa.03.0.i1692, align 1, !alias.scope !24230, !noundef !4
  %i.nh = zext i8 %i.ng to i32
  %i.ni = add nsw i32 %i.nh, -48                  ; 2 uses
  %i.nj = icmp ugt i32 %i.ni, 9                   ; 2 uses
  %brmerge96.i = select i1 %i.nj, i1 true, i1 %i.nf
  br i1 %brmerge96.i, label %.loopexit104.split.loop.exit122.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph1693
  %i.nk = extractvalue { i32, i1 } %i.ne, 0
  %i.nl = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.nk, i32 %i.ni) ; 2 uses
  %i.nm = extractvalue { i32, i1 } %i.nl, 1
  br i1 %i.nm, label %.loopexit101.i, label %bb.al

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.aq
  %.sroa.03.1128.i = phi ptr [ %i.nt, %bb.aq ], [ %.sroa.03.1128.i.ph, %.lr.ph129.i.preheader ] ; 2 uses
  %.sroa.27.1127.i = phi i64 [ %i.ns, %bb.aq ], [ %.sroa.27.1127.i.ph, %.lr.ph129.i.preheader ]
  %.sroa.033.1126.i = phi i32 [ %i.nu, %bb.aq ], [ 0, %.lr.ph129.i.preheader ]
  %i.nn = load i8, ptr %.sroa.03.1128.i, align 1, !alias.scope !24230, !noundef !4
  %i.no = zext i8 %i.nn to i32
  %i.np = add nsw i32 %i.no, -48                  ; 2 uses
  %i.nq = icmp ult i32 %i.np, 10
  br i1 %i.nq, label %bb.aq, label %.loopexit101.i

bb.aq:                                            ; preds = %.lr.ph129.i
end_hunk_1
