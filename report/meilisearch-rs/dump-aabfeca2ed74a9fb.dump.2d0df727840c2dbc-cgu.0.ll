Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31029
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h477e1bdb1e230473E":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(448) %.sroa.7.0..sroa_idx43.i, i64 448, i1 false), !noalias !26634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26637
  store i64 %i.p, ptr %0, align 8, !alias.scope !26633
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h353c8551a20f1a94E.exit"

"_ZN4core3ptr203drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$17he7c3d71deda0d42aE.exit.i": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17heef22d4b434c9a68E.exit.thread59.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26637
  call void @llvm.experimental.noalias.scope.decl(metadata !26639)
  %.not.i7.i = icmp eq ptr %i.k, null
  br i1 %.not.i7.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h5480f4b88b9d66d2E.exit.thread.i", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr203drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$17he7c3d71deda0d42aE.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !26640)
  call void @llvm.experimental.noalias.scope.decl(metadata !26641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26642
  call void @llvm.experimental.noalias.scope.decl(metadata !26643)
  %i.ae = icmp eq ptr %i.k, %i.i
  br i1 %i.ae, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc554a8240a3b0671E.exit.thread.i.i.i", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e3ef5f42c024e46E.exit.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e3ef5f42c024e46E.exit.i.i.i.i": ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  store ptr %i.af, ptr %i.f, align 8, !alias.scope !26644
  call void @_ZN4dump6reader2v17V1Index4open17hf5e43c82c110b864E(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.k), !noalias !26645
  %.pr.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !26642 ; 2 uses
  %.not.i.i.i8.i = icmp eq i64 %.pr.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i8.i, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc554a8240a3b0671E.exit.thread.i.i.i", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h5480f4b88b9d66d2E.exit.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc554a8240a3b0671E.exit.thread.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e3ef5f42c024e46E.exit.i.i.i.i", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26642
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h5480f4b88b9d66d2E.exit.thread.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h5480f4b88b9d66d2E.exit.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e3ef5f42c024e46E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.7.8..sroa_idx.i.i.i, i64 240, i1 false), !noalias !26646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26642
  %i.ag = add i64 %i.j, 1                         ; 2 uses
  store i64 %i.ag, ptr %i.h, align 8, !alias.scope !26647
  store i64 %i.j, ptr %i.c, align 8, !noalias !26646
  store i64 %.pr.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !26646
  %i.ah = call fastcc { ptr, ptr } @"_ZN4dump6reader6compat8v1_to_v212CompatV1ToV25tasks28_$u7b$$u7b$closure$u7d$$u7d$17h0d15891f98702c56E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(256) %i.c), !noalias !26646 ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.ah, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26646
  %.not5.i = icmp eq ptr %i.ai, null
  br i1 %.not5.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h5480f4b88b9d66d2E.exit.thread.i", label %"_ZN4core3ptr298drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$$GT$17h988f607561547ecfE.exit.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h5480f4b88b9d66d2E.exit.thread.i": ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h5480f4b88b9d66d2E.exit.i", %"_ZN4core3ptr203drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$17he7c3d71deda0d42aE.exit.i", %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc554a8240a3b0671E.exit.thread.i.i.i"
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26648)
  call void @llvm.experimental.noalias.scope.decl(metadata !26649)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26650
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !26651, !align !32, !noundef !21 ; 5 uses
  %.not.i9.i = icmp eq ptr %i.ak, null
  br i1 %.not.i9.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h5480f4b88b9d66d2E.exit.thread.i"
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val6.i10.i = load ptr, ptr %i.al, align 8, !alias.scope !26651, !nonnull !21, !align !22, !noundef !21 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val6.i10.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !21, !noalias !26652, !nonnull !21
  call void %i.an(ptr noalias noundef nonnull sret([456 x i8]) align 8 captures(address) dereferenceable(456) %i.a, ptr noundef nonnull align 1 %i.ak), !noalias !26650, !inline_history !26614
  %i.ao = load i64, ptr %i.a, align 8, !range !36, !noalias !26650, !noundef !21
  %.not3.i11.i = icmp eq i64 %i.ao, 11
  br i1 %.not3.i11.i, label %bb.m, label %bb.q

