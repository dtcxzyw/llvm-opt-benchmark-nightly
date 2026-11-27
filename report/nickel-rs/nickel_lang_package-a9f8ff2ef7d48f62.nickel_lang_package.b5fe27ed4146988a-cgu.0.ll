Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h2869b1d75e5cea94E":bb.a
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !13203
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he89eff6f522c1fe4E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he89eff6f522c1fe4E.exit": ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !13203, !nonnull !47, !noundef !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 %i.c, i1 false), !noalias !13203
  %i.n = add i64 %i.i, %i.c
  store i64 %i.n, ptr %i.d, align 8, !alias.scope !13203
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN135_$LT$nickel_lang_package..index..serialize..PackageFormat$u20$as$u20$core..convert..From$LT$nickel_lang_package..index..Package$GT$$GT$4from17ha136e3c51c867cd3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 8 captures(none) dereferenceable(320) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(312) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !13408 {
"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9076af1c9eda127eE.exit":
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  %.sroa.4.i.i.i.i.i.i = alloca [124 x i8], align 4 ; 3 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %.sroa.16.i.i.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.c = alloca [120 x i8], align 8               ; 14 uses
  %i.d = alloca [120 x i8], align 8               ; 4 uses
  %i.e = alloca [160 x i8], align 8               ; 19 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.17.i.i.i.i.i = alloca [32 x i8], align 8 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [72 x i8], align 8                ; 16 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.620 = alloca [32 x i8], align 8          ; 4 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.0.0.copyload = load i64, ptr %i.n, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.015.0.copyload = load i64, ptr %i.o, align 8 ; 3 uses
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.517.0.copyload = load ptr, ptr %.sroa.517.0..sroa_idx, align 8 ; 3 uses
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.620.0..sroa_idx, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.037.0.copyload = load ptr, ptr %i.p, align 8 ; 3 uses
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.sroa.438.0.copyload = load i64, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.sroa.539.0.copyload = load i64, ptr %.sroa.539.0..sroa_idx, align 8
  %.not.i = icmp ne ptr %.sroa.037.0.copyload, null ; 3 uses
  %.sroa.10.0 = select i1 %.not.i, i64 %.sroa.438.0.copyload, i64 undef ; 2 uses
  %.sink23.i = zext i1 %.not.i to i64             ; 2 uses
  %.sroa.7.0.copyload.sink.i = select i1 %.not.i, i64 %.sroa.539.0.copyload, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13410
  store i64 %.sink23.i, ptr %i.l, align 8, !alias.scope !13411, !noalias !13412
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %.sroa.429.0..sroa_idx, align 8, !alias.scope !13411, !noalias !13412
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.037.0.copyload, ptr %.sroa.530.0..sroa_idx, align 8, !alias.scope !13411, !noalias !13412
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.631.0..sroa_idx, align 8, !alias.scope !13411, !noalias !13412
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sink23.i, ptr %.sroa.732.0..sroa_idx, align 8, !alias.scope !13411, !noalias !13412
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %.sroa.833.0..sroa_idx, align 8, !alias.scope !13411, !noalias !13412
  %.sroa.934.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %.sroa.037.0.copyload, ptr %.sroa.934.0..sroa_idx, align 8, !alias.scope !13411, !noalias !13412
  %.sroa.1035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.10.0, ptr %.sroa.1035.0..sroa_idx, align 8, !alias.scope !13411, !noalias !13412
  %.sroa.1136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  store i64 %.sroa.7.0.copyload.sink.i, ptr %.sroa.1136.0..sroa_idx, align 8, !alias.scope !13411, !noalias !13412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13416
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h0e650d33c0963961E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.c, !noalias !13417

bb.a:                                             ; preds = %.noexc19.i.i.i.i.invoke, %.thread.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i.i.i.i.i, %"_ZN4core3ptr129drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$RP$$GT$17hc4cb8e7c3c60f36bE.exit.i.i.i.i.i", %bb.bd, %bb.be, %bb.bf, %bb.a
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.a ], [ %.pn.ph.i.i.i.i.i.i, %"_ZN4core3ptr129drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$RP$$GT$17hc4cb8e7c3c60f36bE.exit.i.i.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.kf, %bb.bd ], [ %lpad.thr_comm.i.i, %bb.bf ], [ %i.kg, %bb.be ]
  %i.r = icmp eq i64 %.sroa.015.0.copyload, 0
  br i1 %i.r, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit", label %bb.b

bb.b:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.517.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.517.0.copyload, i64 noundef %.sroa.015.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !13418
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit"

.noexc.i.i.i.i.i.i:                               ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9076af1c9eda127eE.exit"
  %i.s = load ptr, ptr %i.i, align 8, !noalias !13416, !noundef !47 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.thread.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.thread.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13416
  br label %.thread.i

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !13416 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1328
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i
  %i.v = load i32, ptr %i.u, align 4, !noalias !13419, !noundef !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %i.w, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i ; 12 uses
  %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !13416 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13416
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i, label %bb.i

bb.c:                                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9076af1c9eda127eE.exit"
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr129drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$RP$$GT$17hc4cb8e7c3c60f36bE.exit.i.i.i.i.i"

.thread.i:                                        ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13415
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$GT$$GT$17h34695d83a955666bE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc unwind label %bb.a, !noalias !13420

.noexc:                                           ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13410
  br label %bb.bg

bb.d:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.16.copyload.i.i.i.i.i, i64 noundef %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !13421
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.e, %bb.d
  %i.ab = icmp eq i64 %.sroa.82.32.copyload.i.i.i.i.i, 0
  br i1 %i.ab, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.32.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.32.copyload.i.i.i.i.i, i64 noundef %.sroa.82.32.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !13422
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i": ; preds = %bb.f, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i.i.i.i.i.i"
  %i.ac = icmp eq i64 %.sroa.113.56.copyload.i.i.i.i.i, 0
  br i1 %i.ac, label %"_ZN4core3ptr68drop_in_place$LT$nickel_lang_package..index..serialize..IdFormat$GT$17hce1af0be3203883eE.exit.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.56.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.56.copyload.i.i.i.i.i, i64 noundef %.sroa.113.56.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !13423
  br label %"_ZN4core3ptr68drop_in_place$LT$nickel_lang_package..index..serialize..IdFormat$GT$17hce1af0be3203883eE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr68drop_in_place$LT$nickel_lang_package..index..serialize..IdFormat$GT$17hce1af0be3203883eE.exit.i.i.i.i.i.i.i": ; preds = %bb.g, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i"
  %switch.i.i.i.i.i.i.i = icmp sgt i64 %.sroa.144.80.copyload.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i, label %bb.h, label %"_ZN4core3ptr129drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$RP$$GT$17hc4cb8e7c3c60f36bE.exit.i.i.i.i.i"

bb.h:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$nickel_lang_package..index..serialize..IdFormat$GT$17hce1af0be3203883eE.exit.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.80.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.16.80.copyload.i.i.i.i.i, i64 noundef %.sroa.144.80.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !13424
  br label %"_ZN4core3ptr129drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$RP$$GT$17hc4cb8e7c3c60f36bE.exit.i.i.i.i.i"

bb.i:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.i.i.i.i.i.i.i"
  %.sroa.4.i.sroa.5.4..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.i.i.i.i)
  %.sroa.16.80..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.sroa.16.80.copyload.i.i.i.i.i = load ptr, ptr %.sroa.16.80..sroa_idx.i.i.i.i.i, align 8, !noalias !13415 ; 3 uses
  %.sroa.17.80..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.80..sroa_idx.i.i.i.i.i, i64 32, i1 false), !noalias !13415
  %.sroa.6.16.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4.i.sroa.5.4..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !13415 ; 3 uses
  %.sroa.8.16..sroa.4.i.sroa.5.4..sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.82.32.copyload.i.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !13415 ; 2 uses
  %i.af = load <2 x i64>, ptr %.sroa.8.16..sroa.4.i.sroa.5.4..sroa_idx.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !13415
  %.sroa.10.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.10.32.copyload.i.i.i.i.i = load ptr, ptr %.sroa.10.32..sroa_idx.i.i.i.i.i, align 8, !noalias !13415 ; 3 uses
  %.sroa.11.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.113.56.copyload.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !13415 ; 2 uses
  %i.ah = load <2 x i64>, ptr %.sroa.11.32..sroa_idx.i.i.i.i.i, align 8, !noalias !13415
  %.sroa.13.56..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.13.56.copyload.i.i.i.i.i = load ptr, ptr %.sroa.13.56..sroa_idx.i.i.i.i.i, align 8, !noalias !13415 ; 3 uses
  %.sroa.14.56..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.144.80.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !13415 ; 2 uses
  %i.ai = load <2 x i64>, ptr %.sroa.14.56..sroa_idx.i.i.i.i.i, align 8, !noalias !13415
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.1136.0..sroa_idx, align 8, !alias.scope !13425, !noalias !13410, !noundef !47
  %i.aj = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.aj, i64 4) ; 2 uses
  %i.ak = shl i64 %.sroa.0.0.i.i.i.i.i.i.i, 7     ; 3 uses
  %i.al = icmp ugt i64 %i.aj, 144115188075855871
  %i.am = icmp ugt i64 %i.ak, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.al, %i.am
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a, !prof !59

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a: ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !13426
  %i.an = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ak, i64 noundef range(i64 1, 9) 8) #67, !noalias !13426 ; 13 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a, %bb.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a ], [ 0, %bb.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc5.i.i.i.i.i.i unwind label %bb.d, !noalias !13415

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a
  store i32 %i.v, ptr %i.an, align 8, !noalias !13415
  %.sroa.41.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i, align 8, !noalias !13415
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.sroa.6.16.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !13415
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store <2 x i64> %i.af, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !13415
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr %.sroa.10.32.copyload.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !13415
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store <2 x i64> %i.ah, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !noalias !13415
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store ptr %.sroa.13.56.copyload.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 8, !noalias !13415
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store <2 x i64> %i.ai, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !13415
  %.sroa.16.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store ptr %.sroa.16.80.copyload.i.i.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i, align 8, !noalias !13415
  %.sroa.17.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i.i.i, i64 32, i1 false), !noalias !13415
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !13415
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !13415
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !13415
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !13420
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13430)
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4e31be213992153eE.exit.i.i.i.i.i.i.i.i", %bb.k
  %i.aq = phi ptr [ %i.bf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4e31be213992153eE.exit.i.i.i.i.i.i.i.i" ], [ %i.an, %bb.k ]
  %i.ar = phi i64 [ %i.bh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4e31be213992153eE.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.k ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13431
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h0e650d33c0963961E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !13432

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.l
  %i.as = load ptr, ptr %i.g, align 8, !noalias !13431, !noundef !47 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.thread.i.i.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.i.i.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.thread.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13431
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4b5cf03e39951cfcE.exit.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !13431 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1328
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.av = load i32, ptr %i.au, align 4, !noalias !13433, !noundef !47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !noalias !13431 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13431
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4b5cf03e39951cfcE.exit.i.i.i.i.i.i.i", label %bb.o

bb.m:                                             ; preds = %bb.p, %bb.n
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %i.ay, %bb.n ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$GT$$GT$17h34695d83a955666bE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.body.i.i.i.i.i.i unwind label %bb.r, !noalias !13434

bb.n:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.4.i.sroa.5.4..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.az, i64 48, i1 false), !noalias !13435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.5.4..sroa_idx.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !13435
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !13435
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !13435
  store i32 %i.av, ptr %i.h, align 8, !noalias !13435
  store i64 %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !13435
  %i.bc = icmp samesign ult i64 %i.ar, 72057594037927936
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = load i64, ptr %i.k, align 8, !range !49, !alias.scope !13436, !noalias !13415, !noundef !47
  %i.be = icmp eq i64 %i.ar, %i.bd
  br i1 %i.be, label %bb.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4e31be213992153eE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4e31be213992153eE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4e31be213992153eE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.o
  %i.bf = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4e31be213992153eE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.aq, %bb.o ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr %i.bf, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bg, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false), !noalias !13435
  %i.bh = add nuw nsw i64 %i.ar, 1                ; 2 uses
  store i64 %i.bh, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !13436, !noalias !13415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13435
  br label %bb.l

bb.p:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr129drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$RP$$GT$17hc4cb8e7c3c60f36bE"(ptr noalias noundef align 8 dereferenceable(128) %i.h) #75, !noalias !13435
  br label %bb.m

bb.q:                                             ; preds = %bb.o
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !13437, !noalias !13415, !noundef !47
  %i.bj = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ar, i64 noundef range(i64 1, 0) %i.bj, i64 noundef 8, i64 noundef 128)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4e31be213992153eE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.p, !noalias !13438

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4e31be213992153eE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.q
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !13436, !noalias !13415
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4e31be213992153eE.exit.i.i.i.i.i.i.i.i"

bb.r:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !13435
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4b5cf03e39951cfcE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.i.i.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h16a9d36cea739d28E.exit.thread.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$GT$$GT$17h34695d83a955666bE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17h3b88583f715719f2E.exit.i.i unwind label %bb.s, !noalias !13434

bb.s:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4b5cf03e39951cfcE.exit.i.i.i.i.i.i.i"
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.s, %bb.m
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bl, %bb.s ], [ %.pn.i.i.i.i.i.i.i.i, %bb.m ]
  call fastcc void @"_ZN4core3ptr152drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$RP$$GT$$GT$17h39746f1db4f617e4E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #75, !noalias !13415
  br label %.body

bb.t:                                             ; preds = %"_ZN4core3ptr129drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$RP$$GT$17hc4cb8e7c3c60f36bE.exit.i.i.i.i.i"
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !13415
  unreachable

"_ZN4core3ptr129drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$RP$$GT$17hc4cb8e7c3c60f36bE.exit.i.i.i.i.i": ; preds = %bb.h, %"_ZN4core3ptr68drop_in_place$LT$nickel_lang_package..index..serialize..IdFormat$GT$17hce1af0be3203883eE.exit.i.i.i.i.i.i.i", %bb.c
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.y, %bb.c ], [ %i.z, %"_ZN4core3ptr68drop_in_place$LT$nickel_lang_package..index..serialize..IdFormat$GT$17hce1af0be3203883eE.exit.i.i.i.i.i.i.i" ], [ %i.z, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$GT$$GT$17h34695d83a955666bE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.body unwind label %bb.t, !noalias !13420

_ZN4core4iter6traits8iterator8Iterator7collect17h3b88583f715719f2E.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4b5cf03e39951cfcE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !13439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13415
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !13409 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13410
  %i.bn = icmp ult i64 %.pre.i.i, 72057594037927936
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp eq i64 %.pre.i.i, 0
  br i1 %i.bo, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h3b88583f715719f2E.exit.i.i
  %.val2.i.i.pre.i = load i64, ptr %i.m, align 8, !alias.scope !13440, !noalias !13409 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13440)
  %i.bp = icmp eq i64 %.val2.i.i.pre.i, 0
  br i1 %i.bp, label %bb.bg, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i.i.i2 = load ptr, ptr %i.bq, align 8, !alias.scope !13440, !noalias !13409, !nonnull !47, !noundef !47
  %i.br = shl nuw i64 %.val2.i.i.pre.i, 7
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i2, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !13441
  br label %bb.bg

bb.w:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h3b88583f715719f2E.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !13409, !nonnull !47, !noundef !47 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13442
  %i.bu = icmp eq i64 %.pre.i.i, 1
  br i1 %i.bu, label %bb.aa, label %bb.x, !prof !54

bb.x:                                             ; preds = %bb.w
  %i.bv = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.bv, label %bb.z, label %bb.y, !prof !54

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hcb08521d21b81dd9E(ptr noalias noundef nonnull align 8 %i.bt, i64 noundef range(i64 1, 72057594037927936) %.pre.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.aa unwind label %bb.bf, !noalias !13409

bb.z:                                             ; preds = %bb.x
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h20177a551844c4a7E(ptr noalias noundef nonnull align 8 %i.bt, i64 noundef range(i64 1, 72057594037927936) %.pre.i.i)
          to label %bb.aa unwind label %bb.bf

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13442
  %.sroa.0.0.copyload.i1 = load i64, ptr %i.m, align 8, !noalias !13409
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !13443
  %i.bw = tail call noalias noundef align 8 dereferenceable_or_null(1376) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1376, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !13443 ; 5 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ab, label %.loopexit84.i.i.i.i, !prof !50

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 1376) #73
          to label %.noexc.i.i.i unwind label %bb.be, !noalias !13443

.noexc.i.i.i:                                     ; preds = %bb.ab
  unreachable

.loopexit84.i.i.i.i:                              ; preds = %bb.aa
  store ptr null, ptr %i.bw, align 8, !noalias !13443
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1374
  store i16 0, ptr %i.by, align 2, !noalias !13443
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.bt, i64 %.pre.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13444
  %.sroa.3.0..sroa_idx103.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4104.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %i.bt, ptr %.sroa.4104.0..sroa_idx.i.i.i, align 8, !noalias !13445
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 4 uses
  store ptr %i.bt, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !13445
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store i64 %.sroa.0.0.copyload.i1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !13445
  %.sroa.7.0..sroa_idx105.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 2 uses
  store ptr %i.bz, ptr %.sroa.7.0..sroa_idx105.i.i.i, align 8, !noalias !13445
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.11.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.13.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.17.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.19.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.23.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.25.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.29.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.31.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
end_hunk_0
begin_hunk_1_@_ZN16nickel_lang_core5cache9TermCache9closurize17he8bff0ed0701d3d6E:bb.a
  br i1 %i.dj, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h144b0dbdd3d2b95dE.exit.i", label %bb.h

bb.h:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h343ef4e1d00b7608E.exit.i.i.i"
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !27118, !noundef !47
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.dk, align 8, !alias.scope !27118
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h144b0dbdd3d2b95dE.exit.i"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h144b0dbdd3d2b95dE.exit.i": ; preds = %bb.h, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h343ef4e1d00b7608E.exit.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb.h ], [ -128, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h343ef4e1d00b7608E.exit.i.i.i" ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.de, align 1, !noalias !27119
  %i.dn = getelementptr i8, ptr %i.db, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.dn, align 1, !noalias !27119
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !27118, !noundef !47
  %i.dq = add i64 %i.dp, -1
  store i64 %i.dq, ptr %i.do, align 8, !alias.scope !27118
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.co, i64 -32
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !27120
  %.not.i = icmp eq i64 %.sroa.3.0.copyload.i, 8
  br i1 %.not.i, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dr, align 8
  store i64 9, ptr %0, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17ha23bd29c3e90310dE.exit32"

bb.j:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h144b0dbdd3d2b95dE.exit.i"
  %.sroa.5.8..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds i8, ptr %i.co, i64 -16
  %.sroa.5.8.copyload = load ptr, ptr %.sroa.5.8..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !noalias !27100, !nonnull !47, !noundef !47 ; 2 uses
  %.sroa.6.8..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds i8, ptr %i.co, i64 -8
  %.sroa.6.8.copyload = load i8, ptr %.sroa.6.8..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !noalias !27100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.sroa.5.8.copyload, ptr %i.g, align 8
  %i.ds = invoke fastcc ptr @"_ZN100_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..default..Default$GT$7default17h0347a95e30752332E"()
          to label %._crit_edge137 unwind label %bb.ag

.loopexit:                                        ; preds = %._crit_edge.i.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h144b0dbdd3d2b95dE.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @571) #73
  unreachable

._crit_edge137:                                   ; preds = %bb.j
  %i.dt = tail call fastcc noundef nonnull ptr @"_ZN101_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17hd01d0d5410e01830E"(ptr noundef nonnull %.sroa.5.8.copyload, ptr noalias noundef nonnull align 1 %2, ptr noundef nonnull %i.ds, ptr noundef null, i64 noundef 0, ptr undef)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.dt, ptr %i.du, align 8
  store i64 7, ptr %i.f, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 %.sroa.6.8.copyload, ptr %i.dv, align 8
  call void @_ZN16nickel_lang_core5cache9TermCache6insert17hf8a879e66c400394E(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_ZN16nickel_lang_core5cache10ImportData7imports17ha3c674b4a077615fE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %3, i32 noundef %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !27121)
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !alias.scope !27121
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !27121 ; 7 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !27121 ; 3 uses
  %.sroa.6.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i23, align 8, !alias.scope !27121 ; 5 uses
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.71.0.copyload.i = load <16 x i1>, ptr %.sroa.71.0..sroa_idx.i, align 8, !alias.scope !27121 ; 5 uses
  %.sroa.82.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.82.0.copyload.i = load i64, ptr %.sroa.82.0..sroa_idx.i, align 8, !alias.scope !27121 ; 6 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !27121 ; 4 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !27121 ; 3 uses
  %.sroa.113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.113.0.copyload.i = load i16, ptr %.sroa.113.0..sroa_idx.i, align 8, !alias.scope !27121 ; 3 uses
  %.sroa.124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.124.0.copyload.i = load i64, ptr %.sroa.124.0..sroa_idx.i, align 8, !alias.scope !27121 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27122
  %.fr54.i.i.i.i.i.i = freeze i64 %.sroa.0.0.copyload.i
  %i.dw = trunc i64 %.fr54.i.i.i.i.i.i to i1      ; 3 uses
  %.not.i.us.peel.i.i.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload.i, null ; 2 uses
  br i1 %i.dw, label %.split.us.preheader.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i:                  ; preds = %._crit_edge137
  %i.dx = icmp eq i64 %.sroa.82.0.copyload.i, 0
  %or.cond.i.i = select i1 %.not.i.us.peel.i.i.i.i.i.i, i1 true, i1 %i.dx
  br i1 %or.cond.i.i, label %bb.k, label %.split49.us.i.i.i.i.i.i

bb.k:                                             ; preds = %.split.us.preheader.i.i.i.i.i.i
  %.not.i.i.us.peel.i.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload.i, null
  br i1 %.not.i.i.us.peel.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !27123), !noalias !27124
  call void @llvm.experimental.noalias.scope.decl(metadata !27125), !noalias !27124
  %i.dy = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !alias.scope !27126, !noalias !27127, !nonnull !47, !noundef !47 ; 3 uses
  %.val13.i.i.i.i.i.us.peel.i.i.i.i.i.i = load <16 x i8>, ptr %i.dy, align 16, !noalias !27128
  %i.dz = icmp sgt <16 x i8> %.val13.i.i.i.i.i.us.peel.i.i.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !27126, !noalias !27127, !noundef !47 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split53.us.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %._crit_edge137
  br i1 %.not.i.us.peel.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.split.i.i.i.i.i.i
  %i.ee = icmp eq i64 %.sroa.82.0.copyload.i, 0
  br i1 %i.ee, label %.split53.us.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i

