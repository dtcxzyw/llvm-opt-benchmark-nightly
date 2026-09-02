Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$$GT$17h8df567fb1f82b5bfE":bb.a

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4476)
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i.i.i2.i = load ptr, ptr %i.s, align 8, !alias.scope !4477, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i2.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4477
  br label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i"

"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i": ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h2bdf77755533f9f7E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.t)
  br label %"_ZN4core3ptr233drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h6debdce752bf8722E.exit"

"_ZN4core3ptr233drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h6debdce752bf8722E.exit": ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", %bb.f, %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr171drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h47afc0c093900014E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4512)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4514)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i64, ptr %i.b, align 8, !range !10, !alias.scope !4515, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4517)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !4518, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b
  %.val.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !4518, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #42, !noalias !4518
  br label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i"

"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4519)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val.i.i.i.i.i.i = load i32, ptr %i.g, align 8, !range !12, !alias.scope !4520, !noundef !4
  %i.h = tail call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i) #42, !noalias !4520 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4521)
  %i.i = icmp eq i64 %i.c, 0
  br i1 %i.i, label %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1.i2.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !4522, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i.i.i.i.i.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4522
  br label %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i"

"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i": ; preds = %bb.c, %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4523)
  %i.k = load i64, ptr %0, align 8, !range !17, !alias.scope !4524, !noundef !4 ; 4 uses
  %i.l = icmp eq i64 %i.k, -9223372036854775807
  br i1 %i.l, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4526)
  %i.m = icmp eq i64 %i.k, -9223372036854775808
  br i1 %i.m, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4528)
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !4529, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4529
  br label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i"

"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h2bdf77755533f9f7E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.p)
  br label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i"

"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i", %bb.d, %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4530)
  %i.r = load i64, ptr %i.q, align 8, !range !17, !alias.scope !4531, !noundef !4 ; 4 uses
  %i.s = icmp eq i64 %i.r, -9223372036854775807
  br i1 %i.s, label %"_ZN4core3ptr239drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17hb48f357af79481ccE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4533)
  %i.t = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.t, label %"_ZN4core3ptr239drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17hb48f357af79481ccE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4535)
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i.i.i2.i = load ptr, ptr %i.v, align 8, !alias.scope !4536, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i2.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4536
  br label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i"

"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i": ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h2bdf77755533f9f7E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.w)
  br label %"_ZN4core3ptr239drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17hb48f357af79481ccE.exit"

"_ZN4core3ptr239drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17hb48f357af79481ccE.exit": ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", %bb.g, %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5380fa808570419fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4540)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !4540, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !4540
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !4540 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !4540, !noundef !4 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !4540, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !4540, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !4540, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !4540
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !4540, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !4540
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !4540, !nonnull !4, !noundef !4
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !4540, !inline_history !4539
  %i.s = load i64, ptr %i.e, align 8, !noalias !4540, !noundef !4
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !4540
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !4540, !noundef !4 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !4540, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !4540
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core3ptr19swap_nonoverlapping17h3caeff55f02f2a35E(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 16, 177) %2) unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 4 uses
  %min.iters.check = icmp samesign ult i64 %2, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.b = and i64 %2, 248                          ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep1 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep1
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 28                       ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4568)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %0, align 1, !alias.scope !4569, !noalias !4570
  %wide.load2 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !4569, !noalias !4570
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %wide.load3 = load <2 x i64>, ptr %1, align 1, !alias.scope !4570, !noalias !4567
  %wide.load4 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !4570, !noalias !4567
  store <2 x i64> %wide.load3, ptr %0, align 1, !alias.scope !4569, !noalias !4570
  store <2 x i64> %wide.load4, ptr %i.c, align 1, !alias.scope !4569, !noalias !4570
  store <2 x i64> %wide.load, ptr %1, align 1, !alias.scope !4570, !noalias !4567
  store <2 x i64> %wide.load2, ptr %i.d, align 1, !alias.scope !4570, !noalias !4567
  %i.e = icmp eq i64 %n.vec, 4
  br i1 %i.e, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4572)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load.1 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !4573, !noalias !4574
  %wide.load2.1 = load <2 x i64>, ptr %i.h, align 1, !alias.scope !4573, !noalias !4574
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %wide.load3.1 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !4574, !noalias !4571
  %wide.load4.1 = load <2 x i64>, ptr %i.i, align 1, !alias.scope !4574, !noalias !4571
  store <2 x i64> %wide.load3.1, ptr %i.f, align 1, !alias.scope !4573, !noalias !4574
  store <2 x i64> %wide.load4.1, ptr %i.h, align 1, !alias.scope !4573, !noalias !4574
  store <2 x i64> %wide.load.1, ptr %i.g, align 1, !alias.scope !4574, !noalias !4571
  store <2 x i64> %wide.load2.1, ptr %i.i, align 1, !alias.scope !4574, !noalias !4571
  %i.j = icmp eq i64 %n.vec, 8
  br i1 %i.j, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4576)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load.2 = load <2 x i64>, ptr %i.k, align 1, !alias.scope !4577, !noalias !4578
  %wide.load2.2 = load <2 x i64>, ptr %i.m, align 1, !alias.scope !4577, !noalias !4578
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %wide.load3.2 = load <2 x i64>, ptr %i.l, align 1, !alias.scope !4578, !noalias !4575
  %wide.load4.2 = load <2 x i64>, ptr %i.n, align 1, !alias.scope !4578, !noalias !4575
  store <2 x i64> %wide.load3.2, ptr %i.k, align 1, !alias.scope !4577, !noalias !4578
  store <2 x i64> %wide.load4.2, ptr %i.m, align 1, !alias.scope !4577, !noalias !4578
  store <2 x i64> %wide.load.2, ptr %i.l, align 1, !alias.scope !4578, !noalias !4575
  store <2 x i64> %wide.load2.2, ptr %i.n, align 1, !alias.scope !4578, !noalias !4575
  %i.o = icmp eq i64 %n.vec, 12
  br i1 %i.o, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4580)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %wide.load.3 = load <2 x i64>, ptr %i.p, align 1, !alias.scope !4581, !noalias !4582
  %wide.load2.3 = load <2 x i64>, ptr %i.r, align 1, !alias.scope !4581, !noalias !4582
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %wide.load3.3 = load <2 x i64>, ptr %i.q, align 1, !alias.scope !4582, !noalias !4579
  %wide.load4.3 = load <2 x i64>, ptr %i.s, align 1, !alias.scope !4582, !noalias !4579
  store <2 x i64> %wide.load3.3, ptr %i.p, align 1, !alias.scope !4581, !noalias !4582
  store <2 x i64> %wide.load4.3, ptr %i.r, align 1, !alias.scope !4581, !noalias !4582
  store <2 x i64> %wide.load.3, ptr %i.q, align 1, !alias.scope !4582, !noalias !4579
  store <2 x i64> %wide.load2.3, ptr %i.s, align 1, !alias.scope !4582, !noalias !4579
  %i.t = icmp eq i64 %n.vec, 16
  br i1 %i.t, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4584)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %wide.load.4 = load <2 x i64>, ptr %i.u, align 1, !alias.scope !4585, !noalias !4586
  %wide.load2.4 = load <2 x i64>, ptr %i.w, align 1, !alias.scope !4585, !noalias !4586
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %wide.load3.4 = load <2 x i64>, ptr %i.v, align 1, !alias.scope !4586, !noalias !4583
  %wide.load4.4 = load <2 x i64>, ptr %i.x, align 1, !alias.scope !4586, !noalias !4583
  store <2 x i64> %wide.load3.4, ptr %i.u, align 1, !alias.scope !4585, !noalias !4586
  store <2 x i64> %wide.load4.4, ptr %i.w, align 1, !alias.scope !4585, !noalias !4586
  store <2 x i64> %wide.load.4, ptr %i.v, align 1, !alias.scope !4586, !noalias !4583
  store <2 x i64> %wide.load2.4, ptr %i.x, align 1, !alias.scope !4586, !noalias !4583
  br label %middle.block

