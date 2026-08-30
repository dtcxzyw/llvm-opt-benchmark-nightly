Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN9hashbrown3map39VacantEntryRef$LT$K$C$Q$C$V$C$S$C$A$GT$6insert17ha594b2ac102ed5b4E":bb.a
  %.sroa.0.0.i.i = and i64 %i.u, %.val14.i        ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.0.i.i
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !52543
  %i.w = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !10027

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfe6bd9b5ed29fec4E.exit"
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfe6bd9b5ed29fec4E.exit" ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.r, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfe6bd9b5ed29fec4E.exit" ], [ %i.x, %.lr.ph.i.i ]
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.0.0.lcssa.i.i, %i.z
  %i.ab = and i64 %i.aa, %.val14.i                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !52546, !noundef !27 ; 2 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.d, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i, !prof !29

bb.d:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val13.i, align 16, !noalias !52546
  %i.af = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %i.ah = icmp ne i16 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %i.aj
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !52546
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i: ; preds = %bb.d, %._crit_edge.i.i
  %i.ak = phi i8 [ %.pre.i, %bb.d ], [ %i.ad, %._crit_edge.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i = phi i64 [ %i.aj, %bb.d ], [ %i.ab, %._crit_edge.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !52537, !noalias !52540, !noundef !27 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = trunc i8 %i.ak to i1
  %or.cond.i = and i1 %i.an, %i.ao
  br i1 %or.cond.i, label %bb.e, label %bb.f, !prof !5328

bb.e:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i
  %i.ap = invoke fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17ha827a958180785daE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %._crit_edge unwind label %bb.g ; 0 uses

._crit_edge:                                      ; preds = %bb.e
  %.val11.i = load ptr, ptr %i.c, align 8, !alias.scope !52537, !noalias !52540
  %.val12.i = load i64, ptr %i.o, align 8, !alias.scope !52537, !noalias !52540, !noundef !27
  %i.aq = tail call fastcc noundef i64 @_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E(ptr %.val11.i, i64 %.val12.i, i64 noundef %i.e), !noalias !52547
  %i.ar = call fastcc noundef nonnull ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17h380413b8bc84ae18E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.e, i64 noundef %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h19cb3adcea00ad55E.exit"

bb.f:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.0.i5.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52548)
  %i.at = and i8 %i.ak, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = sub i64 %i.am, %i.au
  store i64 %i.av, ptr %i.al, align 8, !alias.scope !52551, !noalias !52552
  %i.aw = lshr i64 %i.e, 57
  %i.ax = trunc nuw nsw i64 %i.aw to i8           ; 2 uses
  %i.ay = add i64 %.sroa.0.0.i5.i.i, -16
  %i.az = and i64 %i.ay, %.val14.i
  store i8 %i.ax, ptr %i.as, align 1, !noalias !52554
  %i.ba = getelementptr i8, ptr %.val13.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store i8 %i.ax, ptr %i.bb, align 1, !noalias !52554
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !52551, !noalias !52552, !noundef !27
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !alias.scope !52551, !noalias !52552
  %i.bf = sub nsw i64 0, %.sroa.0.0.i5.i.i
  %i.bg = getelementptr inbounds [32 x i8], ptr %.val13.i, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !52555
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h19cb3adcea00ad55E.exit"

"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i": ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %lpad.thr_comm.i

bb.g:                                             ; preds = %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br i1 %i.j, label %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !52556
  br label %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h19cb3adcea00ad55E.exit": ; preds = %._crit_edge, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.ar, %._crit_edge ], [ %i.bg, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8
  ret ptr %i.bi
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #41 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !52561
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !10026

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.d = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.e = add i64 %i.d, 16                         ; 2 uses
  %i.f = add i64 %i.e, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.f, %.8.val              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.g, align 1, !noalias !52561
  %i.h = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.i = bitcast <16 x i1> %i.h to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !10027

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.i, %.lr.ph ]
  %i.j = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.k = zext nneg i16 %i.j to i64
  %i.l = add i64 %.sroa.0.0.lcssa, %i.k
  %i.m = and i64 %i.l, %.8.val                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noundef !27
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.b, label %_ZN9hashbrown3raw13RawTableInner15fix_insert_slot17he725176c93b8f3c4E.exit, !prof !29

