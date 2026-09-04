Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$procfs_core..process..mount..MountNFSStatistics$GT$$GT$17h6de4f896bc09b071E":bb.a
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
  %i.l = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
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
  %i.bu = icmp ne ptr %.sroa.4.121, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !5215, !noundef !4 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit21.i.i.i.i.i", label %bb.l

bb.k:                                             ; preds = %bb.l, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i.i"
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i.i" ]
  %.sroa.04.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i.i" ]
  %i.cb = shl nuw nsw i32 %.sroa.04.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit21.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i.i"
  %i.cf = icmp ne ptr %.sroa.4.121, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !5215, !noundef !4
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit21.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i.i"
  %i.co = phi ptr [ %i.cg, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit21.i.i.i.i.i" ], [ %i.bv, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i = phi i32 [ %i.cn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit21.i.i.i.i.i" ], [ %i.by, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i.i" ]
  %i.cp = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i, 127
  br i1 %i.cv, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6"

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6"

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !5216, !noundef !4
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6"

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !5216, !noundef !4
  %i.dj = lshr i8 %i.di, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6": ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6", %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6", %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i", %bb.t, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit", %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit" ], [ %.sroa.0.0, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i" ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.019, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit" ], [ %.sroa.18.019, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i" ]
  %i.dq = sub nuw i64 %.sroa.01.1, %.sroa.0.042
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.042
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17hc320c9e49cc5f50cE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  br i1 %3, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader16

.preheader16:                                     ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = getelementptr i8, ptr %i.a, i64 %1       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 6 uses
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.g = icmp ult i64 %i.e, 4
  %i.h = getelementptr i8, ptr %i.f, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  br i1 %i.g, label %.preheader.us.preheader, label %.preheader16.split

.preheader.us.preheader:                          ; preds = %.preheader16
  %exitcond.not.i.us30 = icmp eq i64 %i.e, 0      ; 3 uses
  %exitcond.not.i.us = icmp eq i64 %i.e, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %exitcond.not.i.us.1 = icmp eq i64 %i.e, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us
  %.sroa.01.018.us = phi i16 [ %i.z, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.018.us, i1 true) ; 2 uses
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr i8, ptr %i.b, i64 %i.m     ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5221)
  br i1 %exitcond.not.i.us30, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  br i1 %exitcond.not.i.us, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.n, i64 2
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !5220, !noalias !5221, !noundef !4
  %i.r = load i8, ptr %i.j, align 1, !alias.scope !5221, !noalias !5220, !noundef !4
  %.not13.i.us.1 = icmp eq i8 %i.q, %i.r
  br i1 %.not13.i.us.1, label %bb.c, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

bb.c:                                             ; preds = %.lr.ph.1
  br i1 %exitcond.not.i.us.1, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.n, i64 3
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !5220, !noalias !5221, !noundef !4
  %i.u = load i8, ptr %i.k, align 1, !alias.scope !5221, !noalias !5220, !noundef !4
  %.not13.i.us.2 = icmp eq i8 %i.t, %i.u
  br i1 %.not13.i.us.2, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

.lr.ph:                                           ; preds = %.preheader.us
  %i.v = load i8, ptr %i.o, align 1, !alias.scope !5220, !noalias !5221, !noundef !4
  %i.w = load i8, ptr %i.f, align 1, !alias.scope !5221, !noalias !5220, !noundef !4
  %.not13.i.us = icmp eq i8 %i.v, %i.w
  br i1 %.not13.i.us, label %bb.b, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us: ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %i.x = shl nuw i16 1, %i.l
  %i.y = xor i16 %i.x, -1
  %i.z = and i16 %.sroa.01.018.us, %i.y           ; 2 uses
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader.us

.preheader16.split:                               ; preds = %.preheader16, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread
  %.sroa.01.018 = phi i16 [ %i.ao, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread ], [ %2, %.preheader16 ] ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.018, i1 true) ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5221)
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.e
  %i.ag = getelementptr i8, ptr %i.af, i64 -4     ; 3 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit

.lr.ph.i:                                         ; preds = %.preheader16.split, %bb.d
  %.sroa.04.024.i = phi ptr [ %i.ai, %bb.d ], [ %i.ae, %.preheader16.split ] ; 2 uses
  %.sroa.08.023.i = phi ptr [ %i.aj, %bb.d ], [ %i.f, %.preheader16.split ] ; 2 uses
  %.sroa.04.0.val.i = load i32, ptr %.sroa.04.024.i, align 1, !alias.scope !5220, !noalias !5221
  %.sroa.08.0.val.i = load i32, ptr %.sroa.08.023.i, align 1, !alias.scope !5221, !noalias !5220
  %.not.i = icmp eq i32 %.sroa.04.0.val.i, %.sroa.08.0.val.i
  br i1 %.not.i, label %bb.d, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.024.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.023.i, i64 4
  %i.ak = icmp ult ptr %i.ai, %i.ag
  br i1 %i.ak, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit: ; preds = %bb.d, %.preheader16.split
  %.val14.i = load i32, ptr %i.ag, align 1, !alias.scope !5220, !noalias !5221
  %.val.i = load i32, ptr %i.i, align 1, !alias.scope !5221, !noalias !5220
  %i.al = icmp eq i32 %.val14.i, %.val.i
  br i1 %i.al, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13: ; preds = %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us, %.preheader.us, %.lr.ph.2, %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ true, %.lr.ph.2 ], [ false, %bb.a ], [ %exitcond.not.i.us30, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us ], [ true, %bb.c ], [ true, %bb.b ], [ %exitcond.not.i.us30, %.preheader.us ], [ false, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread ], [ true, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit ]
  ret i1 %.sroa.0.0

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread: ; preds = %.lr.ph.i, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit
  %i.am = shl nuw i16 1, %i.ab
  %i.an = xor i16 %i.am, -1
  %i.ao = and i16 %.sroa.01.018, %i.an            ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader16.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h1a7a7e725c4a794bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add i64 %5, -1                           ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = load i64, ptr %1, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted36 = load i64, ptr %i.h, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted36, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !4
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.f
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.v = add i64 %i.n, %5                         ; 3 uses
  store i64 %i.v, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.g)
  %.sroa.01.0 = select i1 %6, i64 %i.g, i64 %.sroa.0.0.i ; 4 uses
  %umax50 = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not87.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not87.not, label %.lr.ph90, label %._crit_edge91

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.k, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph72 = phi i64 [ %i.aq, %bb.o ], [ %i.ay, %bb.r ], [ %i.v, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.w = phi i64 [ %i.l, %bb.r ], [ %i.l, %bb.o ], [ %i.l, %bb.d ], [ %.sink, %.sink.split ]
  %i.x = phi i64 [ %i.ay, %bb.r ], [ %i.aq, %bb.o ], [ %i.v, %bb.d ], [ %.ph72, %.sink.split ] ; 2 uses
  %i.y = add i64 %i.b, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, %3
  br i1 %i.z, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.aa = add i64 %.sroa.02.088, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %umax50
  br i1 %exitcond.not, label %._crit_edge91, label %.lr.ph90

._crit_edge91:                                    ; preds = %bb.g, %bb.e
  %.sroa.05.0 = select i1 %6, i64 0, i64 %i.l     ; 2 uses
  %i.ab = icmp ult i64 %.sroa.05.0, %i.g
  br i1 %i.ab, label %.lr.ph94, label %._crit_edge95

.lr.ph90:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.088 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.01.0, %bb.e ] ; 4 uses
  %i.ac = add i64 %.sroa.02.088, %i.n             ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %3
end_hunk_0
