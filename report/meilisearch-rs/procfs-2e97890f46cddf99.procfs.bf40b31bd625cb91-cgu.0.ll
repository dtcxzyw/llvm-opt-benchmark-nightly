inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$$GT$17h8df567fb1f82b5bfE":bb.a
"_ZN4core3ptr159drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$$GT$17hfb3e20157971e7e7E.exit.i": ; preds = %"_ZN4core3ptr119drop_in_place$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17hcea486fec4c6beefE.exit.i.i.i", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4425)
  %i.h = load i64, ptr %0, align 8, !range !2186, !alias.scope !4428, !noundef !11 ; 4 uses
  %i.i = icmp eq i64 %i.h, -9223372036854775807
  br i1 %i.i, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr159drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$$GT$17hfb3e20157971e7e7E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4432)
  %i.j = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.j, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4438)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4441, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4441
  br label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i"

"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i": ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h2bdf77755533f9f7E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.m)
  br label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i"

"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i", %bb.c, %"_ZN4core3ptr159drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$$GT$17hfb3e20157971e7e7E.exit.i"
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4442)
  %i.o = load i64, ptr %i.n, align 8, !range !2186, !alias.scope !4445, !noundef !11 ; 4 uses
  %i.p = icmp eq i64 %i.o, -9223372036854775807
  br i1 %i.p, label %"_ZN4core3ptr233drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h6debdce752bf8722E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4449)
  %i.q = icmp eq i64 %i.o, -9223372036854775808
  br i1 %i.q, label %"_ZN4core3ptr233drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h6debdce752bf8722E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4455)
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i.i.i2.i = load ptr, ptr %i.s, align 8, !alias.scope !4458, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i2.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4458
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4459)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4465)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i64, ptr %i.b, align 8, !range !413, !alias.scope !4468, !noundef !11 ; 3 uses
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4472)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !4475, !noundef !11 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b
  %.val.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !4475, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #42, !noalias !4475
  br label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i"

"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4476)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val.i.i.i.i.i.i = load i32, ptr %i.g, align 8, !range !522, !alias.scope !4479, !noundef !11
  %i.h = tail call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i) #42, !noalias !4479 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4480)
  %i.i = icmp eq i64 %i.c, 0
  br i1 %i.i, label %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1.i2.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !4483, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i.i.i.i.i.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4483
  br label %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i"

"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i": ; preds = %bb.c, %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4484)
  %i.k = load i64, ptr %0, align 8, !range !2186, !alias.scope !4487, !noundef !11 ; 4 uses
  %i.l = icmp eq i64 %i.k, -9223372036854775807
  br i1 %i.l, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4491)
  %i.m = icmp eq i64 %i.k, -9223372036854775808
  br i1 %i.m, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4497)
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !4500, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4500
  br label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i"

"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h2bdf77755533f9f7E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.p)
  br label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i"

