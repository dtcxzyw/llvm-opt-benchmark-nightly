Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ftl-39e430733dc78ed0.ftl.d589b5f9156e1cfc-cgu.13?download=true
inline.NumInlined: 325
inline.NumDeleted: 221
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc64b99bd274f3f85E":bb.a
bb.a:
  tail call void @"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h554ce706cc87e61eE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  switch i8 %i.a, label %bb.c [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !noundef !5
  %i.d = icmp eq i8 %i.c, 10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = add i64 %i.f, 1                          ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = add i64 %i.g, %i.i
  store i64 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8
  store i64 0, ptr %i.e, align 8
  store i8 0, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  store i64 %i.g, ptr %i.e, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h86801c9901ecca51E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbdda23e0644da74fE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h8cb068ffc287d5b7E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.o, align 1, !noalias !22, !noundef !5 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !23, !noundef !5
  %i.q = icmp eq i8 %.val16.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !23, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val16.i.1 = load i8, ptr %i.u, align 1, !noalias !22, !noundef !5 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !23, !noundef !5
  %i.w = icmp eq i8 %.val16.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !23, !noundef !5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !24
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.unr-lcssa", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.unr-lcssa": ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.unr-lcssa", %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !noalias !22, !noundef !5 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !23, !noundef !5
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.epilog-lcssa"

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !23, !noundef !5
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.epilog-lcssa"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.epilog-lcssa": ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !24
  %i.ah = add i64 %.epil.init, 1
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.epilog-lcssa", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.unr-lcssa", %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.unr-lcssa" ], [ %i.ah, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc608e4f8194ed1a7E.exit.loopexit.epilog-lcssa" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc5d2bb6173d344d6E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.a)
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %.not6.i.i, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7ac543cdec9093c0E.exit", label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.sroa.53.0.copyload, i64 %.sroa.42.0.copyload ; 2 uses
  store ptr %.sroa.5.0.copyload, ptr %i.c, align 8, !noalias !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.0.copyload, ptr %i.d, align 8, !noalias !46
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = add i64 %.sroa.42.0.copyload, 1
  br label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7ac543cdec9093c0E.exit"

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7ac543cdec9093c0E.exit": ; preds = %bb.a, %.lr.ph.i.preheader.i
  %.val3.i.i = phi i64 [ %i.e, %.lr.ph.i.preheader.i ], [ %.sroa.42.0.copyload, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.val3.i.i, ptr %.sroa.01.0.copyload, align 8, !noalias !47
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he45f61e21adc2160E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h59d5ed5bf88b4688E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %i.i, %bb.d ], [ %.sroa.6.0.copyload, %bb.b ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.j, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !58

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !59
  %i.i = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h59d5ed5bf88b4688E.exit", label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !58
  resume { ptr, i32 } %i.l

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h59d5ed5bf88b4688E.exit": ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !58
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1bd055b178f3b1caE"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !68, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h46d06333e820bbb6E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  store ptr %i.c, ptr %i.a, align 8, !noalias !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.h, align 8, !noalias !70
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !70
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !70
  call void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h880663bc82dee760E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !69, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !69, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h46d06333e820bbb6E.exit"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h46d06333e820bbb6E.exit": ; preds = %bb.a, %bb.b
  %.pn6.i.i = phi ptr [ %1, %bb.a ], [ %i.j, %bb.b ]
  %.pn4.i.i = phi ptr [ %2, %bb.a ], [ %i.l, %bb.b ]
  %.pn.i.i = insertvalue { ptr, ptr } poison, ptr %.pn6.i.i, 0
  %.merged.i.i = insertvalue { ptr, ptr } %.pn.i.i, ptr %.pn4.i.i, 1
  ret { ptr, ptr } %.merged.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h2023e3a359f364a1E"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !80, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hf1253a2d7a70fadcE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81
  store ptr %i.c, ptr %i.a, align 8, !noalias !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.h, align 8, !noalias !82
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !82
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !82
  call void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h3803b2fa14d94a66E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !81, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !81, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hf1253a2d7a70fadcE.exit"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hf1253a2d7a70fadcE.exit": ; preds = %bb.a, %bb.b
  %.pn6.i.i = phi ptr [ %1, %bb.a ], [ %i.j, %bb.b ]
  %.pn4.i.i = phi ptr [ %2, %bb.a ], [ %i.l, %bb.b ]
  %.pn.i.i = insertvalue { ptr, ptr } poison, ptr %.pn6.i.i, 0
  %.merged.i.i = insertvalue { ptr, ptr } %.pn.i.i, ptr %.pn4.i.i, 1
  ret { ptr, ptr } %.merged.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h23331b30fcb63aceE"(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hc6c9f0614dfb8199E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull align 1 %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9e2e4815e85d25caE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2, ptr noalias noundef align 8 dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 8 uses
  %.sroa.8.i.i = alloca [24 x i8], align 8        ; 8 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !110
  call void @"_ZN80_$LT$anki_io..ReadDirFiles$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc276ac1ce1db7116E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !109
  %i.i = load i64, ptr %i.g, align 8, !range !7, !noalias !110, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !112
  %.val.i.i = load ptr, ptr %1, align 8, !noalias !112, !nonnull !5, !align !8, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !111
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !114, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %.val.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !114, !nonnull !5, !noundef !5
  %i.r = getelementptr i8, ptr %.val.i.i.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !114, !noundef !5
  store ptr %.val.i.i.i.i, ptr %i.l, align 8, !noalias !111
  store i64 %.val1.i.i.i.i, ptr %i.m, align 8, !noalias !111
  store i64 -9223372036854775807, ptr %i.b, align 8, !noalias !111
  call void @"_ZN83_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$snafu..ResultExt$LT$T$C$E$GT$$GT$7context17h0ca952b9047b7d24E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !111
  %i.s = load i64, ptr %i.d, align 8, !range !9, !noalias !111, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.s, -9223372036854775808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !111
  br i1 %.not.i.i.i, label %bb.c, label %"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h2d4b537e96f2dd08E.exit.thread.i.i"

"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h2d4b537e96f2dd08E.exit.thread.i.i": ; preds = %bb.b
  %.sroa.612.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.612.0.copyload.i.i.i = load i64, ptr %.sroa.612.0..sroa_idx.i.i.i, align 8, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i.i, i64 40, i1 false), !noalias !115
  %.sroa.315.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