.split49.us.i.i.i.i.i.i:                          ; preds = %bb.m, %bb.l, %.split.us.preheader.i.i.i.i.i.i
  %.sroa.17.0.i.i = phi <16 x i1> [ %i.dz, %bb.l ], [ %.sroa.71.0.copyload.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.71.0.copyload.i, %bb.m ]
  %.sroa.12.0.i.i = phi ptr [ %i.ea, %bb.l ], [ %.sroa.6.0.copyload.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.6.0.copyload.i, %bb.m ] ; 2 uses
  %.val.i.i.i.i31.i.i.i = phi ptr [ null, %bb.l ], [ %.sroa.4.0.copyload.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i, %bb.m ]
  %.us-phi50.i.i.i.i.i.i = phi ptr [ %i.dy, %bb.l ], [ %.sroa.5.0.copyload.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i, %bb.m ] ; 2 uses
  %.us-phi51.i.i.i.i.i.i = phi i64 [ %i.ec, %bb.l ], [ %.sroa.82.0.copyload.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.82.0.copyload.i, %bb.m ]
  %i.ef = bitcast <16 x i1> %.sroa.17.0.i.i to i16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ef, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split49.us.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.eg = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.0.i.i, %.split49.us.i.i.i.i.i.i ] ; 2 uses
  %i.eh = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.us-phi50.i.i.i.i.i.i, %.split49.us.i.i.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.eg, align 16, !noalias !27129
  %i.ei = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -128 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ei to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.split49.us.i.i.i.i.i.i
  %.sroa.12.1.i.i = phi ptr [ %.sroa.12.0.i.i, %.split49.us.i.i.i.i.i.i ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.el = phi ptr [ %.us-phi50.i.i.i.i.i.i, %.split49.us.i.i.i.i.i.i ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ef, %.split49.us.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.em = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.en = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = and i16 %i.em, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.eq = bitcast i16 %i.ep to <16 x i1>
  %i.er = sub nsw i64 0, %i.eo
  %i.es = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.er
  %i.et = add i64 %.us-phi51.i.i.i.i.i.i, -1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h950c65cb8f3b2b29E.exit.i.i.i.i"

.split53.us.i.i.i.i.i.i:                          ; preds = %bb.m, %.split.i.i.i.i.i.i, %bb.l, %bb.k
  %.sroa.17.1.i.i = phi <16 x i1> [ %.sroa.71.0.copyload.i, %bb.k ], [ %.sroa.71.0.copyload.i, %bb.m ], [ %.sroa.71.0.copyload.i, %.split.i.i.i.i.i.i ], [ %i.dz, %bb.l ]
  %.sroa.12.2.i.i = phi ptr [ %.sroa.6.0.copyload.i, %bb.k ], [ %.sroa.6.0.copyload.i, %bb.m ], [ %.sroa.6.0.copyload.i, %.split.i.i.i.i.i.i ], [ %i.ea, %bb.l ]
  %.val.i.i.i.i30.i.i.i = phi ptr [ null, %bb.k ], [ %.sroa.4.0.copyload.i, %bb.m ], [ %.sroa.4.0.copyload.i, %.split.i.i.i.i.i.i ], [ null, %bb.l ]
  %.val.i.i.i.i.i26.i.i.i = phi i64 [ %.sroa.82.0.copyload.i, %bb.k ], [ 0, %bb.m ], [ %.sroa.82.0.copyload.i, %.split.i.i.i.i.i.i ], [ 0, %bb.l ]
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %.sroa.9.0.copyload.i, null
  %i.eu = icmp eq i64 %.sroa.124.0.copyload.i, 0
  %or.cond7.i.i = select i1 %.not.i2.i.i.i.i.i.i, i1 true, i1 %i.eu
  br i1 %or.cond7.i.i, label %._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %.split53.us.i.i.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i.i.i.i = icmp eq i16 %.sroa.113.0.copyload.i, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i.i.i.i:                    ; preds = %bb.n, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i
  %i.ev = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %bb.n ] ; 2 uses
  %i.ew = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ], [ %.sroa.9.0.copyload.i, %bb.n ]
  %.val911.i.i.i.i.i9.i.i.i.i.i.i = load <16 x i8>, ptr %i.ev, align 16, !noalias !27130
  %i.ex = icmp sgt <16 x i8> %.val911.i.i.i.i.i9.i.i.i.i.i.i, splat (i8 -1)
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -128 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i.i.i.i = bitcast <16 x i1> %i.ex to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, %bb.n
  %.sroa.27.0.i.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.n ], [ %i.ez, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ]
  %i.fa = phi ptr [ %.sroa.9.0.copyload.i, %bb.n ], [ %i.ey, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i.i.i.i = phi i16 [ %.sroa.113.0.copyload.i, %bb.n ], [ %.cast.i.i.i.i.i10.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ] ; 3 uses
  %i.fb = add i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i, -1
  %i.fc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = and i16 %i.fb, %.lcssa.i.i.i.i.i5.i.i.i.i.i.i
  %i.ff = sub nsw i64 0, %i.fd
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = add i64 %.sroa.124.0.copyload.i, -1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h950c65cb8f3b2b29E.exit.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h950c65cb8f3b2b29E.exit.i.i.i.i": ; preds = %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i
  %.sroa.304.0.i.i = phi i16 [ %i.fe, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i ], [ %.sroa.113.0.copyload.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.27.1.i.i = phi ptr [ %.sroa.27.0.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.17.2.i.i = phi <16 x i1> [ %.sroa.17.1.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i ], [ %i.eq, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.12.3.i.i = phi ptr [ %.sroa.12.2.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i ], [ %.sroa.12.1.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i ] ; 5 uses
  %.val.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i30.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i ], [ %.val.i.i.i.i31.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i ] ; 7 uses
  %.val.i57.i.i.i.i.i.i.i = phi i64 [ %i.fh, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i ], [ %.sroa.124.0.copyload.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i ] ; 4 uses
  %i.fi = phi ptr [ %i.fa, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i ], [ %.sroa.9.0.copyload.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i ] ; 4 uses
  %.val.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i26.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i ], [ %i.et, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i ] ; 7 uses
  %i.fj = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i ], [ %i.el, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i ] ; 3 uses
  %.pn.i.i.i.i24 = phi ptr [ %i.fg, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i ], [ %i.es, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i25 = getelementptr inbounds i8, ptr %.pn.i.i.i.i24, i64 -8
  %.val.i2.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i.i25, align 4, !noalias !27131, !noundef !47
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fj, null   ; 3 uses
  %.not51.i.i.i.i.i.i.i = icmp eq ptr %i.fi, null ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i, i64 0, i64 %.val.i57.i.i.i.i.i.i.i ; 2 uses
  %i.fk = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i)
  %i.fl = select i1 %.not.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i, i64 %i.fk
  %i.fm = call i64 @llvm.uadd.sat.i64(i64 %i.fl, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.fm, i64 4) ; 4 uses
  %i.fn = shl i64 %.sroa.0.0.i.i.i.i.i, 2         ; 3 uses
  %i.fo = icmp ugt i64 %i.fm, 4611686018427387903
  %i.fp = icmp ugt i64 %i.fn, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i = or i1 %i.fo, %i.fp
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.o, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a, !prof !59

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h950c65cb8f3b2b29E.exit.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !27132
  %i.fq = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fn, i64 noundef range(i64 1, 9) 4) #67, !noalias !27132 ; 5 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.o, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i"

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h950c65cb8f3b2b29E.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h950c65cb8f3b2b29E.exit.i.i.i.i" ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.fn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73, !noalias !27122
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a
  store i32 %.val.i2.i.i.i, ptr %i.fq, align 4, !noalias !27122
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !noalias !27122
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.fq, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !27122
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !27122
  call void @llvm.experimental.noalias.scope.decl(metadata !27133)
  call void @llvm.experimental.noalias.scope.decl(metadata !27134)
  br i1 %i.dw, label %.split.us.preheader.i.i.i47.i.i.i.i, label %.split.i.i.i16.i.i.i.i

.split.us.preheader.i.i.i47.i.i.i.i:              ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i"
  %i.fs = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.fs
  br i1 %or.cond.i.i.i.i, label %bb.p, label %.split49.us.i.i.i18.i.i.i.i

bb.p:                                             ; preds = %.split.us.preheader.i.i.i47.i.i.i.i
  %.not.i.i.us.peel.i.i.i49.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.us.peel.i.i.i49.i.i.i.i, label %.split53.us.i.i.i36.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !27135), !noalias !27136
  call void @llvm.experimental.noalias.scope.decl(metadata !27137), !noalias !27136
  %i.ft = load ptr, ptr %.val.i.i.i.i.i.i.i, align 8, !alias.scope !27138, !noalias !27139, !nonnull !47, !noundef !47 ; 3 uses
  %.val13.i.i.i.i.i.us.peel.i.i.i50.i.i.i.i = load <16 x i8>, ptr %i.ft, align 16, !noalias !27140
  %i.fu = icmp sgt <16 x i8> %.val13.i.i.i.i.i.us.peel.i.i.i50.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 24
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !27138, !noalias !27139, !noundef !47 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %.split53.us.i.i.i36.i.i.i.i, label %.split49.us.i.i.i18.i.i.i.i

.split.i.i.i16.i.i.i.i:                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i, label %.split53.us.i.i.i36.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.split.i.i.i16.i.i.i.i
  %i.fz = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.fz, label %.split53.us.i.i.i36.i.i.i.i, label %.split49.us.i.i.i18.i.i.i.i

.split49.us.i.i.i18.i.i.i.i:                      ; preds = %bb.r, %bb.q, %.split.us.preheader.i.i.i47.i.i.i.i
  %.sroa.53.0.i.i.i.i = phi ptr [ null, %bb.q ], [ %.val.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i47.i.i.i.i ], [ %.val.i.i.i.i.i.i.i, %bb.r ]
  %.sroa.11.1.i.i.i.i = phi ptr [ %i.ft, %bb.q ], [ %i.fj, %.split.us.preheader.i.i.i47.i.i.i.i ], [ %i.fj, %bb.r ] ; 2 uses
  %.sroa.30.0.i.i.i.i = phi <16 x i1> [ %i.fu, %bb.q ], [ %.sroa.17.2.i.i, %.split.us.preheader.i.i.i47.i.i.i.i ], [ %.sroa.17.2.i.i, %bb.r ]
  %.sroa.22.0.i.i.i.i = phi ptr [ %i.fv, %bb.q ], [ %.sroa.12.3.i.i, %.split.us.preheader.i.i.i47.i.i.i.i ], [ %.sroa.12.3.i.i, %bb.r ] ; 2 uses
  %.us-phi51.i.i.i20.i.i.i.i = phi i64 [ %i.fx, %bb.q ], [ %.val.i.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i47.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i, %bb.r ]
  %i.ga = bitcast <16 x i1> %.sroa.30.0.i.i.i.i to i16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i21.i.i.i.i = icmp eq i16 %i.ga, 0
  br i1 %.not13.i.i.i.i.i.i.i.i21.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i:                 ; preds = %.split49.us.i.i.i18.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i
  %i.gb = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i ], [ %.sroa.22.0.i.i.i.i, %.split49.us.i.i.i18.i.i.i.i ] ; 2 uses
  %i.gc = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i ], [ %.sroa.11.1.i.i.i.i, %.split49.us.i.i.i18.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i32.i.i.i.i = load <16 x i8>, ptr %i.gb, align 16, !noalias !27141
  %i.gd = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i32.i.i.i.i, splat (i8 -1)
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -128 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i33.i.i.i.i = bitcast <16 x i1> %i.gd to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i34.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i33.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i34.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i, %.split49.us.i.i.i18.i.i.i.i
  %.sroa.22.1.i.i.i.i = phi ptr [ %.sroa.22.0.i.i.i.i, %.split49.us.i.i.i18.i.i.i.i ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i ]
  %i.gg = phi ptr [ %.sroa.11.1.i.i.i.i, %.split49.us.i.i.i18.i.i.i.i ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i23.i.i.i.i = phi i16 [ %i.ga, %.split49.us.i.i.i18.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i33.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i ] ; 3 uses
  %i.gh = add i16 %.lcssa.i.i.i.i.i.i.i.i23.i.i.i.i, -1
  %i.gi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i23.i.i.i.i, i1 true)
  %i.gj = zext nneg i16 %i.gi to i64
  %i.gk = and i16 %i.gh, %.lcssa.i.i.i.i.i.i.i.i23.i.i.i.i
  %i.gl = bitcast i16 %i.gk to <16 x i1>
  %i.gm = sub nsw i64 0, %i.gj
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gm
  %i.go = add i64 %.us-phi51.i.i.i20.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i.preheader

.split53.us.i.i.i36.i.i.i.i:                      ; preds = %bb.r, %.split.i.i.i16.i.i.i.i, %bb.q, %bb.p
  %.sroa.53.1.i.i.i.i = phi ptr [ null, %bb.p ], [ %.val.i.i.i.i.i.i.i, %bb.r ], [ %.val.i.i.i.i.i.i.i, %.split.i.i.i16.i.i.i.i ], [ null, %bb.q ]
  %.sroa.367.0.i.i.i.i = phi i64 [ %.val.i.i.i.i.i.i.i.i, %bb.p ], [ 0, %bb.r ], [ %.val.i.i.i.i.i.i.i.i, %.split.i.i.i16.i.i.i.i ], [ 0, %bb.q ]
  %.sroa.30.1.i.i.i.i = phi <16 x i1> [ %.sroa.17.2.i.i, %bb.p ], [ %.sroa.17.2.i.i, %bb.r ], [ %.sroa.17.2.i.i, %.split.i.i.i16.i.i.i.i ], [ %i.fu, %bb.q ]
  %.sroa.22.2.i.i.i.i = phi ptr [ %.sroa.12.3.i.i, %bb.p ], [ %.sroa.12.3.i.i, %bb.r ], [ %.sroa.12.3.i.i, %.split.i.i.i16.i.i.i.i ], [ %i.fv, %bb.q ]
  %i.gp = icmp eq i64 %.val.i57.i.i.i.i.i.i.i, 0
  %or.cond38.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i, i1 true, i1 %i.gp
  br i1 %or.cond38.i.i.i.i, label %.lr.ph.preheader, label %bb.s

bb.s:                                             ; preds = %.split53.us.i.i.i36.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i38.i.i.i.i = icmp eq i16 %.sroa.304.0.i.i, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i38.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i:                ; preds = %bb.s, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i
  %i.gq = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i ], [ %.sroa.27.1.i.i, %bb.s ] ; 2 uses
  %i.gr = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i ], [ %i.fi, %bb.s ]
  %.val911.i.i.i.i.i9.i.i.i43.i.i.i.i = load <16 x i8>, ptr %i.gq, align 16, !noalias !27142
  %i.gs = icmp sgt <16 x i8> %.val911.i.i.i.i.i9.i.i.i43.i.i.i.i, splat (i8 -1)
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 -128 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i44.i.i.i.i = bitcast <16 x i1> %i.gs to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i45.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i44.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i45.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i, %bb.s
  %.sroa.50.0.i.i.i.i = phi ptr [ %.sroa.27.1.i.i, %bb.s ], [ %i.gu, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i ]
  %.sroa.43.0.i.i.i.i = phi ptr [ %i.fi, %bb.s ], [ %i.gt, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i.i = phi i16 [ %.sroa.304.0.i.i, %bb.s ], [ %.cast.i.i.i.i.i10.i.i.i44.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i ] ; 3 uses
  %i.gv = add i16 %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i.i, -1
  %i.gw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i.i, i1 true)
  %i.gx = zext nneg i16 %i.gw to i64
  %i.gy = and i16 %i.gv, %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i.i
  %i.gz = sub nsw i64 0, %i.gx
  %i.ha = getelementptr inbounds [8 x i8], ptr %.sroa.43.0.i.i.i.i, i64 %i.gz
  %i.hb = add i64 %.val.i57.i.i.i.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i
  %.sroa.53.4.i.i.i.i.ph = phi ptr [ %.sroa.53.1.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i ], [ %.sroa.53.0.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i ]
  %.sroa.11.6.i.i.i.i.ph = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i ], [ %i.gg, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i ]
  %.sroa.5812.2.i.i.i.i.ph = phi i64 [ %i.hb, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i ], [ %.val.i57.i.i.i.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i ]
  %.sroa.5410.2.i.i.i.i.ph = phi i16 [ %i.gy, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i ], [ %.sroa.304.0.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i ]
  %.sroa.50.3.i.i.i.i.ph = phi ptr [ %.sroa.50.0.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i ], [ %.sroa.27.1.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i ]
  %.sroa.43.3.i.i.i.i.ph = phi ptr [ %.sroa.43.0.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i ], [ %i.fi, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i ]
  %.sroa.367.3.i.i.i.i.ph = phi i64 [ %.sroa.367.0.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i ], [ %i.go, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i ]
  %.sroa.30.4.i.i.i.i.ph = phi <16 x i1> [ %.sroa.30.1.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i ], [ %i.gl, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i ]
  %.sroa.22.5.i.i.i.i.ph = phi ptr [ %.sroa.22.2.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i ], [ %.sroa.22.1.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i ]
  %.pn.i25.pn.i.i.i.i.ph = phi ptr [ %i.ha, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i39.i.i.i.i ], [ %i.gn, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i22.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i.i.i.outer:                         ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i
  %.ph = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hk, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ]
  %.sroa.53.4.i.i.i.i.ph157 = phi ptr [ %.sroa.53.4.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.53.6.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ]
  %.sroa.11.6.i.i.i.i.ph158 = phi ptr [ %.sroa.11.6.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ null, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ]
  %.sroa.5812.2.i.i.i.i.ph159 = phi i64 [ %.sroa.5812.2.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ix, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5410.2.i.i.i.i.ph160 = phi i16 [ %.sroa.5410.2.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.iu, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.50.3.i.i.i.i.ph161 = phi ptr [ %.sroa.50.3.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.50.4.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.43.3.i.i.i.i.ph162 = phi ptr [ %.sroa.43.3.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.43.4.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.367.3.i.i.i.i.ph163 = phi i64 [ %.sroa.367.3.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.367.4.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ]
  %.sroa.30.4.i.i.i.i.ph164 = phi <16 x i1> [ %.sroa.30.4.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.30.6.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ]
  %.sroa.22.5.i.i.i.i.ph165 = phi ptr [ %.sroa.22.5.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.22.8.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ]
  %.ph166 = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hl, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ]
  %.ph167 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hn, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ]
  %.pn.i25.pn.i.i.i.i.ph168 = phi ptr [ %.pn.i25.pn.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.iw, %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i ]
  %.not51.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.43.3.i.i.i.i.ph162, null
  %.sroa.8.0.i.i.i.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i.i.i, i64 0, i64 %.sroa.5812.2.i.i.i.i.ph159 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.outer, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i
  %i.hc = phi ptr [ %i.hk, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.outer ]
  %.sroa.53.4.i.i.i.i = phi ptr [ %.sroa.53.5.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i ], [ %.sroa.53.4.i.i.i.i.ph157, %.lr.ph.i.i.i.i.i.i.outer ] ; 7 uses
  %.sroa.11.6.i.i.i.i = phi ptr [ %i.ic, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i ], [ %.sroa.11.6.i.i.i.i.ph158, %.lr.ph.i.i.i.i.i.i.outer ] ; 4 uses
  %.sroa.367.3.i.i.i.i = phi i64 [ %i.ik, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i ], [ %.sroa.367.3.i.i.i.i.ph163, %.lr.ph.i.i.i.i.i.i.outer ] ; 7 uses
  %.sroa.30.4.i.i.i.i = phi <16 x i1> [ %i.ih, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i ], [ %.sroa.30.4.i.i.i.i.ph164, %.lr.ph.i.i.i.i.i.i.outer ] ; 5 uses
  %.sroa.22.5.i.i.i.i = phi ptr [ %.sroa.22.7.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i ], [ %.sroa.22.5.i.i.i.i.ph165, %.lr.ph.i.i.i.i.i.i.outer ] ; 5 uses
  %i.hd = phi i64 [ %i.hl, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i ], [ %.ph166, %.lr.ph.i.i.i.i.i.i.outer ] ; 3 uses
  %i.he = phi i64 [ %i.hn, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i ], [ %.ph167, %.lr.ph.i.i.i.i.i.i.outer ] ; 4 uses
  %.pn.i25.pn.i.i.i.i = phi ptr [ %i.ij, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i ], [ %.pn.i25.pn.i.i.i.i.ph168, %.lr.ph.i.i.i.i.i.i.outer ]
  %.val.i27.pn.in.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i25.pn.i.i.i.i, i64 -8
  %.val.i27.pn.i.i.i.i = load i32, ptr %.val.i27.pn.in.i.i.i.i, align 4, !noalias !27143, !noundef !47
  %i.hf = icmp samesign ult i64 %i.he, 2305843009213693952
  call void @llvm.assume(i1 %i.hf)
  %i.hg = icmp eq i64 %i.he, %i.hd
  br i1 %i.hg, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h950c65cb8f3b2b29E.exit.i.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2104d02b823199bE.exit.i.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h950c65cb8f3b2b29E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.6.i.i.i.i, null
  %i.hh = call i64 @llvm.uadd.sat.i64(i64 %.sroa.367.3.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i)
  %i.hi = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i, i64 %i.hh
  %i.hj = call i64 @llvm.uadd.sat.i64(i64 %i.hi, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.hd, i64 noundef range(i64 1, 0) %i.hj, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i unwind label %bb.x, !noalias !27144

.noexc.i.i.i.i:                                   ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h950c65cb8f3b2b29E.exit.i.i.i.i.i.i"
  %.pre1.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !49, !alias.scope !27136, !noalias !27122
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !27136, !noalias !27122
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2104d02b823199bE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2104d02b823199bE.exit.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.hk = phi ptr [ %.pre.i.i.i.i, %.noexc.i.i.i.i ], [ %i.hc, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.hl = phi i64 [ %.pre1.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %i.hd, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.he
  store i32 %.val.i27.pn.i.i.i.i, ptr %i.hm, align 4, !noalias !27145
  %i.hn = add nuw nsw i64 %i.he, 1                ; 4 uses
  store i64 %i.hn, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !27136, !noalias !27122
  %.not.i.us.peel.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.6.i.i.i.i, null ; 2 uses
  br i1 %i.dw, label %.split.us.preheader.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i.i:                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2104d02b823199bE.exit.i.i.i.i.i.i"
  %i.ho = icmp eq i64 %.sroa.367.3.i.i.i.i, 0
  %or.cond37.i.i.i.i = select i1 %.not.i.us.peel.i.i.i.i.i.i.i, i1 true, i1 %i.ho
  br i1 %or.cond37.i.i.i.i, label %bb.t, label %.split49.us.i.i.i.i.i.i.i

bb.t:                                             ; preds = %.split.us.preheader.i.i.i.i.i.i.i
  %.not.i.i.us.peel.i.i.i.i.i.i.i = icmp eq ptr %.sroa.53.4.i.i.i.i, null
  br i1 %.not.i.i.us.peel.i.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !27146), !noalias !27136
  call void @llvm.experimental.noalias.scope.decl(metadata !27147), !noalias !27136
  %i.hp = load ptr, ptr %.sroa.53.4.i.i.i.i, align 8, !alias.scope !27148, !noalias !27149, !nonnull !47, !noundef !47 ; 3 uses
  %.val13.i.i.i.i.i.us.peel.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hp, align 16, !noalias !27150
  %i.hq = icmp sgt <16 x i8> %.val13.i.i.i.i.i.us.peel.i.i.i.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.53.4.i.i.i.i, i64 24
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !27148, !noalias !27149, !noundef !47 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %.split53.us.i.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2104d02b823199bE.exit.i.i.i.i.i.i"
  br i1 %.not.i.us.peel.i.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.split.i.i.i.i.i.i.i
  %i.hv = icmp eq i64 %.sroa.367.3.i.i.i.i, 0
  br i1 %i.hv, label %.split53.us.i.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i.i

.split49.us.i.i.i.i.i.i.i:                        ; preds = %bb.v, %bb.u, %.split.us.preheader.i.i.i.i.i.i.i
  %.sroa.53.5.i.i.i.i = phi ptr [ null, %bb.u ], [ %.sroa.53.4.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i ], [ %.sroa.53.4.i.i.i.i, %bb.v ]
  %.sroa.11.8.i.i.i.i = phi ptr [ %i.hp, %bb.u ], [ %.sroa.11.6.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i ], [ %.sroa.11.6.i.i.i.i, %bb.v ] ; 2 uses
  %.sroa.30.5.i.i.i.i = phi <16 x i1> [ %i.hq, %bb.u ], [ %.sroa.30.4.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i ], [ %.sroa.30.4.i.i.i.i, %bb.v ]
  %.sroa.22.6.i.i.i.i = phi ptr [ %i.hr, %bb.u ], [ %.sroa.22.5.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i ], [ %.sroa.22.5.i.i.i.i, %bb.v ] ; 2 uses
  %.us-phi51.i.i.i.i.i.i.i = phi i64 [ %i.ht, %bb.u ], [ %.sroa.367.3.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i ], [ %.sroa.367.3.i.i.i.i, %bb.v ]
  %i.hw = bitcast <16 x i1> %.sroa.30.5.i.i.i.i to i16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hw, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.split49.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hx = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.22.6.i.i.i.i, %.split49.us.i.i.i.i.i.i.i ] ; 2 uses
  %i.hy = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.8.i.i.i.i, %.split49.us.i.i.i.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hx, align 16, !noalias !27151
  %i.hz = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ia = getelementptr inbounds i8, ptr %i.hy, i64 -128 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.hz to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h3ec715f937909ab5E.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.split49.us.i.i.i.i.i.i.i
  %.sroa.22.7.i.i.i.i = phi ptr [ %.sroa.22.6.i.i.i.i, %.split49.us.i.i.i.i.i.i.i ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ic = phi ptr [ %.sroa.11.8.i.i.i.i, %.split49.us.i.i.i.i.i.i.i ], [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.hw, %.split49.us.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.id = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ie = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.if = zext nneg i16 %i.ie to i64
  %i.ig = and i16 %i.id, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ih = bitcast i16 %i.ig to <16 x i1>
  %i.ii = sub nsw i64 0, %i.if
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.ii
  %i.ik = add i64 %.us-phi51.i.i.i.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i

.split53.us.i.i.i.i.i.i.i:                        ; preds = %bb.v, %.split.i.i.i.i.i.i.i, %bb.u, %bb.t
  %.sroa.53.6.i.i.i.i = phi ptr [ null, %bb.t ], [ %.sroa.53.4.i.i.i.i, %bb.v ], [ %.sroa.53.4.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ null, %bb.u ]
  %.sroa.367.4.i.i.i.i = phi i64 [ %.sroa.367.3.i.i.i.i, %bb.t ], [ 0, %bb.v ], [ %.sroa.367.3.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ 0, %bb.u ]
  %.sroa.30.6.i.i.i.i = phi <16 x i1> [ %.sroa.30.4.i.i.i.i, %bb.t ], [ %.sroa.30.4.i.i.i.i, %bb.v ], [ %.sroa.30.4.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ %i.hq, %bb.u ]
  %.sroa.22.8.i.i.i.i = phi ptr [ %.sroa.22.5.i.i.i.i, %bb.t ], [ %.sroa.22.5.i.i.i.i, %bb.v ], [ %.sroa.22.5.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ %i.hr, %bb.u ]
  %.not.i2.i.i.i.i.i.i.i = icmp eq ptr %.sroa.43.3.i.i.i.i.ph162, null
  %i.il = icmp eq i64 %.sroa.5812.2.i.i.i.i.ph159, 0
  %or.cond39.i.i.i.i = select i1 %.not.i2.i.i.i.i.i.i.i, i1 true, i1 %i.il
  br i1 %or.cond39.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h83ba20da345a2412E.exit.i.i.i.i.loopexit", label %bb.w

bb.w:                                             ; preds = %.split53.us.i.i.i.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i.i.i.i.i = icmp eq i16 %.sroa.5410.2.i.i.i.i.ph160, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i:                  ; preds = %bb.w, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i
  %i.im = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i ], [ %.sroa.50.3.i.i.i.i.ph161, %bb.w ] ; 2 uses
  %i.in = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i ], [ %.sroa.43.3.i.i.i.i.ph162, %bb.w ]
  %.val911.i.i.i.i.i9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.im, align 16, !noalias !27152
  %i.io = icmp sgt <16 x i8> %.val911.i.i.i.i.i9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ip = getelementptr inbounds i8, ptr %i.in, i64 -128 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i.i.i.i.i = bitcast <16 x i1> %i.io to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h2cb13a0726ee53d0E.exit.i4.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i, %bb.w
  %.sroa.50.4.i.i.i.i = phi ptr [ %.sroa.50.3.i.i.i.i.ph161, %bb.w ], [ %i.iq, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i ]
  %.sroa.43.4.i.i.i.i = phi ptr [ %.sroa.43.3.i.i.i.i.ph162, %bb.w ], [ %i.ip, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i.i.i.i.i = phi i16 [ %.sroa.5410.2.i.i.i.i.ph160, %bb.w ], [ %.cast.i.i.i.i.i10.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i ] ; 3 uses
  %i.ir = add i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i.i, -1
  %i.is = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i.i, i1 true)
  %i.it = zext nneg i16 %i.is to i64
  %i.iu = and i16 %i.ir, %.lcssa.i.i.i.i.i5.i.i.i.i.i.i.i
  %i.iv = sub nsw i64 0, %i.it
  %i.iw = getelementptr inbounds [8 x i8], ptr %.sroa.43.4.i.i.i.i, i64 %i.iv
  %i.ix = add i64 %.sroa.5812.2.i.i.i.i.ph159, -1
  br label %.lr.ph.i.i.i.i.i.i.outer

bb.x:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h950c65cb8f3b2b29E.exit.i.i.i.i.i.i"
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !27122 ; 2 uses
  %i.iz = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.iz, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !27122, !nonnull !47, !noundef !47
  br label %common.resume.sink.split

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h83ba20da345a2412E.exit.i.i.i.i.loopexit": ; preds = %.split53.us.i.i.i.i.i.i.i
  %.sroa.034.0.copyload.pre = load i64, ptr %i.a, align 8, !noalias !27153
  %.sroa.3.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !27153
  br label %.lr.ph.preheader

common.resume.sink.split:                         ; preds = %bb.z, %bb.y
  %.sroa.034.0.ph.sink = phi i64 [ %.val.i.i.i.i, %bb.y ], [ %.sroa.034.0.ph, %bb.z ]
  %.sroa.3.0.ph.sink = phi ptr [ %.val7.i.i.i.i, %bb.y ], [ %.sroa.3.0.ph, %bb.z ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.iy, %bb.y ], [ %i.jd, %bb.z ]
  %i.ja = shl nuw i64 %.sroa.034.0.ph.sink, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.ph.sink, i64 noundef %i.ja, i64 noundef range(i64 1, -9223372036854775807) 4) #67, !noalias !47
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.ag, %bb.z, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.iy, %bb.x ], [ %i.js, %bb.ag ], [ %i.jd, %bb.z ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

._crit_edge.thread:                               ; preds = %.split53.us.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17ha23bd29c3e90310dE.exit31"

.lr.ph.preheader:                                 ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h83ba20da345a2412E.exit.i.i.i.i.loopexit", %.split53.us.i.i.i36.i.i.i.i
  %.sroa.535.0.ph = phi i64 [ 1, %.split53.us.i.i.i36.i.i.i.i ], [ %i.hn, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h83ba20da345a2412E.exit.i.i.i.i.loopexit" ] ; 2 uses
  %.sroa.3.0.ph = phi ptr [ %i.fq, %.split53.us.i.i.i36.i.i.i.i ], [ %.sroa.3.0.copyload.pre, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h83ba20da345a2412E.exit.i.i.i.i.loopexit" ] ; 6 uses
  %.sroa.034.0.ph = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.split53.us.i.i.i36.i.i.i.i ], [ %.sroa.034.0.copyload.pre, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h83ba20da345a2412E.exit.i.i.i.i.loopexit" ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.jb = icmp samesign ult i64 %.sroa.535.0.ph, 2305843009213693952
  call void @llvm.assume(i1 %i.jb)
  %.idx112 = shl nuw nsw i64 %.sroa.535.0.ph, 2
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.3.0.ph, i64 %.idx112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.ph) ]
  br label %.lr.ph

bb.z:                                             ; preds = %.lr.ph
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.je = icmp eq i64 %.sroa.034.0.ph, 0
  br i1 %i.je, label %common.resume, label %common.resume.sink.split

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ae
  %.sroa.741.071 = phi ptr [ %i.jf, %bb.ae ], [ %.sroa.3.0.ph, %.lr.ph.preheader ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.741.071, i64 4 ; 2 uses
  %i.jg = load i32, ptr %.sroa.741.071, align 4, !noalias !27154, !noundef !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN16nickel_lang_core5cache9TermCache9closurize17he8bff0ed0701d3d6E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %3, i32 noundef %i.jg)
          to label %bb.ab unwind label %bb.z

._crit_edge:                                      ; preds = %bb.ae
  %i.jh = icmp eq i64 %.sroa.034.0.ph, 0
  br i1 %i.jh, label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17ha23bd29c3e90310dE.exit31", label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.ji = shl nuw i64 %.sroa.034.0.ph, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.ph, i64 noundef %i.ji, i64 noundef range(i64 1, -9223372036854775807) 4) #67, !noalias !27155
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17ha23bd29c3e90310dE.exit31"

"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17ha23bd29c3e90310dE.exit31": ; preds = %._crit_edge.thread, %._crit_edge, %bb.aa
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.jj, align 8
  store i64 9, ptr %0, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17ha23bd29c3e90310dE.exit32"

bb.ab:                                            ; preds = %.lr.ph
  %i.jk = load i64, ptr %i.d, align 8, !range !132, !noundef !47 ; 2 uses
  %.not16 = icmp eq i64 %i.jk, 9
  br i1 %.not16, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jm = load i64, ptr %i.jl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.jk, ptr %0, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.jm, ptr %i.jn, align 8
  %i.jo = icmp eq i64 %.sroa.034.0.ph, 0
  br i1 %i.jo, label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17ha23bd29c3e90310dE.exit32", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jp = shl nuw i64 %.sroa.034.0.ph, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.ph, i64 noundef %i.jp, i64 noundef range(i64 1, -9223372036854775807) 4) #67, !noalias !27156
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17ha23bd29c3e90310dE.exit32"

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.jq = icmp eq ptr %i.jf, %i.jc
  br i1 %i.jq, label %._crit_edge, label %.lr.ph

"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17ha23bd29c3e90310dE.exit32": ; preds = %bb.ad, %bb.ac, %bb.c, %bb.i, %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17ha23bd29c3e90310dE.exit31"
  ret void

bb.af:                                            ; preds = %bb.ag
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.ag:                                            ; preds = %bb.j
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #75
          to label %common.resume unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN16nickel_lang_core5label5Label17get_evaluated_arg17hf2a299c60ec7478aE(ptr %.88.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !27175 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.not = icmp eq ptr %.88.val, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %.88.val to i64
  %i.e = and i64 %i.d, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !57

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = load i64, ptr %.88.val, align 8, !noundef !47 ; 3 uses
  %i.g = and i64 %i.f, 72057594037927935          ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  %i.j = and i64 %i.f, 1080863910568919040
  %i.k = icmp ult i64 %i.f, 864691128455135232
  tail call void @llvm.assume(i1 %i.k)
  %i.l = or i64 %i.i, %i.j
  store i64 %i.l, ptr %.88.val, align 8
  %i.m = icmp eq i64 %i.g, 72057594037927935
  br i1 %i.m, label %bb.e, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !50

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2427, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.q, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %.88.val)
  %i.r = load ptr, ptr %i.c, align 8, !nonnull !47, !noundef !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27178)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !27179, !nonnull !47, !noundef !47 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noalias !27179, !noundef !47
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.t, align 8, !noalias !27179
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i"

bb.f:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27180)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !27181, !noundef !47 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hb39f0b5ace0ad037E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.z, align 8, !noalias !27182, !noundef !47
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !noalias !27182
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hb39f0b5ace0ad037E.exit.i"

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hb39f0b5ace0ad037E.exit.i" unwind label %bb.l

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i": ; preds = %bb.f, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27183)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !27184, !noundef !47 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i"
  %i.ah = load i64, ptr %i.af, align 8, !noalias !27185, !noundef !47
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.af, align 8, !noalias !27185
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit"

