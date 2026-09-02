Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6procfs6crypto6crypto17haa9be71a4e6f2178E:bb.a
  br label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i", %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !17317
  %.sroa.062.0.copyload.i.i.i = load i64, ptr %i.aq, align 8, !noalias !17317 ; 3 uses
  store i64 -9223372036854775806, ptr %i.aq, align 8, !noalias !17317
  %.not.i.i.i = icmp eq i64 %.sroa.062.0.copyload.i.i.i, -9223372036854775806
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.467.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.357.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !17317
  store i64 %.sroa.062.0.copyload.i.i.i, ptr %i.ao, align 8, !noalias !17317
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5555a99423d6e9f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef align 8 dereferenceable(48) %i.bg)
          to label %thread-pre-split.i.i.i unwind label %.loopexit515.i.i.i, !noalias !17317

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit110.i.i.i": ; preds = %bb.y, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i", %.loopexit.split-lp516.i.i.i, %.loopexit515.i.i.i
  %.pn102.i.i.i = phi { ptr, i32 } [ %.pn100.i.i.i, %bb.y ], [ %.pn100.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i" ], [ %lpad.loopexit517.i.i.i, %.loopexit515.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp516.i.i.i ]
  call fastcc void @"_ZN4core3ptr144drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$procfs_core..crypto..CryptoBlock$GT$$GT$$GT$17h4dc5aada83179561E"(ptr noalias noundef align 8 dereferenceable(48) %i.ap) #44, !noalias !17317
  br label %bb.f

.loopexit515.i.i.i:                               ; preds = %bb.n
  %lpad.loopexit517.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit110.i.i.i"

.loopexit.split-lp516.i.i.i:                      ; preds = %bb.u
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit110.i.i.i"

thread-pre-split.i.i.i:                           ; preds = %bb.n
  %.pr.i.i.i = load i64, ptr %i.ao, align 8, !noalias !17317
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split.i.i.i, %bb.m
  %i.ci = phi i64 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %.sroa.062.0.copyload.i.i.i, %bb.m ] ; 8 uses
  %.not95.i.i.i = icmp eq i64 %i.ci, -9223372036854775807
  br i1 %.not95.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.467.0..sroa_idx.i.i.i, align 8, !noalias !17317 ; 13 uses
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i2.i.i, align 8, !noalias !17317 ; 24 uses
  %i.cj = icmp eq i64 %i.ci, -9223372036854775808
  br i1 %i.cj, label %bb.u, label %bb.v

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !17317
  %i.ck = load <2 x i64>, ptr %i.ap, align 16, !noalias !17330
  %i.cl = load <2 x i64>, ptr %i.ce, align 16, !noalias !17330
  %i.cm = load <2 x i64>, ptr %.sroa.460.0..sroa_idx.i.i.i, align 16, !noalias !17330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !17317
  call void @llvm.experimental.noalias.scope.decl(metadata !17331)
  call void @llvm.experimental.noalias.scope.decl(metadata !17332)
  call void @llvm.experimental.noalias.scope.decl(metadata !17333)
  %.val3.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i16.i, align 8, !alias.scope !17334, !noalias !17317, !noundef !4 ; 2 uses
  %i.cn = icmp eq i64 %.val3.i.i.i.i.i.i, 0
  br i1 %i.cn, label %bb.r, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.q
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !17334, !noalias !17317, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i, i64 noundef %.val3.i.i.i.i.i.i, i64 noundef 1) #42, !noalias !17335
  br label %bb.r

bb.r:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i", %bb.q
  %.val.i.i.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !range !12, !alias.scope !17334, !noalias !17317, !noundef !4
  %i.co = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i) #42, !noalias !17335 ; 0 uses
  %.val.i.i.i.i = load i64, ptr %i.aq, align 8, !range !15, !alias.scope !17331, !noalias !17317, !noundef !4 ; 2 uses
  %.val1.i.i.i.i = load ptr, ptr %.sroa.357.0..sroa_idx.i.i.i, align 8, !alias.scope !17331, !noalias !17317 ; 4 uses
  switch i64 %.val.i.i.i.i, label %bb.s [
    i64 -9223372036854775806, label %bb.eq
    i64 -9223372036854775807, label %bb.eq
    i64 -9223372036854775808, label %bb.t
    i64 0, label %bb.eq
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17336
  br label %bb.eq

bb.t:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %.val1.i.i.i.i), !noalias !17337
  br label %bb.eq

bb.u:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !17317
  invoke void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aj, ptr noundef nonnull %.sroa.3.0.copyload.i.i.i)
          to label %bb.el unwind label %.loopexit.split-lp516.i.i.i, !noalias !17317

bb.v:                                             ; preds = %bb.p
  %i.cp = icmp sgt i64 %.sroa.4.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.cq, label %bb.w, label %.lr.ph.split.i.i.i.i.i

bb.w:                                             ; preds = %bb.eg, %bb.ae, %.thread416.i.i.i, %bb.v
  %i.cr = icmp eq i64 %i.ci, 0
  br i1 %i.cr, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17338
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i": ; preds = %bb.ek, %bb.ej, %bb.eh, %bb.ef, %.split.i.i, %.split1087.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit509.i.i.i
  %.pn100.i.i.i = phi { ptr, i32 } [ %i.oy, %bb.ef ], [ %eh.lpad-body.i1086.i.i, %bb.ek ], [ %.pn220.i.i.i.i, %bb.ej ], [ %i.mn, %bb.eh ], [ %lpad.loopexit.i.i.i, %.loopexit509.i.i.i ], [ %lpad.loopexit511.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp512.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ], [ %i.mb, %.split.i.i ], [ %.pn220.i.i.i.i, %.split1087.i.i ] ; 2 uses
  %i.cs = icmp eq i64 %i.ci, 0
  br i1 %i.cs, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit110.i.i.i", label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17339
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit110.i.i.i"

.loopexit509.i.i.i:                               ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i127.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i"

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i
  %lpad.loopexit511.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %bb.al, %.thread418.i.i.i
  %lpad.loopexit.split-lp512.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i"

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.split.i.i.i.i.i
  %i.ct = phi i64 [ 0, %.lr.ph.split.i.i.i.i.i ], [ %i.dg, %bb.ab ] ; 5 uses
  %i.cu = sub nuw nsw i64 %.sroa.4.0.copyload.i.i.i, %i.ct ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i, i64 %i.ct ; 2 uses
  %i.cw = icmp samesign ult i64 %i.cu, 16
  br i1 %i.cw, label %.preheader.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.z
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i, %i.ct
  br i1 %.not.i.i.i.i.i.i, label %.thread416.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.aa
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.da, %bb.aa ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !17340, !noalias !17341, !noundef !4
  %i.cz = icmp eq i8 %i.cy, 58
  br i1 %i.cz, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.da = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.da, %i.cu
  br i1 %exitcond.not.i.i.i.i.i.i, label %.thread416.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i: ; preds = %bb.z
  %i.db = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cv, i64 noundef %i.cu)
          to label %.noexc115.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !17317 ; 2 uses