end_hunk_0
begin_hunk_1_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd82bbc3db63c4facE":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  store i64 %storemerge.i.i11.i, ptr %0, align 8, !alias.scope !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !157
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h578afc5396909ca4E.exit

bb.n:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.i", %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !157
  call void @"_ZN80_$LT$anki_io..ReadDirFiles$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc276ac1ce1db7116E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !156
  %i.ac = load i64, ptr %i.g, align 8, !range !7, !noalias !157, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.b, label %._crit_edge.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h578afc5396909ca4E.exit: ; preds = %._crit_edge.i, %.loopexit14.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he1f83ac46c327121E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 12 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !230
  call void @"_ZN75_$LT$std..fs..ReadDir$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha276d4588f5dede9E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !231
  %i.f = load i64, ptr %i.e, align 8, !range !7, !noalias !232, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.i.sroa.8.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.b

bb.b:                                             ; preds = %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h77c7802d4425437dE.exit.i.i", %.lr.ph.i.i
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.h, align 8, !noalias !232 ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !232 ; 3 uses
  %i.j = icmp eq ptr %.sroa.07.0.copyload.i.i, null
  br i1 %i.j, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, i64 24, i1 false), !noalias !232
  store ptr %.sroa.07.0.copyload.i.i, ptr %i.d, align 8, !noalias !234
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !234
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !236
  invoke void @_ZN3std2fs8DirEntry4path17hc12b1cbeede5a3e1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.c, %bb.f
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h03b8013dfc4fba2bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d) #20
          to label %common.resume.i.i.i.i unwind label %bb.q, !noalias !237

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN61_$LT$std..path..PathBuf$u20$as$u20$anki_io..ToUtf8PathBuf$GT$4utf817hb70a1b4592a9fa89E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !236
  %i.k = load i64, ptr %i.c, align 8, !range !9, !noalias !236, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.k, -9223372036854775808
  %.sroa.6.i.sroa.0.0.copyload4.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !236 ; 3 uses
  %.sroa.6.i.sroa.7.0.copyload7.i.i.i.i = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx6.i.i.i.i, align 8, !noalias !236 ; 3 uses
  %.sroa.6.i.sroa.8.0.copyload10.i.i.i.i = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx9.i.i.i.i, align 8, !noalias !236 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.68.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !236
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.6.i.sroa.0.0.copyload4.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !236
  %.sroa.6.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.6.i.sroa.7.0.copyload7.i.i.i.i, ptr %.sroa.6.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !236
  %.sroa.6.i.sroa.8.0..sroa.2.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.i.sroa.8.0.copyload10.i.i.i.i, ptr %.sroa.6.i.sroa.8.0..sroa.2.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !236
  store i64 %i.k, ptr %i.a, align 8, !noalias !236
  %i.l = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h00d52fdb8467d652E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !236
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !242, !noalias !233, !nonnull !5, !noundef !5
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !243
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i.i.i"

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6ab179a67c305cd7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i.i.i" unwind label %bb.i, !noalias !237

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !244, !noalias !233, !nonnull !5, !noundef !5 ; 2 uses
  %.val3.i.i.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !244, !noalias !233 ; 2 uses
  store i8 0, ptr %.val2.i.i.i.i.i.i.i, align 1, !noalias !237
  %i.q = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %common.resume.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i.i.i.i.i.i, i64 noundef 1) #21, !noalias !237
  br label %common.resume.i.i.i.i

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i.i.i": ; preds = %bb.h, %bb.g
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !244, !noalias !233, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i.i.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !244, !noalias !233 ; 2 uses
  store i8 0, ptr %.val.i.i.i.i.i.i.i, align 1, !noalias !237
  %i.r = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i.i.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i, i64 noundef 1) #21, !noalias !237
  br label %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i"