bb.l:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h5480f4b88b9d66d2E.exit.thread.i"
  store i64 11, ptr %0, align 8, !alias.scope !26653
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17heef22d4b434c9a68E.exit16.i

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %.val6.i10.i, align 8, !invariant.load !21, !noalias !26650 ; 2 uses
  %.not.i.i.i12.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i12.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.ap(ptr noundef nonnull %i.ak)
          to label %bb.o unwind label %bb.p, !noalias !26650

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.val6.i10.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !23, !invariant.load !21, !noalias !26650 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val6.i10.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !24, !invariant.load !21, !noalias !26650 ; 2 uses
  %i.au = icmp ult i64 %i.at, -9223372036854775807
  call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i64 %i.ar, 0
  br i1 %i.av, label %"_ZN4core3ptr298drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$$GT$17h988f607561547ecfE.exit.i15.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i14.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i14.i": ; preds = %bb.o
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) %i.at) #42, !noalias !26650
  br label %"_ZN4core3ptr298drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$$GT$17h988f607561547ecfE.exit.i15.i"

bb.p:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = getelementptr inbounds nuw i8, ptr %.val6.i10.i, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !23, !invariant.load !21, !noalias !26650 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val6.i10.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !24, !invariant.load !21, !noalias !26650 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, -9223372036854775807
  call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp eq i64 %i.ay, 0
  br i1 %i.bc, label %bb.r, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i13.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i13.i": ; preds = %bb.p
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) %i.ba) #42, !noalias !26650
  br label %bb.r

bb.q:                                             ; preds = %"_ZN4core3ptr298drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$$GT$17h988f607561547ecfE.exit.i15.i", %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(456) %i.a, i64 456, i1 false), !noalias !26651
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17heef22d4b434c9a68E.exit16.i

"_ZN4core3ptr298drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$$GT$17h988f607561547ecfE.exit.i15.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i14.i", %bb.o
  store ptr null, ptr %i.aj, align 8, !alias.scope !26651
  br label %bb.q

bb.r:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i13.i", %bb.p
  store ptr null, ptr %i.aj, align 8, !alias.scope !26651
  br label %common.resume.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17heef22d4b434c9a68E.exit16.i: ; preds = %bb.q, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26650
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h353c8551a20f1a94E.exit"