.noexc115.i.i.i:                                  ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i
  %i.dc = extractvalue { i64, i64 } %i.db, 0
  %i.dd = extractvalue { i64, i64 } %i.db, 1
  %i.de = trunc nuw i64 %i.dc to i1
  br i1 %i.de, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i, label %.thread416.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc115.i.i.i
  %.sroa.4.0.i27.i.i.i.i.i = phi i64 [ %i.dd, %.noexc115.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.df = add nuw i64 %i.ct, 1
  %i.dg = add i64 %i.df, %.sroa.4.0.i27.i.i.i.i.i ; 5 uses
  %.not21.i.i.i.i.i = icmp ugt i64 %i.dg, %.sroa.4.0.copyload.i.i.i
  %i.dh = add i64 %.sroa.4.0.i27.i.i.i.i.i, %i.ct ; 3 uses
  %or.cond.i.i.not.i.i.i = icmp ult i64 %i.dh, %.sroa.4.0.copyload.i.i.i
  br i1 %or.cond.i.i.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i, label %.thread416.i.i.i, label %bb.z

bb.ac:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i, i64 %i.dh
  %lhsc.i.i.i = load i8, ptr %i.di, align 1, !noalias !17317
  %i.dj = icmp eq i8 %lhsc.i.i.i, 58
  br i1 %i.dj, label %.thread416.i.i.i, label %bb.ab

.thread416.i.i.i:                                 ; preds = %bb.ac, %bb.ab, %.noexc115.i.i.i, %.preheader.i.i.i.i.i.i, %bb.aa
  %.pre.i2.i130.i.i.i = phi i64 [ 0, %bb.aa ], [ 0, %.preheader.i.i.i.i.i.i ], [ %i.dg, %bb.ac ], [ 0, %bb.ab ], [ 0, %.noexc115.i.i.i ] ; 2 uses
  %.promoted1136.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i, %bb.aa ], [ %.sroa.4.0.copyload.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.dg, %bb.ac ], [ %i.dg, %bb.ab ], [ %.sroa.4.0.copyload.i.i.i, %.noexc115.i.i.i ] ; 2 uses
  %i.dk = phi i1 [ true, %bb.aa ], [ true, %.preheader.i.i.i.i.i.i ], [ false, %bb.ac ], [ true, %bb.ab ], [ true, %.noexc115.i.i.i ]
  %.sroa.4.1.i413.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i, %bb.aa ], [ %.sroa.4.0.copyload.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.dh, %bb.ac ], [ %.sroa.4.0.copyload.i.i.i, %bb.ab ], [ %.sroa.4.0.copyload.i.i.i, %.noexc115.i.i.i ]
  %i.dl = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h921eef8f3a0a02baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.3.0.copyload.i.i.i, i64 noundef %.sroa.4.1.i413.i.i.i), !noalias !17317 ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dl, 1
  %i.dn = icmp eq i64 %i.dm, 4
  br i1 %i.dn, label %bb.ae, label %bb.w

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i": ; preds = %bb.dt, %.thread427.i.i.i, %bb.ak
  %.sroa.15.sroa.9.0.in.i = phi i64 [ %.sroa.15.sroa.9.0.extract.shift54.i, %bb.ak ], [ %.sroa.15.sroa.9.0.extract.shift56.i, %.thread427.i.i.i ], [ %.sroa.15.sroa.9.0.extract.shift56.i, %bb.dt ] ; 2 uses
  %.sroa.15.sroa.0.0.i = phi i32 [ %.sroa.15.sroa.0.0.extract.trunc46.i, %bb.ak ], [ %.sroa.15.sroa.0.0.extract.trunc47.i, %.thread427.i.i.i ], [ %.sroa.15.sroa.0.0.extract.trunc47.i, %bb.dt ] ; 2 uses
  %.sroa.19.0.i = phi i64 [ ptrtoint (ptr @11 to i64), %bb.ak ], [ %.sroa.43.3.ph.i.i.i, %.thread427.i.i.i ], [ %.sroa.43.3.ph.i.i.i, %bb.dt ] ; 2 uses
  %.sroa.18.0.i = phi i64 [ %.sroa.18.8.copyload23.i, %bb.ak ], [ %.sroa.39.3.ph.i.i.i, %.thread427.i.i.i ], [ %.sroa.39.3.ph.i.i.i, %bb.dt ] ; 2 uses
  %.sroa.83.0.i = phi i64 [ %.sroa.83.8.copyload7.i, %bb.ak ], [ %.sroa.15.3.ph.i.i.i, %.thread427.i.i.i ], [ %.sroa.15.3.ph.i.i.i, %bb.dt ] ; 2 uses
  %i.do = phi <2 x i64> [ <i64 101, i64 48>, %bb.ak ], [ %i.mc, %.thread427.i.i.i ], [ %i.mc, %bb.dt ] ; 2 uses
  %i.dp = icmp eq i64 %i.ci, 0
  br i1 %i.dp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit119.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17342
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit119.i.i.i"

bb.ae:                                            ; preds = %.thread416.i.i.i
  %i.dq = extractvalue { ptr, i64 } %i.dl, 0
  %i.dr = load i32, ptr %i.dq, align 1
  %i.ds = icmp ne i32 %i.dr, 1701667182
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.af, label %bb.w

bb.af:                                            ; preds = %bb.ae
  br i1 %i.dk, label %.thread418.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = icmp ult i64 %.sroa.4.0.copyload.i.i.i, %.promoted1136.i.i.i
  br i1 %i.dv, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i", label %.lr.ph.split.i.i125.i.i.i

.lr.ph.split.i.i125.i.i.i:                        ; preds = %bb.ag, %.lr.ph.split.i.i125.i.i.i.backedge
  %i.dw = phi i64 [ %i.ej, %.lr.ph.split.i.i125.i.i.i.backedge ], [ %.promoted1136.i.i.i, %bb.ag ] ; 5 uses
  %i.dx = sub nuw nsw i64 %.sroa.4.0.copyload.i.i.i, %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i, i64 %i.dw ; 2 uses
  %i.dz = icmp samesign ult i64 %i.dx, 16
  br i1 %i.dz, label %.preheader.i.i.i146.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i127.i.i.i

.preheader.i.i.i146.i.i.i:                        ; preds = %.lr.ph.split.i.i125.i.i.i
  %.not.i.i.i147.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i, %i.dw
  br i1 %.not.i.i.i147.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i", label %.lr.ph.i.i.i148.i.i.i

.lr.ph.i.i.i148.i.i.i:                            ; preds = %.preheader.i.i.i146.i.i.i, %bb.ah
  %.sroa.01.05.i.i.i149.i.i.i = phi i64 [ %i.ed, %bb.ah ], [ 0, %.preheader.i.i.i146.i.i.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sroa.01.05.i.i.i149.i.i.i
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !17343, !noalias !17344, !noundef !4
  %i.ec = icmp eq i8 %i.eb, 58
  br i1 %i.ec, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i139.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i148.i.i.i
  %i.ed = add nuw nsw i64 %.sroa.01.05.i.i.i149.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i150.i.i.i = icmp eq i64 %i.ed, %i.dx
  br i1 %exitcond.not.i.i.i150.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i", label %.lr.ph.i.i.i148.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i127.i.i.i: ; preds = %.lr.ph.split.i.i125.i.i.i
  %i.ee = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dy, i64 noundef %i.dx)
          to label %.noexc151.i.i.i unwind label %.loopexit509.i.i.i, !noalias !17317 ; 2 uses

.noexc151.i.i.i:                                  ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i127.i.i.i
  %i.ef = extractvalue { i64, i64 } %i.ee, 0
  %i.eg = extractvalue { i64, i64 } %i.ee, 1
  %i.eh = trunc nuw i64 %i.ef to i1
  br i1 %i.eh, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i139.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i139.i.i.i: ; preds = %.lr.ph.i.i.i148.i.i.i, %.noexc151.i.i.i
  %.sroa.4.0.i27.i.i140.i.i.i = phi i64 [ %i.eg, %.noexc151.i.i.i ], [ %.sroa.01.05.i.i.i149.i.i.i, %.lr.ph.i.i.i148.i.i.i ] ; 2 uses
  %i.ei = add nuw i64 %i.dw, 1
  %i.ej = add i64 %i.ei, %.sroa.4.0.i27.i.i140.i.i.i ; 2 uses
  %.not21.i.i142.i.i.i = icmp ugt i64 %i.ej, %.sroa.4.0.copyload.i.i.i ; 2 uses
  %i.ek = add i64 %.sroa.4.0.i27.i.i140.i.i.i, %i.dw ; 3 uses
  %or.cond.i.i143.not.i.i.i = icmp ult i64 %i.ek, %.sroa.4.0.copyload.i.i.i
  br i1 %or.cond.i.i143.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i139.i.i.i
  br i1 %.not21.i.i142.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i", label %.lr.ph.split.i.i125.i.i.i.backedge

bb.aj:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i139.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i, i64 %i.ek
  %lhsc1745.i.i.i = load i8, ptr %i.el, align 1, !noalias !17317
  %i.em = icmp eq i8 %lhsc1745.i.i.i, 58          ; 2 uses
  %brmerge.i.i = select i1 %i.em, i1 true, i1 %.not21.i.i142.i.i.i
  br i1 %brmerge.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.loopexit51.split.loop.exit538.i.i", label %.lr.ph.split.i.i125.i.i.i.backedge

.lr.ph.split.i.i125.i.i.i.backedge:               ; preds = %bb.aj, %bb.ai
  br label %.lr.ph.split.i.i125.i.i.i

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.loopexit51.split.loop.exit538.i.i": ; preds = %bb.aj
  %.mux.le.i.i = select i1 %i.em, i64 %i.ek, i64 %.sroa.4.0.copyload.i.i.i
  br label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i"

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i": ; preds = %bb.ai, %.noexc151.i.i.i, %.preheader.i.i.i146.i.i.i, %bb.ah, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.loopexit51.split.loop.exit538.i.i", %bb.ag
  %.sroa.4.0.copyload.pn.i.i.i = phi i64 [ %.mux.le.i.i, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.loopexit51.split.loop.exit538.i.i" ], [ %.sroa.4.0.copyload.i.i.i, %bb.ag ], [ %.sroa.4.0.copyload.i.i.i, %bb.ah ], [ %.sroa.4.0.copyload.i.i.i, %.preheader.i.i.i146.i.i.i ], [ %.sroa.4.0.copyload.i.i.i, %.noexc151.i.i.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.ai ]
  %.sroa.4.1.i137.i.i.i = sub nuw nsw i64 %.sroa.4.0.copyload.pn.i.i.i, %.pre.i2.i130.i.i.i
  %.sroa.0.1.i138.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i, i64 %.pre.i2.i130.i.i.i
  %i.en = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h921eef8f3a0a02baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.1.i138.i.i.i, i64 noundef %.sroa.4.1.i137.i.i.i), !noalias !17317 ; 2 uses
  %i.eo = extractvalue { ptr, i64 } %i.en, 0
  %i.ep = extractvalue { ptr, i64 } %i.en, 1      ; 28 uses
  %i.eq = icmp slt i64 %i.ep, 0
  br i1 %i.eq, label %bb.al, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !6

.thread418.i.i.i:                                 ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !17317
  store ptr %i.a, ptr %i.am, align 8, !noalias !17317
  %.sroa.486.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.486.0..sroa_idx.i.i.i, align 8, !noalias !17317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !17345
  store ptr @3, ptr %i.ai, align 8, !noalias !17346
  %.sroa.4198.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 1, ptr %.sroa.4198.0..sroa_idx.i.i.i, align 8, !noalias !17346
  %.sroa.5199.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.am, ptr %.sroa.5199.0..sroa_idx.i.i.i, align 8, !noalias !17346
  %.sroa.6200.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 1, ptr %.sroa.6200.0..sroa_idx.i.i.i, align 8, !noalias !17346
  %.sroa.7201.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr null, ptr %.sroa.7201.0..sroa_idx.i.i.i, align 8, !noalias !17346
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ai)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !17317