"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i", %bb.d, %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4501)
  %i.r = load i64, ptr %i.q, align 8, !range !2186, !alias.scope !4504, !noundef !11 ; 4 uses
  %i.s = icmp eq i64 %i.r, -9223372036854775807
  br i1 %i.s, label %"_ZN4core3ptr239drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17hb48f357af79481ccE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4508)
  %i.t = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.t, label %"_ZN4core3ptr239drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17hb48f357af79481ccE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4514)
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i.i.i2.i = load ptr, ptr %i.v, align 8, !alias.scope !4517, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i2.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4517
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4518)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !4518, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !4518
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !4518 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !4518, !noundef !11 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !4518, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !4518, !noundef !11
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !4518, !noundef !11
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !4518
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !4518, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !4518
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !4518, !nonnull !11, !noundef !11
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !4518, !inline_history !4521
  %i.s = load i64, ptr %i.e, align 8, !noalias !4518, !noundef !11
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !4518
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !4518, !noundef !11 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !4518, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !4518
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4525)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %0, align 1, !alias.scope !4527, !noalias !4530
  %wide.load2 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !4527, !noalias !4530
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %wide.load3 = load <2 x i64>, ptr %1, align 1, !alias.scope !4530, !noalias !4522
  %wide.load4 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !4530, !noalias !4522
  store <2 x i64> %wide.load3, ptr %0, align 1, !alias.scope !4527, !noalias !4530
  store <2 x i64> %wide.load4, ptr %i.c, align 1, !alias.scope !4527, !noalias !4530
  store <2 x i64> %wide.load, ptr %1, align 1, !alias.scope !4530, !noalias !4522
  store <2 x i64> %wide.load2, ptr %i.d, align 1, !alias.scope !4530, !noalias !4522
  %i.e = icmp eq i64 %n.vec, 4
  br i1 %i.e, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4534)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load.1 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !4536, !noalias !4537
  %wide.load2.1 = load <2 x i64>, ptr %i.h, align 1, !alias.scope !4536, !noalias !4537
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %wide.load3.1 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !4537, !noalias !4532
  %wide.load4.1 = load <2 x i64>, ptr %i.i, align 1, !alias.scope !4537, !noalias !4532
  store <2 x i64> %wide.load3.1, ptr %i.f, align 1, !alias.scope !4536, !noalias !4537
  store <2 x i64> %wide.load4.1, ptr %i.h, align 1, !alias.scope !4536, !noalias !4537
  store <2 x i64> %wide.load.1, ptr %i.g, align 1, !alias.scope !4537, !noalias !4532
  store <2 x i64> %wide.load2.1, ptr %i.i, align 1, !alias.scope !4537, !noalias !4532
  %i.j = icmp eq i64 %n.vec, 8
  br i1 %i.j, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4540)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load.2 = load <2 x i64>, ptr %i.k, align 1, !alias.scope !4542, !noalias !4543
  %wide.load2.2 = load <2 x i64>, ptr %i.m, align 1, !alias.scope !4542, !noalias !4543
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %wide.load3.2 = load <2 x i64>, ptr %i.l, align 1, !alias.scope !4543, !noalias !4538
  %wide.load4.2 = load <2 x i64>, ptr %i.n, align 1, !alias.scope !4543, !noalias !4538
  store <2 x i64> %wide.load3.2, ptr %i.k, align 1, !alias.scope !4542, !noalias !4543
  store <2 x i64> %wide.load4.2, ptr %i.m, align 1, !alias.scope !4542, !noalias !4543
  store <2 x i64> %wide.load.2, ptr %i.l, align 1, !alias.scope !4543, !noalias !4538
  store <2 x i64> %wide.load2.2, ptr %i.n, align 1, !alias.scope !4543, !noalias !4538
  %i.o = icmp eq i64 %n.vec, 12
  br i1 %i.o, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4546)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %wide.load.3 = load <2 x i64>, ptr %i.p, align 1, !alias.scope !4548, !noalias !4549
  %wide.load2.3 = load <2 x i64>, ptr %i.r, align 1, !alias.scope !4548, !noalias !4549
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %wide.load3.3 = load <2 x i64>, ptr %i.q, align 1, !alias.scope !4549, !noalias !4544
  %wide.load4.3 = load <2 x i64>, ptr %i.s, align 1, !alias.scope !4549, !noalias !4544
  store <2 x i64> %wide.load3.3, ptr %i.p, align 1, !alias.scope !4548, !noalias !4549
  store <2 x i64> %wide.load4.3, ptr %i.r, align 1, !alias.scope !4548, !noalias !4549
  store <2 x i64> %wide.load.3, ptr %i.q, align 1, !alias.scope !4549, !noalias !4544
  store <2 x i64> %wide.load2.3, ptr %i.s, align 1, !alias.scope !4549, !noalias !4544
  %i.t = icmp eq i64 %n.vec, 16
  br i1 %i.t, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4552)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %wide.load.4 = load <2 x i64>, ptr %i.u, align 1, !alias.scope !4554, !noalias !4555
  %wide.load2.4 = load <2 x i64>, ptr %i.w, align 1, !alias.scope !4554, !noalias !4555
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %wide.load3.4 = load <2 x i64>, ptr %i.v, align 1, !alias.scope !4555, !noalias !4550
  %wide.load4.4 = load <2 x i64>, ptr %i.x, align 1, !alias.scope !4555, !noalias !4550
  store <2 x i64> %wide.load3.4, ptr %i.u, align 1, !alias.scope !4554, !noalias !4555
  store <2 x i64> %wide.load4.4, ptr %i.w, align 1, !alias.scope !4554, !noalias !4555
  store <2 x i64> %wide.load.4, ptr %i.v, align 1, !alias.scope !4555, !noalias !4550
  store <2 x i64> %wide.load2.4, ptr %i.x, align 1, !alias.scope !4555, !noalias !4550
  br label %middle.block