"_ZN4core3ptr298drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$$GT$17h988f607561547ecfE.exit.i": ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h5480f4b88b9d66d2E.exit.i"
  %i.bd = extractvalue { ptr, ptr } %i.ah, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  store ptr %i.ai, ptr %1, align 8, !alias.scope !26634
  store ptr %i.bd, ptr %i.e, align 8, !alias.scope !26634
  br label %bb.b

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h353c8551a20f1a94E.exit": ; preds = %bb.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17heef22d4b434c9a68E.exit16.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4a81fd953d4b0c61E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26676
  %i.c = load ptr, ptr %1, align 8, !alias.scope !26675, !align !32, !noundef !21 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26677)
  br i1 %.not.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i.i = load ptr, ptr %i.d, align 8, !alias.scope !26678, !nonnull !21, !align !22, !noundef !21
  %i.e = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !21, !noalias !26679, !nonnull !21
  call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 %i.c), !noalias !26680, !inline_history !26665
  %.pre.i = load i64, ptr %i.b, align 8, !noalias !26676
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre71.i = load i64, ptr %.phi.trans.insert.i, align 8, !range !46, !noalias !26676
  %.phi.trans.insert72.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre73.i = load i64, ptr %.phi.trans.insert72.i, align 8, !noalias !26676
  %i.g = trunc nuw i64 %.pre71.i to i1
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit.i": ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %.pre73.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  %i.j = phi i64 [ %.pre.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26676
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !26675, !align !32, !noundef !21 ; 2 uses
  %.not51.i = icmp eq ptr %i.l, null
  call void @llvm.experimental.noalias.scope.decl(metadata !26681)
  br i1 %.not51.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit61.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit.i"
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i60.i = load ptr, ptr %i.m, align 8, !alias.scope !26682, !nonnull !21, !align !22, !noundef !21
  %i.n = getelementptr inbounds nuw i8, ptr %.val4.i60.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !21, !noalias !26683, !nonnull !21
  call void %i.o(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 1 %i.l), !noalias !26684, !inline_history !26665
  %.pre74.i = load i64, ptr %i.a, align 8, !noalias !26676
  %.phi.trans.insert75.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre76.i = load i64, ptr %.phi.trans.insert75.i, align 8, !range !46, !noalias !26676
  %.phi.trans.insert77.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre78.i = load i64, ptr %.phi.trans.insert77.i, align 8, !noalias !26676
  %i.p = call i64 @llvm.uadd.sat.i64(i64 %i.j, i64 %.pre74.i)
  %i.q = trunc nuw i64 %.pre76.i to i1
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit61.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit61.i": ; preds = %bb.c, %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit.i"
  %i.r = phi i64 [ %.pre78.i, %bb.c ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit.i" ]
  %i.s = phi i1 [ %i.q, %bb.c ], [ true, %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit.i" ]
  %i.t = phi i64 [ %i.p, %bb.c ], [ %i.j, %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26676
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !26675, !noundef !21 ; 2 uses
  %.not52.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val58.i = load ptr, ptr %i.w, align 8, !alias.scope !26675, !nonnull !21
  %i.x = icmp eq ptr %.val58.i, %i.v
  %.sroa.8.0.i = select i1 %.not52.i, i1 true, i1 %i.x
  %op.rdx = select i1 %.sroa.8.0.i, i1 %i.i, i1 false
  %op.rdx2 = select i1 %op.rdx, i1 %i.s, i1 false
  br i1 %op.rdx2, label %bb.d, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7cf0abbf138a1001E.exit"

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit61.i"
  %i.y = add i64 %i.r, %i.h                       ; 2 uses
  %i.z = icmp uge i64 %i.y, %i.h
  %.57.i = zext i1 %i.z to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !26674
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7cf0abbf138a1001E.exit"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7cf0abbf138a1001E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit61.i", %bb.d
  %.sink.i = phi i64 [ %.57.i, %bb.d ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h063e5909798cd652E.exit61.i" ]
  store i64 %i.t, ptr %0, align 8, !alias.scope !26674
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i, ptr %i.ab, align 8, !alias.scope !26674
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a9aa46278286c9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i.i.i.i.i = alloca [32 x i8], align 8  ; 6 uses
  %.sroa.9.i.i.i.i.i = alloca [304 x i8], align 8 ; 5 uses
  %i.a = alloca [344 x i8], align 8               ; 8 uses
  %.sroa.6.i.i.i = alloca [336 x i8], align 8     ; 5 uses
  %i.b = alloca [456 x i8], align 8               ; 8 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26697)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26698
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !21, !noalias !26699, !nonnull !21 ; 2 uses
  call void %i.e(ptr noalias noundef nonnull sret([456 x i8]) align 8 captures(address) dereferenceable(456) %i.b, ptr noundef nonnull align 1 %.val), !noalias !26700, !inline_history !26693
  %i.f = load i64, ptr %i.b, align 8, !range !36, !noalias !26700, !noundef !21
  %.not13.i.i.i = icmp eq i64 %i.f, 11
  br i1 %.not13.i.i.i, label %"_ZN4core3ptr411drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$core..result..Result$LT$$LP$dump..reader..v3..updates..UpdateEntry$C$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$C$dump..error..Error$GT$$GT$$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$17h6f93df0dc6c9477eE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26700
  call fastcc void @"_ZN4dump6reader6compat8v2_to_v312CompatV2ToV35tasks28_$u7b$$u7b$closure$u7d$$u7d$17h5f34abfc7e933512E"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(456) %i.b), !noalias !26700
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !26701 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i.i)
  switch i64 %.sroa.0.0.copyload.i.i.i.i, label %bb.c [
    i64 12, label %bb.b
    i64 11, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !26701
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !26701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.9.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(304) %i.i, i64 304, i1 false), !noalias !26701
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26700
  call void %i.e(ptr noalias noundef nonnull sret([456 x i8]) align 8 captures(address) dereferenceable(456) %i.b, ptr noundef nonnull align 1 %.val), !noalias !26700, !inline_history !26693
  %i.j = load i64, ptr %i.b, align 8, !range !36, !noalias !26700, !noundef !21
  %.not.i.i.i = icmp eq i64 %i.j, 11
  br i1 %.not.i.i.i, label %"_ZN4core3ptr411drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$core..result..Result$LT$$LP$dump..reader..v3..updates..UpdateEntry$C$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$C$dump..error..Error$GT$$GT$$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$17h6f93df0dc6c9477eE.exit.i", label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.ph.i.i.i.i.i = phi i64 [ 11, %bb.b ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i.i.i, i64 32, i1 false), !noalias !26697
  %.sroa.6.40..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.6.40..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.9.i.i.i.i.i, i64 304, i1 false), !noalias !26697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26698
  store i64 %.sroa.0.0.ph.i.i.i.i.i, ptr %0, align 8, !alias.scope !26697
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.510.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.6.i.i.i, i64 336, i1 false)
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17haf4a8f35617272c2E.exit

"_ZN4core3ptr411drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$core..result..Result$LT$$LP$dump..reader..v3..updates..UpdateEntry$C$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$C$dump..error..Error$GT$$GT$$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$17h6f93df0dc6c9477eE.exit.i": ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26698
  store i64 12, ptr %0, align 8, !alias.scope !26697
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17haf4a8f35617272c2E.exit