bb.ak:                                            ; preds = %.thread418.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !17345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !17317
  %.sroa.83.8.copyload7.i = load i64, ptr %i.an, align 8, !noalias !17330
  %.sroa.15.8..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.15.8.copyload15.i = load i64, ptr %.sroa.15.8..sroa_idx14.i, align 8, !noalias !17330 ; 2 uses
  %.sroa.15.sroa.0.0.extract.trunc46.i = trunc i64 %.sroa.15.8.copyload15.i to i32
  %.sroa.15.sroa.9.0.extract.shift54.i = lshr i64 %.sroa.15.8.copyload15.i, 32
  %.sroa.18.8..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.18.8.copyload23.i = load i64, ptr %.sroa.18.8..sroa_idx22.i, align 8, !noalias !17330
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i"
  %i.er = icmp eq i64 %i.ep, 0                    ; 14 uses
  br i1 %i.er, label %bb.am, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !17347
  %i.es = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ep, i64 noundef range(i64 1, 9) 1) #42, !noalias !17347 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.al, label %bb.am

bb.al:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43
          to label %.noexc155.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !17317

.noexc155.i.i.i:                                  ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.es, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ] ; 17 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %i.eo, i64 %i.ep, i1 false), !noalias !17348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !17317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !17317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !17349
  invoke fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @16, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep)
          to label %.noexc159.i.i.i unwind label %.split.i.i, !noalias !17317

.noexc159.i.i.i:                                  ; preds = %bb.am
  %i.eu = load i64, ptr %i.ah, align 8, !range !9, !noalias !17349, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.eu, -9223372036854775803
  %.sroa.0383.0.copyload.i.i.i.i = load i64, ptr %i.bt, align 8, !noalias !17349 ; 7 uses
  %.sroa.4384.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4384.0..sroa_idx.i.i.i.i, align 8, !noalias !17349 ; 6 uses
  %.sroa.5385.0.copyload.i.i.i.i = load i64, ptr %.sroa.5385.0..sroa_idx.i.i.i.i, align 8, !noalias !17349 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc159.i.i.i
  %.sroa.5105.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ev = load <2 x i64>, ptr %.sroa.5105.0..sroa_idx.i.i.i.i, align 8, !noalias !17350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !17349
  %.sroa.28.sroa.0.0.extract.trunc256.i.i.i = trunc i64 %.sroa.0383.0.copyload.i.i.i.i to i8
  %.sroa.28.sroa.16.0.extract.shift271.i.i.i = lshr i64 %.sroa.0383.0.copyload.i.i.i.i, 8
  %.sroa.28.sroa.16.0.extract.trunc272.i.i.i = trunc nuw i64 %.sroa.28.sroa.16.0.extract.shift271.i.i.i to i56
  %i.ew = ptrtoint ptr %.sroa.4384.0.copyload.i.i.i.i to i64
  br label %.thread427.i.i.i