bb.k:                                             ; preds = %bb.j
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit"

bb.l:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hb39f0b5ace0ad037E.exit.i": ; preds = %bb.i, %bb.h, %bb.g
  resume { ptr, i32 } %i.x

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i", %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit"
end_hunk_1
begin_hunk_2_@"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$4push17h8a980dc1a30dcd7bE":bb.a
  %indvars.iv57 = phi i64 [ %i.ay, %.lr.ph ], [ %indvars.iv.next, %.lr.ph.i5 ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr48.i58, i64 8 ; 2 uses
  %.pn.in = shl nuw nsw i64 %indvars.iv57, 1
  %.pn = and i64 %.pn.in, 62
  %.in = lshr i64 %i.as, %.pn
  %i.ca = and i64 %.in, 3                         ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr48.i58, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !30050, !noundef !47
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr48.i58, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !30050, !noundef !47 ; 2 uses
  %i.cf = sub i64 %i.cc, %i.ce                    ; 2 uses
  %.not10.i = icmp ugt i64 %i.ca, %i.cf
  br i1 %.not10.i, label %bb.aa, label %bb.ab, !prof !50

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @679, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @680) #73, !noalias !30050, !inline_history !30034
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cg = icmp ult i64 %i.ca, %i.cf
  br i1 %i.cg, label %tailrecurse.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = trunc nuw i64 %indvars.iv57 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.sroa.0.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %1, i64 20, i1 false), !noalias !30049
  %.not54.i = icmp eq i64 %indvars.iv57, 1
  br i1 %.not54.i, label %._crit_edge.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30057
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false), !noalias !30057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30057
  store i64 1, ptr %i.b, align 8, !noalias !30057
  store i64 1, ptr %i.cj, align 8, !noalias !30057
  store i64 0, ptr %i.ck, align 8, !noalias !30057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.429.0..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %1, i64 20, i1 false), !noalias !30049
  %.sroa.429.sroa.8.0..sroa.429.0..sroa_idx.sroa_idx77.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  store i64 0, ptr %.sroa.429.sroa.8.0..sroa.429.0..sroa_idx.sroa_idx77.i, align 8, !noalias !30057
  %.sroa.429.sroa.10.0..sroa.429.0..sroa_idx.sroa_idx79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  store i64 1, ptr %.sroa.429.sroa.10.0..sroa.429.0..sroa_idx.sroa_idx79.i, align 8, !noalias !30057
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !30058, !inline_history !30034
  %i.cl = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !30058, !inline_history !30034 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.loopexit.i, label %bb.ad, !prof !55

bb.ad:                                            ; preds = %.lr.ph52.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cl, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !30050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30057
  invoke fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h35e2090e8f552167E"(ptr noalias noundef align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.cl)
          to label %bb.ae unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !30050, !inline_history !30034

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !30057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30057
  %exitcond.peel.not.i = icmp eq i64 %indvars.iv57, 2
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

._crit_edge.i:                                    ; preds = %bb.am, %bb.ae, %bb.ac
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.ac ], [ 1, %bb.ae ], [ 1, %bb.am ]
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.431.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.sroa.0.i, i64 80, i1 false), !noalias !30057
  store i64 1, ptr %i.c, align 8, !noalias !30057
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.cn, align 8, !noalias !30057
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.0.0.lcssa.i, ptr %i.co, align 8, !noalias !30057
  %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 0, ptr %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx.i, align 8, !noalias !30057
  %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 1, ptr %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx.i, align 8, !noalias !30057
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !30059, !inline_history !30034
  %i.cp = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !30059, !inline_history !30034 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.af, label %bb.ak, !prof !55

bb.af:                                            ; preds = %._crit_edge.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 120) #73
          to label %.noexc23.i unwind label %bb.ag, !noalias !30059, !inline_history !30034

.noexc23.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$alloc..rc..RcInner$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$$GT$17h85a945626deaee11E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c) #75
          to label %common.resume unwind label %bb.ah, !noalias !30050, !inline_history !30034

bb.ah:                                            ; preds = %bb.ag
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !30050, !inline_history !30034
  unreachable

.peel.next.i:                                     ; preds = %bb.ae, %bb.am
  %.sroa.04.051.i = phi i8 [ %i.ct, %bb.am ], [ 2, %bb.ae ]
  %i.ct = add nuw i8 %.sroa.04.051.i, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30057
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false), !noalias !30057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30057
  store i64 1, ptr %i.b, align 8, !noalias !30057
  store i64 1, ptr %i.cj, align 8, !noalias !30057
  store i64 1, ptr %i.ck, align 8, !noalias !30057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.429.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.sroa.0.i, i64 80, i1 false), !noalias !30057
  store i64 0, ptr %.sroa.429.sroa.8.0..sroa.429.0..sroa_idx.sroa_idx77.i, align 8, !noalias !30057
  store i64 1, ptr %.sroa.429.sroa.10.0..sroa.429.0..sroa_idx.sroa_idx79.i, align 8, !noalias !30057
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !30058, !inline_history !30034
  %i.cu = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !30058, !inline_history !30034 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.loopexit.i, label %bb.al, !prof !55

.loopexit.i:                                      ; preds = %.peel.next.i, %.lr.ph52.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 120) #73
          to label %.noexc24.i unwind label %bb.ai, !noalias !30058, !inline_history !30034

.noexc24.i:                                       ; preds = %.loopexit.i
  unreachable

bb.ai:                                            ; preds = %.loopexit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$alloc..rc..RcInner$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$$GT$17h85a945626deaee11E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.b) #75
          to label %.body.i unwind label %bb.aj, !noalias !30050, !inline_history !30034

bb.aj:                                            ; preds = %bb.ai
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !30050, !inline_history !30034
  unreachable

bb.ak:                                            ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cp, ptr noundef nonnull align 8 dereferenceable(120) %i.c, i64 120, i1 false), !noalias !30050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30057
  tail call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h35e2090e8f552167E"(ptr noalias noundef align 8 dereferenceable(48) %i.bz, ptr noundef nonnull %i.cp), !noalias !30050, !inline_history !30034
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0.i)
  br label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3set17hfc8b87bdfab3ff08E.exit"

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.ad
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cw, %bb.ai ], [ %lpad.loopexit.split-lp60, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr185drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$$C$4_usize$GT$$GT$17h9a64ae5c275b86b8E"(ptr noalias noundef align 8 dereferenceable(48) %i.d) #75
          to label %common.resume unwind label %bb.an, !noalias !30050, !inline_history !30034

bb.al:                                            ; preds = %.peel.next.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cu, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !30050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30057
  invoke fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h35e2090e8f552167E"(ptr noalias noundef align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.cu)
          to label %bb.am unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !30050, !inline_history !30034

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !30057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30057
  %exitcond.not.i = icmp eq i8 %i.ct, %i.ch
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !30042

bb.an:                                            ; preds = %.body.i
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !30050, !inline_history !30034
  unreachable

tailrecurse.i:                                    ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ce
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ca
  %i.db = tail call fastcc noundef align 8 dereferenceable(104) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hcab2e68af162b7d0E"(ptr noalias noundef align 8 dereferenceable(8) %i.da), !noalias !30050, !inline_history !30034 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !range !64, !noalias !30050, !noundef !47
  %i.dd = trunc nuw i64 %i.dc to i1
  br i1 %i.dd, label %.lr.ph.i5, label %tailrecurse._crit_edge.i

"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3set17hfc8b87bdfab3ff08E.exit": ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hce6d3fddb912bdddE.exit.i", %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$3set17ha779481f90e98dfdE.exit.i", %bb.ak
  %i.de = load i64, ptr %i.ar, align 8, !noundef !47
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.ar, align 8
  ret void

bb.ao:                                            ; preds = %"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17h8a091682b0dfb564E.exit"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @701) #73
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$8truncate17h69b1ee6f010f4fecE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !30071 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !47
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %2 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 1) ; 3 uses
  %i.d = icmp ult i64 %2, 32
  br i1 %i.d, label %_ZN18nickel_lang_vector6vector17height_for_length17hb93e4c4d29e1b41bE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.e = lshr i64 %2, 5
  %.not12.i.i.i = icmp ult i64 %2, 1024
  br i1 %.not12.i.i.i, label %_ZN18nickel_lang_vector6vector17height_for_length17hb93e4c4d29e1b41bE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.sroa.01.014.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ 1, %.preheader.i.i.i ]
  %.sroa.03.013.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ 32, %.preheader.i.i.i ]
  %i.f = add i32 %.sroa.01.014.i.i.i, 1           ; 3 uses
  %i.g = shl nuw i64 %.sroa.03.013.i.i.i, 5       ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i", label %.lr.ph.i.i.i

"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i": ; preds = %.lr.ph.i.i.i
  %i.h = icmp ugt i32 %i.f, 255
  %i.i = trunc nuw i32 %i.f to i8
  br i1 %i.h, label %bb.c, label %_ZN18nickel_lang_vector6vector17height_for_length17hb93e4c4d29e1b41bE.exit, !prof !30072

bb.c:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i"
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1191, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @683) #73
  unreachable

_ZN18nickel_lang_vector6vector17height_for_length17hb93e4c4d29e1b41bE.exit: ; preds = %bb.b, %.preheader.i.i.i, %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i"
  %.sroa.5.04.i = phi i8 [ %i.i, %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i" ], [ 1, %.preheader.i.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !noundef !47 ; 2 uses
  %i.l = icmp ult i8 %.sroa.5.04.i, %i.k
  %i.m = load ptr, ptr %0, align 8
  %.not10 = icmp eq ptr %i.m, null                ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN18nickel_lang_vector6vector17height_for_length17hb93e4c4d29e1b41bE.exit
  br i1 %.not10, label %bb.f, label %.lr.ph, !prof !50

bb.e:                                             ; preds = %_ZN18nickel_lang_vector6vector17height_for_length17hb93e4c4d29e1b41bE.exit
  br i1 %.not10, label %bb.v, label %bb.k, !prof !30073

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @702) #73
  unreachable

._crit_edge:                                      ; preds = %bb.aa
  %i.n = load ptr, ptr %i.bv, align 8, !nonnull !47, !noundef !47 ; 2 uses
  %.val.i = load i64, ptr %i.n, align 8, !noundef !47 ; 2 uses
  %i.o = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.p, ptr %i.n, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hea94c8ba3734ef02E.exit, !prof !50

bb.g:                                             ; preds = %._crit_edge
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hea94c8ba3734ef02E.exit: ; preds = %._crit_edge
  %i.r = load ptr, ptr %i.bv, align 8, !nonnull !47, !noundef !47 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30074)
  %i.s = load ptr, ptr %0, align 8, !alias.scope !30074, !noundef !47 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hea94c8ba3734ef02E.exit
  %i.u = load i64, ptr %i.s, align 8, !noalias !30075, !noundef !47
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !noalias !30075
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %.thread unwind label %bb.j

.lr.ph:                                           ; preds = %bb.d, %bb.aa
  %.sroa.0.032 = phi ptr [ %i.bv, %bb.aa ], [ %0, %bb.d ]
  %.sroa.05.031 = phi i8 [ %i.x, %bb.aa ], [ %.sroa.5.04.i, %bb.d ]
  %i.x = add nuw i8 %.sroa.05.031, 1              ; 2 uses
  %i.y = load ptr, ptr %.sroa.0.032, align 8, !nonnull !47, !noundef !47 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !64, !noundef !47
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.x, label %bb.y, !prof !54

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %0, align 8
  resume { ptr, i32 } %i.ac