common.resume.i.i.i.i:                            ; preds = %bb.s, %bb.o, %bb.n, %bb.j, %bb.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.s ], [ %i.v, %bb.n ], [ %i.p, %bb.i ], [ %i.p, %bb.j ], [ %i.v, %bb.o ], [ %lpad.loopexit.split-lp50, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !236
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.s = load ptr, ptr %i.d, align 8, !alias.scope !249, !noalias !233, !nonnull !5, !noundef !5
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !250
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.m, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i12.i.i.i.i.i"

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6ab179a67c305cd7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i12.i.i.i.i.i" unwind label %bb.n, !noalias !237

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i15.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !251, !noalias !233, !nonnull !5, !noundef !5 ; 2 uses
  %.val3.i.i16.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !251, !noalias !233 ; 2 uses
  store i8 0, ptr %.val2.i.i15.i.i.i.i.i, align 1, !noalias !237
  %i.w = icmp eq i64 %.val3.i.i16.i.i.i.i.i, 0
  br i1 %i.w, label %common.resume.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i15.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i16.i.i.i.i.i, i64 noundef 1) #21, !noalias !237
  br label %common.resume.i.i.i.i

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i12.i.i.i.i.i": ; preds = %bb.m, %bb.l
  %.val.i.i13.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !251, !noalias !233, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i.i14.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !251, !noalias !233 ; 2 uses
  store i8 0, ptr %.val.i.i13.i.i.i.i.i, align 1, !noalias !237
  %i.x = icmp eq i64 %.val1.i.i14.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.thread.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i12.i.i.i.i.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i14.i.i.i.i.i, i64 noundef 1) #21, !noalias !237
  br label %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.thread.i.i.i.i"

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22, !noalias !237
  unreachable

"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.thread.i.i.i.i": ; preds = %bb.p, %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i12.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !233
  br label %.loopexit30.i.i

"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i": ; preds = %bb.k, %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !233
  switch i64 %.sroa.6.i.sroa.0.0.copyload4.i.i.i.i, label %.loopexit31.i.i [
    i64 -9223372036854775808, label %.loopexit30.i.i
    i64 -9223372036854775807, label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h77c7802d4425437dE.exit.i.i"
  ]

.loopexit30.i.i:                                  ; preds = %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i", %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.thread.i.i.i.i"
  %.sroa.52.014.i.i.i.i = phi ptr [ %i.l, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.thread.i.i.i.i" ], [ %.sroa.6.i.sroa.7.0.copyload7.i.i.i.i, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i" ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.014.i.i.i.i) ]
  %i.z = load ptr, ptr %3, align 8, !alias.scope !252, !noalias !253, !noundef !5
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread15.i.i", label %bb.r

bb.r:                                             ; preds = %.loopexit30.i.i
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17h1d51c478f0628b67E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
          to label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread15.i.i" unwind label %bb.s, !noalias !254