bb.ao:                                            ; preds = %.noexc159.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !17349
  invoke fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep)
          to label %bb.aq unwind label %bb.ap, !noalias !17317

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit224.i.i.i.i": ; preds = %bb.at, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i", %bb.ap
  %i.ex = phi i1 [ %i.er, %bb.ap ], [ %i.fd, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i" ], [ %i.fd, %bb.at ] ; 2 uses
  %.pn220.i.i.i.i = phi { ptr, i32 } [ %i.ez, %bb.ap ], [ %.pn218.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i" ], [ %.pn218.i.i.i.i, %bb.at ] ; 4 uses
  %i.ey = icmp eq i64 %.sroa.0383.0.copyload.i.i.i.i, 0
  br i1 %i.ey, label %bb.ej, label %.split1087.i.i

.split1087.i.i:                                   ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit224.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4384.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4384.0.copyload.i.i.i.i, i64 noundef %.sroa.0383.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17351
  br i1 %i.ex, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i", label %bb.ek

bb.ap:                                            ; preds = %bb.ao
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit224.i.i.i.i"

bb.aq:                                            ; preds = %bb.ao
  %i.fa = load i64, ptr %i.ag, align 8, !range !9, !noalias !17349, !noundef !4 ; 2 uses
  %.not201.i.i.i.i = icmp eq i64 %i.fa, -9223372036854775803
  %.sroa.0386.0.copyload.i.i.i.i = load i64, ptr %i.bu, align 8, !noalias !17349 ; 7 uses
  %.sroa.4387.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4387.0..sroa_idx.i.i.i.i, align 8, !noalias !17349 ; 6 uses
  %.sroa.5388.0.copyload.i.i.i.i = load i64, ptr %.sroa.5388.0..sroa_idx.i.i.i.i, align 8, !noalias !17349 ; 2 uses
  br i1 %.not201.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.5114.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.fb = load <2 x i64>, ptr %.sroa.5114.0..sroa_idx.i.i.i.i, align 8, !noalias !17350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17349
  %.sroa.28.sroa.0.0.extract.trunc257.i.i.i = trunc i64 %.sroa.0386.0.copyload.i.i.i.i to i8
  %.sroa.28.sroa.16.0.extract.shift273.i.i.i = lshr i64 %.sroa.0386.0.copyload.i.i.i.i, 8
  %.sroa.28.sroa.16.0.extract.trunc274.i.i.i = trunc nuw i64 %.sroa.28.sroa.16.0.extract.shift273.i.i.i to i56
  %i.fc = ptrtoint ptr %.sroa.4387.0.copyload.i.i.i.i to i64
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i"

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !17349
  invoke fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @18, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep)
          to label %bb.av unwind label %bb.au, !noalias !17317

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i": ; preds = %bb.dd, %bb.dc, %bb.cj, %bb.ci, %bb.cc, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit285.i.i.i.i", %bb.bk, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit298.i.i.i.i", %bb.au
  %i.fd = phi i1 [ %i.er, %bb.au ], [ %i.er, %bb.cc ], [ %i.er, %bb.bk ], [ %i.er, %bb.cj ], [ %i.er, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit298.i.i.i.i" ], [ %i.er, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit285.i.i.i.i" ], [ %i.er, %bb.ci ], [ false, %bb.dc ], [ false, %bb.dd ] ; 2 uses
  %.pn218.i.i.i.i = phi { ptr, i32 } [ %i.ff, %bb.au ], [ %.pn.i.i.i.i, %bb.cc ], [ %.pn216.i.i.i.i, %bb.bk ], [ %i.jv, %bb.cj ], [ %.pn216.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit298.i.i.i.i" ], [ %.pn.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit285.i.i.i.i" ], [ %i.jv, %bb.ci ], [ %i.li, %bb.dc ], [ %i.li, %bb.dd ] ; 2 uses
  %i.fe = icmp eq i64 %.sroa.0386.0.copyload.i.i.i.i, 0
  br i1 %i.fe, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit224.i.i.i.i", label %bb.at

bb.at:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4387.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4387.0.copyload.i.i.i.i, i64 noundef %.sroa.0386.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17352
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit224.i.i.i.i"

bb.au:                                            ; preds = %bb.cy, %bb.ct, %.split20.i.i.i, %bb.cs, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit281.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit272.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit230.i.i.i.i", %bb.as
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i"

bb.av:                                            ; preds = %bb.as
  %i.fg = load i64, ptr %i.ad, align 8, !range !9, !noalias !17349, !noundef !4 ; 2 uses
  %.not203.i.i.i.i = icmp eq i64 %i.fg, -9223372036854775803
  %.sroa.716.i.sroa.0.0.copyload365.i.i.i = load i64, ptr %i.bv, align 8, !noalias !17349 ; 5 uses
  %.sroa.716.i.sroa.7.0.copyload368.i.i.i = load i64, ptr %.sroa.716.i.sroa.7.0..sroa_idx367.i.i.i, align 8, !noalias !17349 ; 3 uses
  %.sroa.716.i.sroa.8.0.copyload372.i.i.i = load i64, ptr %.sroa.716.i.sroa.8.0..sroa_idx371.i.i.i, align 8, !noalias !17349 ; 10 uses
  br i1 %.not203.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.5123.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.fh = load <2 x i64>, ptr %.sroa.5123.0..sroa_idx.i.i.i.i, align 8, !noalias !17350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !17349
  %.sroa.28.sroa.0.0.extract.trunc259.i.i.i = trunc i64 %.sroa.716.i.sroa.0.0.copyload365.i.i.i to i8
  %.sroa.28.sroa.16.0.extract.shift277.i.i.i = lshr i64 %.sroa.716.i.sroa.0.0.copyload365.i.i.i, 8
  %.sroa.28.sroa.16.0.extract.trunc278.i.i.i = trunc nuw i64 %.sroa.28.sroa.16.0.extract.shift277.i.i.i to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !17349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !17349
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i"

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !17349
  store i64 %.sroa.716.i.sroa.0.0.copyload365.i.i.i, ptr %i.ae, align 8, !noalias !17349
  store i64 %.sroa.716.i.sroa.7.0.copyload368.i.i.i, ptr %.sroa.716.i.sroa.7.0..sroa_idx369.i.i.i, align 8, !noalias !17349
  store i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, ptr %.sroa.716.i.sroa.8.0..sroa_idx373.i.i.i, align 8, !noalias !17349
  store ptr %i.ae, ptr %i.af, align 8, !noalias !17349
  %.cast.i.i.i = inttoptr i64 %.sroa.716.i.sroa.7.0.copyload368.i.i.i to ptr ; 7 uses
  switch i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %.loopexit462.i.i.i.i
    i64 1, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.fi = load i8, ptr %.cast.i.i.i, align 1, !alias.scope !17353, !noalias !17354, !noundef !4 ; 2 uses
  switch i8 %i.fi, label %bb.az [
    i8 43, label %.loopexit462.i.i.i.i
    i8 45, label %.loopexit462.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.ax
  %.pr.i.i.i.i.i = load i8, ptr %.cast.i.i.i, align 1, !alias.scope !17353, !noalias !17354
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split.i.i.i.i.i, %bb.ay
  %i.fj = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.fi, %bb.ay ]
  switch i8 %i.fj, label %bb.bg [
    i8 43, label %bb.ba
    i8 45, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.fk = getelementptr inbounds nuw i8, ptr %.cast.i.i.i, i64 1 ; 2 uses
  %i.fl = add i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, -1 ; 3 uses
  %i.fm = icmp ult i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, 17
  br i1 %i.fm, label %.preheader.i.i.i.i.i, label %.preheader95.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.fn = getelementptr inbounds nuw i8, ptr %.cast.i.i.i, i64 1 ; 2 uses
  %i.fo = add i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, -1 ; 3 uses
  %i.fp = icmp ult i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, 17
  %.not89109.i.i.i.i.i = icmp eq i64 %i.fo, 0     ; 2 uses
  br i1 %i.fp, label %.preheader97.i.i.i.i.i, label %.preheader99.i.i.i.i.i.preheader

.preheader99.i.i.i.i.i.preheader:                 ; preds = %bb.bb
  br i1 %.not89109.i.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph

.preheader97.i.i.i.i.i:                           ; preds = %bb.bb
  br i1 %.not89109.i.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph.i.i158.i.i.i

bb.bc:                                            ; preds = %bb.bi
  %i.fq = extractvalue { i64, i1 } %i.gy, 0       ; 2 uses
  %.not90.i.i.i.i.i = icmp eq i64 %i.gp, 0
  br i1 %.not90.i.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph2050

.preheader99.i.i.i.i.i:                           ; preds = %bb.be
  %i.fr = extractvalue { i64, i1 } %i.gc, 0       ; 2 uses
  %.not.i.i157.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not.i.i157.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader99.i.i.i.i.i.preheader, %.preheader99.i.i.i.i.i
  %.sroa.01.2.i.i.i.i.i2045 = phi ptr [ %i.fs, %.preheader99.i.i.i.i.i ], [ %i.fn, %.preheader99.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i.i.i.i2044 = phi i64 [ %i.ft, %.preheader99.i.i.i.i.i ], [ %i.fo, %.preheader99.i.i.i.i.i.preheader ]
  %.sroa.031.2.i.i.i.i.i2043 = phi i64 [ %i.fr, %.preheader99.i.i.i.i.i ], [ 0, %.preheader99.i.i.i.i.i.preheader ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.01.2.i.i.i.i.i2045, i64 1
  %i.ft = add i64 %.sroa.27.2.i.i.i.i.i2044, -1   ; 2 uses
  %i.fu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2.i.i.i.i.i2043, i64 10) ; 2 uses
  %i.fv = extractvalue { i64, i1 } %i.fu, 0
end_hunk_0
begin_hunk_1_@_ZN6procfs6crypto6crypto17haa9be71a4e6f2178E:bb.a
bb.dd:                                            ; preds = %bb.dc
  call fastcc void @"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h2bdf77755533f9f7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.k), !noalias !17317
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i"

bb.de:                                            ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !17349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17349
  store ptr %i.r, ptr %i.o, align 8, !noalias !17349
  %.sroa.4155.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4155.0..sroa_idx.i.i.i.i, align 8, !noalias !17349
  %i.lj = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.t, ptr %i.lj, align 8, !noalias !17349
  %.sroa.4159.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4159.0..sroa_idx.i.i.i.i, align 8, !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17379
  store ptr @26, ptr %i.g, align 8, !noalias !17380
  %.sroa.4354.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.4354.0..sroa_idx.i.i.i.i, align 8, !noalias !17380
  %.sroa.5355.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.o, ptr %.sroa.5355.0..sroa_idx.i.i.i.i, align 8, !noalias !17380
  %.sroa.6356.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %.sroa.6356.0..sroa_idx.i.i.i.i, align 8, !noalias !17380
  %.sroa.7357.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7357.0..sroa_idx.i.i.i.i, align 8, !noalias !17380
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.dh unwind label %bb.df, !noalias !17317

bb.df:                                            ; preds = %bb.de
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17381)
  %.val.i283.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !17381, !noalias !17349 ; 2 uses
  %i.ll = icmp eq i64 %.val.i283.i.i.i.i, 0
  br i1 %i.ll, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit285.i.i.i.i", label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.lm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i284.i.i.i.i = load ptr, ptr %i.lm, align 8, !alias.scope !17381, !noalias !17349, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i284.i.i.i.i, i64 noundef %.val.i283.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17382
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit285.i.i.i.i"

bb.dh:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17349
  call void @llvm.experimental.noalias.scope.decl(metadata !17383)
  %.val.i286.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !17383, !noalias !17349 ; 2 uses
  %i.ln = icmp eq i64 %.val.i286.i.i.i.i, 0
  br i1 %i.ln, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit288.i.i.i.i", label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.lo = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i287.i.i.i.i = load ptr, ptr %i.lo, align 8, !alias.scope !17383, !noalias !17349, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i287.i.i.i.i, i64 noundef %.val.i286.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17384
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit288.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit288.i.i.i.i": ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17349
  %.sroa.15.8.copyload207.i.i.i = load i64, ptr %i.s, align 8, !noalias !17350
  %.sroa.28.8..sroa_idx212.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.28.8.copyload213.i.i.i = load i64, ptr %.sroa.28.8..sroa_idx212.i.i.i, align 8, !noalias !17350 ; 2 uses
  %.sroa.28.sroa.0.0.extract.trunc255.i.i.i = trunc i64 %.sroa.28.8.copyload213.i.i.i to i8
  %.sroa.28.sroa.16.0.extract.shift269.i.i.i = lshr i64 %.sroa.28.8.copyload213.i.i.i, 8
  %.sroa.28.sroa.16.0.extract.trunc270.i.i.i = trunc nuw i64 %.sroa.28.sroa.16.0.extract.shift269.i.i.i to i56
  %.sroa.39.8..sroa_idx221.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.39.8.copyload222.i.i.i = load i64, ptr %.sroa.39.8..sroa_idx221.i.i.i, align 8, !noalias !17350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !17349
  call void @llvm.experimental.noalias.scope.decl(metadata !17385)
  %.val.i289.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !17385, !noalias !17349 ; 2 uses
  %i.lp = icmp eq i64 %.val.i289.i.i.i.i, 0
  br i1 %i.lp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit291.i.i.i.i", label %bb.dj

bb.dj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit288.i.i.i.i"
  %.val1.i290.i.i.i.i = load ptr, ptr %.sroa.732.i.sroa.7.0..sroa_idx379.i.i.i, align 8, !alias.scope !17385, !noalias !17349, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i290.i.i.i.i, i64 noundef %.val.i289.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17386
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit291.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit291.i.i.i.i": ; preds = %bb.dj, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit288.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !17349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !17349
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit304.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit291.i.i.i.i", %bb.da, %bb.cx, %bb.cq, %bb.cm, %bb.cl, %bb.cg, %bb.bo, %bb.aw
  %.sroa.28.sroa.16.sroa.0.1.i.i.i = phi i56 [ %.sroa.28.sroa.16.0.extract.trunc266.i.i.i, %bb.da ], [ %.sroa.719.9.extract.trunc.i.i, %bb.cx ], [ %.sroa.28.sroa.16.sroa.0.0.copyload282.i.i.i, %bb.cq ], [ %.sroa.28.sroa.16.0.extract.trunc278.i.i.i, %bb.aw ], [ %.sroa.28.sroa.16.0.extract.trunc270.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit291.i.i.i.i" ], [ %.sroa.28.sroa.16.0.extract.trunc280.i.i.i, %bb.bo ], [ %.sroa.28.sroa.16.0.extract.trunc268.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit304.i.i.i.i" ], [ %.sroa.28.sroa.16.sroa.0.0.copyload.i.i.i, %bb.cl ], [ %.sroa.28.sroa.16.sroa.0.0.copyload.i.i.i, %bb.cm ], [ %.sroa.28.sroa.16.0.extract.trunc276.i.i.i, %bb.cg ] ; 2 uses
  %.sroa.28.sroa.0.1.i.i.i = phi i8 [ %.sroa.28.sroa.0.0.extract.trunc253.i.i.i, %bb.da ], [ %.sroa.719.8.extract.trunc.i.i, %bb.cx ], [ %i.kd, %bb.cq ], [ %.sroa.28.sroa.0.0.extract.trunc259.i.i.i, %bb.aw ], [ %.sroa.28.sroa.0.0.extract.trunc255.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit291.i.i.i.i" ], [ %.sroa.28.sroa.0.0.extract.trunc260.i.i.i, %bb.bo ], [ %.sroa.28.sroa.0.0.extract.trunc254.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit304.i.i.i.i" ], [ %i.jy, %bb.cl ], [ %i.jy, %bb.cm ], [ %.sroa.28.sroa.0.0.extract.trunc258.i.i.i, %bb.cg ] ; 2 uses
  %.sroa.43.1.i.i.i = phi i64 [ %i.lf, %bb.da ], [ %.sroa.6.0.copyload.i.i.i, %bb.cx ], [ %.sroa.43.17.copyload229.i.i.i, %bb.cq ], [ %.sroa.716.i.sroa.8.0.copyload372.i.i.i, %bb.aw ], [ ptrtoint (ptr @11 to i64), %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit291.i.i.i.i" ], [ %.sroa.732.i.sroa.8.0.copyload382.i.i.i, %bb.bo ], [ ptrtoint (ptr @11 to i64), %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit304.i.i.i.i" ], [ %.sroa.43.17.copyload.i.i.i, %bb.cl ], [ %.sroa.43.17.copyload.i.i.i, %bb.cm ], [ %.sroa.5391.0.copyload.i.i.i.i, %bb.cg ] ; 2 uses
  %.sroa.39.1.i.i.i = phi i64 [ %i.le, %bb.da ], [ %i.kw, %bb.cx ], [ %.sroa.39.17.copyload224.i.i.i, %bb.cq ], [ %.sroa.716.i.sroa.7.0.copyload368.i.i.i, %bb.aw ], [ %.sroa.39.8.copyload222.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit291.i.i.i.i" ], [ %.sroa.732.i.sroa.7.0.copyload378.i.i.i, %bb.bo ], [ %.sroa.39.8.copyload220.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit304.i.i.i.i" ], [ %.sroa.39.17.copyload.i.i.i, %bb.cl ], [ %.sroa.39.17.copyload.i.i.i, %bb.cm ], [ %i.ju, %bb.cg ] ; 2 uses
  %.sroa.15.1.i.i.i = phi i64 [ %i.ld, %bb.da ], [ %i.ki, %bb.cx ], [ %i.kc, %bb.cq ], [ %i.fg, %bb.aw ], [ %.sroa.15.8.copyload207.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit291.i.i.i.i" ], [ %i.hm, %bb.bo ], [ %.sroa.15.8.copyload206.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit304.i.i.i.i" ], [ %i.jx, %bb.cl ], [ %i.jx, %bb.cm ], [ %i.js, %bb.cg ] ; 2 uses
  %i.lq = phi <2 x i64> [ %i.lb, %bb.da ], [ %i.kv, %bb.cx ], [ %i.ke, %bb.cq ], [ %i.fh, %bb.aw ], [ <i64 101, i64 74>, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit291.i.i.i.i" ], [ %i.hn, %bb.bo ], [ <i64 101, i64 73>, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit304.i.i.i.i" ], [ %i.jz, %bb.cl ], [ %i.jz, %bb.cm ], [ %i.jt, %bb.cg ] ; 2 uses
  %i.lr = icmp eq i64 %.sroa.0386.0.copyload.i.i.i.i, 0
  br i1 %i.lr, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i", label %bb.dk

bb.dk:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4387.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4387.0.copyload.i.i.i.i, i64 noundef %.sroa.0386.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17387
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i"

bb.dl:                                            ; preds = %.loopexit462.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !17349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !17349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !17349
  store ptr %i.aa, ptr %i.x, align 8, !noalias !17349
  %.sroa.4134.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4134.0..sroa_idx.i.i.i.i, align 8, !noalias !17349
  %i.ls = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ac, ptr %i.ls, align 8, !noalias !17349
  %.sroa.4138.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4138.0..sroa_idx.i.i.i.i, align 8, !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17388
  store ptr @26, ptr %i.f, align 8, !noalias !17389
  %.sroa.4340.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.4340.0..sroa_idx.i.i.i.i, align 8, !noalias !17389
  %.sroa.5341.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.x, ptr %.sroa.5341.0..sroa_idx.i.i.i.i, align 8, !noalias !17389
  %.sroa.6.0..sroa_idx.i156.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i156.i.i.i, align 8, !noalias !17389
  %.sroa.7342.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7342.0..sroa_idx.i.i.i.i, align 8, !noalias !17389
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.do unwind label %bb.dm, !noalias !17317

bb.dm:                                            ; preds = %bb.dl
  %i.lt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17390)
  %.val.i296.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !17390, !noalias !17349 ; 2 uses
  %i.lu = icmp eq i64 %.val.i296.i.i.i.i, 0
  br i1 %i.lu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit298.i.i.i.i", label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val1.i297.i.i.i.i = load ptr, ptr %i.lv, align 8, !alias.scope !17390, !noalias !17349, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i297.i.i.i.i, i64 noundef %.val.i296.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17391
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit298.i.i.i.i"

bb.do:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !17349
  call void @llvm.experimental.noalias.scope.decl(metadata !17392)
  %.val.i299.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !17392, !noalias !17349 ; 2 uses
  %i.lw = icmp eq i64 %.val.i299.i.i.i.i, 0
  br i1 %i.lw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit301.i.i.i.i", label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val1.i300.i.i.i.i = load ptr, ptr %i.lx, align 8, !alias.scope !17392, !noalias !17349, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i300.i.i.i.i, i64 noundef %.val.i299.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17393
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit301.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit301.i.i.i.i": ; preds = %bb.dp, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !17349
  %.sroa.15.8.copyload206.i.i.i = load i64, ptr %i.ab, align 8, !noalias !17350
  %.sroa.28.8..sroa_idx210.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.28.8.copyload211.i.i.i = load i64, ptr %.sroa.28.8..sroa_idx210.i.i.i, align 8, !noalias !17350 ; 2 uses
  %.sroa.28.sroa.0.0.extract.trunc254.i.i.i = trunc i64 %.sroa.28.8.copyload211.i.i.i to i8
  %.sroa.28.sroa.16.0.extract.shift267.i.i.i = lshr i64 %.sroa.28.8.copyload211.i.i.i, 8
  %.sroa.28.sroa.16.0.extract.trunc268.i.i.i = trunc nuw i64 %.sroa.28.sroa.16.0.extract.shift267.i.i.i to i56
  %.sroa.39.8..sroa_idx219.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.39.8.copyload220.i.i.i = load i64, ptr %.sroa.39.8..sroa_idx219.i.i.i, align 8, !noalias !17350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !17349
  call void @llvm.experimental.noalias.scope.decl(metadata !17394)
  %.val.i302.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !17394, !noalias !17349 ; 2 uses
  %i.ly = icmp eq i64 %.val.i302.i.i.i.i, 0
  br i1 %i.ly, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit304.i.i.i.i", label %bb.dq

bb.dq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit301.i.i.i.i"
  %.val1.i303.i.i.i.i = load ptr, ptr %.sroa.716.i.sroa.7.0..sroa_idx369.i.i.i, align 8, !alias.scope !17394, !noalias !17349, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i303.i.i.i.i, i64 noundef %.val.i302.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17395
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit304.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit304.i.i.i.i": ; preds = %bb.dq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit301.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !17349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !17349
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i": ; preds = %bb.dk, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i", %bb.ar
  %.sroa.28.sroa.16.sroa.0.0.i.i.i = phi i56 [ %.sroa.28.sroa.16.sroa.0.1.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i" ], [ %.sroa.28.sroa.16.sroa.0.1.i.i.i, %bb.dk ], [ %.sroa.28.sroa.16.0.extract.trunc274.i.i.i, %bb.ar ] ; 2 uses
  %.sroa.28.sroa.0.0.i.i.i = phi i8 [ %.sroa.28.sroa.0.1.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i" ], [ %.sroa.28.sroa.0.1.i.i.i, %bb.dk ], [ %.sroa.28.sroa.0.0.extract.trunc257.i.i.i, %bb.ar ] ; 2 uses
  %.sroa.43.0.i.i.i = phi i64 [ %.sroa.43.1.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i" ], [ %.sroa.43.1.i.i.i, %bb.dk ], [ %.sroa.5388.0.copyload.i.i.i.i, %bb.ar ] ; 2 uses
  %.sroa.39.0.i.i.i = phi i64 [ %.sroa.39.1.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i" ], [ %.sroa.39.1.i.i.i, %bb.dk ], [ %i.fc, %bb.ar ] ; 2 uses
  %.sroa.15.0.i.i.i = phi i64 [ %.sroa.15.1.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i" ], [ %.sroa.15.1.i.i.i, %bb.dk ], [ %i.fa, %bb.ar ] ; 2 uses
  %i.lz = phi <2 x i64> [ %i.lq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i" ], [ %i.lq, %bb.dk ], [ %i.fb, %bb.ar ] ; 2 uses
  %i.ma = icmp eq i64 %.sroa.0383.0.copyload.i.i.i.i, 0
  br i1 %i.ma, label %.thread427.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4384.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4384.0.copyload.i.i.i.i, i64 noundef %.sroa.0383.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17396
  br label %.thread427.i.i.i

.split.i.i:                                       ; preds = %bb.am
  %i.mb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.er, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i", label %bb.ek

.thread427.i.i.i:                                 ; preds = %bb.dr, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i", %bb.an
  %.sroa.28.sroa.16.sroa.0.3.ph.i.i.i = phi i56 [ %.sroa.28.sroa.16.0.extract.trunc272.i.i.i, %bb.an ], [ %.sroa.28.sroa.16.sroa.0.0.i.i.i, %bb.dr ], [ %.sroa.28.sroa.16.sroa.0.0.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i" ] ; 2 uses
  %.sroa.28.sroa.0.3.ph.i.i.i = phi i8 [ %.sroa.28.sroa.0.0.extract.trunc256.i.i.i, %bb.an ], [ %.sroa.28.sroa.0.0.i.i.i, %bb.dr ], [ %.sroa.28.sroa.0.0.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i" ]
  %.sroa.43.3.ph.i.i.i = phi i64 [ %.sroa.5385.0.copyload.i.i.i.i, %bb.an ], [ %.sroa.43.0.i.i.i, %bb.dr ], [ %.sroa.43.0.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i" ] ; 2 uses
  %.sroa.39.3.ph.i.i.i = phi i64 [ %i.ew, %bb.an ], [ %.sroa.39.0.i.i.i, %bb.dr ], [ %.sroa.39.0.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i" ] ; 2 uses
  %.sroa.15.3.ph.i.i.i = phi i64 [ %i.eu, %bb.an ], [ %.sroa.15.0.i.i.i, %bb.dr ], [ %.sroa.15.0.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i" ] ; 2 uses
  %i.mc = phi <2 x i64> [ %i.ev, %bb.an ], [ %i.lz, %bb.dr ], [ %i.lz, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !17317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !17317
  %i.md = zext i56 %.sroa.28.sroa.16.sroa.0.3.ph.i.i.i to i64
  %1 = zext i8 %.sroa.28.sroa.0.3.ph.i.i.i to i32
  %.tr.i = trunc i56 %.sroa.28.sroa.16.sroa.0.3.ph.i.i.i to i32
  %2 = shl i32 %.tr.i, 8
  %.sroa.15.sroa.0.0.extract.trunc47.i = or disjoint i32 %2, %1 ; 2 uses
  %.sroa.15.sroa.9.0.extract.shift56.i = lshr i64 %i.md, 24 ; 2 uses
  br i1 %i.er, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i", label %bb.dt

bb.ds:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lg, ptr nonnull readonly align 1 %.sroa.10.0.i.i.i.i.i, i64 %i.ep, i1 false), !noalias !17397
  %i.me = ptrtoint ptr %i.lg to i64
  br label %.thread.i.i

bb.dt:                                            ; preds = %.thread427.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17398
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i"

.thread.i.i:                                      ; preds = %bb.ds, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.mf = phi i64 [ %i.me, %bb.ds ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.552.sroa.5.0..sroa.552.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !17317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !17317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !17317
  %i.mg = ptrtoint ptr %.sroa.4384.0.copyload.i.i.i.i to i64
  store i64 %i.ep, ptr %i.ak, align 8, !noalias !17317
  store i64 %i.mf, ptr %.sroa.451.0..sroa_idx.i.i.i, align 8, !noalias !17317
  store i64 %i.ep, ptr %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17317
  store i64 %.sroa.0383.0.copyload.i.i.i.i, ptr %.sroa.451.sroa.5.0..sroa.451.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17317
  store i64 %i.mg, ptr %.sroa.451.sroa.6.0..sroa.451.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17317
  store i64 %.sroa.5385.0.copyload.i.i.i.i, ptr %.sroa.451.sroa.7.0..sroa.451.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17317
  store i64 %.sroa.0386.0.copyload.i.i.i.i, ptr %.sroa.451.sroa.8.0..sroa.451.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17317
  store ptr %.sroa.4387.0.copyload.i.i.i.i, ptr %.sroa.552.0..sroa_idx.i.i.i, align 8, !noalias !17317
  store i64 %.sroa.5388.0.copyload.i.i.i.i, ptr %.sroa.552.sroa.4.0..sroa.552.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17317
  store i64 %.sroa.13.0.i.i.i.i, ptr %.sroa.552.sroa.6.0..sroa.552.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17317
  store i64 %.sroa.13352.0.i.i.i.i, ptr %.sroa.552.sroa.7.0..sroa.552.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17317
  store i8 %i.jy, ptr %.sroa.552.sroa.8.0..sroa.552.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17317
  store i8 %i.kd, ptr %.sroa.552.sroa.9.0..sroa.552.0..sroa_idx.sroa_idx.i.i.i, align 1, !noalias !17317
  store i8 %.sroa.719.0.ph.i.i, ptr %.sroa.552.sroa.10.0..sroa.552.0..sroa_idx.sroa_idx.i.i.i, align 2, !noalias !17317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !17317
  store i64 %i.ep, ptr %i.al, align 8, !noalias !17317
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.7192.0..sroa_idx193.i.i.i, align 8, !noalias !17317
  store i64 %i.ep, ptr %.sroa.10.0..sroa_idx195.i.i.i, align 8, !noalias !17317
  call void @llvm.experimental.noalias.scope.decl(metadata !17399)
  %.val.i163.i.i.i = load i64, ptr %.sroa.460.0..sroa_idx.i.i.i, align 16, !alias.scope !17399, !noalias !17400, !noundef !4
  %.val5.i.i.i.i = load i64, ptr %.sroa.561.0..sroa_idx.i.i.i, align 8, !alias.scope !17399, !noalias !17400, !noundef !4
  %i.mh = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h3f0ca1c572c8f3f7E(i64 %.val.i163.i.i.i, i64 %.val5.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al), !noalias !17401 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17402)
  call void @llvm.experimental.noalias.scope.decl(metadata !17403)
  %i.mi = lshr i64 %i.mh, 57
  %i.mj = trunc nuw nsw i64 %i.mi to i8           ; 3 uses
  %i.mk = load i64, ptr %i.cb, align 8, !alias.scope !17404, !noalias !17405, !noundef !4 ; 3 uses
  %i.ml = load ptr, ptr %i.ap, align 16, !alias.scope !17404, !noalias !17405, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.mj, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mm = inttoptr i64 %i.ep to ptr
  br label %bb.dw

bb.du:                                            ; preds = %bb.ea
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br i1 %i.er, label %bb.eh, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17406
  br label %bb.eh

bb.dw:                                            ; preds = %bb.dx, %.thread.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.nf, %bb.dx ]
  %.pn.i.i.i.i.i = phi i64 [ %i.mh, %.thread.i.i ], [ %i.ng, %bb.dx ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.mk ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i = load <16 x i8>, ptr %i.mo, align 1, !noalias !17407 ; 2 uses
  %i.mp = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.mq = bitcast <16 x i1> %i.mp to i16          ; 2 uses
  %.not.i.not33.i.i.i.i.i = icmp eq i16 %i.mq, 0
  br i1 %.not.i.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i164.i.i.i

.lr.ph.i.i164.i.i.i:                              ; preds = %bb.dw, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bbc8d49b102fae0E.exit.thread.i.i.i.i.i"
  %.sroa.06.0.i34.i.i.i.i.i = phi i16 [ %i.ne, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bbc8d49b102fae0E.exit.thread.i.i.i.i.i" ], [ %i.mq, %bb.dw ] ; 3 uses
  %i.mr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i.i.i, i1 true)
  %i.ms = zext nneg i16 %i.mr to i64
  %i.mt = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ms
  %i.mu = and i64 %i.mt, %i.mk
  %i.mv = sub nsw i64 0, %i.mu
  %i.mw = getelementptr inbounds [48 x i8], ptr %i.ml, i64 %i.mv ; 3 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 -32
  %.val4.i.i.i.i.i.i = load i64, ptr %i.mx, align 8, !noalias !17408, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val4.i.i.i.i.i.i, %i.ep
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bbc8d49b102fae0E.exit.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bbc8d49b102fae0E.exit.thread.i.i.i.i.i", !prof !29

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bbc8d49b102fae0E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i164.i.i.i
  %i.my = getelementptr i8, ptr %i.mw, i64 -40
  %.val3.i.i.i167.i.i.i = load ptr, ptr %i.my, align 8, !noalias !17408, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val3.i.i.i167.i.i.i, ptr nonnull readonly align 1 %.sroa.10.0.i.i.i.i.i, i64 %i.ep), !alias.scope !17409, !noalias !17408
  %i.mz = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.mz, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h2607ee666c74f080E.exit.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bbc8d49b102fae0E.exit.thread.i.i.i.i.i", !prof !30

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bbc8d49b102fae0E.exit.thread.i.i.i.i.i", %bb.dw
  %i.na = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, splat (i8 -1)
  %i.nb = bitcast <16 x i1> %i.na to i16
  %i.nc = icmp eq i16 %i.nb, 0
  br i1 %i.nc, label %bb.dx, label %bb.dz, !prof !8

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bbc8d49b102fae0E.exit.thread.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bbc8d49b102fae0E.exit.i.i.i.i.i", %.lr.ph.i.i164.i.i.i
  %i.nd = add i16 %.sroa.06.0.i34.i.i.i.i.i, -1
  %i.ne = and i16 %i.nd, %.sroa.06.0.i34.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ne, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i164.i.i.i

bb.dx:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.nf = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.ng = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.nf
  br label %bb.dw

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h2607ee666c74f080E.exit.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bbc8d49b102fae0E.exit.i.i.i.i.i"
  br i1 %i.er, label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.thread.i.i.i", label %bb.dy

bb.dy:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h2607ee666c74f080E.exit.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17410
  br label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.thread.i.i.i"

bb.dz:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.nh = load i64, ptr %i.ce, align 16, !alias.scope !17411, !noalias !17412, !noundef !4
  %i.ni = icmp eq i64 %i.nh, 0
  br i1 %i.ni, label %bb.ea, label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.i.i.i", !prof !8

bb.ea:                                            ; preds = %bb.dz
  %i.nj = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hcc20c4f72aaf97e2E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ap, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.460.0..sroa_idx.i.i.i, i1 noundef zeroext true)
          to label %.noexc.i.i.i.i unwind label %bb.du, !noalias !17400 ; 0 uses

.noexc.i.i.i.i:                                   ; preds = %bb.ea
  %.val.i.i171.pre.i.i.i = load ptr, ptr %i.ap, align 16, !alias.scope !17413, !noalias !17414
  %.val4.i.i.pre.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !17413, !noalias !17414
  br label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.i.i.i"

"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.i.i.i": ; preds = %.noexc.i.i.i.i, %bb.dz
  %.val4.i.i.i.i.i = phi i64 [ %i.mk, %bb.dz ], [ %.val4.i.i.pre.i.i.i, %.noexc.i.i.i.i ] ; 4 uses
  %.val.i.i171.i.i.i = phi ptr [ %i.ml, %bb.dz ], [ %.val.i.i171.pre.i.i.i, %.noexc.i.i.i.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !17317
  store i64 0, ptr %i.e, align 8, !noalias !17317
  store ptr inttoptr (i64 8 to ptr), ptr %i.cc, align 8, !noalias !17317
  store i64 0, ptr %i.cd, align 8, !noalias !17317
  call void @llvm.experimental.noalias.scope.decl(metadata !17413)
  %.sroa.0.04.i.i.i.i.i.i.i = and i64 %.val4.i.i.i.i.i, %i.mh ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.val.i.i171.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.nk, align 1, !noalias !17415
  %i.nl = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i.i.i.i, zeroinitializer
  %i.nm = bitcast <16 x i1> %i.nl to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i.i.i.i = icmp eq i16 %i.nm, 0
  br i1 %.not.not.i.not6.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !prof !37

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.04.i.i.i.i.i.i.i, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.i.i.i" ]
  %i.nn = phi i64 [ %i.no, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.i.i.i" ]
  %i.no = add i64 %i.nn, 16                       ; 2 uses
  %i.np = add i64 %i.no, %.sroa.0.07.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = and i64 %i.np, %.val4.i.i.i.i.i ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.val.i.i171.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.nq, align 1, !noalias !17415
  %i.nr = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i.i.i.i, zeroinitializer
  %i.ns = bitcast <16 x i1> %i.nr to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i.i = icmp eq i16 %i.ns, 0
  br i1 %.not.not.i.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !prof !38

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.i.i.i"
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.04.i.i.i.i.i.i.i, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.i.i.i" ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.nm, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.i.i.i" ], [ %i.ns, %.lr.ph.i.i.i.i.i.i.i ]
  %i.nt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.nu = zext nneg i16 %i.nt to i64
  %i.nv = add i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, %i.nu
  %i.nw = and i64 %i.nv, %.val4.i.i.i.i.i         ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.val.i.i171.i.i.i, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !noalias !17416, !noundef !4 ; 2 uses
  %i.nz = icmp sgt i8 %i.ny, -1
  br i1 %i.nz, label %bb.eb, label %bb.ec, !prof !8

bb.eb:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i171.i.i.i, align 16, !noalias !17416
  %i.oa = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ob = bitcast <16 x i1> %i.oa to i16          ; 2 uses
  %i.oc = icmp ne i16 %i.ob, 0
  call void @llvm.assume(i1 %i.oc)
  %i.od = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ob, i1 true)
  %i.oe = zext nneg i16 %i.od to i64              ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i171.i.i.i, i64 %i.oe
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 1, !noalias !17416
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %._crit_edge.i.i.i.i.i.i.i
  %i.of = phi i8 [ %.pre.i.i.i.i.i.i, %bb.eb ], [ %i.ny, %._crit_edge.i.i.i.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i.i.i.i = phi i64 [ %i.oe, %bb.eb ], [ %i.nw, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.val.i.i171.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i.i.i
  %i.oh = add i64 %.sroa.0.0.i5.i.i.i.i.i.i.i, -16
  %i.oi = and i64 %i.oh, %.val4.i.i.i.i.i
  store i8 %i.mj, ptr %i.og, align 1, !noalias !17416
  %i.oj = getelementptr i8, ptr %.val.i.i171.i.i.i, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 16
  store i8 %i.mj, ptr %i.ok, align 1, !noalias !17416
  %i.ol = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i.i.i
  %i.om = getelementptr inbounds [48 x i8], ptr %.val.i.i171.i.i.i, i64 %i.ol ; 5 uses
  %i.on = and i8 %i.of, 1
  %i.oo = zext nneg i8 %i.on to i64
  %i.op = load i64, ptr %i.ce, align 16, !alias.scope !17413, !noalias !17414, !noundef !4
  %i.oq = sub i64 %i.op, %i.oo
  store i64 %i.oq, ptr %i.ce, align 16, !alias.scope !17413, !noalias !17414
  %i.or = getelementptr inbounds i8, ptr %i.om, i64 -48
  store i64 %i.ep, ptr %i.or, align 8, !noalias !17417
  %.sroa.4408.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.om, i64 -40
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4408.0..sroa_idx.i.i.i, align 8, !noalias !17417
  %.sroa.5409.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.om, i64 -32
  store ptr %i.mm, ptr %.sroa.5409.0..sroa_idx.i.i.i, align 8, !noalias !17417
  %.sroa.6410.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.om, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6410.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !17317
  %i.os = load i64, ptr %i.cf, align 8, !alias.scope !17413, !noalias !17414, !noundef !4
  %i.ot = add i64 %i.os, 1
  store i64 %i.ot, ptr %i.cf, align 8, !alias.scope !17413, !noalias !17414
  br label %bb.ed

"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.thread.i.i.i": ; preds = %bb.dy, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h2607ee666c74f080E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !17317
  store i64 0, ptr %i.e, align 8, !noalias !17317
  store ptr inttoptr (i64 8 to ptr), ptr %i.cc, align 8, !noalias !17317
  store i64 0, ptr %i.cd, align 8, !noalias !17317
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$procfs_core..crypto..CryptoBlock$GT$$GT$17hb6ab10459a4d4fceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.e), !noalias !17317
  br label %bb.ed

bb.ed:                                            ; preds = %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.thread.i.i.i", %bb.ec
  %.pn10.i.i.i.i = phi ptr [ %i.mw, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hfa280672076940c4E.exit.thread.i.i.i" ], [ %i.om, %bb.ec ] ; 3 uses
  %.sroa.01.0.i.i.i.i = getelementptr inbounds i8, ptr %.pn10.i.i.i.i, i64 -24 ; 2 uses
  %i.ou = getelementptr inbounds i8, ptr %.pn10.i.i.i.i, i64 -8 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !alias.scope !17418, !noalias !17419, !noundef !4 ; 3 uses
  %i.ow = load i64, ptr %.sroa.01.0.i.i.i.i, align 8, !range !14, !alias.scope !17418, !noalias !17419, !noundef !4
  %i.ox = icmp eq i64 %i.ov, %i.ow
  br i1 %i.ox, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb7d0df69681e65c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @735)
          to label %bb.eg unwind label %bb.ef, !noalias !17419

bb.ef:                                            ; preds = %bb.ee
  %i.oy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$procfs_core..crypto..CryptoBlock$GT$17h7b26edcc2e15ff0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(152) %i.ak) #44, !noalias !17317
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i"

bb.eg:                                            ; preds = %bb.ee, %bb.ed
  %i.oz = getelementptr inbounds i8, ptr %.pn10.i.i.i.i, i64 -16
  %i.pa = load ptr, ptr %i.oz, align 8, !alias.scope !17418, !noalias !17419, !nonnull !4, !noundef !4
  %i.pb = getelementptr inbounds nuw [152 x i8], ptr %i.pa, i64 %i.ov
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.pb, ptr noundef nonnull align 8 dereferenceable(152) %i.ak, i64 152, i1 false), !noalias !17317
  %i.pc = add i64 %i.ov, 1
  store i64 %i.pc, ptr %i.ou, align 8, !alias.scope !17418, !noalias !17419
  br label %bb.w

bb.eh:                                            ; preds = %bb.dv, %bb.du
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$procfs_core..crypto..CryptoBlock$GT$17h7b26edcc2e15ff0eE"(ptr noalias noundef align 8 dereferenceable(152) %i.ak) #44, !noalias !17317
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i"

bb.ei:                                            ; preds = %bb.i
  %i.pd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !17317
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit119.i.i.i": ; preds = %bb.el, %bb.ad, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i"
  %.sroa.15.sroa.9.1.in.i = phi i64 [ %.sroa.15.sroa.9.0.extract.shift.i, %bb.el ], [ %.sroa.15.sroa.9.0.in.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i" ], [ %.sroa.15.sroa.9.0.in.i, %bb.ad ]
  %.sroa.15.sroa.0.1.i = phi i32 [ %.sroa.15.sroa.0.0.extract.trunc.i, %bb.el ], [ %.sroa.15.sroa.0.0.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i" ], [ %.sroa.15.sroa.0.0.i, %bb.ad ]
  %.sroa.19.1.i = phi i64 [ %.sroa.19.8.copyload27.i, %bb.el ], [ %.sroa.19.0.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i" ], [ %.sroa.19.0.i, %bb.ad ]
  %.sroa.18.1.i = phi i64 [ %.sroa.18.8.copyload19.i, %bb.el ], [ %.sroa.18.0.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i" ], [ %.sroa.18.0.i, %bb.ad ]
  %.sroa.83.1.i = phi i64 [ %.sroa.83.8.copyload5.i, %bb.el ], [ %.sroa.83.0.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i" ], [ %.sroa.83.0.i, %bb.ad ]
  %i.pe = phi <2 x i64> [ %i.pg, %bb.el ], [ %i.do, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i" ], [ %i.do, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !17317
  call fastcc void @"_ZN4core3ptr144drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$procfs_core..crypto..CryptoBlock$GT$$GT$$GT$17h4dc5aada83179561E"(ptr noalias noundef align 8 dereferenceable(48) %i.ap), !noalias !17317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !17317
  call void @llvm.experimental.noalias.scope.decl(metadata !17420)
  call void @llvm.experimental.noalias.scope.decl(metadata !17421)
  call void @llvm.experimental.noalias.scope.decl(metadata !17422)
  %.val3.i.i.i177.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i16.i, align 8, !alias.scope !17423, !noalias !17317, !noundef !4 ; 2 uses
  %i.pf = icmp eq i64 %.val3.i.i.i177.i.i.i, 0
  br i1 %i.pf, label %bb.em, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i178.i.i.i"

bb.ej:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit224.i.i.i.i"
  br i1 %i.ex, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i", label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.split.i.i, %.split1087.i.i
  %eh.lpad-body.i1086.i.i = phi { ptr, i32 } [ %i.mb, %.split.i.i ], [ %.pn220.i.i.i.i, %bb.ej ], [ %.pn220.i.i.i.i, %.split1087.i.i ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17424
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i": ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !17317
  br label %bb.l

bb.el:                                            ; preds = %bb.u
  %.sroa.83.8.copyload5.i = load i64, ptr %i.aj, align 8, !noalias !17330
  %.sroa.15.8..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.15.8.copyload11.i = load i64, ptr %.sroa.15.8..sroa_idx10.i, align 8, !noalias !17330 ; 2 uses
  %.sroa.15.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.15.8.copyload11.i to i32
  %.sroa.15.sroa.9.0.extract.shift.i = lshr i64 %.sroa.15.8.copyload11.i, 32
  %.sroa.18.8..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.18.8.copyload19.i = load i64, ptr %.sroa.18.8..sroa_idx18.i, align 8, !noalias !17330
  %.sroa.19.8..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.19.8.copyload27.i = load i64, ptr %.sroa.19.8..sroa_idx26.i, align 8, !noalias !17330
  %.sroa.21.8..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.pg = load <2 x i64>, ptr %.sroa.21.8..sroa_idx32.i, align 8, !noalias !17330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !17317
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit119.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i178.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit119.i.i.i"
  %.val2.i.i.i179.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !17423, !noalias !17317, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i179.i.i.i, i64 noundef %.val3.i.i.i177.i.i.i, i64 noundef 1) #42, !noalias !17425
  br label %bb.em

bb.em:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i178.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit119.i.i.i"
  %.val.i.i.i180.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !range !12, !alias.scope !17423, !noalias !17317, !noundef !4
  %i.ph = call noundef i32 @close(i32 noundef %.val.i.i.i180.i.i.i) #42, !noalias !17425 ; 0 uses
  %.val.i181.i.i.i = load i64, ptr %i.aq, align 8, !range !15, !alias.scope !17420, !noalias !17317, !noundef !4 ; 2 uses
  %.val1.i182.i.i.i = load ptr, ptr %.sroa.357.0..sroa_idx.i.i.i, align 8, !alias.scope !17420, !noalias !17317 ; 4 uses
  switch i64 %.val.i181.i.i.i, label %bb.en [
    i64 -9223372036854775806, label %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i"
    i64 -9223372036854775807, label %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i"
    i64 -9223372036854775808, label %bb.eo
    i64 0, label %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i"
  ]

bb.en:                                            ; preds = %bb.em
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i182.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i182.i.i.i, i64 noundef %.val.i181.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17426
  br label %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i"

bb.eo:                                            ; preds = %bb.em
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i182.i.i.i) ]
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %.val1.i182.i.i.i), !noalias !17427
  br label %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i"

"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i": ; preds = %bb.eo, %bb.en, %bb.em, %bb.em, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !17317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !17318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !17318
  br label %bb.ep

bb.ep:                                            ; preds = %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i", %bb.b
  %.sroa.15.sroa.9.3.i = phi i64 [ %i.az, %bb.b ], [ %.sroa.15.sroa.9.1.in.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i" ]
  %.sroa.15.sroa.0.3.i = phi i32 [ %.sroa.6.0.copyload.i, %bb.b ], [ %.sroa.15.sroa.0.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i" ]
  %.sroa.19.3.i = phi i64 [ %.sroa.8.sroa.6.0.copyload.i, %bb.b ], [ %.sroa.19.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i" ]
  %.sroa.18.3.i = phi i64 [ %.sroa.8.sroa.5.0.copyload.i, %bb.b ], [ %.sroa.18.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i" ]
  %.sroa.83.3.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.83.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i" ]
  %i.pi = phi <2 x i64> [ %i.ay, %bb.b ], [ %i.pe, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17h629bbfc14da29c07E.exit.thread.i" ]
  %.sroa.15.sroa.9.0.insert.shift.i = shl nuw i64 %.sroa.15.sroa.9.3.i, 32
  %.sroa.15.sroa.0.0.insert.ext.i = zext i32 %.sroa.15.sroa.0.3.i to i64
  %.sroa.15.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.15.sroa.9.0.insert.shift.i, %.sroa.15.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17428
  store i64 %.sroa.83.3.i, ptr %i.b, align 8, !noalias !17429
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.15.sroa.0.0.insert.insert.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17429
  %.sroa.569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.18.3.i, ptr %.sroa.569.0..sroa_idx.i, align 8, !noalias !17429
  %.sroa.670.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.19.3.i, ptr %.sroa.670.0..sroa_idx.i, align 8, !noalias !17429
  %.sroa.771.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <2 x i64> %i.pi, ptr %.sroa.771.0..sroa_idx.i, align 8, !noalias !17429
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @"_ZN68_$LT$procfs_core..ProcError$u20$as$u20$procfs_core..ProcErrorExt$GT$10error_path17h863f75f158574cc8E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.pj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @615, i64 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17428
  br label %_ZN11procfs_core8FromRead9from_file17hf3b809f5f5825bceE.exit

bb.eq:                                            ; preds = %bb.t, %bb.s, %bb.r, %bb.r, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !17317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !17318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !17318
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.ck, ptr %i.pk, align 8, !alias.scope !17313
  %.sroa.6.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.cl, ptr %.sroa.6.0..sroa_idx59.i, align 8, !alias.scope !17313
  %.sroa.8.0..sroa_idx61.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.cm, ptr %.sroa.8.0..sroa_idx61.i, align 8, !alias.scope !17313
  br label %_ZN11procfs_core8FromRead9from_file17hf3b809f5f5825bceE.exit

_ZN11procfs_core8FromRead9from_file17hf3b809f5f5825bceE.exit: ; preds = %bb.ep, %bb.eq
  %storemerge.i = phi i64 [ 0, %bb.eq ], [ 1, %bb.ep ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !17313
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6procfs6mounts17hf3be8fcc492c3457E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [48 x i8], align 8                ; 11 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [128 x i8], align 8               ; 11 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [1 x i8], align 1                 ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 9 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 9 uses
  %i.al = alloca [64 x i8], align 8               ; 18 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [8 x i8], align 8                ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %i.aq = alloca [48 x i8], align 8               ; 11 uses
  %i.ar = alloca [24 x i8], align 8               ; 12 uses
  %i.as = alloca [16 x i8], align 4               ; 6 uses
  %i.at = alloca [48 x i8], align 8               ; 9 uses
  %i.au = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.18.i = alloca [12 x i8], align 4         ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !17648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !17649
  store i32 0, ptr %i.as, align 4, !noalias !17649
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !17649
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 6, i1 false), !noalias !17649
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !17649
  call void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.au, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @616, i64 noundef 12), !noalias !17648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !17649
  %i.av = load i32, ptr %i.au, align 8, !range !11, !noalias !17648, !noundef !4
  %i.aw = trunc nuw i32 %i.av to i1
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !17648, !nonnull !4, !noundef !4
  call void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.at, ptr noundef nonnull %i.az), !noalias !17648
  %.sroa.0.0.copyload.i = load i64, ptr %i.at, align 8, !noalias !17648
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !17648
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.8.sroa.5.0.copyload.i = load ptr, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !17648
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.8.sroa.6.0.copyload.i = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !17648
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ba = load <2 x i32>, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !17648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !17648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.18.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ax, i64 12, i1 false), !noalias !17648
  br label %bb.ct

bb.c:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !range !12, !noalias !17648, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !17648
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !17650
  %i.bd = call noundef dereferenceable_or_null(8192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17650 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.d, label %"_ZN3std2io8buffered9bufreader18BufReader$LT$R$GT$13with_capacity17h9ba6b2d15c5df006E.exit.i.i"

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 8192, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #43
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !17651

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

common.resume.i.i:                                ; preds = %"_ZN4core3ptr103drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17h43f9961b67eb2210E.exit.i.i", %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bf, %bb.e ], [ %.pn284.i.i.i, %"_ZN4core3ptr103drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17h43f9961b67eb2210E.exit.i.i" ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.e:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.bc) #42, !noalias !17651 ; 0 uses
  br label %common.resume.i.i

end_hunk_1