.thread:                                          ; preds = %bb.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hea94c8ba3734ef02E.exit, %bb.h
  store ptr %i.r, ptr %0, align 8
  store i8 %.sroa.5.04.i, ptr %i.j, align 8
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.e
  %i.ad = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h4c3cad47a82b4a51E"(ptr noalias noundef align 8 dereferenceable(8) %0) ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !64, !alias.scope !30076, !noundef !47
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i.preheader, label %tailrecurse._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.k
  %i.ag = load i8, ptr %i.j, align 8, !noundef !47
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %tailrecurse.i
  %.tr824.i = phi i64 [ %i.bc, %tailrecurse.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.tr723.i = phi i8 [ %i.bn, %tailrecurse.i ], [ %i.ag, %.lr.ph.i.preheader ] ; 3 uses
  %.tr22.i = phi ptr [ %i.bm, %tailrecurse.i ], [ %i.ad, %.lr.ph.i.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr22.i, i64 8 ; 3 uses
  %i.ai = icmp eq i8 %.tr723.i, 0
  br i1 %i.ai, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i", label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aj = zext i8 %.tr723.i to i32
  br label %.preheader22.i.i

.preheader22.i.i:                                 ; preds = %bb.l, %bb.n
  %.sroa.016.0.i.i = phi i64 [ %.sroa.016.1.i.i, %bb.n ], [ 1, %bb.l ] ; 2 uses
  %.sroa.09.0.i.i = phi i64 [ %i.ao, %bb.n ], [ 32, %bb.l ] ; 3 uses
  %.sroa.0.0.i.i = phi i32 [ %i.an, %bb.n ], [ %i.aj, %bb.l ] ; 3 uses
  %i.ak = and i32 %.sroa.0.0.i.i, 1
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader22.i.i
  %i.al = mul i64 %.sroa.09.0.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.am = icmp eq i32 %.sroa.0.0.i.i, 1
  br i1 %i.am, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i", label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader22.i.i
  %.sroa.016.1.i.i = phi i64 [ %i.al, %bb.m ], [ %.sroa.016.0.i.i, %.preheader22.i.i ]
  %i.an = lshr i32 %.sroa.0.0.i.i, 1
  %i.ao = mul i64 %.sroa.09.0.i.i, %.sroa.09.0.i.i
  br label %.preheader22.i.i

"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i": ; preds = %bb.m
  %i.ap = icmp eq i64 %i.al, 0
  br i1 %i.ap, label %bb.r, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i"

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.k
  %.tr.lcssa.i = phi ptr [ %i.ad, %bb.k ], [ %i.bm, %tailrecurse.i ] ; 3 uses
  %.tr8.lcssa.i = phi i64 [ %1, %bb.k ], [ %i.bc, %tailrecurse.i ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30077)
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 272 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !30077, !noundef !47
  %i.at = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 264
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !30077, !noundef !47 ; 3 uses
  %i.av = sub i64 %i.as, %i.au                    ; 5 uses
  %.not.i4.i = icmp eq i64 %.tr8.lcssa.i, %i.av
  br i1 %.not.i4.i, label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$8truncate17hc2a3ebc5a5b859fdE.exit", label %bb.o

bb.o:                                             ; preds = %tailrecurse._crit_edge.i
  %i.aw = icmp ugt i64 %.tr8.lcssa.i, %i.av
  br i1 %i.aw, label %bb.q, label %bb.p, !prof !50

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.ay = sub nuw i64 %i.av, %.tr8.lcssa.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.tr8.lcssa.i
  tail call fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17h8ce52229eb398900E"(ptr noalias noundef nonnull align 8 %i.az, i64 noundef %i.ay), !inline_history !30070
  %i.ba = add i64 %i.au, %.tr8.lcssa.i
  store i64 %i.ba, ptr %i.ar, align 8, !alias.scope !30077
  br label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$8truncate17hc2a3ebc5a5b859fdE.exit"

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.tr8.lcssa.i, i64 noundef %i.av, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @631) #73, !noalias !30077, !inline_history !30070
  unreachable

"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i": ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i", %.lr.ph.i
  %.sroa.08.0.i6.i = phi i64 [ %i.al, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i" ], [ 1, %.lr.ph.i ] ; 2 uses
  %i.bb = udiv i64 %.tr824.i, %.sroa.08.0.i6.i    ; 5 uses
  %i.bc = urem i64 %.tr824.i, %.sroa.08.0.i6.i    ; 3 uses
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %bb.s, label %bb.t

bb.r:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i"
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @681) #73, !inline_history !30070
  unreachable

bb.s:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i"
  tail call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$10drop_right17h8916b2731b4b2340E"(ptr noalias noundef align 8 dereferenceable(272) %i.ah, i64 noundef %i.bb), !inline_history !30070
  br label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$8truncate17hc2a3ebc5a5b859fdE.exit"

bb.t:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i"
  %i.bd = add i64 %i.bb, 1
  tail call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$10drop_right17h8916b2731b4b2340E"(ptr noalias noundef align 8 dereferenceable(272) %i.ah, i64 noundef %i.bd), !inline_history !30070
  %i.be = getelementptr inbounds nuw i8, ptr %.tr22.i, i64 264
  %i.bf = load i64, ptr %i.be, align 8, !noundef !47 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr22.i, i64 272
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !47
  %i.bi = sub i64 %i.bh, %i.bf                    ; 2 uses
  %i.bj = icmp ult i64 %i.bb, %i.bi
  br i1 %i.bj, label %tailrecurse.i, label %bb.u

tailrecurse.i:                                    ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bf
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bb
  %i.bm = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h4c3cad47a82b4a51E"(ptr noalias noundef align 8 dereferenceable(8) %i.bl), !inline_history !30070 ; 3 uses
  %i.bn = add i8 %.tr723.i, -1
  %i.bo = load i64, ptr %i.bm, align 8, !range !64, !noundef !47
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %.lr.ph.i, label %tailrecurse._crit_edge.i
end_hunk_2
begin_hunk_3_@_ZN19nickel_lang_package5index9PreciseId13download_spec17h3e72e7bef2454559E:bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !34588
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit13"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit13": ; preds = %bb.h, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %i.y, i64 20, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 3, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN19nickel_lang_package5index9serialize145_$LT$impl$u20$core..convert..From$LT$nickel_lang_package..index..serialize..PackageFormat$GT$$u20$for$u20$nickel_lang_package..index..Package$GT$4from17he1d9b7a88526e94aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([312 x i8]) align 8 captures(none) dereferenceable(312) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(320) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !34686 {
"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hee40067b361d82baE.exit":
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.17.i.i.i.i.i = alloca [32 x i8], align 8 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [72 x i8], align 8                ; 16 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.618 = alloca [32 x i8], align 8          ; 4 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.013.0.copyload = load i64, ptr %i.k, align 8 ; 3 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.515.0.copyload = load ptr, ptr %.sroa.515.0..sroa_idx, align 8 ; 3 uses
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.618, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.618.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.032.0.copyload = load ptr, ptr %i.l, align 8 ; 3 uses
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.sroa.433.0.copyload = load i64, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 8
  %.not.i = icmp ne ptr %.sroa.032.0.copyload, null ; 3 uses
  %.sroa.10.0 = select i1 %.not.i, i64 %.sroa.433.0.copyload, i64 undef ; 2 uses
  %.sink23.i = zext i1 %.not.i to i64             ; 2 uses
  %.sroa.7.0.copyload.sink.i = select i1 %.not.i, i64 %.sroa.534.0.copyload, i64 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34688)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !34689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34690
  store i64 %.sink23.i, ptr %i.g, align 8, !alias.scope !34691, !noalias !34692
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr null, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !34691, !noalias !34692
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.032.0.copyload, ptr %.sroa.525.0..sroa_idx, align 8, !alias.scope !34691, !noalias !34692
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.626.0..sroa_idx, align 8, !alias.scope !34691, !noalias !34692
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sink23.i, ptr %.sroa.727.0..sroa_idx, align 8, !alias.scope !34691, !noalias !34692
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %.sroa.828.0..sroa_idx, align 8, !alias.scope !34691, !noalias !34692
  %.sroa.929.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %.sroa.032.0.copyload, ptr %.sroa.929.0..sroa_idx, align 8, !alias.scope !34691, !noalias !34692
  %.sroa.1030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.10.0, ptr %.sroa.1030.0..sroa_idx, align 8, !alias.scope !34691, !noalias !34692
  %.sroa.1131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  store i64 %.sroa.7.0.copyload.sink.i, ptr %.sroa.1131.0..sroa_idx, align 8, !alias.scope !34691, !noalias !34692
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34694)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34696
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h121ea48c19e057ddE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.c, !noalias !34697

bb.a:                                             ; preds = %bb.aa, %.thread.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %common.resume.sink.split.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$RP$$GT$17h5b26badafc4c33beE.exit.i.i.i.i.i", %bb.a
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.a ], [ %.pn.ph.i.i.i.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$RP$$GT$17h5b26badafc4c33beE.exit.i.i.i.i.i" ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ]
  %i.n = icmp eq i64 %.sroa.013.0.copyload, 0
  br i1 %i.n, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit", label %bb.b

bb.b:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.515.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.515.0.copyload, i64 noundef %.sroa.013.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !34698
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit"

.noexc.i.i.i.i.i.i:                               ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hee40067b361d82baE.exit"
  %i.o = load ptr, ptr %i.d, align 8, !noalias !34696, !noundef !47 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.thread.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.thread.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34696
  br label %.thread.i

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !34696 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1328
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i
  %i.r = load i32, ptr %i.q, align 4, !noalias !34699, !noundef !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %i.s, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i ; 12 uses
  %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !34696 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34696
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i, label %bb.i

bb.c:                                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hee40067b361d82baE.exit"
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$RP$$GT$17h5b26badafc4c33beE.exit.i.i.i.i.i"

.thread.i:                                        ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34695
  invoke fastcc void @"_ZN4core3ptr169drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$GT$$GT$17h104cda2b26f42bddE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc unwind label %bb.a, !noalias !34700

.noexc:                                           ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !34690
  store ptr null, ptr %i.i, align 8, !alias.scope !34701
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.v, align 8, !alias.scope !34701
  br label %bb.ac

bb.d:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = icmp eq i64 %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.16.copyload.i.i.i.i.i, i64 noundef %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !34702
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.e, %bb.d
  %i.y = icmp eq i64 %.sroa.82.32.copyload.i.i.i.i.i, 0
  br i1 %i.y, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.32.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.32.copyload.i.i.i.i.i, i64 noundef %.sroa.82.32.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !34703
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i": ; preds = %bb.f, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i.i.i.i.i.i"
  %i.z = icmp eq i64 %.sroa.113.56.copyload.i.i.i.i.i, 0
  br i1 %i.z, label %"_ZN4core3ptr51drop_in_place$LT$nickel_lang_package..index..Id$GT$17h632b496baf5a45d8E.exit.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.56.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.56.copyload.i.i.i.i.i, i64 noundef %.sroa.113.56.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !34704
  br label %"_ZN4core3ptr51drop_in_place$LT$nickel_lang_package..index..Id$GT$17h632b496baf5a45d8E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$nickel_lang_package..index..Id$GT$17h632b496baf5a45d8E.exit.i.i.i.i.i.i.i": ; preds = %bb.g, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i"
  %switch.i.i.i.i.i.i.i = icmp sgt i64 %.sroa.144.80.copyload.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i, label %bb.h, label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$RP$$GT$17h5b26badafc4c33beE.exit.i.i.i.i.i"

bb.h:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$nickel_lang_package..index..Id$GT$17h632b496baf5a45d8E.exit.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.80.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.16.80.copyload.i.i.i.i.i, i64 noundef %.sroa.144.80.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !34705
  br label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$RP$$GT$17h5b26badafc4c33beE.exit.i.i.i.i.i"

bb.i:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.i.i.i.i.i.i.i"
  %.sroa.4.i.sroa.5.4..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.i.i.i.i)
  %.sroa.16.80..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %.sroa.16.80.copyload.i.i.i.i.i = load ptr, ptr %.sroa.16.80..sroa_idx.i.i.i.i.i, align 8, !noalias !34695 ; 3 uses
  %.sroa.17.80..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.80..sroa_idx.i.i.i.i.i, i64 32, i1 false), !noalias !34695
  %.sroa.6.16.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4.i.sroa.5.4..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34695 ; 3 uses
  %.sroa.8.16..sroa.4.i.sroa.5.4..sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.82.32.copyload.i.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !34695 ; 2 uses
  %i.ac = load <2 x i64>, ptr %.sroa.8.16..sroa.4.i.sroa.5.4..sroa_idx.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !34695
  %.sroa.10.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.10.32.copyload.i.i.i.i.i = load ptr, ptr %.sroa.10.32..sroa_idx.i.i.i.i.i, align 8, !noalias !34695 ; 3 uses
  %.sroa.11.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.113.56.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !34695 ; 2 uses
  %i.ae = load <2 x i64>, ptr %.sroa.11.32..sroa_idx.i.i.i.i.i, align 8, !noalias !34695
  %.sroa.13.56..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.13.56.copyload.i.i.i.i.i = load ptr, ptr %.sroa.13.56..sroa_idx.i.i.i.i.i, align 8, !noalias !34695 ; 3 uses
  %.sroa.14.56..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sroa.144.80.copyload.i.i.i.i.i = load i64, ptr %i.aa, align 8, !noalias !34695 ; 2 uses
  %i.af = load <2 x i64>, ptr %.sroa.14.56..sroa_idx.i.i.i.i.i, align 8, !noalias !34695
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.1131.0..sroa_idx, align 8, !alias.scope !34706, !noalias !34690, !noundef !47
  %i.ag = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ag, i64 4) ; 2 uses
  %i.ah = shl i64 %.sroa.0.0.i.i.i.i.i.i.i, 7     ; 3 uses
  %i.ai = icmp ugt i64 %i.ag, 144115188075855871
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a, !prof !59

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a: ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !34707
  %i.ak = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, 9) 8) #67, !noalias !34707 ; 13 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a, %bb.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a ], [ 0, %bb.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc5.i.i.i.i.i.i unwind label %bb.d, !noalias !34695

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a
  store i32 %i.r, ptr %i.ak, align 8, !noalias !34695
  %.sroa.41.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34695
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.sroa.6.16.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34695
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x i64> %i.ac, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34695
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %.sroa.10.32.copyload.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34695
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store <2 x i64> %i.ae, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34695
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store ptr %.sroa.13.56.copyload.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34695
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store <2 x i64> %i.af, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34695
  %.sroa.16.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store ptr %.sroa.16.80.copyload.i.i.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34695
  %.sroa.17.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i.i.i, i64 32, i1 false), !noalias !34695
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !34695
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !34695
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !34695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !noalias !34700
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34711)
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf80f0abc732496ccE.exit.i.i.i.i.i.i.i.i", %bb.k
  %i.an = phi ptr [ %i.bc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf80f0abc732496ccE.exit.i.i.i.i.i.i.i.i" ], [ %i.ak, %bb.k ]
  %i.ao = phi i64 [ %i.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf80f0abc732496ccE.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.k ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34712
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h121ea48c19e057ddE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !34713

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.l
  %i.ap = load ptr, ptr %i.b, align 8, !noalias !34712, !noundef !47 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.thread.i.i.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.i.i.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.thread.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34712
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hde7b2c860f7f22dbE.exit.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !34712 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1328
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.as = load i32, ptr %i.ar, align 4, !noalias !34714, !noundef !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = getelementptr inbounds nuw [120 x i8], ptr %i.at, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.au, align 8, !noalias !34712 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34712
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hde7b2c860f7f22dbE.exit.i.i.i.i.i.i.i", label %bb.o

bb.m:                                             ; preds = %bb.p, %bb.n
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.p ], [ %i.av, %bb.n ]
  invoke fastcc void @"_ZN4core3ptr169drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$GT$$GT$17h104cda2b26f42bddE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %common.resume.sink.split.i.i unwind label %bb.r, !noalias !34715

bb.n:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.4.i.sroa.5.4..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false), !noalias !34716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.5.4..sroa_idx.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !34716
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !34716
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !34716
  store i32 %i.as, ptr %i.c, align 8, !noalias !34716
  store i64 %.sroa.4.i.sroa.3.4.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !34716
  %i.az = icmp samesign ult i64 %i.ao, 72057594037927936
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = load i64, ptr %i.f, align 8, !range !49, !alias.scope !34717, !noalias !34695, !noundef !47
  %i.bb = icmp eq i64 %i.ao, %i.ba
  br i1 %i.bb, label %bb.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf80f0abc732496ccE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf80f0abc732496ccE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf80f0abc732496ccE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.o
  %i.bc = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf80f0abc732496ccE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.an, %bb.o ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.bc, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bd, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false), !noalias !34716
  %i.be = add nuw nsw i64 %i.ao, 1                ; 2 uses
  store i64 %i.be, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !34717, !noalias !34695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34716
  br label %bb.l

bb.p:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$RP$$GT$17h5b26badafc4c33beE"(ptr noalias noundef align 8 dereferenceable(128) %i.c) #75, !noalias !34716
  br label %bb.m

bb.q:                                             ; preds = %bb.o
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !34718, !noalias !34695, !noundef !47
  %i.bg = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ao, i64 noundef range(i64 1, 0) %i.bg, i64 noundef 8, i64 noundef 128)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf80f0abc732496ccE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.p, !noalias !34719

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf80f0abc732496ccE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.q
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !34717, !noalias !34695
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf80f0abc732496ccE.exit.i.i.i.i.i.i.i.i"

bb.r:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !34716
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hde7b2c860f7f22dbE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.i.i.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1af613c704102499E.exit.thread.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr169drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$GT$$GT$17h104cda2b26f42bddE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17ha902ba07e8601cd2E.exit.i.i unwind label %bb.s, !noalias !34715

bb.s:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hde7b2c860f7f22dbE.exit.i.i.i.i.i.i.i"
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i.i

bb.t:                                             ; preds = %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$RP$$GT$17h5b26badafc4c33beE.exit.i.i.i.i.i"
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !34695
  unreachable

common.resume.sink.split.i.i:                     ; preds = %bb.ab, %bb.s, %bb.m
  %.sink.i.i = phi ptr [ %i.h, %bb.ab ], [ %i.f, %bb.s ], [ %i.f, %bb.m ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %bb.ab ], [ %i.bi, %bb.s ], [ %.pn.i.i.i.i.i.i.i.i, %bb.m ]
  call fastcc void @"_ZN4core3ptr128drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$RP$$GT$$GT$17h63d118ee0bb9f0a7E"(ptr noalias noundef align 8 dereferenceable(24) %.sink.i.i) #75, !noalias !34720
  br label %.body