middle.block:                                     ; preds = %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.03.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.03.i.i.ph, 1
  %3 = and i64 %2, 8
  %lcmp.mod.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.03.i.i.ph, 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i.ph ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4568)
  %.sroa.0.0.copyload.i.i.i.prol = load i64, ptr %i.z, align 1, !alias.scope !4567, !noalias !4568
  %.sroa.02.0.copyload.i.i.i.prol = load i64, ptr %i.aa, align 1, !alias.scope !4568, !noalias !4567
  store i64 %.sroa.02.0.copyload.i.i.i.prol, ptr %i.z, align 1, !alias.scope !4567, !noalias !4568
  store i64 %.sroa.0.0.copyload.i.i.i.prol, ptr %i.aa, align 1, !alias.scope !4568, !noalias !4567
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.03.i.i.unr = phi i64 [ %.sroa.0.03.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ab = icmp eq i64 %i.a, %.neg
  br i1 %i.ab, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.03.i.i = phi i64 [ %i.af, %scalar.ph ], [ %.sroa.0.03.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ac = add nuw nsw i64 %.sroa.0.03.i.i, 1      ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4568)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ad, align 1, !alias.scope !4567, !noalias !4568
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ae, align 1, !alias.scope !4568, !noalias !4567
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.ad, align 1, !alias.scope !4567, !noalias !4568
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ae, align 1, !alias.scope !4568, !noalias !4567
  %i.af = add nuw nsw i64 %.sroa.0.03.i.i, 2      ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4588)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.ag, align 1, !alias.scope !4587, !noalias !4588
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.ah, align 1, !alias.scope !4588, !noalias !4587
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.ag, align 1, !alias.scope !4587, !noalias !4588
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.ah, align 1, !alias.scope !4588, !noalias !4587
  %exitcond.not.i.i.1 = icmp eq i64 %i.af, %i.a
  br i1 %exitcond.not.i.i.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i, label %scalar.ph, !llvm.loop !4557

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ai = and i64 %2, 7                           ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i
  %i.aj = and i64 %2, 248                         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 4 uses
  %i.am = icmp samesign ult i64 %i.ai, 4
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4590)
  %.sroa.0.0.copyload.i.i4.i = load i32, ptr %i.ak, align 1, !alias.scope !4589, !noalias !4590
  %.sroa.02.0.copyload.i.i5.i = load i32, ptr %i.al, align 1, !alias.scope !4590, !noalias !4589
  store i32 %.sroa.02.0.copyload.i.i5.i, ptr %i.ak, align 1, !alias.scope !4589, !noalias !4590
  store i32 %.sroa.0.0.copyload.i.i4.i, ptr %i.al, align 1, !alias.scope !4590, !noalias !4589
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.an = and i64 %2, 2
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.0.0.i.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.0.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4592)
  %.sroa.0.0.copyload.i9.i.i = load i16, ptr %i.ap, align 1, !alias.scope !4591, !noalias !4592
  %.sroa.02.0.copyload.i10.i.i = load i16, ptr %i.aq, align 1, !alias.scope !4592, !noalias !4591
  store i16 %.sroa.02.0.copyload.i10.i.i, ptr %i.ap, align 1, !alias.scope !4591, !noalias !4592
  store i16 %.sroa.0.0.copyload.i9.i.i, ptr %i.aq, align 1, !alias.scope !4592, !noalias !4591
  %i.ar = or disjoint i64 %.sroa.0.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.d ], [ %i.ar, %bb.e ] ; 2 uses
  %4 = and i64 %2, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.0.1.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.0.1.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4594)
  %.sroa.0.0.copyload.i11.i.i = load i8, ptr %i.as, align 1, !alias.scope !4593, !noalias !4594
  %.sroa.02.0.copyload.i12.i.i = load i8, ptr %i.at, align 1, !alias.scope !4594, !noalias !4593
  store i8 %.sroa.02.0.copyload.i12.i.i, ptr %i.as, align 1, !alias.scope !4593, !noalias !4594
  store i8 %.sroa.0.0.copyload.i11.i.i, ptr %i.at, align 1, !alias.scope !4594, !noalias !4593
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit: ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr344drop_in_place$LT$core..iter..adapters..map..Map$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$$LT$procfs_core..process..MemoryMaps$u20$as$u20$procfs_core..FromBufRead$GT$..from_buf_read$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h094e2ec77da35b12E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4604)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !4605, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val1.i.i, 0
  br i1 %i.b, label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !4605, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #42, !noalias !4605
  br label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i"

"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4606)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i.i = load i32, ptr %i.d, align 8, !range !12, !alias.scope !4607, !noundef !4
  %i.e = tail call noundef i32 @close(i32 noundef %.val.i.i.i) #42, !noalias !4607 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4608)
  %.val.i1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !4609 ; 2 uses
  %i.f = icmp eq i64 %.val.i1.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr109drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$17ha8370cff42c21e03E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i2.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4609, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i.i.i, i64 noundef %.val.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4609
  br label %"_ZN4core3ptr109drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$17ha8370cff42c21e03E.exit"

"_ZN4core3ptr109drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$17ha8370cff42c21e03E.exit": ; preds = %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h71c4ed5d8deea3e2E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4618)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4619, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !4619
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h5e642e2611d6238bE.exit.i"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hde34f2c2e678ef7eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h5e642e2611d6238bE.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.e, align 8, !alias.scope !4616, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.f, align 8, !alias.scope !4616 ; 2 uses
  store i8 0, ptr %.val2.i, align 1
  %i.g = icmp eq i64 %.val3.i, 0
  br i1 %i.g, label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17hf6e2bd42be3e4d64E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val3.i, i64 noundef 1) #42
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17hf6e2bd42be3e4d64E.exit.i"

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h5e642e2611d6238bE.exit.i": ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !4616, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !alias.scope !4616 ; 2 uses
  store i8 0, ptr %.val.i, align 1
  %i.j = icmp eq i64 %.val1.i, 0
  br i1 %i.j, label %"_ZN4core3ptr49drop_in_place$LT$std..sys..fs..unix..DirEntry$GT$17hfbbde0d7899e925dE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i": ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h5e642e2611d6238bE.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #42
  br label %"_ZN4core3ptr49drop_in_place$LT$std..sys..fs..unix..DirEntry$GT$17hfbbde0d7899e925dE.exit"