bb.b:                                             ; preds = %._crit_edge
  %.val62.i = load <16 x i8>, ptr %.0.val, align 16
  %i.q = icmp slt <16 x i8> %.val62.i, zeroinitializer
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %i.s = icmp ne i16 %i.r, 0
  tail call void @llvm.assume(i1 %i.s)
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.r, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  br label %_ZN9hashbrown3raw13RawTableInner15fix_insert_slot17he725176c93b8f3c4E.exit

_ZN9hashbrown3raw13RawTableInner15fix_insert_slot17he725176c93b8f3c4E.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.u, %bb.b ], [ %i.m, %._crit_edge ]
  ret i64 %.sroa.0.0.i5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h44cbdedfff13ea21E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 32, 65) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @11, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 15
  br i1 %i.d, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.e, label %bb.l, label %bb.e, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.f = shl nuw i64 %2, 3
  %i.g = udiv i64 %i.f, 7
  %i.h = add nsw i64 %i.g, -1
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = lshr i64 -1, %i.i
  %i.k = add nuw nsw i64 %i.j, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i64 %2, 4
  %i.m = and i64 %2, 8
  %..i = add nuw nsw i64 %i.m, 8
  %.sroa.03.0.i = select i1 %i.l, i64 4, i64 %..i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i.ph = phi i64 [ %i.k, %bb.e ], [ %.sroa.03.0.i, %bb.f ] ; 5 uses
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 32, 65) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.j, label %bb.h, !prof !29

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { i64, i1 } %i.n, 0         ; 2 uses
  %i.q = icmp ugt i64 %i.p, -16
  br i1 %i.q, label %bb.j, label %bb.i, !prof !29

bb.i:                                             ; preds = %bb.h
  %i.r = add nuw i64 %i.p, 15
  %i.s = and i64 %i.r, -16                        ; 3 uses
  %i.t = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.u = add i64 %i.t, %i.s                       ; 4 uses
  %i.v = icmp ult i64 %i.u, %i.s
  %i.w = icmp ugt i64 %i.u, 9223372036854775792
  %or.cond.i = or i1 %i.v, %i.w
  br i1 %or.cond.i, label %bb.j, label %_ZN14allocator_api26stable5alloc6global6Global10alloc_impl17h76ab45197bb7bf87E.exit.i, !prof !4065

_ZN14allocator_api26stable5alloc6global6Global10alloc_impl17h76ab45197bb7bf87E.exit.i: ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !52564
  %i.x = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !52564 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.k, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52564
  store ptr @3139, ptr %i.a, align 8, !noalias !52564
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.z, align 8, !noalias !52564
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.aa, align 8, !noalias !52564
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8, !noalias !52564
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ac, align 8, !noalias !52564
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3141) #66, !noalias !52564
  unreachable

bb.k:                                             ; preds = %_ZN14allocator_api26stable5alloc6global6Global10alloc_impl17h76ab45197bb7bf87E.exit.i
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef %i.u) #66, !noalias !52564
  unreachable

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @3139, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ag, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3141) #66
  unreachable