"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..IndexDependency$RP$$GT$17h5b26badafc4c33beE.exit.i.i.i.i.i": ; preds = %bb.h, %"_ZN4core3ptr51drop_in_place$LT$nickel_lang_package..index..Id$GT$17h632b496baf5a45d8E.exit.i.i.i.i.i.i.i", %bb.c
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.w, %"_ZN4core3ptr51drop_in_place$LT$nickel_lang_package..index..Id$GT$17h632b496baf5a45d8E.exit.i.i.i.i.i.i.i" ], [ %i.w, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr169drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..index..serialize..IndexDependencyFormat$GT$$GT$17h104cda2b26f42bddE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.body unwind label %bb.t, !noalias !34700

_ZN4core4iter6traits8iterator8Iterator7collect17ha902ba07e8601cd2E.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hde7b2c860f7f22dbE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !34695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !34720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34695
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !34720 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !34690
  %i.bk = icmp ult i64 %.pre.i.i, 72057594037927936
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i64 %.pre.i.i, 0
  br i1 %i.bl, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17ha902ba07e8601cd2E.exit.i.i
  %.val2.i.i.pre.i = load i64, ptr %i.h, align 8, !noalias !34720 ; 2 uses
  store ptr null, ptr %i.i, align 8, !alias.scope !34701
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.bm, align 8, !alias.scope !34701
  %i.bn = icmp eq i64 %.val2.i.i.pre.i, 0
  br i1 %i.bn, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i.i.i1 = load ptr, ptr %i.bo, align 8, !noalias !34720, !nonnull !47, !noundef !47
  %i.bp = shl nuw i64 %.val2.i.i.pre.i, 7
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i1, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !34721
  br label %bb.ac

bb.w:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17ha902ba07e8601cd2E.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !34720, !nonnull !47, !noundef !47 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34722
  %i.bs = icmp eq i64 %.pre.i.i, 1
  br i1 %i.bs, label %bb.aa, label %bb.x, !prof !54

bb.x:                                             ; preds = %bb.w
  %i.bt = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.bt, label %bb.z, label %bb.y, !prof !54

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h04ebdde9eef4ca65E(ptr noalias noundef nonnull align 8 %i.br, i64 noundef range(i64 1, 72057594037927936) %.pre.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.aa unwind label %bb.ab, !noalias !34720

bb.z:                                             ; preds = %bb.x
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h556dcec3fa8b6fe4E(ptr noalias noundef nonnull align 8 %i.br, i64 noundef range(i64 1, 72057594037927936) %.pre.i.i)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34722
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$27bulk_build_from_sorted_iter17heb3af92c3504b446E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ac unwind label %bb.a, !noalias !34723

bb.ab:                                            ; preds = %bb.z, %bb.y
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i.i

bb.ac:                                            ; preds = %bb.v, %bb.u, %.noexc, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !34689
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.0.0.copyload, ptr %i.cc, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.013.0.copyload, ptr %i.cd, align 8
  %.sroa.515.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.515.0.copyload, ptr %.sroa.515.0..sroa_idx16, align 8
  %.sroa.618.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.618.0..sroa_idx19, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.618, i64 32, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
end_hunk_3
begin_hunk_4_@_ZN19nickel_lang_package7resolve10Resolution11package_map17ha22993a92a89546bE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !35320
  invoke void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %.sroa.610.0.copyload.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %.val129)
          to label %bb.n unwind label %bb.l, !noalias !35322

bb.l:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ao, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %.val129, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !35323
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  br i1 %i.ao, label %_ZN3std4path4Path4join17h85a12d06b8cd1b18E.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %.val129, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !35324
  br label %_ZN3std4path4Path4join17h85a12d06b8cd1b18E.exit.i

.body.i:                                          ; preds = %bb.m, %bb.l
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %.body, label %bb.p

bb.p:                                             ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !35325
  br label %.body

_ZN3std4path4Path4join17h85a12d06b8cd1b18E.exit.i: ; preds = %bb.o, %bb.n
  %.sroa.0.0.copyload1.i = load i64, ptr %i.y, align 8, !noalias !35320 ; 2 uses
  %.sroa.9.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.9.0.copyload3.i = load ptr, ptr %.sroa.9.0..sroa_idx2.i, align 8, !noalias !35320 ; 2 uses
  %.sroa.15.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.15.0.copyload6.i = load i64, ptr %.sroa.15.0..sroa_idx5.i, align 8, !noalias !35320 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !35320
  %i.ba = icmp eq i64 %i.au, 0
  br i1 %i.ba, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit20.i", label %bb.q

bb.q:                                             ; preds = %_ZN3std4path4Path4join17h85a12d06b8cd1b18E.exit.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !35326
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit20.i"

bb.r:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit20.i"
  %.sroa.0230.0.copyload = load i64, ptr %i.w, align 8 ; 7 uses
  %.sroa.6232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.6232.0.copyload = load ptr, ptr %.sroa.6232.0..sroa_idx, align 8 ; 12 uses
  %.sroa.8234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.8234.0.copyload = load i64, ptr %.sroa.8234.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !35320
  %i.bb = icmp eq i64 %.sroa.0.2.i, 0
  br i1 %i.bb, label %_ZN16nickel_lang_core5cache14normalize_path17hac4deb8ed8373698E.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.2.i, i64 noundef %.sroa.0.2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !35327
  br label %_ZN16nickel_lang_core5cache14normalize_path17hac4deb8ed8373698E.exit

bb.t:                                             ; preds = %bb.g, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit20.i", %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1b02265e14455622E.exit.i"
  %.sroa.9.1.i = phi ptr [ %.sroa.9.2.i, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit20.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.g ], [ %.sroa.10.0.i.i.i.i.i, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1b02265e14455622E.exit.i" ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.2.i, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit20.i" ], [ %.val129, %bb.g ], [ %.val129, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1b02265e14455622E.exit.i" ] ; 2 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %i.bd, label %.body, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.1.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.1.i, i64 noundef %.sroa.0.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !35328
  br label %.body

.body:                                            ; preds = %bb.z, %.body147, %bb.w, %bb.u, %bb.t, %bb.p, %.body.i
  %.pn125 = phi { ptr, i32 } [ %i.bg, %bb.w ], [ %i.bc, %bb.u ], [ %i.ay, %.body.i ], [ %i.ay, %bb.p ], [ %i.bc, %bb.t ], [ %.pn123, %bb.z ], [ %.pn123, %.body147 ] ; 2 uses
  br i1 %i.ao, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit", label %bb.v

bb.v:                                             ; preds = %.body.thread, %.body
  %.pn125578 = phi { ptr, i32 } [ %i.be, %.body.thread ], [ %.pn125, %.body ]
  %.sroa.10.0.i.i.i435577 = phi ptr [ %i.ap, %.body.thread ], [ %.sroa.10.0.i.i.i434, %.body ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i435577, i64 noundef %.val129, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !35329
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit"

.body.thread:                                     ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZN16nickel_lang_core5cache14normalize_path17hac4deb8ed8373698E.exit: ; preds = %bb.s, %bb.r
  %i.bf = icmp eq i64 %.sroa.0230.0.copyload, -9223372036854775808
  br i1 %i.bf, label %_ZN16nickel_lang_core5cache14normalize_path17hac4deb8ed8373698E.exit.thread, label %bb.ab

_ZN16nickel_lang_core5cache14normalize_path17hac4deb8ed8373698E.exit.thread: ; preds = %bb.j, %bb.i, %_ZN16nickel_lang_core5cache14normalize_path17hac4deb8ed8373698E.exit
  %.sroa.6232.0449 = phi ptr [ %.sroa.6232.0.copyload, %_ZN16nickel_lang_core5cache14normalize_path17hac4deb8ed8373698E.exit ], [ %i.ax, %bb.i ], [ %i.ax, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6232.0449) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !35330
  store ptr %.sroa.6232.0449, ptr %i.v, align 8, !noalias !35331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !35331
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i434, i64 noundef %.val129)
          to label %bb.y unwind label %bb.w, !noalias !35331

bb.w:                                             ; preds = %_ZN16nickel_lang_core5cache14normalize_path17hac4deb8ed8373698E.exit.thread
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #75
          to label %.body unwind label %bb.x, !noalias !35331

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !35331
  unreachable

bb.y:                                             ; preds = %_ZN16nickel_lang_core5cache14normalize_path17hac4deb8ed8373698E.exit.thread
  %.sroa.6228.sroa.0.0.copyload237 = load i64, ptr %i.u, align 8, !noalias !35332
  %.sroa.6228.sroa.7.0..sroa_idx239 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6228.sroa.7.0.copyload240 = load ptr, ptr %.sroa.6228.sroa.7.0..sroa_idx239, align 8, !noalias !35332
  %.sroa.6228.sroa.8.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.6228.sroa.8.0.copyload243 = load i64, ptr %.sroa.6228.sroa.8.0..sroa_idx242, align 8, !noalias !35332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !35331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !35330
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6228.sroa.0.0.copyload237, ptr %.sroa.249.0..sroa_idx, align 8
  %.sroa.249.sroa.2.0..sroa.249.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6228.sroa.7.0.copyload240, ptr %.sroa.249.sroa.2.0..sroa.249.0..sroa_idx.sroa_idx, align 8
  %.sroa.249.sroa.3.0..sroa.249.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6228.sroa.8.0.copyload243, ptr %.sroa.249.sroa.3.0..sroa.249.0..sroa_idx.sroa_idx, align 8
  %.sroa.350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.6232.0449, ptr %.sroa.350.0..sroa_idx, align 8
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit221"

.body147:                                         ; preds = %.body153, %bb.ad, %.body.i.i.i.i, %bb.aa
  %.pn123 = phi { ptr, i32 } [ %.pn121, %.body153 ], [ %i.bj, %bb.aa ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.bx, %bb.ad ] ; 2 uses
  %i.bi = icmp eq i64 %.sroa.0230.0.copyload, 0
  br i1 %i.bi, label %.body, label %bb.z

bb.z:                                             ; preds = %.body147
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6232.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6232.0.copyload, i64 noundef %.sroa.0230.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !35333
  br label %.body

bb.aa:                                            ; preds = %bb.ab
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body147

bb.ab:                                            ; preds = %_ZN16nickel_lang_core5cache14normalize_path17hac4deb8ed8373698E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.experimental.noalias.scope.decl(metadata !35334)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 448
  call void @llvm.experimental.noalias.scope.decl(metadata !35335)
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !35336, !nonnull !47, !noundef !47 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !35336, !noundef !47
  %i.bo = getelementptr i8, ptr %i.bl, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 1
  %.val13.i.i.i = load <16 x i8>, ptr %i.bl, align 16, !noalias !35337
  %i.bq = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !35336, !noundef !47
  call void @llvm.experimental.noalias.scope.decl(metadata !35338)
  call void @llvm.experimental.noalias.scope.decl(metadata !35339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !35340
  store ptr %i.bl, ptr %i.t, align 8, !alias.scope !35341, !noalias !35342
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.br, ptr %.sroa.4251.0..sroa_idx, align 8, !alias.scope !35341, !noalias !35342
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.bp, ptr %.sroa.5252.0..sroa_idx, align 8, !alias.scope !35341, !noalias !35342
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store <16 x i1> %i.bq, ptr %.sroa.6253.0..sroa_idx, align 8, !alias.scope !35341, !noalias !35342
  %.sroa.8255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  store i64 %i.bt, ptr %.sroa.8255.0..sroa_idx, align 8, !alias.scope !35341, !noalias !35342
  call void @llvm.experimental.noalias.scope.decl(metadata !35343)
  call void @llvm.experimental.noalias.scope.decl(metadata !35344)
  call void @llvm.experimental.noalias.scope.decl(metadata !35345)
  call void @llvm.experimental.noalias.scope.decl(metadata !35346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !35347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !35348
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6930d37916314689E"(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.noexc146 unwind label %bb.aa, !noalias !35349

.noexc146:                                        ; preds = %bb.ab
  %i.bu = load i64, ptr %i.r, align 8, !range !110, !noalias !35348, !noundef !47
  %.not.i.i.i.i = icmp eq i64 %i.bu, -9223372036854775806
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.noexc146
  store i64 0, ptr %i.ak, align 8, !alias.scope !35350
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bv, align 8, !alias.scope !35350
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %i.bw, align 8, !alias.scope !35350
  br label %bb.al

bb.ad:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..PrecisePkg$GT$17hffe28f75a3143b9aE"(ptr noalias noundef align 8 dereferenceable(176) %i.r) #75, !noalias !35348
  br label %.body147

bb.ae:                                            ; preds = %.noexc146
  %.val.i.i.i.i = load i64, ptr %.sroa.8255.0..sroa_idx, align 8, !alias.scope !35351, !noalias !35340, !noundef !47
  %i.by = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.by, i64 4) ; 3 uses
  %i.bz = mul i64 %.sroa.0.0.i.i.i.i.i, 176       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.by, 52405522936674862
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ag, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i143, !prof !59

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i143: ; preds = %bb.ae
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i143
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !35352
  %i.cb = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bz, i64 noundef range(i64 1, 9) 8) #67, !noalias !35352 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.4.0.ph.i.i.i.i.i145 = phi i64 [ 8, %bb.af ], [ 0, %bb.ae ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i145, i64 %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc.i.i.i.i unwind label %bb.ad, !noalias !35348

.noexc.i.i.i.i:                                   ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i143
  %.sroa.10.0.i.i.i.i.i144 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i143 ], [ %i.cb, %bb.af ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i143 ], [ %.sroa.0.0.i.i.i.i.i, %bb.af ] ; 2 uses
  %i.cd = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.10.0.i.i.i.i.i144, ptr noundef nonnull align 8 dereferenceable(176) %i.r, i64 176, i1 false), !noalias !35348
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.s, align 8, !noalias !35348
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i144, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !35348
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !35348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !35348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !noalias !35349
  call void @llvm.experimental.noalias.scope.decl(metadata !35353)
  call void @llvm.experimental.noalias.scope.decl(metadata !35354)
  call void @llvm.experimental.noalias.scope.decl(metadata !35355)
  call void @llvm.experimental.noalias.scope.decl(metadata !35356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !35357
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6930d37916314689E"(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35358

.noexc5.i.i.i.i:                                  ; preds = %bb.ah
  %i.ce = load i64, ptr %i.p, align 8, !range !110, !noalias !35359, !noundef !47
  %.not1.i.i.i.i.i.i = icmp eq i64 %i.ce, -9223372036854775806
  br i1 %.not1.i.i.i.i.i.i, label %.loopexit1.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc5.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc6.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cg = phi ptr [ %.sroa.10.0.i.i.i.i.i144, %.lr.ph.i.i.i.i.i.i ], [ %i.cl, %.noexc6.i.i.i.i ]
  %i.ch = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %.noexc6.i.i.i.i ] ; 5 uses
  %i.ci = icmp samesign ult i64 %i.ch, 52405522936674863
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load i64, ptr %i.s, align 8, !range !49, !alias.scope !35360, !noalias !35348, !noundef !47
  %i.ck = icmp eq i64 %i.ch, %i.cj
  br i1 %i.ck, label %bb.ak, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i_crit_edge.i.i.i.i", %bb.ai
  %i.cl = phi ptr [ %.pre.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i_crit_edge.i.i.i.i" ], [ %i.cg, %bb.ai ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [176 x i8], ptr %i.cl, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cm, ptr noundef nonnull align 8 dereferenceable(176) %i.p, i64 176, i1 false), !noalias !35359
  %i.cn = add nuw nsw i64 %i.ch, 1                ; 2 uses
  store i64 %i.cn, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !35360, !noalias !35348
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6930d37916314689E"(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35358

.noexc6.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i.i.i.i.i"
  %i.co = load i64, ptr %i.p, align 8, !range !110, !noalias !35359, !noundef !47
  %.not.i.i.i.i.i.i = icmp eq i64 %i.co, -9223372036854775806
  br i1 %.not.i.i.i.i.i.i, label %.loopexit1.i.i.i.i, label %bb.ai

bb.aj:                                            ; preds = %bb.ak
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..PrecisePkg$GT$17hffe28f75a3143b9aE"(ptr noalias noundef align 8 dereferenceable(176) %i.p) #75, !noalias !35359
  br label %.body.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %.val.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !35361, !noalias !35348, !noundef !47
  %i.cq = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.ch, i64 noundef range(i64 1, 0) %i.cq, i64 noundef 8, i64 noundef 176)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.aj, !noalias !35362

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.ak
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !35360, !noalias !35348
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i.i.i.i.i", %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.cp, %bb.aj ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h64d76ebcba359d6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #75, !noalias !35348
  br label %.body147

.loopexit1.i.i.i.i:                               ; preds = %.noexc6.i.i.i.i, %.noexc5.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !35357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !35348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !35363
  br label %bb.al

.body153:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body208, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i.i.i", %bb.ap, %bb.au, %bb.az, %bb.bg
  %.pn121 = phi { ptr, i32 } [ %.pn117, %.body208 ], [ %i.fw, %bb.bg ], [ %.pn.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i.i.i" ], [ %i.fm, %bb.az ], [ %i.er, %bb.au ], [ %.pn.i.i.i.i.i.i, %bb.ap ], [ %lpad.loopexit.split-lp1443, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h64d76ebcba359d6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #75
  br label %.body147

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %._crit_edge, %bb.ao, %bb.am, %bb.bd, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i", %bb.bc
  %lpad.loopexit.split-lp1443 = landingpad { ptr, i32 }
          cleanup
  br label %.body153

bb.al:                                            ; preds = %bb.ac, %.loopexit1.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !35348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !35347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !35340
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 544
  call void @llvm.experimental.noalias.scope.decl(metadata !35364)
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !35364, !nonnull !47, !noundef !47 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !35364, !noundef !47
  %i.cv = getelementptr i8, ptr %i.cs, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  %.val13.i.i = load <16 x i8>, ptr %i.cs, align 16, !noalias !35365
  %i.cx = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !35364, !noundef !47
  store ptr %i.cs, ptr %i.aj, align 8
  %.sroa.055.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store ptr %i.cy, ptr %.sroa.055.sroa.4.0..sroa_idx, align 8
  %.sroa.055.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.cw, ptr %.sroa.055.sroa.5.0..sroa_idx, align 8
  %.sroa.055.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 4 uses
  store <16 x i1> %i.cx, ptr %.sroa.055.sroa.6.0..sroa_idx, align 8
  %.sroa.055.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 4 uses
  store i64 %i.da, ptr %.sroa.055.sroa.8.0..sroa_idx, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 5 uses
  store ptr null, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 3 uses
  store ptr null, ptr %.sroa.658.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !35366)
  call void @llvm.experimental.noalias.scope.decl(metadata !35367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 3 uses
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.01.72..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.i.i.i, i64 72
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.df = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i", %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !35368)
  call void @llvm.experimental.noalias.scope.decl(metadata !35369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !35370
  invoke fastcc void @_ZN4core4iter8adapters7flatten17and_then_or_clear17h66cd8bcc15340240E(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.n, ptr noalias noundef align 8 dereferenceable(24) %.sroa.456.0..sroa_idx)
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35371

.noexc151:                                        ; preds = %bb.am
  %i.dg = load i64, ptr %i.n, align 8, !range !110, !noalias !35370, !noundef !47
  %.not12.i.i.i = icmp eq i64 %i.dg, -9223372036854775806
  br i1 %.not12.i.i.i, label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i", label %._crit_edge.i.i.i

"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i": ; preds = %.noexc151
  %.promoted.i = load ptr, ptr %i.aj, align 8, !alias.scope !35372 ; 2 uses
  %.promoted3.i = load i64, ptr %.sroa.055.sroa.8.0..sroa_idx, align 8, !alias.scope !35367 ; 2 uses
  %.promoted4.i = load i16, ptr %.sroa.055.sroa.6.0..sroa_idx, align 8, !alias.scope !35367
  %.promoted5.i = load ptr, ptr %.sroa.055.sroa.4.0..sroa_idx, align 8, !alias.scope !35367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !35370
  %.not.i.i.i.i150716 = icmp eq ptr %.promoted.i, null
  %i.dh = icmp eq i64 %.promoted3.i, 0
  %or.cond = select i1 %.not.i.i.i.i150716, i1 true, i1 %i.dh
  br i1 %or.cond, label %._crit_edge, label %.lr.ph1278

._crit_edge.i.i.i:                                ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h66cd8bcc15340240E.exit.thread.i, %.noexc151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.o, ptr noundef nonnull align 8 dereferenceable(176) %i.n, i64 176, i1 false), !noalias !35373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !35370
  br label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcc66c3e35c48547E.exit.i"

.lr.ph1278:                                       ; preds = %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i", %_ZN4core4iter8adapters7flatten17and_then_or_clear17h66cd8bcc15340240E.exit.i
  %.lcssa7.i7171277 = phi ptr [ %.lcssa6.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h66cd8bcc15340240E.exit.i ], [ %.promoted5.i, %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i" ] ; 2 uses
  %i.di = phi i16 [ %i.du, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h66cd8bcc15340240E.exit.i ], [ %.promoted4.i, %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i" ] ; 2 uses
  %i.dj = phi i64 [ %i.dx, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h66cd8bcc15340240E.exit.i ], [ %.promoted3.i, %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i" ]
  %i.dk = phi ptr [ %i.dq, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h66cd8bcc15340240E.exit.i ], [ %.promoted.i, %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35374)
  call void @llvm.experimental.noalias.scope.decl(metadata !35375)
  call void @llvm.experimental.noalias.scope.decl(metadata !35376)
  call void @llvm.experimental.noalias.scope.decl(metadata !35377)
  call void @llvm.experimental.noalias.scope.decl(metadata !35378)
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.di, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.an
end_hunk_4
begin_hunk_5_@_ZN19nickel_lang_package7resolve10Resolution11package_map17ha22993a92a89546bE:bb.a
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.qg to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdcc228eec0a1dd22E.exit.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdcc228eec0a1dd22E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.ea
  %.sroa.6.1.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i.i.i.i, %bb.ea ], [ %i.qi, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i.i.i.i, %bb.ea ], [ %i.qh, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i.i.i.i, %bb.ea ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.qj = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.qk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ql = zext nneg i16 %i.qk to i64
  %i.qm = and i16 %i.qj, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.qn = sub nsw i64 0, %i.ql
  %i.qo = getelementptr inbounds [32 x i8], ptr %.sroa.07.1.i.i.i.i.i.i.i.i.i, i64 %i.qn ; 2 uses
  %i.qp = add i64 %.sroa.109.015.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.qq = getelementptr i8, ptr %i.qo, i64 -24
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.qq, align 8, !alias.scope !35499, !noalias !35500 ; 2 uses
  %i.qr = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.qr, label %"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17hb29126e51992021fE.exit.i.i.i.i.i.i.i.i.i", label %bb.eb

bb.eb:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdcc228eec0a1dd22E.exit.i.i.i.i.i.i.i.i.i"
  %i.qs = getelementptr i8, ptr %i.qo, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.qs, align 8, !noalias !35500, !nonnull !47, !noundef !47
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !35501
  br label %"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17hb29126e51992021fE.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17hb29126e51992021fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.eb, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdcc228eec0a1dd22E.exit.i.i.i.i.i.i.i.i.i"
  %i.qt = icmp eq i64 %i.qp, 0
  br i1 %i.qt, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h18bf120f4007cc8cE.exit.i.i.i.i.i.i.i.i, label %bb.ea

_ZN9hashbrown3raw13RawTableInner13drop_elements17h18bf120f4007cc8cE.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17hb29126e51992021fE.exit.i.i.i.i.i.i.i.i.i", %bb.dy
  %i.qu = shl i64 %.sroa.6.0.copyload35.i.i.i, 5  ; 2 uses
  %i.qv = add i64 %i.qu, 32                       ; 2 uses
  %i.qw = add i64 %.sroa.6.0.copyload35.i.i.i, 17
  %i.qx = add i64 %i.qw, %i.qv                    ; 4 uses
  %i.qy = icmp uge i64 %i.qx, %i.qv
  %i.qz = icmp ult i64 %i.qx, 9223372036854775793
  call void @llvm.assume(i1 %i.qy)
  call void @llvm.assume(i1 %i.qz)
  %i.ra = icmp eq i64 %i.qx, 0
  br i1 %i.ra, label %.thread552, label %bb.ec

bb.ec:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h18bf120f4007cc8cE.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload33.i.i.i) ]
  %i.rb = sub nuw nsw i64 -32, %i.qu
  %i.rc = getelementptr inbounds i8, ptr %.sroa.0.0.copyload33.i.i.i, i64 %i.rb
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rc, i64 noundef %i.qx, i64 noundef range(i64 1, -9223372036854775807) 16) #67, !noalias !35502
  br label %.thread552

bb.ed:                                            ; preds = %bb.ee
  %i.rd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !35420
  unreachable

bb.ee:                                            ; preds = %.body.i.i.i
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$nickel_lang_package..error..Error$GT$17h9cddd90d8eaf14bbE"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.g)
          to label %.body208 unwind label %bb.ed, !noalias !35420

.thread552:                                       ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h18bf120f4007cc8cE.exit.i.i.i.i.i.i.i.i, %bb.ec, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !35420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.733.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11308, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11308)
  %.sroa.297.sroa.5.0..sroa.297.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.297.sroa.5.0..sroa.297.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.733.sroa.10, i64 16, i1 false)
  store i64 %i.pv, ptr %0, align 8
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5300.0.copyload, ptr %.sroa.297.0..sroa_idx, align 8
  %.sroa.297.sroa.2.0..sroa.297.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.py, ptr %.sroa.297.sroa.2.0..sroa.297.0..sroa_idx.sroa_idx, align 8
  %.sroa.297.sroa.4.0..sroa.297.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.10306.0.copyload, ptr %.sroa.297.sroa.4.0..sroa.297.0..sroa_idx.sroa_idx, align 8
  %.sroa.398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.398.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.12309, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.733.sroa.10)
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit201"

bb.ef:                                            ; preds = %.thread537
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6232.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6232.0.copyload, i64 noundef %.sroa.0230.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !35503
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit212"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit212": ; preds = %bb.ef, %.thread537
  br i1 %i.ao, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit215", label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit215.sink.split"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit215.sink.split": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit212", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit221"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i434, i64 noundef %.val129, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !47
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit215"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit215": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit215.sink.split", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit221", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit212"
  ret void

.lr.ph.i.i.i217:                                  ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit201", %.lr.ph.i.i.i217
  %.sroa.0.07.i.i.i218 = phi i64 [ %i.rf, %.lr.ph.i.i.i217 ], [ 0, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit201" ] ; 2 uses
  %i.re = getelementptr inbounds nuw [176 x i8], ptr %i.fo, i64 %.sroa.0.07.i.i.i218
  %i.rf = add nuw i64 %.sroa.0.07.i.i.i218, 1     ; 2 uses
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..PrecisePkg$GT$17hffe28f75a3143b9aE"(ptr noalias noundef readonly align 8 dereferenceable(176) %i.re), !noalias !35454
  %i.rg = icmp eq i64 %i.rf, %.val1.i
  br i1 %i.rg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7b87b338f08fc76E.exit.i", label %.lr.ph.i.i.i217

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7b87b338f08fc76E.exit.i": ; preds = %.lr.ph.i.i.i217, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit201"
  %.val2.i = load i64, ptr %i.ak, align 8, !alias.scope !35454 ; 2 uses
  %i.rh = icmp eq i64 %.val2.i, 0
  br i1 %i.rh, label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h64d76ebcba359d6fE.exit", label %bb.eg

bb.eg:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7b87b338f08fc76E.exit.i"
  %i.ri = mul nuw i64 %.val2.i, 176
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fo, i64 noundef %i.ri, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !35454
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h64d76ebcba359d6fE.exit"

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h64d76ebcba359d6fE.exit": ; preds = %bb.eg, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7b87b338f08fc76E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.rj = icmp eq i64 %.sroa.0230.0.copyload, 0
  br i1 %i.rj, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit221", label %bb.eh

bb.eh:                                            ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h64d76ebcba359d6fE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6232.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6232.0.copyload, i64 noundef %.sroa.0230.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !35504
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit221"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit221": ; preds = %bb.eh, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h64d76ebcba359d6fE.exit", %bb.y
  br i1 %i.ao, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit215", label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit215.sink.split"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit": ; preds = %bb.v, %.body
  %.pn125579 = phi { ptr, i32 } [ %.pn125578, %bb.v ], [ %.pn125, %.body ]
  resume { ptr, i32 } %.pn125579
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package7resolve10Resolution12all_packages17hf80244507e16eb69E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !35603 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.01.i.i.i.i.i = alloca [96 x i8], align 8 ; 6 uses
  %i.g = alloca [176 x i8], align 8               ; 12 uses
  %i.h = alloca [176 x i8], align 8               ; 7 uses
  %i.i = alloca [176 x i8], align 8               ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 6 uses
  %i.k = alloca [176 x i8], align 8               ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [88 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35604)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 448
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35605)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !35606, !nonnull !47, !noundef !47 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !35606, !noundef !47
  %i.t = getelementptr i8, ptr %i.q, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val13.i.i.i = load <16 x i8>, ptr %i.q, align 16, !noalias !35607
  %i.v = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !35606, !noundef !47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35609)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !35610
  store ptr %i.q, ptr %i.m, align 8, !alias.scope !35611, !noalias !35612
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.w, ptr %.sroa.421.0..sroa_idx, align 8, !alias.scope !35611, !noalias !35612
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.u, ptr %.sroa.522.0..sroa_idx, align 8, !alias.scope !35611, !noalias !35612
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store <16 x i1> %i.v, ptr %.sroa.623.0..sroa_idx, align 8, !alias.scope !35611, !noalias !35612
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store i64 %i.y, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !35611, !noalias !35612
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !35617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !35618
  call fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa0eecce26137831E"(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m), !noalias !35619
  %i.z = load i64, ptr %i.k, align 8, !range !110, !noalias !35618, !noundef !47
  %.not.i.i.i.i = icmp eq i64 %i.z, -9223372036854775806
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.o, align 8, !alias.scope !35620
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aa, align 8, !alias.scope !35620
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.ab, align 8, !alias.scope !35620
  br label %bb.k

bb.c:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..PrecisePkg$GT$17hffe28f75a3143b9aE"(ptr noalias noundef align 8 dereferenceable(176) %i.k) #75, !noalias !35618
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !35621, !noalias !35610, !noundef !47
  %i.ad = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 4) ; 3 uses
  %i.ae = mul i64 %.sroa.0.0.i.i.i.i.i, 176       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.ad, 52405522936674862
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !59

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !35622
  %i.ag = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, 9) 8) #67, !noalias !35622 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.e ], [ 0, %bb.d ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc.i.i.i.i unwind label %bb.c, !noalias !35618

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ag, %bb.e ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(176) %i.k, i64 176, i1 false), !noalias !35618
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.l, align 8, !noalias !35618
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !35618
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !35618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !35619
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35627
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa0eecce26137831E"(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35628

.noexc5.i.i.i.i:                                  ; preds = %bb.g
  %i.aj = load i64, ptr %i.i, align 8, !range !110, !noalias !35629, !noundef !47
  %.not1.i.i.i.i.i.i = icmp eq i64 %i.aj, -9223372036854775806
  br i1 %.not1.i.i.i.i.i.i, label %.loopexit1.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc5.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  br label %bb.h