_ZN4core4iter6traits8iterator8Iterator8find_map17haf4a8f35617272c2E.exit: ; preds = %bb.e, %"_ZN4core3ptr411drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$core..result..Result$LT$$LP$dump..reader..v3..updates..UpdateEntry$C$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$C$dump..error..Error$GT$$GT$$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$17h6f93df0dc6c9477eE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a3b91a8fe9c23f3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([456 x i8]) align 8 captures(none) dereferenceable(456) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [408 x i8], align 8               ; 7 uses
  %.sroa.7.i.i.i.i.i = alloca [32 x i8], align 8  ; 6 uses
  %.sroa.8.i.i.i.i.i = alloca [368 x i8], align 8 ; 5 uses
  %i.b = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.6.i.i.i = alloca [400 x i8], align 8     ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26724)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26725
  call fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h87a1ba770e17b190E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !26726
  %i.e = load i64, ptr %i.c, align 8, !range !33, !noalias !26727, !noundef !21
  %.not17.i.i.i = icmp eq i64 %i.e, -9223372036854775807
  br i1 %.not17.i.i.i, label %"_ZN4core3ptr219drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$17h8d733f6fa86fb493E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26728
  call fastcc void @"_ZN4dump6reader2v113V1IndexReader5tasks28_$u7b$$u7b$closure$u7d$$u7d$17h8945b0598c79c0c8E"(ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c), !noalias !26726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26729)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26731)
  %i.f = load i64, ptr %i.b, align 8, !range !29, !alias.scope !26732, !noalias !26728, !noundef !21
  %i.g = icmp eq i64 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !26733
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26734
  call void @"_ZN4dump6reader6compat8v1_to_v2163_$LT$impl$u20$core..convert..From$LT$dump..reader..v1..update..UpdateStatus$GT$$u20$for$u20$core..option..Option$LT$dump..reader..v2..updates..UpdateStatus$GT$$GT$4from17h57e526da8812034cE"(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(address) dereferenceable(408) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(168) %i.b), !noalias !26735
  %i.i = load i64, ptr %i.a, align 8, !range !40, !noalias !26734, !noundef !21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.i, 10
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i64 %.val to i128
  %i.k = tail call i128 @llvm.bswap.i128(i128 %i.j)
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx2.i.i.i.i.i, i64 32, i1 false), !noalias !26736
  %.sroa.8.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8.0..sroa_idx3.i.i.i.i.i, i64 368, i1 false), !noalias !26736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26734
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26734
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26728
  call fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h87a1ba770e17b190E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !26726
  %i.l = load i64, ptr %i.c, align 8, !range !33, !noalias !26727, !noundef !21
  %.not.i.i.i = icmp eq i64 %i.l, -9223372036854775807
  br i1 %.not.i.i.i, label %"_ZN4core3ptr219drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$17h8d733f6fa86fb493E.exit.i", label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.84.0.ph.i.i.i.i.i = phi i128 [ %i.k, %bb.d ], [ undef, %bb.b ]
  %.sroa.0.0.ph.i.i.i.i.i = phi i64 [ %i.i, %bb.d ], [ 10, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i.i.i, i64 32, i1 false), !noalias !26737
  %.sroa.6.40..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6.40..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8.i.i.i.i.i, i64 368, i1 false), !noalias !26737
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26725
  store i64 %.sroa.0.0.ph.i.i.i.i.i, ptr %0, align 8, !alias.scope !26724
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.6.i.i.i, i64 400, i1 false), !noalias !26738
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i128 %.sroa.84.0.ph.i.i.i.i.i, ptr %.sroa.68.0..sroa_idx.i, align 8, !alias.scope !26724
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 -9223372036854775808, ptr %.sroa.79.0..sroa_idx.i, align 8, !alias.scope !26724
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17h2b7103379248fea0E.exit

"_ZN4core3ptr219drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$17h8d733f6fa86fb493E.exit.i": ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26725
  store i64 11, ptr %0, align 8, !alias.scope !26724
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17h2b7103379248fea0E.exit

_ZN4core4iter6traits8iterator8Iterator8find_map17h2b7103379248fea0E.exit: ; preds = %bb.f, %"_ZN4core3ptr219drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$GT$17h8d733f6fa86fb493E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e66019c5325d2f0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i.i.i.i.i = alloca [32 x i8], align 8  ; 6 uses
  %.sroa.9.i.i.i.i.i = alloca [136 x i8], align 8 ; 5 uses
  %i.a = alloca [176 x i8], align 8               ; 8 uses
  %.sroa.6.i.i.i = alloca [168 x i8], align 8     ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26751)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26752
  call void @"_ZN75_$LT$std..fs..ReadDir$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25a0c1b7795dd0d8E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !26753
  %i.c = load i64, ptr %i.b, align 8, !range !46, !noalias !26754, !noundef !21
end_hunk_0