"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17hf6e2bd42be3e4d64E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i", %bb.c
  resume { ptr, i32 } %i.d

"_ZN4core3ptr49drop_in_place$LT$std..sys..fs..unix..DirEntry$GT$17hfbbde0d7899e925dE.exit": ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h5e642e2611d6238bE.exit.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3e92cabc75bbb45eE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3e92cabc75bbb45eE.exit"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3e92cabc75bbb45eE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !range !12, !noundef !4
  %i.b = tail call noundef i32 @close(i32 noundef %.val) #42 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4622)
  %.val.i1 = load i64, ptr %0, align 8, !alias.scope !4622 ; 2 uses
  %i.c = icmp eq i64 %.val.i1, 0
  br i1 %i.c, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit3", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i2 = load ptr, ptr %i.d, align 8, !alias.scope !4622, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2, i64 noundef %.val.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4622
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit3"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit3": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hafc79f24a304e24fE.exit"
    i64 3, label %bb.b
    i64 0, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hafc79f24a304e24fE.exit"
    i64 1, label %bb.c
  ], !prof !19

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hafc79f24a304e24fE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !14, !invariant.load !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
end_hunk_0
begin_hunk_1_@"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h921eef8f3a0a02baE":bb.a
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
  %7 = load i64, ptr %1, align 8                  ; 5 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = sub i64 %5, %i.h
  %.promoted36 = load i64, ptr %8, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.j = phi i64 [ %.promoted36, %.lr.ph ], [ %i.r, %bb.f ] ; 5 uses
  %i.k = phi i64 [ %i.c, %.lr.ph ], [ %i.t, %bb.f ]
  %i.l = phi i64 [ %.promoted, %.lr.ph ], [ %i.s, %bb.f ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !noundef !4
  %i.o = and i8 %i.n, 63
  %i.p = zext nneg i8 %i.o to i64
  %9 = shl nuw i64 1, %i.p
  %10 = and i64 %9, %i.f
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.l, %5                         ; 3 uses
  store i64 %i.q, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %7)
  %.sroa.01.0 = select i1 %6, i64 %7, i64 %.sroa.0.0.i ; 4 uses
  %umax50 = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not87.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not87.not, label %.lr.ph90, label %._crit_edge91

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.i, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph72 = phi i64 [ %i.al, %bb.o ], [ %i.at, %bb.r ], [ %i.q, %bb.d ]
  store i64 %.sink, ptr %8, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.r = phi i64 [ %i.j, %bb.r ], [ %i.j, %bb.o ], [ %i.j, %bb.d ], [ %.sink, %.sink.split ]
  %i.s = phi i64 [ %i.at, %bb.r ], [ %i.al, %bb.o ], [ %i.q, %bb.d ], [ %.ph72, %.sink.split ] ; 2 uses
  %i.t = add i64 %i.b, %i.s                       ; 2 uses
  %i.u = icmp ult i64 %i.t, %3
  br i1 %i.u, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.v = add i64 %.sroa.02.088, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %umax50
  br i1 %exitcond.not, label %._crit_edge91, label %.lr.ph90

._crit_edge91:                                    ; preds = %bb.g, %bb.e
  %.sroa.05.0 = select i1 %6, i64 0, i64 %i.j     ; 2 uses
  %i.w = icmp ult i64 %.sroa.05.0, %7
  br i1 %i.w, label %.lr.ph94, label %._crit_edge95

.lr.ph90:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.088 = phi i64 [ %i.v, %bb.g ], [ %.sroa.01.0, %bb.e ] ; 4 uses
  %i.x = add i64 %.sroa.02.088, %i.l              ; 2 uses
  %i.y = icmp ult i64 %i.x, %3
  br i1 %i.y, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %i.z = icmp ult i64 %.sroa.05.0, %i.ab
  br i1 %i.z, label %.lr.ph94, label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge91, %bb.h
  %i.aa = add i64 %i.l, %5                        ; 2 uses
  store i64 %i.aa, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph94:                                         ; preds = %._crit_edge91, %bb.h
  %.sroa.57.092 = phi i64 [ %i.ab, %bb.h ], [ %7, %._crit_edge91 ]
  %i.ab = add i64 %.sroa.57.092, -1               ; 6 uses
  %i.ac = icmp ult i64 %i.ab, %5
  br i1 %i.ac, label %bb.k, label %bb.l

bb.i:                                             ; preds = %._crit_edge95
  store i64 0, ptr %8, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge95
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.ad, align 8, !alias.scope !5224
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %i.ae, align 8, !alias.scope !5224
  br label %bb.c

bb.k:                                             ; preds = %.lr.ph94
  %i.af = add i64 %i.ab, %i.l                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %3
  br i1 %i.ag, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph94
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ab, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #43
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !4
  %.not = icmp eq i8 %i.ai, %i.ak
  br i1 %.not, label %bb.h, label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.af, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.al = add i64 %i.h, %i.l                      ; 3 uses
  store i64 %i.al, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.p:                                             ; preds = %.lr.ph90
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.088
  %i.an = load i8, ptr %i.am, align 1, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !4
  %.not22 = icmp eq i8 %i.an, %i.ap
  br i1 %.not22, label %bb.g, label %bb.r