bb.s:                                             ; preds = %bb.r
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.52.014.i.i.i.i, ptr %3, align 8, !noalias !253
  br label %common.resume.i.i.i.i

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread15.i.i": ; preds = %bb.r, %.loopexit30.i.i
  store ptr %.sroa.52.014.i.i.i.i, ptr %3, align 8, !noalias !253
  br label %.loopexit31.i.i

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread.i.i": ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i) ]
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h60a0752c92ac8520E"(ptr nonnull %.sroa.2.0.copyload.i.i), !noalias !255
  br label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h77c7802d4425437dE.exit.i.i"

._crit_edge.i.i:                                  ; preds = %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h77c7802d4425437dE.exit.i.i", %bb.a
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !256
  br label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h97998976caffeecbE.exit"

.loopexit31.i.i:                                  ; preds = %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i", %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread15.i.i"
  %.sroa.7.sroa.5.0.ph.i.i = phi i64 [ undef, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread15.i.i" ], [ %.sroa.6.i.sroa.8.0.copyload10.i.i.i.i, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i" ]
  %.sroa.7.sroa.0.0.ph.i.i = phi ptr [ undef, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread15.i.i" ], [ %.sroa.6.i.sroa.7.0.copyload7.i.i.i.i, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i" ]
  %.sroa.0.0.ph.i.i = phi i64 [ -9223372036854775808, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread15.i.i" ], [ %.sroa.6.i.sroa.0.0.copyload4.i.i.i.i, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i" ]
  store i64 %.sroa.0.0.ph.i.i, ptr %0, align 8, !alias.scope !257
  %.sroa.29.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.sroa.0.0.ph.i.i, ptr %.sroa.29.0..sroa_idx.i.i, align 8, !alias.scope !257
  %.sroa.310.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.sroa.5.0.ph.i.i, ptr %.sroa.310.0..sroa_idx.i.i, align 8, !alias.scope !257
  br label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h97998976caffeecbE.exit"

"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h77c7802d4425437dE.exit.i.i": ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread.i.i", %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i"
  call void @"_ZN75_$LT$std..fs..ReadDir$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha276d4588f5dede9E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !231
  %i.ac = load i64, ptr %i.e, align 8, !range !7, !noalias !232, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.b, label %._crit_edge.i.i

"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h97998976caffeecbE.exit": ; preds = %._crit_edge.i.i, %.loopexit31.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !230
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN118_$LT$anki_io..error..FileIoSnafu$LT$__T0$C$__T1$GT$$u20$as$u20$snafu..IntoError$LT$anki_io..error..FileIoError$GT$$GT$10into_error17h08f11fc45b6d77bbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !267
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h885749719b94abe7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !7, !noalias !267, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !9, !noalias !267, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %.noexc
  %i.k = load i64, ptr %i.j, align 8, !noalias !267
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.i, i64 %i.k) #23
          to label %.noexc3 unwind label %bb.c

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h60a0752c92ac8520E"(ptr nonnull %2) #20
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.j, align 8, !noalias !267, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !267
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !268
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.p, align 8
  ret void

bb.e:                                             ; preds = %bb.c, %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$anki_io..error..FileOp$GT$17h5a82d2734a093bbeE"(ptr noalias noundef align 8 dereferenceable(24) %1) #20
          to label %bb.f unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs14read_to_string17ha3982ad945829ed6E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !5
  tail call void @_ZN3std2fs14read_to_string5inner17h084dff164cfd70a5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs14read_to_string17ha442beb239d38fa0E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_ZN3std2fs14read_to_string5inner17h084dff164cfd70a5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs14read_to_string17heaea1f682b3612f8E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_ZN3std2fs14read_to_string5inner17h084dff164cfd70a5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs4File4open17h4ab240f60269a3beE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 4
  call void @_ZN3std2fs11OpenOptions5_open17h95d1fb01334d5ef6E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs4File6create17ha72fe1792d35edc5E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 4
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !5
  call void @_ZN3std2fs11OpenOptions5_open17h95d1fb01334d5ef6E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs4read17h298897f5f6bb9475E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !5
  tail call void @_ZN3std2fs4read5inner17h1747fdee54479d58E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_ZN3std2fs5write17h1ae7c5d9e715a5b4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = invoke noundef ptr @_ZN3std2fs5write5inner17hef6adfd32e013394E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val3, i64 noundef %.val4)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