bb.h:                                             ; preds = %.noexc6.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.al = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.aq, %.noexc6.i.i.i.i ]
  %i.am = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %.noexc6.i.i.i.i ] ; 5 uses
  %i.an = icmp samesign ult i64 %i.am, 52405522936674863
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = load i64, ptr %i.l, align 8, !range !49, !alias.scope !35630, !noalias !35618, !noundef !47
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i_crit_edge.i.i.i.i", %bb.h
  %i.aq = phi ptr [ %.pre.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i_crit_edge.i.i.i.i" ], [ %i.al, %bb.h ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [176 x i8], ptr %i.aq, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ar, ptr noundef nonnull align 8 dereferenceable(176) %i.i, i64 176, i1 false), !noalias !35629
  %i.as = add nuw nsw i64 %i.am, 1                ; 2 uses
  store i64 %i.as, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !35630, !noalias !35618
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa0eecce26137831E"(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35628

.noexc6.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i.i.i.i.i"
  %i.at = load i64, ptr %i.i, align 8, !range !110, !noalias !35629, !noundef !47
  %.not.i.i.i.i.i.i = icmp eq i64 %i.at, -9223372036854775806
  br i1 %.not.i.i.i.i.i.i, label %.loopexit1.i.i.i.i, label %bb.h

bb.i:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..PrecisePkg$GT$17hffe28f75a3143b9aE"(ptr noalias noundef align 8 dereferenceable(176) %i.i) #75, !noalias !35629
  br label %.body.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %.val.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !35631, !noalias !35618, !noundef !47
  %i.av = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.am, i64 noundef range(i64 1, 0) %i.av, i64 noundef 8, i64 noundef 176)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.i, !noalias !35632

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.j
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !35630, !noalias !35618
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i.i.i.i.i.i", %bb.g
  %lpad.loopexit.split-lp161 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.au, %bb.i ], [ %lpad.loopexit.split-lp161, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h64d76ebcba359d6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.l) #75, !noalias !35618
  br label %common.resume

.loopexit1.i.i.i.i:                               ; preds = %.noexc6.i.i.i.i, %.noexc5.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !35633
  br label %bb.k

common.resume:                                    ; preds = %bb.c, %.body.i.i.i.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.ac, %bb.c ]
  resume { ptr, i32 } %common.resume.op

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %._crit_edge, %bb.n, %bb.l, %bb.ac, %bb.ab
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i.i.i", %bb.o, %bb.t, %bb.y, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.eb, %bb.af ], [ %.pn.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i.i.i" ], [ %i.dr, %bb.y ], [ %i.cw, %bb.t ], [ %.pn.i.i.i.i.i.i, %bb.o ], [ %lpad.loopexit.split-lp153, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h64d76ebcba359d6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #75
  br label %common.resume

bb.k:                                             ; preds = %.loopexit1.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !35618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !35617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !35610
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35634)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !35634, !nonnull !47, !noundef !47 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !35634, !noundef !47
  %i.ba = getelementptr i8, ptr %i.ax, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  %.val13.i.i = load <16 x i8>, ptr %i.ax, align 16, !noalias !35635
  %i.bc = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !35634, !noundef !47
  store ptr %i.ax, ptr %i.n, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.bd, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.bb, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 4 uses
  store <16 x i1> %i.bc, ptr %.sroa.03.sroa.6.0..sroa_idx, align 8
  %.sroa.03.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 4 uses
  store i64 %i.bf, ptr %.sroa.03.sroa.8.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 5 uses
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 3 uses
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.01.72..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.i.i.i, i64 72
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10f4acd7d4f3b8cdE.exit.i", %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !35638)
  call void @llvm.experimental.noalias.scope.decl(metadata !35639)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35640
  invoke fastcc void @_ZN4core4iter8adapters7flatten17and_then_or_clear17h9d249718e50af94bE(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.g, ptr noalias noundef align 8 dereferenceable(24) %.sroa.4.0..sroa_idx)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35641

.noexc:                                           ; preds = %bb.l
  %i.bl = load i64, ptr %i.g, align 8, !range !110, !noalias !35640, !noundef !47
  %.not12.i.i.i = icmp eq i64 %i.bl, -9223372036854775806
  br i1 %.not12.i.i.i, label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i", label %._crit_edge.i.i.i

"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i": ; preds = %.noexc
  %.promoted.i = load ptr, ptr %i.n, align 8, !alias.scope !35642 ; 2 uses
  %.promoted3.i = load i64, ptr %.sroa.03.sroa.8.0..sroa_idx, align 8, !alias.scope !35637 ; 2 uses
  %.promoted4.i = load i16, ptr %.sroa.03.sroa.6.0..sroa_idx, align 8, !alias.scope !35637
  %.promoted5.i = load ptr, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8, !alias.scope !35637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !35640
  %.not.i.i.i.i875 = icmp eq ptr %.promoted.i, null
  %i.bm = icmp eq i64 %.promoted3.i, 0
  %or.cond = select i1 %.not.i.i.i.i875, i1 true, i1 %i.bm
  br i1 %or.cond, label %._crit_edge, label %.lr.ph140

._crit_edge.i.i.i:                                ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h9d249718e50af94bE.exit.thread.i, %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.h, ptr noundef nonnull align 8 dereferenceable(176) %i.g, i64 176, i1 false), !noalias !35643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !35640
  br label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e396b5190602a3bE.exit.i"

.lr.ph140:                                        ; preds = %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i", %_ZN4core4iter8adapters7flatten17and_then_or_clear17h9d249718e50af94bE.exit.i
  %.lcssa7.i76139 = phi ptr [ %.lcssa6.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h9d249718e50af94bE.exit.i ], [ %.promoted5.i, %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i" ] ; 2 uses
  %i.bn = phi i16 [ %i.bz, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h9d249718e50af94bE.exit.i ], [ %.promoted4.i, %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i" ] ; 2 uses
  %i.bo = phi i64 [ %i.cc, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h9d249718e50af94bE.exit.i ], [ %.promoted3.i, %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i" ]
  %i.bp = phi ptr [ %i.bv, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h9d249718e50af94bE.exit.i ], [ %.promoted.i, %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$nickel_lang_package..PrecisePkg$GT$$GT$17h6d86c71f2d6afea7E.exit.lr.ph.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35644)
  call void @llvm.experimental.noalias.scope.decl(metadata !35645)
  call void @llvm.experimental.noalias.scope.decl(metadata !35646)
end_hunk_5
begin_hunk_6_@_ZN19nickel_lang_package7resolve10Resolution19sorted_dependencies17hf99e7c2fc2469f8cE:bb.a
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..PrecisePkg$GT$17hffe28f75a3143b9aE"(ptr noalias noundef readonly align 8 dereferenceable(176) %i.cr), !noalias !36538
  %.sroa.5.023.i = add nuw nsw i64 %.sroa.0.022.i, 1 ; 2 uses
  %i.cs = icmp samesign ult i64 %.sroa.5.023.i, %i.cf
  br i1 %i.cs, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ae, %bb.aa
  %.sroa.12.0.lcssa.i = phi i64 [ %.sroa.0.022.i, %bb.aa ], [ %.sroa.12.1.i, %bb.ae ]
  store i64 %.sroa.12.0.lcssa.i, ptr %i.al, align 8, !alias.scope !36538
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h57d9829bdac72233E.exit"

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ae
  %.sroa.5.025.i = phi i64 [ %.sroa.5.0.i, %bb.ae ], [ %.sroa.5.023.i, %bb.aa ] ; 3 uses
  %.sroa.12.024.i = phi i64 [ %.sroa.12.1.i, %bb.ae ], [ %.sroa.0.022.i, %bb.aa ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [368 x i8], ptr %i.ce, i64 %.sroa.5.025.i ; 5 uses
  %i.cu = getelementptr [368 x i8], ptr %i.ce, i64 %.sroa.12.024.i ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 -368
  %i.cw = invoke fastcc noundef zeroext i1 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h200388cb180a9808E"(ptr noalias noundef align 8 dereferenceable(368) %i.ct, ptr noalias noundef align 8 dereferenceable(368) %i.cv)
          to label %bb.ab unwind label %bb.y, !noalias !36538

bb.ab:                                            ; preds = %.lr.ph.i
  br i1 %i.cw, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.cu, ptr noundef nonnull align 8 dereferenceable(368) %i.ct, i64 368, i1 false), !noalias !36538
  %i.cx = add i64 %.sroa.12.024.i, 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..Dependency$GT$17hc6316d6adc432e3eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(368) %i.ct), !noalias !36538
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 192
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..PrecisePkg$GT$17hffe28f75a3143b9aE"(ptr noalias noundef readonly align 8 dereferenceable(176) %i.cy), !noalias !36538
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.12.1.i = phi i64 [ %.sroa.12.024.i, %bb.ad ], [ %i.cx, %bb.ac ] ; 2 uses
  %.sroa.5.0.i = add nuw nsw i64 %.sroa.5.025.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5.0.i, %i.cf
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h57d9829bdac72233E.exit": ; preds = %bb.z, %._crit_edge.i, %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i64 -9223372036854775788, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !36541)
  %.not.i85 = icmp eq i64 %.sroa.0.0, -9223372036854775808
  br i1 %.not.i85, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h57d9829bdac72233E.exit"
  call void @"_ZN4core3ptr33drop_in_place$LT$gix_url..Url$GT$17hbb9314442ac85c62E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(176) %i.t)
  %.val.i.i1.i.i = load i64, ptr %.sroa.10.0..sroa_idx6, align 8, !alias.scope !36542 ; 2 uses
  %i.da = icmp eq i64 %.val.i.i1.i.i, 0
  br i1 %i.da, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_package..UnversionedPrecisePkg$GT$17h0d3ff80266bced7aE.exit", label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_package..PreciseGitPkg$GT$17hf362154182cc6009E.exit.sink.split.i"

bb.ag:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h57d9829bdac72233E.exit"
  %.val.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx4, align 8, !alias.scope !36543 ; 2 uses
  %i.db = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.db, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_package..UnversionedPrecisePkg$GT$17h0d3ff80266bced7aE.exit", label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_package..PreciseGitPkg$GT$17hf362154182cc6009E.exit.sink.split.i"

"_ZN4core3ptr55drop_in_place$LT$nickel_lang_package..PreciseGitPkg$GT$17hf362154182cc6009E.exit.sink.split.i": ; preds = %bb.ag, %bb.af
  %.sink1.i.sroa.phi = phi ptr [ %.sink1.i.sroa.gep, %bb.af ], [ %.sink1.i.sroa.gep110, %bb.ag ]
  %.val.i.i.sink.i = phi i64 [ %.val.i.i1.i.i, %bb.af ], [ %.val.i.i.i, %bb.ag ]
  %.val1.i.i.i = load ptr, ptr %.sink1.i.sroa.phi, align 8, !alias.scope !36541, !nonnull !47, !noundef !47
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !36541
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_package..UnversionedPrecisePkg$GT$17h0d3ff80266bced7aE.exit"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_package..UnversionedPrecisePkg$GT$17h0d3ff80266bced7aE.exit": ; preds = %bb.af, %bb.ag, %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_package..PreciseGitPkg$GT$17hf362154182cc6009E.exit.sink.split.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bj

bb.ah:                                            ; preds = %.body92
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.ai:                                            ; preds = %bb.g, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit"
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %bb.g ], [ %.pn63, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit" ]
  resume { ptr, i32 } %.pn67.pn

bb.aj:                                            ; preds = %.body92, %bb.al
  %.pn63 = phi { ptr, i32 } [ %i.df, %bb.al ], [ %.pn, %.body92 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36544)
  call void @llvm.experimental.noalias.scope.decl(metadata !36545)
  call void @llvm.experimental.noalias.scope.decl(metadata !36546)
  %.val.i.i.i86 = load i64, ptr %i.p, align 8, !alias.scope !36547 ; 2 uses
  %i.dd = icmp eq i64 %.val.i.i.i86, 0
  br i1 %i.dd, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i.i87 = load ptr, ptr %i.de, align 8, !alias.scope !36547, !nonnull !47, !noundef !47
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i87, i64 noundef %.val.i.i.i86, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !36547
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit"

bb.al:                                            ; preds = %bb.bd, %bb.e
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.am:                                            ; preds = %bb.e
  %i.dg = load i64, ptr %i.n, align 8, !range !71, !noundef !47 ; 2 uses
  %.not = icmp eq i64 %i.dg, -9223372036854775788
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(312) %i.dh, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %.not, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.259.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, i64 312, i1 false)
  store i64 %i.dg, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !36548)
  call void @llvm.experimental.noalias.scope.decl(metadata !36549)
  call void @llvm.experimental.noalias.scope.decl(metadata !36550)
  %.val.i.i.i88 = load i64, ptr %i.p, align 8, !alias.scope !36551 ; 2 uses
  %i.di = icmp eq i64 %.val.i.i.i88, 0
  br i1 %i.di, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit90", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i.i89 = load ptr, ptr %i.dj, align 8, !alias.scope !36551, !nonnull !47, !noundef !47
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i89, i64 noundef %.val.i.i.i88, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !36551
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit90"

bb.ap:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.o, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.dl = load ptr, ptr %i.dk, align 8, !noundef !47 ; 3 uses
  %.not61 = icmp ne ptr %i.dl, null               ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  %i.dp = load i64, ptr %i.do, align 8
  %.sroa.011.sroa.0.0 = zext i1 %.not61 to i64    ; 2 uses
  %.sroa.011.sroa.5.sroa.6.0 = select i1 %.not61, i64 %i.dn, i64 undef ; 2 uses
  %.sroa.5.0 = select i1 %.not61, i64 %i.dp, i64 0
  call void @llvm.experimental.noalias.scope.decl(metadata !36552)
  call void @llvm.experimental.noalias.scope.decl(metadata !36553)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36554
  store i64 %.sroa.011.sroa.0.0, ptr %i.h, align 8, !alias.scope !36555, !noalias !36556
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %.sroa.4130.0..sroa_idx, align 8, !alias.scope !36555, !noalias !36556
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.dl, ptr %.sroa.5131.0..sroa_idx, align 8, !alias.scope !36555, !noalias !36556
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.011.sroa.5.sroa.6.0, ptr %.sroa.6132.0..sroa_idx, align 8, !alias.scope !36555, !noalias !36556
  %.sroa.7133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.011.sroa.0.0, ptr %.sroa.7133.0..sroa_idx, align 8, !alias.scope !36555, !noalias !36556
  %.sroa.8134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr null, ptr %.sroa.8134.0..sroa_idx, align 8, !alias.scope !36555, !noalias !36556
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.dl, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !36555, !noalias !36556
  %.sroa.10135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %.sroa.011.sroa.5.sroa.6.0, ptr %.sroa.10135.0..sroa_idx, align 8, !alias.scope !36555, !noalias !36556
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store i64 %.sroa.5.0, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !36555, !noalias !36556
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %1, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !36555, !noalias !36556
  call void @llvm.experimental.noalias.scope.decl(metadata !36557)
  call void @llvm.experimental.noalias.scope.decl(metadata !36558)
  call void @llvm.experimental.noalias.scope.decl(metadata !36559)
  call void @llvm.experimental.noalias.scope.decl(metadata !36560)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !36561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36561
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h923bb30cd46c6523E"(ptr noalias noundef align 8 captures(address) dereferenceable(368) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.h)
          to label %.noexc91 unwind label %bb.ay, !noalias !36562

.noexc91:                                         ; preds = %bb.ap
  %i.dq = load i64, ptr %i.f, align 8, !range !110, !noalias !36561, !noundef !47
  %.not.i.i.i.i = icmp eq i64 %i.dq, -9223372036854775806
  br i1 %.not.i.i.i.i, label %.thread, label %bb.ar

.thread:                                          ; preds = %.noexc91
  store i64 0, ptr %i.m, align 8, !alias.scope !36563
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dr, align 8, !alias.scope !36563
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.ds, align 8, !alias.scope !36563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !36561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !36554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36564
  br label %bb.bd

bb.aq:                                            ; preds = %bb.at
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..Dependency$GT$17hc6316d6adc432e3eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(368) %i.f), !noalias !36561
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..PrecisePkg$GT$17hffe28f75a3143b9aE"(ptr noalias noundef readonly align 8 dereferenceable(176) %i.du), !noalias !36561
  br label %.body92

bb.ar:                                            ; preds = %.noexc91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.e, ptr noundef nonnull align 8 dereferenceable(368) %i.f, i64 368, i1 false), !noalias !36561
  %.val.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !36565, !noalias !36554, !noundef !47
  %i.dv = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.dv, i64 4) ; 3 uses
  %i.dw = mul i64 %.sroa.0.0.i.i.i.i.i, 368       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.dv, 25063510969714064
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.at, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !59

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.ar
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !36566
  %i.dy = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dw, i64 noundef range(i64 1, 9) 8) #67, !noalias !36566 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.as ], [ 0, %bb.ar ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc.i.i.i.i unwind label %bb.aq, !noalias !36561

.noexc.i.i.i.i:                                   ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.as, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.dy, %bb.as ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.as ] ; 2 uses
  %i.ea = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.ea)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(368) %i.f, i64 368, i1 false), !noalias !36561
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.g, align 8, !noalias !36561
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !36561
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !36561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !36562
  call void @llvm.experimental.noalias.scope.decl(metadata !36567)
  call void @llvm.experimental.noalias.scope.decl(metadata !36568)
  call void @llvm.experimental.noalias.scope.decl(metadata !36569)
  call void @llvm.experimental.noalias.scope.decl(metadata !36570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36571
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h923bb30cd46c6523E"(ptr noalias noundef align 8 captures(address) dereferenceable(368) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !36572

.noexc5.i.i.i.i:                                  ; preds = %bb.au
  %i.eb = load i64, ptr %i.c, align 8, !range !110, !noalias !36571, !noundef !47
  %.not1.i.i.i.i.i.i = icmp eq i64 %i.eb, -9223372036854775806
  br i1 %.not1.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc5.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  br label %bb.aw

bb.av:                                            ; preds = %bb.ax
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..Dependency$GT$17hc6316d6adc432e3eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(368) %i.c), !noalias !36571
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..PrecisePkg$GT$17hffe28f75a3143b9aE"(ptr noalias noundef readonly align 8 dereferenceable(176) %i.ee), !noalias !36571
  br label %.body.i.i.i.i

bb.aw:                                            ; preds = %.noexc6.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ef = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ek, %.noexc6.i.i.i.i ]
  %i.eg = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i ], [ %i.em, %.noexc6.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.b, ptr noundef nonnull align 8 dereferenceable(368) %i.c, i64 368, i1 false), !noalias !36571
  %i.eh = icmp samesign ult i64 %i.eg, 25063510969714065
  call void @llvm.assume(i1 %i.eh)
  %i.ei = load i64, ptr %i.g, align 8, !range !49, !alias.scope !36573, !noalias !36561, !noundef !47
  %i.ej = icmp eq i64 %i.eg, %i.ei
  br i1 %i.ej, label %bb.ax, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h83a971b0316273b3E.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h83a971b0316273b3E.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h83a971b0316273b3E.exit.i.i_crit_edge.i.i.i.i", %bb.aw
  %i.ek = phi ptr [ %.pre.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h83a971b0316273b3E.exit.i.i_crit_edge.i.i.i.i" ], [ %i.ef, %bb.aw ] ; 2 uses
  %i.el = getelementptr inbounds nuw [368 x i8], ptr %i.ek, i64 %i.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.el, ptr noundef nonnull align 8 dereferenceable(368) %i.c, i64 368, i1 false), !noalias !36571
  %i.em = add nuw nsw i64 %i.eg, 1                ; 2 uses
  store i64 %i.em, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !36573, !noalias !36561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36571
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h923bb30cd46c6523E"(ptr noalias noundef align 8 captures(address) dereferenceable(368) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !36572

.noexc6.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h83a971b0316273b3E.exit.i.i.i.i.i.i"
  %i.en = load i64, ptr %i.c, align 8, !range !110, !noalias !36571, !noundef !47
  %.not.i.i.i.i.i.i = icmp eq i64 %i.en, -9223372036854775806
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %bb.aw

bb.ax:                                            ; preds = %bb.aw
  %.val.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !alias.scope !36574, !noalias !36561, !noundef !47
  %i.eo = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.eg, i64 noundef range(i64 1, 0) %i.eo, i64 noundef 8, i64 noundef 368)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h83a971b0316273b3E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.av, !noalias !36575

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h83a971b0316273b3E.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.ax
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !36573, !noalias !36561
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h83a971b0316273b3E.exit.i.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h83a971b0316273b3E.exit.i.i.i.i.i.i", %bb.au
  %lpad.loopexit.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.av
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ed, %bb.av ], [ %lpad.loopexit.split-lp336, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr157drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..Dependency$C$nickel_lang_package..PrecisePkg$RP$$GT$$GT$17h4b8170c3f92dedbcE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #75, !noalias !36561
  br label %.body92

.body92:                                          ; preds = %bb.bc, %bb.ay, %.body.i.i.i.i, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.es, %bb.bc ], [ %i.ep, %bb.ay ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.dt, %bb.aq ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_package..index..Package$GT$17hfa854c9c64c726a5E"(ptr noalias noundef align 8 dereferenceable(312) %i.o) #75
          to label %bb.aj unwind label %bb.ah

bb.ay:                                            ; preds = %bb.ap
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body92

.loopexit:                                        ; preds = %.noexc6.i.i.i.i, %.noexc5.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !36576
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert205 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.pre206 = load i64, ptr %.phi.trans.insert205, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !36561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !36554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36564
  %i.eq = icmp ult i64 %.pre206, 2
  br i1 %i.eq, label %bb.bd, label %bb.az, !prof !36577

bb.az:                                            ; preds = %.loopexit
  %i.er = icmp ult i64 %.pre206, 21
  br i1 %i.er, label %bb.bb, label %bb.ba, !prof !54

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17he554ecb50df935bdE(ptr noalias noundef nonnull align 8 %.pre, i64 noundef %.pre206, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bd unwind label %bb.bc

bb.bb:                                            ; preds = %bb.az
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hfa6c9b33d104bcb4E(ptr noalias noundef nonnull align 8 %.pre, i64 noundef %.pre206)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.es = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr157drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..Dependency$C$nickel_lang_package..PrecisePkg$RP$$GT$$GT$17h4b8170c3f92dedbcE"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #75
  br label %.body92

bb.bd:                                            ; preds = %bb.bb, %.thread, %.loopexit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36564
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store i64 -9223372036854775788, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_package..index..Package$GT$17hfa854c9c64c726a5E"(ptr noalias noundef align 8 dereferenceable(312) %i.o)
          to label %bb.be unwind label %bb.al

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !36578)
  call void @llvm.experimental.noalias.scope.decl(metadata !36579)
  call void @llvm.experimental.noalias.scope.decl(metadata !36580)
  %.val.i.i.i96 = load i64, ptr %i.p, align 8, !alias.scope !36581 ; 2 uses
  %i.eu = icmp eq i64 %.val.i.i.i96, 0
  br i1 %i.eu, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit98", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ev = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i.i97 = load ptr, ptr %i.ev, align 8, !alias.scope !36581, !nonnull !47, !noundef !47
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i97, i64 noundef %.val.i.i.i96, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !36581
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit98"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit": ; preds = %bb.ak, %bb.aj
  call void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_package..index..Id$GT$17h632b496baf5a45d8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.q) #75
  br label %bb.ai

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit98": ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !36582)
  call void @llvm.experimental.noalias.scope.decl(metadata !36583)
  call void @llvm.experimental.noalias.scope.decl(metadata !36584)
  %.val.i.i.i99 = load i64, ptr %i.q, align 8, !alias.scope !36585 ; 2 uses
  %i.ew = icmp eq i64 %.val.i.i.i99, 0
  br i1 %i.ew, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i", label %bb.bg