bb.q:                                             ; preds = %.lr.ph90
  %i.aq = add i64 %.sroa.01.0, %i.l
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.aq)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #43
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ar = add i64 %i.l, 1
  %i.as = add i64 %i.ar, %.sroa.02.088
  %i.at = sub i64 %i.as, %7                       ; 3 uses
  store i64 %i.at, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1da9a8205cf9f1f3E(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !5237
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5237
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5237
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5237
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !5237
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !5237
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !5237
  %.val.i = load i64, ptr %0, align 8, !noalias !5238, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5239
  store i64 %.val.i, ptr %i.a, align 8, !noalias !5239
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h03f0a4b434c9b388E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5239
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !5240
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5240
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5240 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5240
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !5240, !noundef !4
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5240, !noundef !4
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h3b6bbb1ebafcde82E(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !5258
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5258
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5258
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5258
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !5258
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !5258
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !5258
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h03f0a4b434c9b388E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5259
  store i8 -1, ptr %i.a, align 1, !noalias !5259
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h03f0a4b434c9b388E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !5260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5259
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !5261
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5261
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5261 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5261
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !5261, !noundef !4
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5261, !noundef !4
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
end_hunk_1
begin_hunk_2_@_ZN6procfs3net5route17h0bdb952c1c1259edE:bb.a
  %.sroa.28.0.copyload66.i = load i32, ptr %.sroa.28.0..sroa_idx65.i, align 8, !noalias !15696
  %.sroa.31.0..sroa_idx90.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.0..sroa_idx90.i, i64 12, i1 false), !noalias !15696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !15693
  br label %bb.fi

bb.fw:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !15703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !15693
  %.sroa.02.0.copyload24.i = load i64, ptr %i.dv, align 8, !noalias !15696
  %.sroa.28.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.28.0.copyload68.i = load i32, ptr %.sroa.28.0..sroa_idx67.i, align 8, !noalias !15696
  %.sroa.31.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.0..sroa_idx91.i, i64 12, i1 false), !noalias !15696
  br label %bb.fi

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit992.i.i.i": ; preds = %bb.fx, %bb.fj, %bb.fi
  %.sroa.53.1.i = phi i64 [ %.sroa.53.0.copyload98.i, %bb.fx ], [ 98, %bb.fi ], [ 98, %bb.fj ]
  %.sroa.32.1.i = phi ptr [ %.sroa.32.0.copyload94.i, %bb.fx ], [ @236, %bb.fi ], [ @236, %bb.fj ] ; 2 uses
  %.sroa.28.1.i = phi i32 [ %.sroa.28.0.copyload26.i, %bb.fx ], [ %.sroa.28.0.i, %bb.fi ], [ %.sroa.28.0.i, %bb.fj ] ; 2 uses
  %.sroa.02.1.i = phi i64 [ %.sroa.02.0.copyload3.i, %bb.fx ], [ %.sroa.02.0.i, %bb.fi ], [ %.sroa.02.0.i, %bb.fj ] ; 2 uses
  %i.wa = phi <2 x i32> [ %i.wc, %bb.fx ], [ %i.vn, %bb.fi ], [ %i.vn, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !15693
  call void @llvm.experimental.noalias.scope.decl(metadata !15824)
  call void @llvm.experimental.noalias.scope.decl(metadata !15825)
  call void @llvm.experimental.noalias.scope.decl(metadata !15826)
  %.val3.i.i.i1009.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i16.i, align 8, !alias.scope !15827, !noalias !15693, !noundef !4 ; 2 uses
  %i.wb = icmp eq i64 %.val3.i.i.i1009.i.i.i, 0
  br i1 %i.wb, label %bb.fy, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i1010.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i1010.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit992.i.i.i"
  %.val2.i.i.i1011.i.i.i = load ptr, ptr %i.dy, align 8, !alias.scope !15827, !noalias !15693, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i1011.i.i.i, i64 noundef %.val3.i.i.i1009.i.i.i, i64 noundef 1) #42, !noalias !15828
  br label %bb.fy

bb.fx:                                            ; preds = %bb.k
  %.sroa.02.0.copyload3.i = load i64, ptr %i.ah, align 8, !noalias !15696
  %.sroa.28.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.28.0.copyload26.i = load i32, ptr %.sroa.28.0..sroa_idx25.i, align 8, !noalias !15696
  %.sroa.31.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.0..sroa_idx70.i, i64 12, i1 false), !noalias !15696
  %.sroa.32.0..sroa_idx93.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.32.0.copyload94.i = load ptr, ptr %.sroa.32.0..sroa_idx93.i, align 8, !noalias !15696
  %.sroa.53.0..sroa_idx97.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.53.0.copyload98.i = load i64, ptr %.sroa.53.0..sroa_idx97.i, align 8, !noalias !15696
  %.sroa.74.0..sroa_idx99.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.wc = load <2 x i32>, ptr %.sroa.74.0..sroa_idx99.i, align 8, !noalias !15696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !15693
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit992.i.i.i"

bb.fy:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i1010.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit992.i.i.i"
  %.val.i.i.i1012.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !range !12, !alias.scope !15827, !noalias !15693, !noundef !4
  %i.wd = call noundef i32 @close(i32 noundef %.val.i.i.i1012.i.i.i) #42, !noalias !15828 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !15693
  call void @llvm.experimental.noalias.scope.decl(metadata !15829)
  %.val.i1014.i.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !15829, !noalias !15693, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i1015.i.i.i = load i64, ptr %i.er, align 8, !alias.scope !15829, !noalias !15693, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15830)
  %i.we = icmp eq i64 %.val1.i1015.i.i.i, 0
  br i1 %i.we, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.fy, %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.wg, %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i" ], [ 0, %bb.fy ] ; 2 uses
  %i.wf = getelementptr inbounds nuw [64 x i8], ptr %.val.i1014.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.wg = add nuw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.wf, align 8, !alias.scope !15831, !noalias !15832 ; 2 uses
  %i.wh = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.wh, label %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i", label %bb.fz

bb.fz:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.wi = getelementptr i8, ptr %i.wf, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.wi, align 8, !alias.scope !15830, !noalias !15832, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15833
  br label %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i": ; preds = %bb.fz, %.lr.ph.i.i.i.i.i.i
  %i.wj = icmp eq i64 %i.wg, %.val1.i1015.i.i.i
  br i1 %i.wj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i", %bb.fy
  %.val2.i1016.i.i.i = load i64, ptr %i.dz, align 8, !range !14, !alias.scope !15829, !noalias !15693, !noundef !4 ; 2 uses
  %i.wk = icmp eq i64 %.val2.i1016.i.i.i, 0
  br i1 %i.wk, label %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i", label %bb.ga

bb.ga:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i"
  %i.wl = shl nuw i64 %.val2.i1016.i.i.i, 6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1014.i.i.i, i64 noundef %i.wl, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15832
  br label %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i"

"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i": ; preds = %bb.ga, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !15693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !15694
  %.not.i = icmp eq i64 %.sroa.02.1.i, -9223372036854775803
  br i1 %.not.i, label %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit.thread, label %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit

_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit.thread: ; preds = %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.thread.i", %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i"
  %.sroa.28.2124.i = phi i32 [ %.sroa.28.8.copyload69.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.thread.i" ], [ %.sroa.28.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.32.2123.i = phi ptr [ %.sroa.32.8.copyload96.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.thread.i" ], [ %.sroa.32.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, i64 12, i1 false)
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 %.sroa.28.2124.i, ptr %i.wm, align 8, !alias.scope !15689
  %.sroa.6.0..sroa_idx104.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store ptr %.sroa.32.2123.i, ptr %.sroa.6.0..sroa_idx104.i, align 8, !alias.scope !15689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %bb.gc