middle.block:                                     ; preds = %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.03.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.03.i.i.ph, 1
  %i.y = and i64 %2, 8
  %lcmp.mod.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = or disjoint i64 %.sroa.0.03.i.i.ph, 1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i.ph ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4525)
  %.sroa.0.0.copyload.i.i.i.prol = load i64, ptr %i.aa, align 1, !alias.scope !4522, !noalias !4525
  %.sroa.02.0.copyload.i.i.i.prol = load i64, ptr %i.ab, align 1, !alias.scope !4525, !noalias !4522
  store i64 %.sroa.02.0.copyload.i.i.i.prol, ptr %i.aa, align 1, !alias.scope !4522, !noalias !4525
  store i64 %.sroa.0.0.copyload.i.i.i.prol, ptr %i.ab, align 1, !alias.scope !4525, !noalias !4522
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.03.i.i.unr = phi i64 [ %.sroa.0.03.i.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %i.a, %.neg
  br i1 %i.ac, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.03.i.i = phi i64 [ %i.ag, %scalar.ph ], [ %.sroa.0.03.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ad = add nuw nsw i64 %.sroa.0.03.i.i, 1      ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4525)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ae, align 1, !alias.scope !4522, !noalias !4525
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.af, align 1, !alias.scope !4525, !noalias !4522
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.ae, align 1, !alias.scope !4522, !noalias !4525
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.af, align 1, !alias.scope !4525, !noalias !4522
  %i.ag = add nuw nsw i64 %.sroa.0.03.i.i, 2      ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4558)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.ah, align 1, !alias.scope !4556, !noalias !4558
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.ai, align 1, !alias.scope !4558, !noalias !4556
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.ah, align 1, !alias.scope !4556, !noalias !4558
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.ai, align 1, !alias.scope !4558, !noalias !4556
  %exitcond.not.i.i.1 = icmp eq i64 %i.ag, %i.a
  br i1 %exitcond.not.i.i.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i, label %scalar.ph, !llvm.loop !4560

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aj = and i64 %2, 7                           ; 2 uses
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i
  %i.ak = and i64 %2, 248                         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6procfs3net5route17h0bdb952c1c1259edE:bb.a
  %.val8.i.i.i.i.i.i = load i64, ptr %i.wf, align 8, !alias.scope !15808, !noalias !15811 ; 2 uses
  %i.wh = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.wh, label %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i", label %bb.fz

bb.fz:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.wi = getelementptr i8, ptr %i.wf, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.wi, align 8, !alias.scope !15805, !noalias !15811, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15812
  br label %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i": ; preds = %bb.fz, %.lr.ph.i.i.i.i.i.i
  %i.wj = icmp eq i64 %i.wg, %.val1.i1015.i.i.i
  br i1 %i.wj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i", %bb.fy
  %.val2.i1016.i.i.i = load i64, ptr %i.dz, align 8, !range !699, !alias.scope !15802, !noalias !15354, !noundef !11 ; 2 uses
  %i.wk = icmp eq i64 %.val2.i1016.i.i.i, 0
  br i1 %i.wk, label %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i", label %bb.ga

bb.ga:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i"
  %i.wl = shl nuw i64 %.val2.i1016.i.i.i, 6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1014.i.i.i, i64 noundef %i.wl, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15811
  br label %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i"

"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i": ; preds = %bb.ga, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !15354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !15360
  %.not.i = icmp eq i64 %.sroa.02.1.i, -9223372036854775803
  br i1 %.not.i, label %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit.thread, label %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit

_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit.thread: ; preds = %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.thread.i", %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i"
  %.sroa.28.2124.i = phi i32 [ %.sroa.28.8.copyload69.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.thread.i" ], [ %.sroa.28.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.32.2123.i = phi ptr [ %.sroa.32.8.copyload96.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.thread.i" ], [ %.sroa.32.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, i64 12, i1 false)
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 %.sroa.28.2124.i, ptr %i.wm, align 8, !alias.scope !15341
  %.sroa.6.0..sroa_idx104.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store ptr %.sroa.32.2123.i, ptr %.sroa.6.0..sroa_idx104.i, align 8, !alias.scope !15341
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5111.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, i64 12, i1 false), !noalias !15341
  store i64 %.sroa.02.3.i, ptr %i.b, align 8, !noalias !15819
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sroa.28.3.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15819
  %.sroa.6112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.32.3.i, ptr %.sroa.6112.0..sroa_idx.i, align 8, !noalias !15819
  %.sroa.7113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.53.3.i, ptr %.sroa.7113.0..sroa_idx.i, align 8, !noalias !15819
  %.sroa.8114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x i32> %i.wn, ptr %.sroa.8114.0..sroa_idx.i, align 8, !noalias !15819
  call void @"_ZN68_$LT$procfs_core..ProcError$u20$as$u20$procfs_core..ProcErrorExt$GT$10error_path17h863f75f158574cc8E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ed, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @526, i64 noundef 15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15815
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
  %i.s = and i64 %2, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.v, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.q, ptr %i.m, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c2bcc7e49b274a4E", ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15820
  store ptr @539, ptr %i.d, align 8, !noalias !15828
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.472.0..sroa_idx, align 8, !noalias !15828
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.m, ptr %.sroa.573.0..sroa_idx, align 8, !noalias !15828
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.674.0..sroa_idx, align 8, !noalias !15828
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.775.0..sroa_idx, align 8, !noalias !15828
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.o, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.430.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15829
  store ptr @3, ptr %i.c, align 8, !noalias !15837
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !15837
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !15837
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !15837
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !15837
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.v unwind label %bb.t