bb.bg:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit98"
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i.i100 = load ptr, ptr %i.ex, align 8, !alias.scope !36585, !nonnull !47, !noundef !47
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i100, i64 noundef %.val.i.i.i99, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !36585
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i": ; preds = %bb.bg, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit98"
  %i.ey = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !36586)
  call void @llvm.experimental.noalias.scope.decl(metadata !36587)
  %.val.i.i5.i = load i64, ptr %i.ey, align 8, !alias.scope !36588 ; 2 uses
  %i.ez = icmp eq i64 %.val.i.i5.i, 0
  br i1 %i.ez, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i", label %bb.bh
end_hunk_6
begin_hunk_7_@_ZN19nickel_lang_package8manifest12ManifestFile13from_contents17h8eeeb07a36eb7c85E:bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #73
          to label %.noexc.i46 unwind label %bb.t, !noalias !37333

.noexc.i46:                                       ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = icmp eq i64 %.sroa.011.0.copyload.i, 0
  br i1 %i.ay, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.copyload.i, i64 noundef %.sroa.011.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !37334
  br label %bb.ab

bb.v:                                             ; preds = %bb.r
  store i64 %.sroa.011.0.copyload.i, ptr %i.av, align 8, !noalias !37335
  %.sroa.513.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.513.0.copyload.i, ptr %.sroa.513.0..sroa_idx14.i, align 8, !noalias !37335
  %.sroa.616.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.sroa.616.0.copyload.i, ptr %.sroa.616.0..sroa_idx17.i, align 8, !noalias !37335
  %i.az = invoke noundef nonnull ptr @_ZN3std2io5error5Error4_new17h6d8eca976092d069E(i8 noundef 40, ptr noundef nonnull align 1 %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @163)
          to label %bb.w unwind label %bb.q, !noalias !37335

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !37336)
  %i.ba = load i64, ptr %i.e, align 8, !range !69, !alias.scope !37337, !noundef !47 ; 4 uses
  %i.bb = icmp eq i64 %i.ba, -9223372036854775807
  br i1 %i.bb, label %"_ZN19nickel_lang_package8manifest12ManifestFile13from_contents28_$u7b$$u7b$closure$u7d$$u7d$17h21f04db74edd19b9E.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !37338)
  %i.bc = icmp eq i64 %i.ba, -9223372036854775808
  br i1 %i.bc, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h57614f0808579696E.exit.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !37339)
  call void @llvm.experimental.noalias.scope.decl(metadata !37340)
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h57614f0808579696E.exit.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !37341, !nonnull !47, !noundef !47
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !37342
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h57614f0808579696E.exit.i.i"

"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h57614f0808579696E.exit.i.i": ; preds = %bb.z, %bb.y, %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bf), !noalias !37335
  br label %"_ZN19nickel_lang_package8manifest12ManifestFile13from_contents28_$u7b$$u7b$closure$u7d$$u7d$17h21f04db74edd19b9E.exit"

bb.aa:                                            ; preds = %bb.ab
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !37335
  unreachable

bb.ab:                                            ; preds = %bb.u, %bb.t, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.q ], [ %i.ax, %bb.u ], [ %i.ax, %bb.t ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..program..BuilderError$GT$17h32be254da9f24a9fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #75
          to label %common.resume unwind label %bb.aa, !noalias !37335

common.resume:                                    ; preds = %bb.ae, %.body.i, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.ab ], [ %i.bi, %bb.ae ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN19nickel_lang_package8manifest12ManifestFile13from_contents28_$u7b$$u7b$closure$u7d$$u7d$17h21f04db74edd19b9E.exit": ; preds = %bb.w, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h57614f0808579696E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.389.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.66.sroa.8, i64 16, i1 false)
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.591.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.66.sroa.10, i64 280, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.288.0..sroa_idx, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.az, ptr %.sroa.490.0..sroa_idx, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.o
  %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.66.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.536.sroa.7.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.536.sroa.7.0.copyload = load ptr, ptr %.sroa.536.sroa.7.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.8.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.66.sroa.10, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.536.sroa.8.0..sroa.536.0..sroa_idx.sroa_idx, i64 280, i1 false)
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 328
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(464) %.sroa.637.0..sroa_idx, i64 464, i1 false)
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bh = load <2 x i64>, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.ar, ptr %i.n, align 8
  store <2 x i64> %i.bh, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.66.sroa.8, i64 16, i1 false)
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %.sroa.536.sroa.7.0.copyload, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.66.sroa.10, i64 280, i1 false)
  call void @_ZN19nickel_lang_package8manifest12ManifestFile9from_prog17hd8f5c931380be5dfE(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @856, i64 noundef 11, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(792) %i.n)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %"_ZN19nickel_lang_package8manifest12ManifestFile13from_contents28_$u7b$$u7b$closure$u7d$$u7d$17h21f04db74edd19b9E.exit"
  ret void

bb.ae:                                            ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..program..ProgramBuilder$GT$17h0db9343166ca4499E"(ptr noalias noundef align 8 dereferenceable(264) %i.o) #75
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile15regenerate_lock17h7f02acf67864d349E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1528 x i8]) align 8 captures(none) dereferenceable(1528) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(400) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !37345 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [400 x i8], align 8               ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 2 uses
  %i.d = alloca [320 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [144 x i8], align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !37346, !nonnull !47, !noundef !47
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !37346, !noundef !47
  invoke void @_ZN19nickel_lang_package8snapshot8Snapshot3new17hf75c31090d39eaacE(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
          to label %_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit unwind label %bb.e

_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit: ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !range !71, !noundef !47 ; 2 uses
  %.not = icmp eq i64 %i.i, -9223372036854775788
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(144) %i.j, i64 144, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.318.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.69.0..sroa_idx, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.217.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6, i64 144, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -9223372036854775808, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_package..config..Config$GT$17h8aad23ed11dd624aE"(ptr noalias noundef align 8 dereferenceable(400) %2)
  br label %bb.d

bb.c:                                             ; preds = %_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.b, ptr noundef nonnull align 8 dereferenceable(400) %2, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, i8 0, i64 16, i1 false)
  call fastcc void @_ZN19nickel_lang_package8manifest12ManifestFile9make_lock17h3c37ae22f338bbc4E(ptr noalias noundef align 8 captures(address) dereferenceable(1528) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef align 8 captures(address) dereferenceable(400) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_package..config..Config$GT$17h8aad23ed11dd624aE"(ptr noalias noundef align 8 dereferenceable(400) %2) #75
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile19sorted_dependencies17h763180af43aa0a25E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !37404 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37405)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !37405, !nonnull !47, !noundef !47 ; 4 uses
  %.val13.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !37406
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !37405, !noundef !47 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37407
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.i = bitcast <16 x i1> %i.h to i16            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.d, %bb.b ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !37408
  %i.m = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -3072 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.09.0.copyload.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.i, %bb.b ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [192 x i8], ptr %.sroa.09.0.copyload.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add nsw i64 %i.f, -1                     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -192
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -184
  %i.y = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.w), !noalias !37409 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread, label %bb.c

bb.c:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 4) ; 3 uses
  %i.ab = mul i64 %.sroa.0.0.i.i.i.i.i, 24        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.f, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !59

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !37410
  %i.ad = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ab, i64 noundef range(i64 1, 9) 8) #67, !noalias !37410 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.e, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i"

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73, !noalias !37407
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i": ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.6.0.copyload529 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ad, %bb.d ] ; 6 uses
  %.sroa.0.0.copyload328 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.af = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.copyload328
  tail call void @llvm.assume(i1 %i.af)
  store ptr %i.z, ptr %.sroa.6.0.copyload529, align 8, !noalias !37407
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload529, i64 8
  store i64 %i.aa, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !37407
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload529, i64 16
  store ptr %i.x, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !noalias !37407
  store i64 %.sroa.0.0.copyload328, ptr %i.b, align 8, !noalias !37407
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %.sroa.6.0.copyload529, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !37407
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !37407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37412)
  %i.ag = icmp eq i64 %i.v, 0
  br i1 %i.ag, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26, label %.lr.ph.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37413
  br label %bb.n

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i", %.noexc7.i.i.i.i
  %i.ah = phi ptr [ %i.bc, %.noexc7.i.i.i.i ], [ %.sroa.6.0.copyload529, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ]
  %.sroa.9.0.copyload7.pr = phi i64 [ %i.be, %.noexc7.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 5 uses
  %.lcssa22.i.i.i.i.i.i = phi ptr [ %.lcssa21.i.i.i.i.i.i, %.noexc7.i.i.i.i ], [ %.sroa.5.0.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %i.ai = phi i16 [ %i.ar, %.noexc7.i.i.i.i ], [ %i.s, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %.val1318.i.i.i.i.i.i = phi i64 [ %i.au, %.noexc7.i.i.i.i ], [ %i.v, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i.i1617.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i15.i.i.i.i.i.i, %.noexc7.i.i.i.i ], [ %.sroa.09.0.copyload.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa22.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i1617.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !37414
  %i.al = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -3072 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa21.i.i.i.i.i.i = phi ptr [ %.lcssa22.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i15.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i1617.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [192 x i8], ptr %.pre.i.i.i.i15.i.i.i.i.i.i, i64 %i.as ; 2 uses
  %i.au = add i64 %.val1318.i.i.i.i.i.i, -1       ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -192
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -184
  %i.ax = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.av)
          to label %.noexc.i.i.i.i unwind label %bb.g, !noalias !37415 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit, label %bb.f

bb.f:                                             ; preds = %.noexc.i.i.i.i
  %i.ba = load i64, ptr %i.b, align 8, !range !49, !alias.scope !37416, !noalias !37407, !noundef !47
  %i.bb = icmp eq i64 %.sroa.9.0.copyload7.pr, %i.ba
  br i1 %i.bb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i", label %.noexc7.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i": ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.9.0.copyload7.pr, i64 noundef range(i64 1, 0) %.val1318.i.i.i.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i" unwind label %bb.g, !noalias !37417

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !37416, !noalias !37407
  br label %.noexc7.i.i.i.i

.noexc7.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i", %bb.f
  %i.bc = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i" ], [ %i.ah, %bb.f ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %.sroa.9.0.copyload7.pr ; 3 uses
  store ptr %i.ay, ptr %i.bd, align 8, !noalias !37418
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.az, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !37418
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.aw, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !37418
  %i.be = add nuw nsw i64 %.sroa.9.0.copyload7.pr, 1 ; 2 uses
  store i64 %i.be, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !37416, !noalias !37407
  %i.bf = icmp eq i64 %i.au, 0
  br i1 %i.bf, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val5.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !37407 ; 2 uses
  %i.bh = icmp eq i64 %.val5.i.i.i.i, 0
  br i1 %i.bh, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val6.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !37407, !nonnull !47, !noundef !47
  %i.bi = mul nuw i64 %.val5.i.i.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !37407
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.m, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.g ], [ %i.bg, %bb.h ], [ %i.bl, %bb.m ], [ %i.bl, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37419
  br label %bb.n

_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit: ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %.sroa.9.0.copyload7 = phi i64 [ %.sroa.9.0.copyload7.pr, %.noexc.i.i.i.i ], [ %i.f, %.noexc7.i.i.i.i ] ; 7 uses
  %.sroa.0.0.copyload3 = load i64, ptr %i.b, align 8, !noalias !37420 ; 5 uses
  %.sroa.6.0.copyload5 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !37420 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37421
  %i.bj = icmp ult i64 %.sroa.9.0.copyload7, 2
  br i1 %i.bj, label %bb.n, label %bb.i, !prof !37422

bb.i:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit
  %i.bk = icmp ult i64 %.sroa.9.0.copyload7, 21
  br i1 %i.bk, label %bb.k, label %bb.j, !prof !54

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h7070273b90ef25eeE(ptr noalias noundef nonnull align 8 %.sroa.6.0.copyload5, i64 noundef %.sroa.9.0.copyload7, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.n unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h3a6a551767bf2549E(ptr noalias noundef nonnull align 8 %.sroa.6.0.copyload5, i64 noundef %.sroa.9.0.copyload7)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = icmp eq i64 %.sroa.0.0.copyload3, 0
  br i1 %i.bm, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = mul nuw i64 %.sroa.0.0.copyload3, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload5) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload5, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #67
  br label %common.resume

bb.n:                                             ; preds = %bb.k, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26, %bb.j
  %.sroa.0.025 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread ], [ %.sroa.0.0.copyload3, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit ], [ %.sroa.0.0.copyload328, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26 ], [ %.sroa.0.0.copyload3, %bb.k ], [ %.sroa.0.0.copyload3, %bb.j ]
  %.sroa.6.024 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread ], [ %.sroa.6.0.copyload5, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit ], [ %.sroa.6.0.copyload529, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26 ], [ %.sroa.6.0.copyload5, %bb.k ], [ %.sroa.6.0.copyload5, %bb.j ]
  %.sroa.9.023 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread ], [ %.sroa.9.0.copyload7, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit ], [ 1, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26 ], [ %.sroa.9.0.copyload7, %bb.k ], [ %.sroa.9.0.copyload7, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37421
  store i64 %.sroa.0.025, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.024, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.023, ptr %.sroa.9.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile21default_lockfile_path17h88d719ea39017049E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !37423 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !47, !noundef !47
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @857, i64 noundef 15)
  store i64 -9223372036854775788, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(400) %2) unnamed_addr #0 !guid !37424 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !47, !noundef !47
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !47
  tail call void @_ZN19nickel_lang_package8snapshot8Snapshot3new17hf75c31090d39eaacE(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN19nickel_lang_package8manifest12ManifestFile23is_lock_file_up_to_date14up_to_date_rec17hef1aed4889e199a4E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(200) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !37505 {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37506)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !37506, !noundef !47 ; 2 uses
  %.sink1.i.sroa.gep39 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !37506, !nonnull !47, !noundef !47 ; 5 uses
  %.val13.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !37507
  %i.i = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16            ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val15 = load ptr, ptr %i.l, align 8
  %.val15.fr = freeze ptr %.val15                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val16 = load i64, ptr %i.m, align 8
  %.not.i = icmp eq ptr %.val15.fr, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not13.i.i.us = icmp eq i16 %i.j, 0
  br i1 %.not13.i.i.us, label %.lr.ph.i.i.us, label %.loopexit.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.split.us, %.lr.ph.i.i.us
  %i.t = phi ptr [ %i.x, %.lr.ph.i.i.us ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.u = phi ptr [ %i.w, %.lr.ph.i.i.us ], [ %i.h, %.lr.ph.split.us ]
  %.val911.i.i.us = load <16 x i8>, ptr %i.t, align 16, !noalias !37508
  %i.v = icmp sgt <16 x i8> %.val911.i.i.us, splat (i8 -1)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -3072 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.cast.i.i.us = bitcast <16 x i1> %i.v to i16   ; 2 uses
  %.not.i.i.us = icmp eq i16 %.cast.i.i.us, 0
  br i1 %.not.i.i.us, label %.lr.ph.i.i.us, label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph.i.i.us, %.lr.ph.split.us
  %.sroa.0.1.us = phi ptr [ %i.h, %.lr.ph.split.us ], [ %i.w, %.lr.ph.i.i.us ]
  %.lcssa.i.i.us = phi i16 [ %i.j, %.lr.ph.split.us ], [ %.cast.i.i.us, %.lr.ph.i.i.us ]
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.us, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [192 x i8], ptr %.sroa.0.1.us, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -192
  %i.ad = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ac) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  %i.ag = tail call noundef align 8 dereferenceable_or_null(216) ptr @_ZN19nickel_lang_package4lock8LockFile10dependency17h97393f12400a1c49E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(200) %5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.af)
  %.not10.us = icmp eq ptr %i.ag, null
  br i1 %.not10.us, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread", label %"._ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread.loopexit67_crit_edge109.split.us"

"._ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread.loopexit67_crit_edge109.split.us": ; preds = %.loopexit.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37509)
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread"

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.sroa.0.0108 = phi ptr [ %.sroa.0.1, %bb.k ], [ %i.h, %.lr.ph ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4core4iter6traits8iterator8Iterator7collect17hb60408b00d7d796dE:bb.a
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #75
          to label %bb.v unwind label %bb.u, !noalias !69807

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !69807
  store ptr %.val.i.i.i.i, ptr %i.e, align 8, !noalias !69807
  %i.aa = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ab = ptrtoint ptr %i.h to i64
  %i.ac = sub nuw i64 %i.aa, %i.ab
  %i.ad = udiv exact i64 %i.ac, 72
  %i.ae = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 3)
  %.sroa.0.0.i8.i.i.i = add nuw nsw i64 %i.ae, 1  ; 2 uses
  %i.af = shl nuw nsw i64 %.sroa.0.0.i8.i.i.i, 3  ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !69809
  %i.ag = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, 9) 8) #67, !noalias !69809 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc.i.i.i unwind label %bb.h, !noalias !69807

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.ag, align 8, !noalias !69807
  store i64 %.sroa.0.0.i8.i.i.i, ptr %i.f, align 8, !noalias !69807
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !69807
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !69807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !69807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69811)
  %i.ai = icmp eq ptr %i.h, %2
  br i1 %i.ai, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h02679992f9958953E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i.i.i.i"
  %i.aj = phi ptr [ %i.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i.i.i.i" ], [ %i.ag, %bb.j ]
  %i.ak = phi i64 [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i.i.i.i" ], [ 1, %bb.j ] ; 5 uses
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %i.al, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i.i.i.i" ], [ %i.h, %bb.j ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 72 ; 3 uses
  %i.am = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !69812, !noundef !47 ; 6 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.k, !prof !50

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.ao = and i64 %i.an, 3
  %..i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 2)
  switch i64 %..i.i.i.i.i.i.i.i, label %bb.p [
    i64 2, label %bb.l
    i64 0, label %bb.m
  ], !prof !57

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc9.i.i.i unwind label %bb.t, !noalias !69812

.noexc9.i.i.i:                                    ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %.val.i.i.i.i.i.i, align 8, !noalias !69812, !noundef !47 ; 3 uses
  %i.aq = and i64 %i.ap, 72057594037927935        ; 3 uses
  %i.ar = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  %i.at = and i64 %i.ap, 1080863910568919040
  %i.au = icmp ult i64 %i.ap, 864691128455135232
  tail call void @llvm.assume(i1 %i.au)
  %i.av = or i64 %i.as, %i.at
  store i64 %i.av, ptr %.val.i.i.i.i.i.i, align 8, !noalias !69812
  %i.aw = icmp eq i64 %i.aq, 72057594037927935
  br i1 %i.aw, label %bb.n, label %bb.p, !prof !50

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69812
  store ptr @2427, ptr %i.b, align 8, !noalias !69812
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ax, align 8, !noalias !69812
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ay, align 8, !noalias !69812
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8, !noalias !69812
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ba, align 8, !noalias !69812
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc10.i.i.i unwind label %bb.t, !noalias !69812

.noexc10.i.i.i:                                   ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @462, i64 noundef 90, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #73
          to label %.noexc11.i.i.i unwind label %bb.t, !noalias !69812

.noexc11.i.i.i:                                   ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69813
  store ptr %.val.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !69813
  %i.bb = icmp samesign ult i64 %i.ak, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = load i64, ptr %i.f, align 8, !range !49, !alias.scope !69814, !noalias !69807, !noundef !47
  %i.bd = icmp eq i64 %i.ak, %i.bc
  br i1 %i.bd, label %bb.r, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i_crit_edge.i.i.i", %bb.p
  %i.be = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i_crit_edge.i.i.i" ], [ %i.aj, %bb.p ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ak
  store ptr %.val.i.i.i.i.i.i, ptr %i.bf, align 8, !noalias !69813
  %i.bg = add nuw nsw i64 %i.ak, 1                ; 2 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !69814, !noalias !69807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69813
  %i.bh = icmp eq ptr %i.al, %2
  br i1 %i.bh, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h02679992f9958953E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

bb.q:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #75
          to label %.body.i.i.i unwind label %bb.s, !noalias !69813

bb.r:                                             ; preds = %bb.p
  %i.bj = ptrtoint ptr %i.al to i64
  %i.bk = sub nuw i64 %i.aa, %i.bj
  %i.bl = udiv exact i64 %i.bk, 72
  %i.bm = add nuw nsw i64 %i.bl, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ak, i64 noundef range(i64 1, 0) %i.bm, i64 noundef 8, i64 noundef 8)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i_crit_edge.i.i.i" unwind label %bb.q, !noalias !69807

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i_crit_edge.i.i.i": ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !69814, !noalias !69807
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i.i.i.i"

bb.s:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !69813
  unreachable

bb.t:                                             ; preds = %bb.o, %bb.n, %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.t, %bb.q
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bo, %bb.t ], [ %i.bi, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h057f03c841a62efcE"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #75
          to label %bb.v unwind label %bb.u, !noalias !69807

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h02679992f9958953E.exit.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h586c53e55ca8cf8dE.exit.i.i.i.i.i", %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h3a39224ff2483946E.exit"

bb.u:                                             ; preds = %.body.i.i.i, %bb.h
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !69807
  unreachable

bb.v:                                             ; preds = %.body.i.i.i, %bb.h
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.z, %bb.h ]
  resume { ptr, i32 } %.pn.i.i.i

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h3a39224ff2483946E.exit": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hab2fb2753318aed6E.exit.i.i.i", %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h02679992f9958953E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !69807
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hd419fd93bca0c49bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !69909 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.7.sroa.5.i.i.i.i.i = alloca [32 x i8], align 8 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.7.sroa.5.i.i.i = alloca [32 x i8], align 8 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.71.0.copyload = load i64, ptr %.sroa.71.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69912)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69913
  %i.d = icmp eq i64 %.sroa.71.0.copyload, 0
  br i1 %i.d, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.thread.i.i.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %.sroa.71.0.copyload, -1         ; 3 uses
  %i.f = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.f, label %bb.c, label %.critedge.i.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i1.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i1.i, label %bb.d, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i"