_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit: ; preds = %bb.b, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i"
  %.sroa.53.3.i = phi i64 [ %.sroa.8.sroa.6.0.copyload.i, %bb.b ], [ %.sroa.53.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.32.3.i = phi ptr [ %.sroa.8.sroa.5.0.copyload.i, %bb.b ], [ %.sroa.32.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.28.3.i = phi i32 [ %.sroa.6.0.copyload.i, %bb.b ], [ %.sroa.28.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.02.3.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.02.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %i.wn = phi <2 x i32> [ %i.ej, %bb.b ], [ %i.wa, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.5111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5111.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, i64 12, i1 false), !noalias !15689
  store i64 %.sroa.02.3.i, ptr %i.b, align 8, !noalias !15835
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sroa.28.3.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15835
  %.sroa.6112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.32.3.i, ptr %.sroa.6112.0..sroa_idx.i, align 8, !noalias !15835
  %.sroa.7113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.53.3.i, ptr %.sroa.7113.0..sroa_idx.i, align 8, !noalias !15835
  %.sroa.8114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x i32> %i.wn, ptr %.sroa.8114.0..sroa_idx.i, align 8, !noalias !15835
  call void @"_ZN68_$LT$procfs_core..ProcError$u20$as$u20$procfs_core..ProcErrorExt$GT$10error_path17h863f75f158574cc8E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ed, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @526, i64 noundef 15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15834
  %.pr = load i64, ptr %i.ed, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  %.not = icmp eq i64 %.pr, -9223372036854775803
  br i1 %.not, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ed, i64 48, i1 false)
  br label %bb.gd

bb.gc:                                            ; preds = %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit.thread, %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wp, ptr noundef nonnull align 8 dereferenceable(24) %i.wo, i64 24, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6procfs3net5snmp617h6962dc1c91738033E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([664 x i8]) align 8 captures(none) dereferenceable(664) %0) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_ZN11procfs_core8FromRead9from_file17ha929bb3659bab0e1E(ptr noalias noundef align 8 captures(address) dereferenceable(664) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6procfs3sys2fs11binfmt_misc10hex_to_vec17h8aad7a610b81e383E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %2, ptr %i.r, align 8
  %3 = and i64 %2, 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.q, ptr %i.m, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c2bcc7e49b274a4E", ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15878
  store ptr @539, ptr %i.d, align 8, !noalias !15879
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.472.0..sroa_idx, align 8, !noalias !15879
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.m, ptr %.sroa.573.0..sroa_idx, align 8, !noalias !15879
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.674.0..sroa_idx, align 8, !noalias !15879
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.775.0..sroa_idx, align 8, !noalias !15879
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.o, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.430.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15880
  store ptr @3, ptr %i.c, align 8, !noalias !15881
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !15881
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !15881
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !15881
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !15881
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.w unwind label %bb.u

._crit_edge:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit", %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit"
  %i.w = phi i64 [ 0, %.lr.ph ], [ %i.bf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit" ] ; 3 uses
  %.sroa.06.0111 = phi i64 [ 0, %.lr.ph ], [ %i.x, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.x = add i64 %.sroa.06.0111, 2                ; 7 uses
  switch i64 %.sroa.06.0111, label %bb.f [
    i64 -2, label %bb.k
    i64 0, label %.thread
  ]

bb.e:                                             ; preds = %bb.f
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0111
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !15882, !noundef !4
  %i.ab = icmp sgt i8 %i.aa, -65
  br i1 %i.ab, label %bb.e, label %bb.k

.thread:                                          ; preds = %bb.d, %bb.e
  %.not6.i = icmp ult i64 %i.x, %2
  br i1 %.not6.i, label %bb.g, label %.split7.i

.split7.i:                                        ; preds = %.thread
  %i.ac = icmp eq i64 %i.x, %2
  br i1 %i.ac, label %.lr.ph.i, label %bb.k

bb.g:                                             ; preds = %.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !15882, !noundef !4
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %.lr.ph.i, label %bb.k

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit69", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit63", %._crit_edge
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %i.bi, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val53 = load i64, ptr %i.l, align 8           ; 2 uses
  %i.ag = icmp eq i64 %.val53, 0
  br i1 %i.ag, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"
  %.val54 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54, i64 noundef %.val53, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit"

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

.loopexit.split-lp:                               ; preds = %bb.k, %.loopexit151
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

.lr.ph.i:                                         ; preds = %bb.e, %.split7.i, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0111 ; 3 uses
  store ptr %i.ah, ptr %i.k, align 8
  store i64 2, ptr %i.u, align 8
  %.pr.i = load i8, ptr %i.ah, align 1, !alias.scope !15883
  %cond.i = icmp eq i8 %.pr.i, 43                 ; 2 uses
  %spec.select.idx = zext i1 %cond.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select.idx ; 2 uses
  %i.ai = load i8, ptr %spec.select, align 1, !alias.scope !15883, !noundef !4 ; 2 uses
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %i.ak = icmp ugt i8 %i.ai, 57
  %i.al = add nsw i32 %i.aj, -65
  %i.am = and i32 %i.al, -33
  %i.an = add nuw nsw i32 %i.am, 10
  %i.ao = add nsw i32 %i.aj, -48
  %spec.select87.i.peel = select i1 %i.ak, i32 %i.an, i32 %i.ao ; 2 uses
  %.not.i56.peel = icmp ult i32 %spec.select87.i.peel, 16
  br i1 %.not.i56.peel, label %bb.j, label %.loopexit151

bb.j:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.aq = trunc nuw nsw i32 %spec.select87.i.peel to i8 ; 2 uses
  br i1 %cond.i, label %bb.m, label %.lr.ph.i.peel.newph

.lr.ph.i.peel.newph:                              ; preds = %bb.j
  %i.ar = load i8, ptr %i.ap, align 1, !alias.scope !15883, !noundef !4 ; 2 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = icmp ugt i8 %i.ar, 57
  %i.au = add nsw i32 %i.as, -65
  %i.av = and i32 %i.au, -33
  %i.aw = add nuw nsw i32 %i.av, 10
  %i.ax = add nsw i32 %i.as, -48
  %spec.select87.i = select i1 %i.at, i32 %i.aw, i32 %i.ax ; 2 uses
  %.not.i56 = icmp ult i32 %spec.select87.i, 16
  br i1 %.not.i56, label %.loopexit152, label %.loopexit151

bb.k:                                             ; preds = %bb.d, %bb.g, %bb.f, %.split7.i
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.06.0111, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #43
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  unreachable

.loopexit151:                                     ; preds = %.lr.ph.i, %.lr.ph.i.peel.newph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 1, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.k, ptr %i.f, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c2bcc7e49b274a4E", ptr %.sroa.440.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15884
  store ptr @535, ptr %i.b, align 8, !noalias !15885
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.484.0..sroa_idx, align 8, !noalias !15885
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %.sroa.585.0..sroa_idx, align 8, !noalias !15885
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.686.0..sroa_idx, align 8, !noalias !15885
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.787.0..sroa_idx, align 8, !noalias !15885
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.o unwind label %.loopexit.split-lp

.loopexit152:                                     ; preds = %.lr.ph.i.peel.newph
  %i.ay = shl nuw i8 %i.aq, 4
  %i.az = trunc nuw nsw i32 %spec.select87.i to i8
  %i.ba = or disjoint i8 %i.ay, %i.az
  br label %bb.m

bb.m:                                             ; preds = %.loopexit152, %bb.j
  %.lcssa = phi i8 [ %i.aq, %bb.j ], [ %i.ba, %.loopexit152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bb = load i64, ptr %i.l, align 8, !range !14, !alias.scope !15886, !noundef !4
  %i.bc = icmp eq i64 %i.w, %i.bb
  br i1 %i.bc, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit"

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @533)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit" unwind label %.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit": ; preds = %bb.n, %bb.m
  %i.bd = load ptr, ptr %i.s, align 8, !alias.scope !15886, !nonnull !4, !noundef !4
end_hunk_2
begin_hunk_3_@"_ZN87_$LT$procfs..sys..kernel.._..InternalBitFlags$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h0222dd0d3694256aE":bb.a
  %i.bs = load i128, ptr %i.y, align 1
  %i.bt = xor i128 109491673784529388931300467582578019909, %i.bs
  %i.bu = getelementptr i8, ptr %i.y, i64 16
  %i.bv = load i64, ptr %i.bu, align 1
  %i.bw = zext i64 %i.bv to i128
  %i.bx = xor i128 6434604070413287749, %i.bw
  %i.by = or i128 %i.bt, %i.bx
  %i.bz = icmp ne i128 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

bb.m:                                             ; preds = %bb.g
  %i.cc = load i128, ptr %i.y, align 1
  %i.cd = xor i128 94781673513147319680183853542379966021, %i.cc
  %i.ce = getelementptr i8, ptr %i.y, i64 10
  %i.cf = load i128, ptr %i.ce, align 1
  %i.cg = xor i128 110685882170757350622933374826244227406, %i.cf
  %i.ch = or i128 %i.cd, %i.cg
  %i.ci = icmp ne i128 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.g
  %i.cl = load i128, ptr %i.y, align 1
  %i.cm = xor i128 116054657230648283568206067430966709313, %i.cl
  %i.cn = getelementptr i8, ptr %i.y, i64 5
  %i.co = load i128, ptr %i.cn, align 1
  %i.cp = xor i128 93411029313569580462442961078550090335, %i.co
  %i.cq = or i128 %i.cm, %i.cp
  %i.cr = icmp ne i128 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.g
  %i.cu = load i128, ptr %i.y, align 1
  %i.cv = xor i128 86759758915589451022415705845495778369, %i.cu
  %i.cw = getelementptr i8, ptr %i.y, i64 12
  %i.cx = load i128, ptr %i.cw, align 1
  %i.cy = xor i128 110717034530477712085809844699737182815, %i.cx
  %i.cz = or i128 %i.cv, %i.cy
  %i.da = icmp ne i128 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.f
  %.sroa.5103.0.copyload.i = load i64, ptr %.sroa.716.0..sroa_idx.i, align 8, !noalias !28470 ; 6 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6104.0.copyload.i = load ptr, ptr %.sroa.6104.0..sroa_idx.i, align 8, !noalias !28470 ; 4 uses
  %i.dd = icmp slt i64 %i.af, 0
  br i1 %i.dd, label %bb.q, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !6

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.de = icmp eq i64 %i.af, 0
  br i1 %i.de, label %bb.u, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !28471
  %i.df = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, 9) 1) #42, !noalias !28471 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.q, label %bb.u

bb.q:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.p
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.p ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43
          to label %.noexc.i.i unwind label %bb.r, !noalias !28472

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.dh = landingpad { ptr, i32 }
          cleanup
  switch i64 %i.ag, label %bb.s [
    i64 0, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17hfb35e33f49f16f81E.exit.i"
    i64 1, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.di = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.di, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17hfb35e33f49f16f81E.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i": ; preds = %bb.t, %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6104.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6104.0.copyload.i, i64 noundef %.sroa.5103.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28473
  br label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17hfb35e33f49f16f81E.exit.i"

bb.t:                                             ; preds = %bb.r
  %i.dj = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.dj, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17hfb35e33f49f16f81E.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17hfb35e33f49f16f81E.exit.i": ; preds = %bb.t, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i", %bb.s, %bb.r
  resume { ptr, i32 } %i.dh

bb.u:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.df, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.ae, i64 %i.af, i1 false), !noalias !28474
  switch i64 %i.ag, label %bb.v [
    i64 0, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i"
    i64 1, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.dk, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i.i": ; preds = %bb.w, %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6104.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6104.0.copyload.i, i64 noundef %.sroa.5103.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28475
  br label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i"

bb.w:                                             ; preds = %bb.u
  %i.dl = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.dl, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i.i"

"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i": ; preds = %bb.w, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i.i", %bb.v, %bb.u
  %.sroa.9.sroa.8.0.extract.shift2 = and i64 %i.af, 9223372036854710272
  br label %.loopexit

bb.x:                                             ; preds = %bb.f
  %.sroa.716.0.copyload.i = load i16, ptr %.sroa.716.0..sroa_idx.i, align 8, !noalias !28470
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.sroa.03.0.i = phi i16 [ %.sroa.716.0.copyload.i, %bb.x ], [ %.val.i84.i, %bb.z ]
  %i.dm = or i16 %.sroa.03.0.i, %.sroa.0.0150.i   ; 2 uses
  br i1 %i.w, label %.loopexit19, label %bb.b

bb.z:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.03.0.ptr9.lcssa.i.i = phi ptr [ @581, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @581, i64 24), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @581, i64 48), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @581, i64 72), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @581, i64 96), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @581, i64 120), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @581, i64 144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @581, i64 168), %bb.o ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.ptr9.lcssa.i.i, i64 16
  %.val.i84.i = load i16, ptr %i.dn, align 2, !noalias !28476, !noundef !4
  br label %bb.y