._crit_edge:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit", %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit"
  %i.y = phi i64 [ 0, %.lr.ph ], [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit" ] ; 3 uses
  %.sroa.06.0111 = phi i64 [ 0, %.lr.ph ], [ %i.z, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.z = add i64 %.sroa.06.0111, 2                ; 7 uses
  switch i64 %.sroa.06.0111, label %bb.e [
    i64 -2, label %bb.j
    i64 0, label %.thread
  ]

3:                                                ; preds = %bb.e
  %4 = icmp eq i64 %i.z, 0
  br i1 %4, label %.lr.ph.i, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0111
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !15838, !noundef !11
  %i.ac = icmp sgt i8 %i.ab, -65
  br i1 %i.ac, label %3, label %bb.j

.thread:                                          ; preds = %bb.d, %3
  %.not6.i = icmp ult i64 %i.z, %2
  br i1 %.not6.i, label %bb.f, label %.split7.i

.split7.i:                                        ; preds = %.thread
  %i.ad = icmp eq i64 %i.z, %2
  br i1 %i.ad, label %.lr.ph.i, label %bb.j

bb.f:                                             ; preds = %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !15838, !noundef !11
  %i.ag = icmp sgt i8 %i.af, -65
  br i1 %i.ag, label %.lr.ph.i, label %bb.j

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit69", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit63", %._crit_edge
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %.loopexit, %.loopexit.split-lp, %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.p ], [ %i.bj, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val53 = load i64, ptr %i.l, align 8           ; 2 uses
  %i.ah = icmp eq i64 %.val53, 0
  br i1 %i.ah, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"
  %.val54 = load ptr, ptr %i.u, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54, i64 noundef %.val53, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit"

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

.loopexit.split-lp:                               ; preds = %bb.j, %.loopexit151
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

.lr.ph.i:                                         ; preds = %3, %.split7.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0111 ; 3 uses
  store ptr %i.ai, ptr %i.k, align 8
  store i64 2, ptr %i.w, align 8
  %.pr.i = load i8, ptr %i.ai, align 1, !alias.scope !15841
  %cond.i = icmp eq i8 %.pr.i, 43                 ; 2 uses
  %spec.select.idx = zext i1 %cond.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.idx ; 2 uses
  %i.aj = load i8, ptr %spec.select, align 1, !alias.scope !15841, !noundef !11 ; 2 uses
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = icmp ugt i8 %i.aj, 57
  %i.am = add nsw i32 %i.ak, -65
  %i.an = and i32 %i.am, -33
  %i.ao = add nuw nsw i32 %i.an, 10
  %i.ap = add nsw i32 %i.ak, -48
  %spec.select87.i.peel = select i1 %i.al, i32 %i.ao, i32 %i.ap ; 2 uses
  %.not.i56.peel = icmp ult i32 %spec.select87.i.peel, 16
  br i1 %.not.i56.peel, label %bb.i, label %.loopexit151

bb.i:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.ar = trunc nuw nsw i32 %spec.select87.i.peel to i8 ; 2 uses
  br i1 %cond.i, label %bb.l, label %.lr.ph.i.peel.newph

.lr.ph.i.peel.newph:                              ; preds = %bb.i
  %i.as = load i8, ptr %i.aq, align 1, !alias.scope !15841, !noundef !11 ; 2 uses
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = icmp ugt i8 %i.as, 57
  %i.av = add nsw i32 %i.at, -65
  %i.aw = and i32 %i.av, -33
  %i.ax = add nuw nsw i32 %i.aw, 10
  %i.ay = add nsw i32 %i.at, -48
  %spec.select87.i = select i1 %i.au, i32 %i.ax, i32 %i.ay ; 2 uses
  %.not.i56 = icmp ult i32 %spec.select87.i, 16
  br i1 %.not.i56, label %.loopexit152, label %.loopexit151

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.e, %.split7.i
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.06.0111, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #43
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15844
  store ptr @535, ptr %i.b, align 8, !noalias !15852
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.484.0..sroa_idx, align 8, !noalias !15852
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %.sroa.585.0..sroa_idx, align 8, !noalias !15852
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.686.0..sroa_idx, align 8, !noalias !15852
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.787.0..sroa_idx, align 8, !noalias !15852
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.n unwind label %.loopexit.split-lp

.loopexit152:                                     ; preds = %.lr.ph.i.peel.newph
  %i.az = shl nuw i8 %i.ar, 4
  %i.ba = trunc nuw nsw i32 %spec.select87.i to i8
  %i.bb = or disjoint i8 %i.az, %i.ba
  br label %bb.l

bb.l:                                             ; preds = %.loopexit152, %bb.i
  %.lcssa = phi i8 [ %i.ar, %bb.i ], [ %i.bb, %.loopexit152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bc = load i64, ptr %i.l, align 8, !range !699, !alias.scope !15853, !noundef !11
  %i.bd = icmp eq i64 %i.y, %i.bc
  br i1 %i.bd, label %bb.m, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit"

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @533)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit" unwind label %.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit": ; preds = %bb.m, %bb.l
  %i.be = load ptr, ptr %i.u, align 8, !alias.scope !15853, !nonnull !11, !noundef !11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.y
  store i8 %.lcssa, ptr %i.bf, align 1
  %i.bg = add i64 %i.y, 1                         ; 2 uses
  store i64 %i.bg, ptr %i.v, align 8
  %i.bh = icmp ult i64 %i.z, %2
  br i1 %i.bh, label %bb.d, label %._crit_edge

bb.n:                                             ; preds = %.loopexit151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.444.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.j, ptr %i.bi, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.448.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15856
  store ptr @26, ptr %i.a, align 8, !noalias !15864
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.478.0..sroa_idx, align 8, !noalias !15864
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.579.0..sroa_idx, align 8, !noalias !15864
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.680.0..sroa_idx, align 8, !noalias !15864
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.781.0..sroa_idx, align 8, !noalias !15864
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15865)
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !15865 ; 2 uses
  %i.bk = icmp eq i64 %.val.i, 0
  br i1 %i.bk, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i = load ptr, ptr %i.bl, align 8, !alias.scope !15865, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15865
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !15868)
  %.val.i60 = load i64, ptr %i.h, align 8, !alias.scope !15868 ; 2 uses
  %i.bm = icmp eq i64 %.val.i60, 0
  br i1 %i.bm, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit62", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i61 = load ptr, ptr %i.bn, align 8, !alias.scope !15868, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i61, i64 noundef %.val.i60, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15868
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit62"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit62": ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @536, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 108, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 22, ptr %.sroa.621.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.val = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bo = icmp eq i64 %.val, 0
  br i1 %i.bo, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit63", label %bb.s