bb.m:                                             ; preds = %_ZN14allocator_api26stable5alloc6global6Global10alloc_impl17h76ab45197bb7bf87E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  %i.ai = add nsw i64 %.sroa.4.0.i.ph, -1         ; 2 uses
  %i.aj = icmp samesign ult i64 %.sroa.4.0.i.ph, 9
  %i.ak = lshr i64 %.sroa.4.0.i.ph, 3
  %i.al = mul nuw nsw i64 %i.ak, 7
  %.sroa.02.0.i = select i1 %i.aj, i64 %i.ai, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ah, i8 -1, i64 %i.t, i1 false)
  store ptr %i.ah, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0.i, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.618.0..sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17h0bf4d00fff3ca726E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #42 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !noundef !27
  %i.d = and i8 %i.c, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = lshr i64 %1, 57
  %i.h = trunc nuw nsw i64 %i.g to i8             ; 2 uses
  %i.i = add i64 %2, -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !27
  %i.l = and i64 %i.k, %i.i
  store i8 %i.h, ptr %i.b, align 1
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store i8 %i.h, ptr %i.n, align 1
  %i.o = load <2 x i64>, ptr %i.f, align 8
  %i.p = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.e, i64 0
  %i.q = sub <2 x i64> %i.o, %i.p
  store <2 x i64> %i.q, ptr %i.f, align 8
  %i.r = sub nsw i64 0, %2
  %i.s = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  ret ptr %i.s
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17h380413b8bc84ae18E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #42 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !noundef !27
  %i.d = and i8 %i.c, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = lshr i64 %1, 57
  %i.h = trunc nuw nsw i64 %i.g to i8             ; 2 uses
  %i.i = add i64 %2, -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !27
  %i.l = and i64 %i.k, %i.i
  store i8 %i.h, ptr %i.b, align 1
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store i8 %i.h, ptr %i.n, align 1
  %i.o = load <2 x i64>, ptr %i.f, align 8
  %i.p = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.e, i64 0
  %i.q = sub <2 x i64> %i.o, %i.p
  store <2 x i64> %i.q, ptr %i.f, align 8
  %i.r = sub nsw i64 0, %2
  %i.s = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  ret ptr %i.s
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1c705291774aa160E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #43 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !52567)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !52567, !noalias !52570, !noundef !27 ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.ac, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !52567, !noalias !52570, !noundef !27 ; 3 uses
  %i.n = icmp ult i64 %i.m, 8
  %i.o = add i64 %i.m, 1                          ; 7 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = mul nuw i64 %i.p, 7
  %.sroa.03.0.i = select i1 %i.n, i64 %i.m, i64 %i.q ; 2 uses
  %i.r = lshr i64 %.sroa.03.0.i, 1
  %.not.i.not = icmp ult i64 %i.j, %i.r
  br i1 %.not.i.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call i64 @llvm.umax.i64(i64 %.sroa.03.0.i, i64 %i.j) ; 4 uses
  %.sroa.0.0.i13 = add nuw nsw i64 %i.s, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52572)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !52575
  %.val12 = load ptr, ptr %i.h, align 8           ; 3 uses
  %i.t = icmp ult i64 %i.s, 14
  br i1 %i.t, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ugt i64 %i.s, 2305843009213693950
  br i1 %i.u, label %bb.k, label %bb.e, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.v = shl nuw i64 %.sroa.0.0.i13, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ab = icmp samesign ult i64 %i.s, 3
  %i.ac = and i64 %.sroa.0.0.i13, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.e ], [ %.sroa.03.0.i.i, %bb.f ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 24) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.i, label %bb.h, !prof !29

bb.h:                                             ; preds = %bb.g
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  %i.ag = add nuw i64 %i.af, 8
  %i.ah = and i64 %i.ag, -16                      ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.aj = add i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = icmp ugt i64 %i.aj, 9223372036854775792
  %or.cond.i.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i.i, label %bb.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i, !prof !4065

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.val12, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !52577, !nonnull !27, !noundef !27 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !52577, !nonnull !27, !noundef !27 ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 16, !noalias !52577, !nonnull !27, !noundef !27 ; 2 uses
  %i.ar = add nuw nsw i64 %i.aj, 15
  %i.as = and i64 %i.ar, 9223372036854775792      ; 2 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = and i64 %i.at, 15
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr i8, ptr %i.ap, i64 %i.av  ; 3 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.aq to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult ptr %i.aw, %i.aq
  %i.bb = icmp ugt i64 %i.as, %i.az
  %or.cond.i.i.i.i = or i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i.i, label %"_ZN87_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$allocator_api2..stable..alloc..Allocator$GT$8allocate17h23c66f72464b8762E.exit.i.i", label %"_ZN87_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$allocator_api2..stable..alloc..Allocator$GT$8allocate17h23c66f72464b8762E.exit.thread.i.i"

"_ZN87_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$allocator_api2..stable..alloc..Allocator$GT$8allocate17h23c66f72464b8762E.exit.thread.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i
  %i.bc = sub nsw i64 0, %i.as
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.bc  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  store ptr %i.bd, ptr %i.ao, align 16, !noalias !52577
  br label %bb.m

"_ZN87_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$allocator_api2..stable..alloc..Allocator$GT$8allocate17h23c66f72464b8762E.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i
  %i.be = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %.val12, i64 noundef range(i64 1, -9223372036854775807) 16, i64 noundef %i.aj), !noalias !52577 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.j, label %bb.m

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52577
  store ptr @3139, ptr %i.a, align 8, !noalias !52577
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bg, align 8, !noalias !52577
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.bh, align 8, !noalias !52577
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bi, align 8, !noalias !52577
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_0