bb.d:                                             ; preds = %bb.c
  %i.g = inttoptr i64 %.sroa.5.0.copyload to ptr  ; 3 uses
  %i.h = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.h, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %xtraiter = and i64 %.sroa.6.0.copyload, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.sroa.012.015.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.prol = phi i64 [ %i.j, %.lr.ph.i.i.i.prol ], [ %.sroa.6.0.copyload, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.prol, i64 3976
  %i.j = add i64 %.sroa.011.014.i.i.i.prol, -1    ; 2 uses
  %.sroa.012.0.i.i.i.prol = load ptr, ptr %i.i, align 8, !noalias !69914, !nonnull !47, !noundef !47 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !69830

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.012.0.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.012.015.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.011.014.i.i.i.unr = phi i64 [ %.sroa.6.0.copyload, %.lr.ph.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.prol ]
  %i.k = icmp ult i64 %.sroa.6.0.copyload, 8
  br i1 %i.k, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.012.015.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.7, %.lr.ph.i.i.i ], [ %.sroa.012.015.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i ], [ %.sroa.011.014.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i, i64 3976
  %.sroa.012.0.i.i.i = load ptr, ptr %i.l, align 8, !noalias !69914, !nonnull !47, !noundef !47
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 3976
  %.sroa.012.0.i.i.i.1 = load ptr, ptr %i.m, align 8, !noalias !69914, !nonnull !47, !noundef !47
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.1, i64 3976
  %.sroa.012.0.i.i.i.2 = load ptr, ptr %i.n, align 8, !noalias !69914, !nonnull !47, !noundef !47
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.2, i64 3976
  %.sroa.012.0.i.i.i.3 = load ptr, ptr %i.o, align 8, !noalias !69914, !nonnull !47, !noundef !47
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.3, i64 3976
  %.sroa.012.0.i.i.i.4 = load ptr, ptr %i.p, align 8, !noalias !69914, !nonnull !47, !noundef !47
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.4, i64 3976
  %.sroa.012.0.i.i.i.5 = load ptr, ptr %i.q, align 8, !noalias !69914, !nonnull !47, !noundef !47
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.5, i64 3976
  %.sroa.012.0.i.i.i.6 = load ptr, ptr %i.r, align 8, !noalias !69914, !nonnull !47, !noundef !47
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.6, i64 3976
  %i.t = add i64 %.sroa.011.014.i.i.i, -8         ; 2 uses
  %.sroa.012.0.i.i.i.7 = load ptr, ptr %i.s, align 8, !noalias !69914, !nonnull !47, !noundef !47 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i", label %.lr.ph.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i": ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.d, %bb.c
  %.sroa.37.0.copyload.i.i.i = phi i64 [ %.sroa.6.0.copyload, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i = phi ptr [ %.sroa.4.0.copyload, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.012.0.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.7, %.lr.ph.i.i.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i, i64 3970
  %i.w = load i16, ptr %i.v, align 2, !noalias !69915, !noundef !47
  %i.x = zext i16 %i.w to i64
  %i.y = icmp ult i64 %.sroa.37.0.copyload.i.i.i, %i.x
  br i1 %i.y, label %bb.f, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i", %bb.e
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %.sroa.05.0.copyload.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.ac, %bb.e ], [ %.sroa.26.0.copyload.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i" ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 528
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !69916, !noundef !47 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.e

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.e
  %i.ab = zext i16 %i.ae to i64
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = add i64 %.sroa.5.037.i.i.i.i.i, 1       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 3968
  %i.ae = load i16, ptr %i.ad, align 8, !noalias !69916 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 3970
  %i.ag = load i16, ptr %i.af, align 2, !noalias !69915, !noundef !47
  %i.ah = icmp ult i16 %i.ae, %i.ag
  br i1 %i.ah, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i" ], [ %i.ab, %._crit_edge.loopexit.i.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i" ], [ %i.ac, %._crit_edge.loopexit.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i" ], [ %i.aa, %._crit_edge.loopexit.i.i.i.i.i ] ; 3 uses
  %i.ai = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i, 0
  %i.aj = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i, 1 ; 2 uses
  br i1 %i.ai, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i, i64 3976
  %i.al = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.al), !noalias !69917
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %xtraiter78 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i, 7 ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.an, %.prol.preheader ], [ %i.am, %bb.g ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i, %bb.g ]
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.prol.preheader ], [ 0, %bb.g ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !69918, !nonnull !47, !noundef !47 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 3976 ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !69844

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.am, %bb.g ], [ %i.an, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i, %bb.g ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ao = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i, 8
  br i1 %i.ao, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.ax, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !69918, !nonnull !47, !noundef !47
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 3976
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.ap, align 8, !noalias !69918, !nonnull !47, !noundef !47
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 3976
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.aq, align 8, !noalias !69918, !nonnull !47, !noundef !47
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 3976
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.ar, align 8, !noalias !69918, !nonnull !47, !noundef !47
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 3976
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.as, align 8, !noalias !69918, !nonnull !47, !noundef !47
  %i.at = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 3976
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.at, align 8, !noalias !69918, !nonnull !47, !noundef !47
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 3976
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.au, align 8, !noalias !69918, !nonnull !47, !noundef !47
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 3976
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.av, align 8, !noalias !69918, !nonnull !47, !noundef !47 ; 2 uses
  %i.aw = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 3976
  br i1 %i.aw, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i", label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1353) #73
          to label %.noexc.i.i2.i unwind label %bb.i, !noalias !69919

.noexc.i.i2.i:                                    ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !69917
  unreachable

.critedge.i.i:                                    ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #73, !noalias !69920
  unreachable

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i": ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.aj, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i, %bb.f ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.az = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.az), !noalias !69917
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69921
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69923)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !69923, !noalias !69921, !noundef !47
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bf = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !69923, !noalias !69921
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15), !noalias !69921
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !69922, !noalias !69921
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.bd, ptr %i.bg, align 8, !alias.scope !69922, !noalias !69921
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.b, align 8, !noalias !69924 ; 4 uses
  %.sroa.7.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i, align 8, !noalias !69924 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i, i64 32, i1 false), !noalias !69913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69921
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.thread.i.i.i", label %bb.l

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.thread.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i", %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !69925
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bh, align 8, !alias.scope !69925
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bi, align 8, !alias.scope !69925
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he6f1387a19f0fb10E.exit"

bb.j:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, 0
  br i1 %i.bk, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit.i.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !69926
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit.i.i.i"

bb.l:                                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i"
  %i.bl = call i64 @llvm.uadd.sat.i64(i64 %i.e, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.bl, i64 4) ; 3 uses
  %i.bm = mul i64 %.sroa.0.0.i.i.i.i, 48          ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.bl, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i, label %bb.n, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !59

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !69927
  %i.bo = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bm, i64 noundef range(i64 1, 9) 8) #67, !noalias !69927 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.m ], [ 0, %bb.l ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc.i.i.i unwind label %bb.j, !noalias !69913

.noexc.i.i.i:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.bo, %bb.m ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.m ] ; 2 uses
  %i.bq = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.bq)
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.i.i.i, i64 32, i1 false), !noalias !69913
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !69913
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !69913
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.c, align 8, !noalias !69913
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !69913
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !69913
  call void @llvm.experimental.noalias.scope.decl(metadata !69928)
  call void @llvm.experimental.noalias.scope.decl(metadata !69929)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i.i.i)
  %i.br = icmp eq i64 %i.e, 0
  br i1 %i.br, label %.noexc5.thread.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i": ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i, i64 3970
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !69930, !noundef !47
  %i.bu = zext i16 %i.bt to i64
  %i.bv = icmp samesign ult i64 %.sroa.7.0.i.i.i.i, %i.bu
  br i1 %i.bv, label %.thread.i, label %.lr.ph.i.i.i.i23.i.i.i

.thread.i:                                        ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i"
  %i.bw = add nuw nsw i64 %.sroa.7.0.i.i.i.i, 1
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i"

.lr.ph.i.i.i.i23.i.i.i:                           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i", %bb.p
  %.sroa.0.038.i.i.i.i24.i.i.i = phi ptr [ %i.by, %bb.p ], [ %.sroa.07.0.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i25.i.i.i = phi i64 [ %i.bz, %bb.p ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i" ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i24.i.i.i, i64 528
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !69931, !noundef !47 ; 8 uses
  %.not.i.i.i.i.i26.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i26.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i23.i.i.i
  %i.bz = add i64 %.sroa.5.037.i.i.i.i25.i.i.i, 1 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i24.i.i.i, i64 3968
  %i.cb = load i16, ptr %i.ca, align 8, !noalias !69931 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 3970
  %i.cd = load i16, ptr %i.cc, align 2, !noalias !69930, !noundef !47
  %i.ce = icmp ult i16 %i.cb, %i.cd
  br i1 %i.ce, label %bb.q, label %.lr.ph.i.i.i.i23.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.cf = zext i16 %i.cb to i64                   ; 4 uses
  %i.cg = icmp eq i64 %i.bz, 0
  %i.ch = add nuw nsw i64 %i.cf, 1                ; 2 uses
  br i1 %i.cg, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 3976
  %i.cj = icmp ult i16 %i.cb, 11
  call void @llvm.assume(i1 %i.cj), !noalias !69932
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch ; 2 uses
  %xtraiter85 = and i64 %i.bz, 7                  ; 2 uses
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.prol.loopexit82, label %.prol.preheader81

.prol.preheader81:                                ; preds = %bb.r, %.prol.preheader81
  %.pn30.in.i.i.i.i31.i.i.i.prol = phi ptr [ %i.cl, %.prol.preheader81 ], [ %i.ck, %bb.r ]
  %.pn28.in.i.i.i.i32.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i33.i.i.i.prol, %.prol.preheader81 ], [ %i.bz, %bb.r ]
  %prol.iter87 = phi i64 [ %prol.iter87.next, %.prol.preheader81 ], [ 0, %bb.r ]
  %.pn28.i.i.i.i33.i.i.i.prol = add i64 %.pn28.in.i.i.i.i32.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i34.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i31.i.i.i.prol, align 8, !noalias !69933, !nonnull !47, !noundef !47 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.prol, i64 3976 ; 2 uses
  %prol.iter87.next = add i64 %prol.iter87, 1     ; 2 uses
  %prol.iter87.cmp.not = icmp eq i64 %prol.iter87.next, %xtraiter85
  br i1 %prol.iter87.cmp.not, label %.prol.loopexit82, label %.prol.preheader81, !llvm.loop !69880

.prol.loopexit82:                                 ; preds = %.prol.preheader81, %bb.r
  %.pn30.i.i.i.i34.i.i.i.lcssa.unr = phi ptr [ poison, %bb.r ], [ %.pn30.i.i.i.i34.i.i.i.prol, %.prol.preheader81 ]
  %.pn30.in.i.i.i.i31.i.i.i.unr = phi ptr [ %i.ck, %bb.r ], [ %i.cl, %.prol.preheader81 ]
  %.pn28.in.i.i.i.i32.i.i.i.unr = phi i64 [ %i.bz, %bb.r ], [ %.pn28.i.i.i.i33.i.i.i.prol, %.prol.preheader81 ]
  %i.cm = icmp ult i64 %.sroa.5.037.i.i.i.i25.i.i.i, 7
  br i1 %i.cm, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i", label %.new83

.new83:                                           ; preds = %.prol.loopexit82, %.new83
  %.pn30.in.i.i.i.i31.i.i.i = phi ptr [ %i.cv, %.new83 ], [ %.pn30.in.i.i.i.i31.i.i.i.unr, %.prol.loopexit82 ]
  %.pn28.in.i.i.i.i32.i.i.i = phi i64 [ %.pn28.i.i.i.i33.i.i.i.7, %.new83 ], [ %.pn28.in.i.i.i.i32.i.i.i.unr, %.prol.loopexit82 ]
  %.pn30.i.i.i.i34.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i31.i.i.i, align 8, !noalias !69933, !nonnull !47, !noundef !47
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i, i64 3976
  %.pn30.i.i.i.i34.i.i.i.1 = load ptr, ptr %i.cn, align 8, !noalias !69933, !nonnull !47, !noundef !47
  %i.co = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.1, i64 3976
  %.pn30.i.i.i.i34.i.i.i.2 = load ptr, ptr %i.co, align 8, !noalias !69933, !nonnull !47, !noundef !47
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.2, i64 3976
  %.pn30.i.i.i.i34.i.i.i.3 = load ptr, ptr %i.cp, align 8, !noalias !69933, !nonnull !47, !noundef !47
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.3, i64 3976
  %.pn30.i.i.i.i34.i.i.i.4 = load ptr, ptr %i.cq, align 8, !noalias !69933, !nonnull !47, !noundef !47
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.4, i64 3976
  %.pn30.i.i.i.i34.i.i.i.5 = load ptr, ptr %i.cr, align 8, !noalias !69933, !nonnull !47, !noundef !47
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.5, i64 3976
  %.pn30.i.i.i.i34.i.i.i.6 = load ptr, ptr %i.cs, align 8, !noalias !69933, !nonnull !47, !noundef !47
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.6, i64 3976
  %.pn28.i.i.i.i33.i.i.i.7 = add i64 %.pn28.in.i.i.i.i32.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i34.i.i.i.7 = load ptr, ptr %i.ct, align 8, !noalias !69933, !nonnull !47, !noundef !47 ; 2 uses
  %i.cu = icmp eq i64 %.pn28.i.i.i.i33.i.i.i.7, 0
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.7, i64 3976
  br i1 %i.cu, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i", label %.new83

bb.s:                                             ; preds = %.lr.ph.i.i.i.i23.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1353) #73
          to label %.noexc.i.i40.i.i.i unwind label %bb.t, !noalias !69934

.noexc.i.i40.i.i.i:                               ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !69932
  unreachable

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i": ; preds = %.prol.loopexit82, %.new83, %bb.q, %.thread.i
  %.sroa.0.0.ph.i.i.i30.i.i18.i = phi ptr [ %i.by, %bb.q ], [ %.sroa.07.0.i.i.i.i, %.thread.i ], [ %i.by, %.new83 ], [ %i.by, %.prol.loopexit82 ]
  %.sroa.6.sroa.4.0.ph.i.i.i28.i.i17.i = phi i64 [ %i.cf, %bb.q ], [ %.sroa.7.0.i.i.i.i, %.thread.i ], [ %i.cf, %.new83 ], [ %i.cf, %.prol.loopexit82 ] ; 2 uses
  %.sroa.7.0.i.i.i36.i.i.i = phi i64 [ %i.ch, %bb.q ], [ %i.bw, %.thread.i ], [ 0, %.new83 ], [ 0, %.prol.loopexit82 ]
  %.sroa.07.0.i.i.i37.i.i.i = phi ptr [ %i.by, %bb.q ], [ %.sroa.07.0.i.i.i.i, %.thread.i ], [ %.pn30.i.i.i.i34.i.i.i.lcssa.unr, %.prol.loopexit82 ], [ %.pn30.i.i.i.i34.i.i.i.7, %.new83 ]
  %i.cx = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i28.i.i17.i, 11
  call void @llvm.assume(i1 %i.cx), !noalias !69932
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.i.i.i30.i.i18.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i28.i.i17.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i.i.i"

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i.i.i": ; preds = %.noexc7.i.i.i, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i"
  %i.db = phi ptr [ %.sroa.10.0.i.i.i.i, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %i.dk, %.noexc7.i.i.i ]
  %i.dc = phi i64 [ 1, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %i.dm, %.noexc7.i.i.i ] ; 5 uses
  %.sroa.2515.1.in.i.i.i = phi i64 [ %i.e, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %.sroa.2515.1.i.i.i, %.noexc7.i.i.i ]
  %.sroa.512.1.i.i.i = phi ptr [ %.sroa.07.0.i.i.i37.i.i.i, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %.sroa.07.0.i.i.i.i.i.i, %.noexc7.i.i.i ] ; 5 uses
  %.sroa.19.1.i.i.i = phi i64 [ %.sroa.7.0.i.i.i36.i.i.i, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %.sroa.7.0.i.i.i.i.i.i, %.noexc7.i.i.i ] ; 3 uses
  %i.dd = phi ptr [ %i.cy, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %i.eu, %.noexc7.i.i.i ] ; 3 uses
  %.sroa.2515.1.i.i.i = add i64 %.sroa.2515.1.in.i.i.i, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69935
  call void @llvm.experimental.noalias.scope.decl(metadata !69936)
  call void @llvm.experimental.noalias.scope.decl(metadata !69937)
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load <2 x i64>, ptr %i.de, align 8, !alias.scope !69937, !noalias !69935
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !69937, !noalias !69935, !noundef !47
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !69935

.noexc6.i.i.i:                                    ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i.i.i"
  store <2 x i64> %i.df, ptr %i.cz, align 8, !alias.scope !69936, !noalias !69935
  store i64 %i.dh, ptr %i.da, align 8, !alias.scope !69936, !noalias !69935
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !69938 ; 4 uses
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !69938 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i, i64 32, i1 false), !noalias !69939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69935
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %.noexc5.thread.i.i.i, label %bb.u

bb.u:                                             ; preds = %.noexc6.i.i.i
  %2 = icmp samesign ult i64 %i.dc, 192153584101141163
  call void @llvm.assume(i1 %2)
  %i.di = load i64, ptr %i.c, align 8, !range !49, !alias.scope !69940, !noalias !69913, !noundef !47
  %i.dj = icmp eq i64 %i.dc, %i.di
  br i1 %i.dj, label %bb.ac, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i_crit_edge.i.i.i", %bb.u
  %i.dk = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i_crit_edge.i.i.i" ], [ %i.db, %bb.u ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [48 x i8], ptr %i.dk, i64 %i.dc ; 3 uses
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.i.i.i.i.i, i64 32, i1 false), !noalias !69939
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.dl, align 8, !noalias !69939
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !noalias !69939
  %i.dm = add nuw nsw i64 %i.dc, 1                ; 2 uses
  store i64 %i.dm, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !69940, !noalias !69913
  %i.dn = icmp eq i64 %.sroa.2515.1.i.i.i, 0
  br i1 %i.dn, label %.noexc5.thread.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.512.1.i.i.i) ]
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.512.1.i.i.i, i64 3970
  %i.dp = load i16, ptr %i.do, align 2, !noalias !69941, !noundef !47
  %i.dq = zext i16 %i.dp to i64
  %i.dr = icmp ult i64 %.sroa.19.1.i.i.i, %i.dq
  br i1 %i.dr, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i"
  %i.ds = add nuw nsw i64 %.sroa.19.1.i.i.i, 1
  br label %.noexc7.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i", %bb.v
  %.sroa.0.038.i.i.i.i.i.i.i = phi ptr [ %i.du, %bb.v ], [ %.sroa.512.1.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i = phi i64 [ %i.dv, %bb.v ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i" ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i, i64 528
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !69942, !noundef !47 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dv = add i64 %.sroa.5.037.i.i.i.i.i.i.i, 1   ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i, i64 3968
  %i.dx = load i16, ptr %i.dw, align 8, !noalias !69942 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 3970
  %i.dz = load i16, ptr %i.dy, align 2, !noalias !69941, !noundef !47
  %i.ea = icmp ult i16 %i.dx, %i.dz
  br i1 %i.ea, label %bb.w, label %.lr.ph.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.eb = zext i16 %i.dx to i64                   ; 4 uses
  %i.ec = icmp eq i64 %i.dv, 0
  %i.ed = add nuw nsw i64 %i.eb, 1                ; 2 uses
  br i1 %i.ec, label %.noexc7.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 3976
  %i.ef = icmp ult i16 %i.dx, 11
  call void @llvm.assume(i1 %i.ef), !noalias !69932
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ed ; 2 uses
  %xtraiter92 = and i64 %i.dv, 7                  ; 2 uses
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %.prol.loopexit89, label %.prol.preheader88

.prol.preheader88:                                ; preds = %bb.x, %.prol.preheader88
  %.pn30.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.eh, %.prol.preheader88 ], [ %i.eg, %bb.x ]
  %.pn28.in.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.prol, %.prol.preheader88 ], [ %i.dv, %bb.x ]
  %prol.iter94 = phi i64 [ %prol.iter94.next, %.prol.preheader88 ], [ 0, %bb.x ]
  %.pn28.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.prol, align 8, !noalias !69943, !nonnull !47, !noundef !47 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.prol, i64 3976 ; 2 uses
  %prol.iter94.next = add i64 %prol.iter94, 1     ; 2 uses
  %prol.iter94.cmp.not = icmp eq i64 %prol.iter94.next, %xtraiter92
  br i1 %prol.iter94.cmp.not, label %.prol.loopexit89, label %.prol.preheader88, !llvm.loop !69902

.prol.loopexit89:                                 ; preds = %.prol.preheader88, %bb.x
  %.pn30.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.x ], [ %.pn30.i.i.i.i.i.i.i.prol, %.prol.preheader88 ]
  %.pn30.in.i.i.i.i.i.i.i.unr = phi ptr [ %i.eg, %bb.x ], [ %i.eh, %.prol.preheader88 ]
  %.pn28.in.i.i.i.i.i.i.i.unr = phi i64 [ %i.dv, %bb.x ], [ %.pn28.i.i.i.i.i.i.i.prol, %.prol.preheader88 ]
  %i.ei = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i, 7
  br i1 %i.ei, label %.noexc7.i.i.i, label %.new90

.new90:                                           ; preds = %.prol.loopexit89, %.new90
  %.pn30.in.i.i.i.i.i.i.i = phi ptr [ %i.er, %.new90 ], [ %.pn30.in.i.i.i.i.i.i.i.unr, %.prol.loopexit89 ]
  %.pn28.in.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.7, %.new90 ], [ %.pn28.in.i.i.i.i.i.i.i.unr, %.prol.loopexit89 ]
  %.pn30.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i, align 8, !noalias !69943, !nonnull !47, !noundef !47
  %i.ej = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i, i64 3976
  %.pn30.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ej, align 8, !noalias !69943, !nonnull !47, !noundef !47
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.1, i64 3976
  %.pn30.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ek, align 8, !noalias !69943, !nonnull !47, !noundef !47
  %i.el = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.2, i64 3976
  %.pn30.i.i.i.i.i.i.i.3 = load ptr, ptr %i.el, align 8, !noalias !69943, !nonnull !47, !noundef !47
  %i.em = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.3, i64 3976
  %.pn30.i.i.i.i.i.i.i.4 = load ptr, ptr %i.em, align 8, !noalias !69943, !nonnull !47, !noundef !47
  %i.en = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.4, i64 3976
  %.pn30.i.i.i.i.i.i.i.5 = load ptr, ptr %i.en, align 8, !noalias !69943, !nonnull !47, !noundef !47
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.5, i64 3976
  %.pn30.i.i.i.i.i.i.i.6 = load ptr, ptr %i.eo, align 8, !noalias !69943, !nonnull !47, !noundef !47
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.6, i64 3976
  %.pn28.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ep, align 8, !noalias !69943, !nonnull !47, !noundef !47 ; 2 uses
  %i.eq = icmp eq i64 %.pn28.i.i.i.i.i.i.i.7, 0
  %i.er = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.7, i64 3976
  br i1 %i.eq, label %.noexc7.i.i.i, label %.new90

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1353) #73
          to label %.noexc.i.i.i.i.i unwind label %bb.z, !noalias !69944

.noexc.i.i.i.i.i:                                 ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !69932
  unreachable

.noexc7.i.i.i:                                    ; preds = %.prol.loopexit89, %.new90, %bb.w, %.thread.i.i.i
  %.sroa.0.0.ph.i.i.i45.i.i.i = phi ptr [ %i.du, %bb.w ], [ %.sroa.512.1.i.i.i, %.thread.i.i.i ], [ %i.du, %.new90 ], [ %i.du, %.prol.loopexit89 ]
  %.sroa.6.sroa.4.0.ph.i.i.i44.i.i.i = phi i64 [ %i.eb, %bb.w ], [ %.sroa.19.1.i.i.i, %.thread.i.i.i ], [ %i.eb, %.new90 ], [ %i.eb, %.prol.loopexit89 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i = phi i64 [ %i.ed, %bb.w ], [ %i.ds, %.thread.i.i.i ], [ 0, %.new90 ], [ 0, %.prol.loopexit89 ]
  %.sroa.07.0.i.i.i.i.i.i = phi ptr [ %i.du, %bb.w ], [ %.sroa.512.1.i.i.i, %.thread.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit89 ], [ %.pn30.i.i.i.i.i.i.i.7, %.new90 ]
  %i.et = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i44.i.i.i, 11
  call void @llvm.assume(i1 %i.et), !noalias !69932
  %i.eu = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.i.i.i45.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i44.i.i.i
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i.i.i"

bb.aa:                                            ; preds = %bb.ac
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %i.ew, label %.body.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !69945
  br label %.body.i.i.i

bb.ac:                                            ; preds = %bb.u
  %i.ex = call i64 @llvm.uadd.sat.i64(i64 %.sroa.2515.1.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.dc, i64 noundef range(i64 1, 0) %i.ex, i64 noundef 8, i64 noundef 48)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i_crit_edge.i.i.i" unwind label %bb.aa, !noalias !69946

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i_crit_edge.i.i.i": ; preds = %bb.ac
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !69940, !noalias !69913
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i.i.i"
  %lpad.loopexit.split-lp11.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i, %bb.ab, %bb.aa
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ev, %bb.aa ], [ %i.ev, %bb.ab ], [ %lpad.loopexit.split-lp11.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i ]
  call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..version..SemVer$GT$$GT$17h406a946b2d394ff7E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #75, !noalias !69913
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit.i.i.i"

.noexc5.thread.i.i.i:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i.i.i.i", %.noexc6.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !69947
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he6f1387a19f0fb10E.exit"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit.i.i.i": ; preds = %.body.i.i.i, %bb.k, %bb.j
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.bj, %bb.j ], [ %i.bj, %bb.k ]
  resume { ptr, i32 } %.pn.i.i.i

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he6f1387a19f0fb10E.exit": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.thread.i.i.i", %.noexc5.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69913
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hd7bec5b371300a0bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !69959 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  %i.e = alloca [176 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !69960
  store i64 0, ptr %i.e, align 8, !noalias !69960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69961)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !69962
  store ptr %1, ptr %i.d, align 16, !noalias !69962
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.f, align 8, !noalias !69962
  %i.g = ptrtoint ptr %2 to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.i, 168
  br i1 %.not.i.i.i, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h1e5f8771694960adE.exit.i.i", label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %.lr.ph.i.i.preheader

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h1e5f8771694960adE.exit.i.i": ; preds = %bb.a
  %i.k = udiv exact i64 %i.i, 56
end_hunk_8