bb.s:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit62"
  %.val52 = load ptr, ptr %i.u, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit63"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit63": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit62", %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.g

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit": ; preds = %bb.u, %bb.t, %bb.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit" ], [ %i.bp, %bb.t ], [ %i.bp, %bb.u ]
  resume { ptr, i32 } %.pn.pn

bb.t:                                             ; preds = %bb.c
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15871)
  %.val.i64 = load i64, ptr %i.n, align 8, !alias.scope !15871 ; 2 uses
  %i.bq = icmp eq i64 %.val.i64, 0
  br i1 %i.bq, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i65 = load ptr, ptr %i.br, align 8, !alias.scope !15871, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i65, i64 noundef %.val.i64, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15871
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit"

bb.v:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15829
  call void @llvm.experimental.noalias.scope.decl(metadata !15874)
  %.val.i67 = load i64, ptr %i.n, align 8, !alias.scope !15874 ; 2 uses
  %i.bs = icmp eq i64 %.val.i67, 0
  br i1 %i.bs, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit69", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i68 = load ptr, ptr %i.bt, align 8, !alias.scope !15874, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i68, i64 noundef %.val.i67, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15874
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit69"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit69": ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @536, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 108, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 14, ptr %.sroa.64.0..sroa_idx, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN6procfs3sys2fs11binfmt_misc1_88_$LT$impl$u20$core..fmt..Octal$u20$for$u20$procfs..sys..fs..binfmt_misc..BinFmtFlags$GT$3fmt17he4db882fc417ad81E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15877
  store i8 %i.b, ptr %i.a, align 1, !noalias !15877
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u8$GT$3fmt17h7cacf98b1b32ad44E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !15881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15877
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN6procfs3sys2fs11binfmt_misc1_89_$LT$impl$u20$core..fmt..Binary$u20$for$u20$procfs..sys..fs..binfmt_misc..BinFmtFlags$GT$3fmt17hcfec60e387e6b0b7E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15882
  store i8 %i.b, ptr %i.a, align 1, !noalias !15882
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u8$GT$3fmt17h64a589b259a2d727E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !15886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15882
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17he080b811d3490d63E":bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.av, align 8, !noalias !28749 ; 3 uses
  %.sroa.7.0.copyload = load ptr, ptr %i.ab, align 8, !noalias !28749 ; 2 uses
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
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28750
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %bb.f, %bb.e, %.thread
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hb4fcebdbb49aa161E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !11
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i64, ptr %i.d, align 8, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5 = load i64, ptr %i.e, align 8, !noundef !11
  %i.f = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h3b6bbb1ebafcde82E(i64 %.val, i64 %.val5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28756)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !28759, !noalias !28760, !noundef !11 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !alias.scope !28759, !noalias !28760, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %.sroa.0.15.vec.insert.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ap, %bb.d ]
  %.pn.i = phi i64 [ %i.f, %bb.b ], [ %i.aq, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.j          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.l, align 1, !noalias !28763 ; 2 uses
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
  %.val5.i.i = load i64, ptr %i.u, align 8, !noalias !28766, !noundef !11
  %.not.i.i.i.i.i = icmp eq i64 %.val5.i.i, 3
  br i1 %.not.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i", !prof !5883

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i": ; preds = %.lr.ph.i
  %i.v = getelementptr i8, ptr %i.t, i64 -40
  %.val4.i.i = load ptr, ptr %i.v, align 8, !noalias !28766, !nonnull !11, !noundef !11 ; 2 uses
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
  br i1 %i.aj, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i", !prof !5888

._crit_edge.i:                                    ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i", %bb.c
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit", !prof !323

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
  %.val14 = load i64, ptr %i.b, align 8, !noundef !11
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
  %i.w = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !11
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
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !11
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
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 7 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !11 ; 6 uses
  %.sroa.0.04.i = and i64 %.val12, %i.ai          ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.04.i
  %.sroa.0.0.copyload.i35.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !28769
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.not.i.not6.i = icmp eq i16 %i.am, 0
  br i1 %.not.not.i.not6.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !17384

.lr.ph.i16:                                       ; preds = %bb.f, %.lr.ph.i16
  %.sroa.0.07.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i16 ], [ %.sroa.0.04.i, %bb.f ]
  %i.an = phi i64 [ %i.ao, %.lr.ph.i16 ], [ 0, %bb.f ]
  %i.ao = add i64 %i.an, 16                       ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.07.i
  %.sroa.0.0.i = and i64 %i.ap, %.val12           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i3.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !28769
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.not.i.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.not.i.not.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !17385

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.04.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.am, %bb.f ], [ %i.as, %.lr.ph.i16 ]
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.0.lcssa.i, %i.au
  %i.aw = and i64 %i.av, %.val12                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !11
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.g, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit, !prof !323

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
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !538

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %.neg10 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg11 = mul i64 %2, %.neg10
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg11 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !11
  %i.bm = lshr i64 %i.ai, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val12
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
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
  %i.bz = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !11
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
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
  br i1 %i.ck, label %.lr.ph, label %._crit_edge.loopexit

bb.m:                                             ; preds = %bb.e
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.aj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hff8fe59d67d5d5ddE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef range(i64 16, 177) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @69, i64 32, i1 false)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 15
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.l, label %bb.e, !prof !323

bb.e:                                             ; preds = %bb.d
  %i.d = shl nuw i64 %2, 3
  %i.e = udiv i64 %i.d, 7
  %i.f = add nsw i64 %i.e, -1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = lshr i64 -1, %i.g
  %i.i = add nuw nsw i64 %i.h, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i64 %2, 4
  %i.k = and i64 %2, 8
  %..i = add nuw nsw i64 %i.k, 8
  %.sroa.03.0.i = select i1 %i.j, i64 4, i64 %..i
end_hunk_2