bb.aa:                                            ; preds = %bb.g
  %i.do = icmp slt i64 %i.z, 0
  br i1 %i.do, label %bb.ab, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", !prof !41

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", %bb.aa
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !28477
  %i.dp = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 9) 1) #42, !noalias !28477 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ab, label %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i

bb.ab:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", %bb.aa
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 0, %bb.aa ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 range(i64 1, 0) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43, !noalias !28478
  unreachable

_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dp, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.y, i64 range(i64 1, 0) %i.z, i1 false), !noalias !28479
  %.sroa.9.sroa.8.0.extract.shift = and i64 %i.z, -65536
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i", %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i
  %.sroa.9.sroa.8.sroa.0.1.ph = phi i64 [ %.sroa.9.sroa.8.0.extract.shift2, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %.sroa.9.sroa.8.0.extract.shift, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.9.sroa.0.1.ph = phi i64 [ %i.af, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %i.z, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.16.1.ph = phi i64 [ %i.af, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %i.z, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ undef, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.14.1.ph = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %i.dp, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ undef, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.0.1.ph = phi i64 [ 2, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ 1, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.9.sroa.0.0.insert.ext = and i64 %.sroa.9.sroa.0.1.ph, 65535
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.sroa.0.0.insert.ext, %.sroa.9.sroa.8.sroa.0.1.ph
  store i64 %.sroa.0.1.ph, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.sroa.0.0.insert.insert, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.1.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.1.ph, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ac

.loopexit19:                                      ; preds = %bb.y, %bb.a
  %.sroa.9.sroa.0.1 = phi i16 [ 0, %bb.a ], [ %i.dm, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.9.sroa.0.1, ptr %i.dr, align 8
  store i64 3, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit19, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN88_$LT$procfs..sys..fs..binfmt_misc.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h57d2befff73403f1E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !noundef !4    ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28493)
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %2 = and i8 %i.e, 1
  %or.cond.i.i.peel.not = icmp eq i8 %2, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.g = and i8 %i.e, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.h = and i8 %i.e, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.i = and i8 %i.e, 8
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.3.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @927, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @927, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @927, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @927, i64 72), %.lr.ph.split.i.i.3.peel ]
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ]
  %i.j = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ]
  %i.k = and i8 %i.e, %i.j
  %i.l = load ptr, ptr %.lcssa56.peel, align 8, !noalias !28494, !nonnull !4, !align !5, !noundef !4
  %i.m = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef 1)
  br i1 %i.m, label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.as, %bb.h ], [ %i.k, %bb.a ] ; 11 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 6 uses
  %i.n = icmp ult i64 %.sroa.7.0.i, 4
  br i1 %i.n, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.o = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.o, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28493
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %.sroa.7.0.i ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val.i.i = load i8, ptr %i.r, align 8, !noalias !28494, !noundef !4 ; 4 uses
  %i.s = and i8 %.val.i.i, %i.e
  %i.t = icmp eq i8 %i.s, %.val.i.i
  %i.u = and i8 %.val.i.i, %.sroa.13.0.i
  %i.v = icmp ne i8 %i.u, 0
  %or.cond.i.i = and i1 %i.v, %i.t
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.q, 4
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.w = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %i.q ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.7.0.i, 2          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val.i.i.1 = load i8, ptr %i.y, align 8, !noalias !28494, !noundef !4 ; 4 uses
  %i.z = and i8 %.val.i.i.1, %i.e
  %i.aa = icmp eq i8 %i.z, %.val.i.i.1
  %i.ab = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.ac = icmp ne i8 %i.ab, 0
  %or.cond.i.i.1 = and i1 %i.ac, %i.aa
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.x, 4
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %i.x ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val.i.i.2 = load i8, ptr %i.af, align 8, !noalias !28494, !noundef !4 ; 4 uses
  %i.ag = and i8 %.val.i.i.2, %i.e
  %i.ah = icmp eq i8 %i.ag, %.val.i.i.2
  %i.ai = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.aj = icmp ne i8 %i.ai, 0
  %or.cond.i.i.2 = and i1 %i.aj, %i.ah
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.ae, 4
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %i.ae ; 2 uses
  %i.al = or disjoint i64 %.sroa.7.0.i, 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val.i.i.3 = load i8, ptr %i.am, align 8, !noalias !28494, !noundef !4 ; 4 uses
  %i.an = and i8 %.val.i.i.3, %i.e
  %i.ao = icmp eq i8 %i.an, %.val.i.i.3
  %i.ap = and i8 %.val.i.i.3, %.sroa.13.0.i
  %i.aq = icmp ne i8 %i.ap, 0
  %or.cond.i.i.3 = and i1 %i.aq, %i.ao
  br i1 %or.cond.i.i.3, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.p, %.lr.ph.split.i.i ], [ %i.w, %.lr.ph.split.i.i.1 ], [ %i.ad, %.lr.ph.split.i.i.2 ], [ %i.ak, %.lr.ph.split.i.i.3 ]
  %.lcssa = phi i64 [ %i.q, %.lr.ph.split.i.i ], [ %i.x, %.lr.ph.split.i.i.1 ], [ %i.ae, %.lr.ph.split.i.i.2 ], [ %i.al, %.lr.ph.split.i.i.3 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ]
  %i.ar = xor i8 %.val.i.i.lcssa, -1
  %i.as = and i8 %.sroa.13.0.i, %i.ar
  %i.at = load ptr, ptr %.lcssa56, align 8, !noalias !28494, !nonnull !4, !align !5, !noundef !4
  %i.au = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.au, label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.3.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.3 ], [ %i.e, %.lr.ph.split.i.i.3.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.2 ], [ false, %.lr.ph.split.i.i.3 ], [ true, %.lr.ph.split.i.i.3.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28493
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !28493
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aw = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @928, i64 noundef 2)
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28493
  store ptr %i.d, ptr %i.c, align 8, !noalias !28496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28496
  store ptr %i.c, ptr %i.b, align 8, !noalias !28496
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h8b4338ae57529e35E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !28496
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !28497, !noalias !28498
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !28497, !noalias !28498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28499
  store ptr @70, ptr %i.a, align 8, !noalias !28496
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !28496
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !28496
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !28496
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !28496
  %i.ay = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !28500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28493
  br i1 %i.ay, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28493
  br label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit

bb.h:                                             ; preds = %bb.b
  %i.az = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.at, i64 noundef 1)
  br i1 %i.az, label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit, label %.peel.newph, !llvm.loop !28492

_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$procfs..process..ProcessesIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce8a9a3006e74b07E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_ZN6rustix7backend2fs3dir3Dir4read17hfeacc9ed2f9c01baE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
  %i.g = load i64, ptr %i.e, align 8, !range !18, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit28"
  %i.l = load ptr, ptr %i.i, align 8, !noundef !4 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit28", %bb.a
end_hunk_3
begin_hunk_4_@"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17he080b811d3490d63E":bb.a
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.c, label %.thread, !prof !8

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17ha0b50ab69172aa59E.exit.thread.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17ha0b50ab69172aa59E.exit.i.i.i", %.lr.ph.i.i.i
  %i.x = add i16 %.sroa.06.0.i34.i.i.i, -1
  %i.y = and i16 %i.x, %.sroa.06.0.i34.i.i.i      ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.z = add i64 %.sroa.9.0.i.i.i.i, 16           ; 2 uses
  %i.aa = add i64 %.sroa.01.0.i.i.i.i, %i.z
  br label %bb.b

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h71677b580ff57240E.exit.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17ha0b50ab69172aa59E.exit.i.i.i"
  %i.ab = getelementptr i8, ptr %i.q, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28869)
  %.idx.neg.i.i = mul i64 %i.o, 72
  %i.ac = sdiv exact i64 %.idx.neg.i.i, 72        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28870)
  %i.ad = add nsw i64 %i.ac, -16
  %i.ae = and i64 %i.ad, %i.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !28871
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i825.i.i.i.i.i = load <16 x i8>, ptr %i.ai, align 1, !noalias !28872
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i825.i.i.i.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ah, i1 false)
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 false)
  %narrow.i.i.i.i.i = add nuw nsw i16 %i.am, %i.al
  %i.an = icmp samesign ugt i16 %narrow.i.i.i.i.i, 15
  br i1 %i.an, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h63a611f573fd56f7E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h71677b580ff57240E.exit.i.i"
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !28873, !noalias !28874, !noundef !4
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !alias.scope !28873, !noalias !28874
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h63a611f573fd56f7E.exit"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h63a611f573fd56f7E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h71677b580ff57240E.exit.i.i", %bb.d
  %.sroa.0.0.i.i.i.i.i = phi i8 [ -1, %bb.d ], [ -128, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h71677b580ff57240E.exit.i.i" ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.ai, align 1, !noalias !28875
  %i.ar = getelementptr i8, ptr %i.af, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.ar, align 1, !noalias !28875
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !28873, !noalias !28874, !noundef !4
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 8, !alias.scope !28873, !noalias !28874
  %i.av = getelementptr inbounds i8, ptr %i.q, i64 -72
  %.sroa.0.0.copyload = load i64, ptr %i.av, align 8, !noalias !28876 ; 3 uses
  %.sroa.7.0.copyload = load ptr, ptr %i.ab, align 8, !noalias !28876 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not, label %.thread, label %bb.e

.thread:                                          ; preds = %._crit_edge.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h63a611f573fd56f7E.exit"
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

bb.e:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h63a611f573fd56f7E.exit"
  %i.aw = getelementptr i8, ptr %i.q, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false)
  %i.ax = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ax, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28877
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %bb.f, %bb.e, %.thread
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hb4fcebdbb49aa161E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i64, ptr %i.d, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5 = load i64, ptr %i.e, align 8, !noundef !4
  %i.f = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h3b6bbb1ebafcde82E(i64 %.val, i64 %.val5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28889)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !28890, !noalias !28891, !noundef !4 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !alias.scope !28890, !noalias !28891, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %.sroa.0.15.vec.insert.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ap, %bb.d ]
  %.pn.i = phi i64 [ %i.f, %bb.b ], [ %i.aq, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.j          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.l, align 1, !noalias !28892 ; 2 uses
  %i.m = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %.sroa.0.15.vec.insert.i.i
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i"
  %.sroa.06.0.i34.i = phi i16 [ %i.ao, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i" ], [ %i.n, %bb.c ] ; 3 uses
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = add i64 %.sroa.01.0.i.i, %i.p
  %i.r = and i64 %i.q, %i.j
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [48 x i8], ptr %i.k, i64 %i.s ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -32
  %.val5.i.i = load i64, ptr %i.u, align 8, !noalias !28893, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %.val5.i.i, 3
  br i1 %.not.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i", !prof !29

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i": ; preds = %.lr.ph.i
  %i.v = getelementptr i8, ptr %i.t, i64 -40
  %.val4.i.i = load ptr, ptr %i.v, align 8, !noalias !28893, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = load i16, ptr %1, align 1
  %i.x = load i16, ptr %.val4.i.i, align 1
  %i.y = xor i16 %i.w, %i.x
  %i.z = getelementptr i8, ptr %1, i64 2
  %i.aa = getelementptr i8, ptr %.val4.i.i, i64 2
  %i.ab = load i8, ptr %i.z, align 1
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ab to i16
  %i.ae = zext i8 %i.ac to i16
  %i.af = xor i16 %i.ad, %i.ae
  %i.ag = or i16 %i.y, %i.af
  %i.ah = icmp ne i16 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i", !prof !30

._crit_edge.i:                                    ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i", %bb.c
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit", !prof !8

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i", %.lr.ph.i
  %i.an = add i16 %.sroa.06.0.i34.i, -1
  %i.ao = and i16 %i.an, %.sroa.06.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.ap = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.aq = add i64 %.sroa.01.0.i.i, %i.ap
  br label %bb.c

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit": ; preds = %._crit_edge.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i"
  %i.ar = phi ptr [ %i.t, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i" ], [ null, %._crit_edge.i ] ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -48
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.as
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit"
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit" ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 16, 177) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val13 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = add i64 %.val14, 1                       ; 7 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, label %.lr.ph.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val13, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not9.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.i = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.29 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val13, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val13, i64 %.29, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.17 = phi i64 [ %.sroa.0.1, %bb.l ], [ 1, %._crit_edge.i ] ; 3 uses
  %.sroa.0.06 = phi i64 [ %.sroa.0.17, %bb.l ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !4
  %.not = icmp eq i8 %i.y, -128
  br i1 %.not, label %bb.c, label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.z = lshr i64 %.pre13, 3
  %i.aa = mul nuw i64 %i.z, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ]
  %i.ab = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %.sroa.06.0 = select i1 %i.ac, i64 %i.ab, i64 %.pre-phi
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = sub i64 %.sroa.06.0, %i.ae
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg9 = mul i64 %2, %.neg
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %.neg9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.ai = invoke noundef i64 %.40.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5380fa808570419fE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #44
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %.sroa.0.04.i = and i64 %.val12, %i.ai          ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.04.i
  %.sroa.0.0.copyload.i35.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !28896
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.not.i.not6.i = icmp eq i16 %i.am, 0
  br i1 %.not.not.i.not6.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !37

.lr.ph.i16:                                       ; preds = %bb.f, %.lr.ph.i16
  %.sroa.0.07.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i16 ], [ %.sroa.0.04.i, %bb.f ]
  %i.an = phi i64 [ %i.ao, %.lr.ph.i16 ], [ 0, %bb.f ]
  %i.ao = add i64 %i.an, 16                       ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.07.i
  %.sroa.0.0.i = and i64 %i.ap, %.val12           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i3.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !28896
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.not.i.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.not.i.not.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !38

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.04.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.am, %bb.f ], [ %i.as, %.lr.ph.i16 ]
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.0.lcssa.i, %i.au
  %i.aw = and i64 %i.av, %.val12                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !4
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.g, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit, !prof !8

bb.g:                                             ; preds = %._crit_edge.i15
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.ba = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = icmp ne i16 %i.bb, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bb, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit: ; preds = %bb.g, %._crit_edge.i15
  %.sroa.0.0.i5.i = phi i64 [ %i.be, %bb.g ], [ %i.aw, %._crit_edge.i15 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.04.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.04.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val12
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %.neg10 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg11 = mul i64 %2, %.neg10
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg11 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !4
  %i.bm = lshr i64 %i.ai, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val12
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %i.bu = lshr i64 %i.ai, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val12, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !4
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ah, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_ZN4core3ptr19swap_nonoverlapping17h3caeff55f02f2a35E(ptr noundef %i.ah, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %.lr.ph, %bb.j, %bb.i
  %i.ck = icmp ult i64 %.sroa.0.17, %i.c          ; 2 uses
  %i.cl = zext i1 %i.ck to i64
  %.sroa.0.1 = add nuw i64 %.sroa.0.17, %i.cl
end_hunk_4
