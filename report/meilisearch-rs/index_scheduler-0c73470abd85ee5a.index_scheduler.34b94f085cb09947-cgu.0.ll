Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57303
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN15index_scheduler9scheduler14process_export49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$16export_one_index17hd3586986bea50523E":bb.a
  store ptr %i.em, ptr %.sroa.651.0..sroa_idx, align 8, !noalias !66527
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.gm, ptr %.sroa.752.0..sroa_idx, align 8, !noalias !66527
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.gk, ptr %.sroa.853.0..sroa_idx, align 8, !noalias !66527
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.eg, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !66527
  %.sroa.1054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %i.de, ptr %.sroa.1054.0..sroa_idx, align 8, !noalias !66527
  %.sroa.1155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %i.dg, ptr %.sroa.1155.0..sroa_idx, align 8, !noalias !66527
  %.sroa.1256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %i.dc, ptr %.sroa.1256.0..sroa_idx, align 8, !noalias !66527
  %.sroa.1357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store ptr %i.db, ptr %.sroa.1357.0..sroa_idx, align 8, !noalias !66527
  %.sroa.1458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store ptr %i.agp, ptr %.sroa.1458.0..sroa_idx, align 8, !noalias !66527
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store ptr %i.ed, ptr %.sroa.15.0..sroa_idx, align 8, !noalias !66527
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store ptr %i.dd, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !66527
  %i.ags = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 520 ; 3 uses
  %i.agt = load i64, ptr %i.ags, align 8, !noalias !66526, !noundef !166 ; 16 uses
  %i.agu = icmp ult i64 %i.agt, 192153584101141163
  call void @llvm.assume(i1 %i.agu)
  %i.agv = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN10rayon_core8registry19WORKER_THREAD_STATE29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hc308a4bd969f62fdE")
  %.val.i.i.i.i1087 = load ptr, ptr %i.agv, align 8, !noalias !66526, !noundef !166 ; 4 uses
  %i.agw = icmp eq ptr %.val.i.i.i.i1087, null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !66526
  call void @llvm.experimental.noalias.scope.decl(metadata !66528)
  br i1 %i.agw, label %_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.agx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i1087, i64 272 ; 2 uses
  %i.agy = load ptr, ptr %i.agx, align 16, !noalias !66529, !nonnull !166, !noundef !166
  %i.agz = atomicrmw add ptr %i.agy, i64 1 monotonic, align 8, !noalias !66529
  %i.aha = icmp slt i64 %i.agz, 0
  br i1 %i.aha, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.ahb = load ptr, ptr %i.agx, align 16, !noalias !66529, !nonnull !166, !noundef !166
  %i.ahc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i1087, i64 256
  %i.ahd = load i64, ptr %i.ahc, align 128, !noalias !66529, !noundef !166
  br label %_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i

bb.it:                                            ; preds = %bb.ir
  call void @llvm.trap()
  unreachable

_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i: ; preds = %bb.is, %bb.iq
  %.sroa.7.0.i.i.i = phi i64 [ %i.ahd, %bb.is ], [ 0, %bb.iq ]
  %.sroa.03.0.i.i.i = phi ptr [ %i.ahb, %bb.is ], [ null, %bb.iq ]
  store i64 %i.agt, ptr %i.k, align 8, !alias.scope !66528, !noalias !66526
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %.sroa.03.0.i.i.i, ptr %i.ahe, align 8, !alias.scope !66528, !noalias !66526
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !66528, !noalias !66526
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.7.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !66528, !noalias !66526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !66526
  call void @llvm.experimental.noalias.scope.decl(metadata !66530)
  call void @llvm.experimental.noalias.scope.decl(metadata !66531)
  call void @llvm.experimental.noalias.scope.decl(metadata !66532)
  call void @llvm.experimental.noalias.scope.decl(metadata !66533)
  %i.ahf = mul i64 %i.agt, 360                    ; 4 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.agt, 25620477880152155
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.iv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !194

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i
  %i.ahg = icmp eq i64 %i.ahf, 0
  br i1 %i.ahg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5c8207ef20eac3e5E.exit.i.i.i.i.i.i.i.i", label %bb.iu

bb.iu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !66534
  %i.ahh = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ahf, i64 noundef range(i64 1, 9) 8) #77, !noalias !66534 ; 2 uses
  %i.ahi = icmp eq ptr %i.ahh, null
  br i1 %i.ahi, label %bb.iv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5c8207ef20eac3e5E.exit.i.i.i.i.i.i.i.i"

bb.iv:                                            ; preds = %bb.iu, %_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.iu ], [ 0, %_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.ahf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc.i.i1094 unwind label %bb.iy, !noalias !66526

.noexc.i.i1094:                                   ; preds = %bb.iv
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5c8207ef20eac3e5E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.iu, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ahh, %bb.iu ] ; 21 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.agt, %bb.iu ] ; 7 uses
  %i.ahj = icmp samesign ule i64 %i.agt, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ahj)
  %.not.i.i1088 = icmp eq i64 %i.agt, 0           ; 3 uses
  br i1 %.not.i.i1088, label %.loopexit18.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5c8207ef20eac3e5E.exit.i.i.i.i.i.i.i.i"
  %xtraiter1984 = and i64 %i.agt, 3               ; 3 uses
  %i.ahk = icmp samesign ult i64 %i.agt, 4
  br i1 %i.ahk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.agt, 36028797018963964
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.ahl = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ahr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ahm = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahl ; 3 uses
  store ptr %i.k, ptr %i.ahm, align 8, !noalias !66535
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !66535
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  store i64 153, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !66535
  %i.ahn = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahl ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 360
  store ptr %i.k, ptr %i.aho, align 8, !noalias !66535
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ahn, i64 368
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !66535
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ahn, i64 376
  store i64 153, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !66535
  %i.ahp = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahl ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 720
  store ptr %i.k, ptr %i.ahq, align 8, !noalias !66535
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ahp, i64 728
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !66535
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ahp, i64 736
  store i64 153, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !66535
  %i.ahr = add nuw nsw i64 %i.ahl, 4              ; 2 uses
  %i.ahs = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahl ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 1080
  store ptr %i.k, ptr %i.aht, align 8, !noalias !66535
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ahs, i64 1088
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !66535
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ahs, i64 1096
  store i64 153, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !66535
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit18.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %bb.jx, %bb.jw, %bb.iy
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i.i, %.loopexit.split-lp.i.i ], [ %i.ahx, %bb.iy ], [ %.pn.i.i.i.i.i.i.i, %bb.jw ], [ %.pn.i.i.i.i.i.i.i, %bb.jx ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66536)
  call void @llvm.experimental.noalias.scope.decl(metadata !66537)
  %i.ahu = load ptr, ptr %i.ahe, align 8, !alias.scope !66538, !noalias !66526, !noundef !166 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ahu, null
  br i1 %.not.i.i.i.i, label %"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..network..Origin$GT$17h6e2e2022bcfba0e0E.exit", label %bb.iw

bb.iw:                                            ; preds = %.body.i.i
  %i.ahv = atomicrmw add ptr %i.ahu, i64 -1 release, align 8, !noalias !66539
  %i.ahw = icmp eq i64 %i.ahv, 1
  br i1 %i.ahw, label %bb.ix, label %"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..network..Origin$GT$17h6e2e2022bcfba0e0E.exit"

bb.ix:                                            ; preds = %bb.iw
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h20baad51a127d8d8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahe)
          to label %"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..network..Origin$GT$17h6e2e2022bcfba0e0E.exit" unwind label %bb.kp, !noalias !66526

bb.iy:                                            ; preds = %bb.iv
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit18.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod1985.not = icmp eq i64 %xtraiter1984, 0
  br i1 %lcmp.mod1985.not, label %.loopexit18.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit18.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ahr, %.loopexit18.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1986 = icmp ne i64 %xtraiter1984, 0
  call void @llvm.assume(i1 %lcmp.mod1986)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ahy = phi i64 [ %i.ahz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ahz = add nuw nsw i64 %i.ahy, 1
  %i.aia = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahy ; 3 uses
  store ptr %i.k, ptr %i.aia, align 8, !noalias !66535
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !66535
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.aia, i64 16
  store i64 153, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !66535
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1984
  br i1 %epil.iter.cmp.not, label %.loopexit18.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !66161

.loopexit18.i.i:                                  ; preds = %.loopexit18.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5c8207ef20eac3e5E.exit.i.i.i.i.i.i.i.i"
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.j, align 8, !alias.scope !66540, !noalias !66526
  %.sroa.4.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !66540, !noalias !66526
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i1089 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.agt, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i1089, align 8, !alias.scope !66540, !noalias !66526
  %i.aib = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahf ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !66526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !66526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !66526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !66526
  %i.aic = load i64, ptr %i.ags, align 8, !noalias !66526, !noundef !166 ; 3 uses
  store i64 %i.aic, ptr %i.i, align 8, !noalias !66526
  %i.aid = icmp ult i64 %i.aic, 192153584101141163
  call void @llvm.assume(i1 %i.aid)
  %i.aie = ptrtoint ptr %i.aib to i64
  %i.aif = ptrtoint ptr %.sroa.10.0.i.i.i.i.i.i.i to i64 ; 4 uses
  store i64 %i.agt, ptr %i.h, align 8, !noalias !66526
  %i.aig = icmp eq i64 %i.aic, %i.agt
  br i1 %i.aig, label %bb.ja, label %bb.iz, !prof !167

bb.iz:                                            ; preds = %.loopexit18.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !66526
  store ptr null, ptr %i.g, align 8, !noalias !66526
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #78
          to label %.noexc11.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !66526

.noexc11.i.i:                                     ; preds = %bb.iz
  unreachable

bb.ja:                                            ; preds = %.loopexit18.i.i
  %i.aih = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 384 ; 6 uses
  %i.aii = cmpxchg ptr %i.aih, i32 0, i32 1 acquire monotonic, align 4, !noalias !66541
  %i.aij = extractvalue { i32, i1 } %i.aii, 1
  br i1 %i.aij, label %.noexc12.i.i, label %bb.jb, !prof !167

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.aih)
          to label %.noexc12.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !66526

.noexc12.i.i:                                     ; preds = %bb.jb, %bb.ja
  %i.aik = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !66541
  %i.ail = and i64 %i.aik, 9223372036854775807
  %i.aim = icmp eq i64 %i.ail, 0
  br i1 %i.aim, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9c1537d6d7b48bd1E.exit.i.i.i", label %bb.jc, !prof !167

bb.jc:                                            ; preds = %.noexc12.i.i
  %i.ain = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc13.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !66526

.noexc13.i.i:                                     ; preds = %bb.jc
  %i.aio = xor i1 %i.ain, true
  %i.aip = zext i1 %i.aio to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9c1537d6d7b48bd1E.exit.i.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9c1537d6d7b48bd1E.exit.i.i.i": ; preds = %.noexc13.i.i, %.noexc12.i.i
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.aip, %.noexc13.i.i ], [ 0, %.noexc12.i.i ] ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 388 ; 2 uses
  %i.air = load atomic i8, ptr %i.aiq monotonic, align 4, !noalias !66541
  %.not.i.i.i = icmp eq i8 %i.air, 0
  br i1 %.not.i.i.i, label %bb.ji, label %bb.jd, !prof !167

bb.jd:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9c1537d6d7b48bd1E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !66542
  store ptr %i.aih, ptr %i.c, align 8, !noalias !66542
  %i.ais = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %i.ais, align 8, !noalias !66542
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2166, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #78
          to label %bb.jf unwind label %bb.je, !noalias !66542

bb.je:                                            ; preds = %bb.jd
  %i.ait = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr187drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$$GT$17h172096cde49b32baE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #79
          to label %.loopexit.split-lp.i.i unwind label %bb.jg, !noalias !66542

bb.jf:                                            ; preds = %bb.jd
  unreachable

bb.jg:                                            ; preds = %bb.je
  %i.aiu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !66542
  unreachable

bb.jh:                                            ; preds = %bb.jj
  unreachable

bb.ji:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9c1537d6d7b48bd1E.exit.i.i.i"
  %i.aiv = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1
  %i.aiw = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 408
  %i.aix = load i64, ptr %i.aiw, align 8, !noalias !66526, !noundef !166 ; 3 uses
  store i64 %i.aix, ptr %i.f, align 8, !noalias !66526
  %i.aiy = icmp ult i64 %i.aix, 288230376151711744
  call void @llvm.assume(i1 %i.aiy)
  store i64 %i.agt, ptr %i.e, align 8, !noalias !66526
  %i.aiz = icmp eq i64 %i.aix, %i.agt
  br i1 %i.aiz, label %bb.jk, label %bb.jj, !prof !167

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !66526
  store ptr null, ptr %i.d, align 8, !noalias !66526
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #78
          to label %bb.jh unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !66526

bb.jk:                                            ; preds = %bb.ji
  %i.aja = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 400
  %i.ajb = load ptr, ptr %i.aja, align 8, !noalias !66526, !nonnull !166, !noundef !166
  br i1 %.not.i.i1088, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.jl, %bb.jj
  %lpad.loopexit.split-lp1687 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E"(ptr nonnull %i.aih, i8 %.sroa.01.0.i.i.i.i.i) #79
          to label %.loopexit.split-lp.i.i unwind label %bb.js, !noalias !66526

.lr.ph.i.i.i:                                     ; preds = %bb.jk, %bb.jr
  %.sroa.8.034.i.i.i = phi i64 [ %i.ajc, %bb.jr ], [ 0, %bb.jk ] ; 3 uses
  %i.ajc = add nuw nsw i64 %.sroa.8.034.i.i.i, 1  ; 2 uses
  %i.ajd = getelementptr inbounds nuw [32 x i8], ptr %i.ajb, i64 %.sroa.8.034.i.i.i ; 5 uses
  %i.aje = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.8.034.i.i.i
  %i.ajf = load ptr, ptr %i.ajd, align 8, !noalias !66526, !nonnull !166, !noundef !166 ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 264
  %i.ajh = load atomic i64, ptr %i.ajg monotonic, align 8, !noalias !66526 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajf, i64 256
  %i.ajj = load atomic i64, ptr %i.aji acquire, align 8, !noalias !66526
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16 ; 2 uses
  %i.ajl = load i64, ptr %i.ajk, align 8, !noalias !66526, !noundef !166 ; 3 uses
  %i.ajm = sub i64 %i.ajh, %i.ajj
  %.not.i.i10.i.i = icmp slt i64 %i.ajm, %i.ajl
  br i1 %.not.i.i10.i.i, label %bb.jr, label %bb.jl, !prof !167

bb.jl:                                            ; preds = %.lr.ph.i.i.i
  %i.ajn = shl i64 %i.ajl, 1
  invoke fastcc void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$6resize17h752b9ad78bc3026aE"(ptr noundef nonnull align 8 %i.ajd, i64 noundef %i.ajn)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !66526

.noexc.i.i.i:                                     ; preds = %bb.jl
  %i.ajo = load i64, ptr %i.ajk, align 8, !noalias !66526, !noundef !166
  br label %bb.jr

._crit_edge.i.i.i:                                ; preds = %bb.jr, %bb.jk
  br i1 %i.aiv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.jm

bb.jm:                                            ; preds = %._crit_edge.i.i.i
  %i.ajp = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !66526
  %i.ajq = and i64 %i.ajp, 9223372036854775807
  %i.ajr = icmp eq i64 %i.ajq, 0
  br i1 %i.ajr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.jn, !prof !167

bb.jn:                                            ; preds = %bb.jm
  %i.ajs = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc14.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !66526

.noexc14.i.i:                                     ; preds = %bb.jn
  br i1 %i.ajs, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.jo

bb.jo:                                            ; preds = %.noexc14.i.i
  store atomic i8 1, ptr %i.aiq monotonic, align 4, !noalias !66526
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i: ; preds = %bb.jo, %.noexc14.i.i, %bb.jm, %._crit_edge.i.i.i
  %i.ajt = atomicrmw xchg ptr %i.aih, i32 0 release, align 4, !noalias !66526
  %i.aju = icmp eq i32 %i.ajt, 2
  br i1 %i.aju, label %bb.jp, label %"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E.exit.i.i.i", !prof !169

bb.jp:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.aih)
          to label %"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E.exit.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !66526

"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E.exit.i.i.i": ; preds = %bb.jp, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i
  %i.ajv = load i64, ptr %i.ags, align 8, !noalias !66526, !noundef !166 ; 3 uses
  %i.ajw = icmp ult i64 %i.ajv, 192153584101141163
  call void @llvm.assume(i1 %i.ajw)
  %.not39.i.i.i = icmp eq i64 %i.ajv, 0
  br i1 %.not39.i.i.i, label %.loopexit14.i.i, label %.lr.ph36.i.i.i

.lr.ph36.i.i.i:                                   ; preds = %"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E.exit.i.i.i"
  %i.ajx = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 472
  br label %bb.jq

bb.jq:                                            ; preds = %.noexc16.i.i, %.lr.ph36.i.i.i
  %.sroa.02.035.i.i.i = phi i64 [ 0, %.lr.ph36.i.i.i ], [ %i.ajy, %.noexc16.i.i ] ; 2 uses
  invoke void @_ZN10rayon_core5sleep5Sleep26notify_worker_latch_is_set17hdc6ec13179791057E(ptr noundef nonnull align 8 %i.ajx, i64 noundef %.sroa.02.035.i.i.i)
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !66526

.noexc16.i.i:                                     ; preds = %bb.jq
  %i.ajy = add nuw nsw i64 %.sroa.02.035.i.i.i, 1 ; 2 uses
  %exitcond41.not.i.i.i = icmp eq i64 %i.ajy, %i.ajv
  br i1 %exitcond41.not.i.i.i, label %.loopexit14.i.i, label %bb.jq

bb.jr:                                            ; preds = %.noexc.i.i.i, %.lr.ph.i.i.i
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.ajo, %.noexc.i.i.i ], [ %i.ajl, %.lr.ph.i.i.i ]
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8
  %.sroa.01.0.i.i.i.i = load ptr, ptr %i.ajz, align 8, !noalias !66526, !noundef !166
  %i.aka = add i64 %.sroa.02.0.i.i.i.i, -1
  %i.akb = and i64 %i.aka, %i.ajh
  %i.akc = getelementptr inbounds [16 x i8], ptr %.sroa.01.0.i.i.i.i, i64 %i.akb ; 2 uses
  store volatile ptr @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17hbc95f89f5c179597E", ptr %i.akc, align 8, !noalias !66526
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  store volatile ptr %i.aje, ptr %i.akd, align 8, !noalias !66526
  fence release
  %i.ake = load ptr, ptr %i.ajd, align 8, !noalias !66526, !nonnull !166, !noundef !166
  %i.akf = add i64 %i.ajh, 1
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ake, i64 264
  store atomic i64 %i.akf, ptr %i.akg release, align 8, !noalias !66526
  %exitcond.not.i.i.i = icmp eq i64 %i.ajc, %i.agt
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.js:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.akh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !66526
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.jq, %.loopexit14.i.i, %bb.jp, %bb.jn, %bb.jc, %bb.jb, %bb.iz
  %lpad.loopexit.split-lp1685 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit14.i.i:                                  ; preds = %.noexc16.i.i, %"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !66526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !66526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !66526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !66526
  invoke void @_ZN10rayon_core5latch10CountLatch4wait17h9ed8dbd8fa81987cE(ptr noundef nonnull align 8 %i.k, ptr noundef align 128 %.val.i.i.i.i1087)
          to label %bb.jt unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !66526

bb.jt:                                            ; preds = %.loopexit14.i.i
  %i.aki = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.i.i.i, 360 ; 4 uses
  %i.akj = udiv i64 %i.aki, 344                   ; 4 uses
  br i1 %.not.i.i1088, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.kg, %bb.kb
  %i.akk = phi ptr [ inttoptr (i64 8 to ptr), %bb.kg ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.kb ], [ %.sroa.10.0.i.i.i.i.i.i.i, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.akl = phi i64 [ 0, %bb.kg ], [ %.sroa.4.0.i.i.i.i.i.i.i, %bb.kb ], [ %.sroa.4.0.i.i.i.i.i.i.i, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.val2.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.kg ], [ %i.aib, %bb.kb ], [ %i.aib, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.akm = phi ptr [ inttoptr (i64 8 to ptr), %bb.kg ], [ %i.akx, %bb.kb ], [ %i.akx, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.amc, %bb.kg ], [ %i.alc, %bb.kb ], [ %i.alc, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.akn = ptrtoint ptr %.val2.i.i.i.i.i.i.i.i.i to i64
  %i.ako = ptrtoint ptr %i.akm to i64
  %i.akp = sub nuw i64 %i.akn, %i.ako
  %i.akq = udiv exact i64 %i.akp, 360
  invoke fastcc void @"_ZN4core3ptr488drop_in_place$LT$$u5b$rayon_core..job..StackJob$LT$rayon_core..latch..LatchRef$LT$rayon_core..latch..CountLatch$GT$$C$$RF$rayon_core..broadcast..broadcast_in$LT$index_scheduler..scheduler..process_export..$LT$impl$u20$index_scheduler..IndexScheduler$GT$..export_one_index..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$$u5d$$GT$17hdf8cb23645e52294E"(ptr noalias noundef nonnull align 8 %i.akm, i64 noundef %i.akq)
          to label %bb.jw unwind label %bb.ju, !noalias !66543

bb.ju:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.akr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.aks = icmp eq i64 %i.akl, 0
  br i1 %i.aks, label %.body.i.i.i.i.i.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.akt = mul nuw nsw i64 %i.akl, 360
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akk, i64 noundef %i.akt, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !66543
  br label %.body.i.i.i.i.i.i

bb.jw:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.aku = icmp eq i64 %i.akl, 0
  br i1 %i.aku, label %.body.i.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.akv = mul nuw nsw i64 %i.akl, 360
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akk, i64 noundef %i.akv, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !66543
  br label %.body.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.jt, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.4.026.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.alu, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.jt ] ; 7 uses
  %i.akw = phi ptr [ %i.akx, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.jt ] ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !66544 ; 4 uses
  %.sroa.313.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 24
  %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.313.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !66544 ; 3 uses
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 32
  %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !66544 ; 3 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 360 ; 5 uses
  %i.aky = icmp ne i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, 154
  call void @llvm.assume(i1 %i.aky)
  %i.akz = add nsw i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, -153
  %i.ala = icmp samesign ugt i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, 152
  %i.alb = select i1 %i.ala, i64 %i.akz, i64 1
  switch i64 %i.alb, label %bb.jy [
    i64 0, label %bb.jz
    i64 1, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i"
    i64 2, label %bb.ka
  ], !prof !219

bb.jy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.jz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #78
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.kb, !noalias !66545

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.jz
  unreachable

bb.ka:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  invoke void @_ZN10rayon_core6unwind16resume_unwinding17h583035347eb15765E(ptr noundef nonnull align 1 %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i) #78
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.kb, !noalias !66545

.noexc3.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.ka
  unreachable

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %i.alc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ald = ptrtoint ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i to i64
  %i.ale = sub nuw i64 %i.ald, %i.aif
  %i.alf = udiv exact i64 %i.ale, 344             ; 3 uses
  %i.alg = icmp eq ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, %.sroa.10.0.i.i.i.i.i.i.i
  br i1 %i.alg, label %.body.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.kb, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ali, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.kb ] ; 2 uses
  %i.alh = getelementptr inbounds nuw [344 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ali = add nuw i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.alj = load i64, ptr %i.alh, align 8, !range !189, !alias.scope !66546, !noalias !66545, !noundef !166
  %i.alk = icmp eq i64 %i.alj, 152
  br i1 %i.alk, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.kc

bb.kc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.alh)
          to label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.kd, !noalias !66545

"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.kc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.all = icmp eq i64 %i.ali, %i.alf
  br i1 %i.all, label %.body.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.kd:                                            ; preds = %bb.kc
  %i.alm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.aln = icmp eq i64 %i.ali, %i.alf
  br i1 %i.aln, label %.body.i.i.i.i.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph12.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.kd, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.110.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.alp, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ali, %bb.kd ] ; 2 uses
  %i.alo = getelementptr inbounds nuw [344 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.110.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.alp = add nuw i64 %.sroa.0.110.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.alq = load i64, ptr %i.alo, align 8, !range !189, !alias.scope !66547, !noalias !66545, !noundef !166
  %i.alr = icmp eq i64 %i.alq, 152
  br i1 %i.alr, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ke

bb.ke:                                            ; preds = %.lr.ph12.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.alo)
          to label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.kf, !noalias !66545

"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ke, %.lr.ph12.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.als = icmp eq i64 %i.alp, %i.alf
  br i1 %i.als, label %.body.i.i.i.i.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.kf:                                            ; preds = %bb.ke
  %i.alt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !66545
  unreachable

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.kd
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !66545
  unreachable

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 40
  %.sroa.4.sroa.6.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, i64 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.4.sroa.6.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.515.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 320, i1 false), !noalias !66544
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !66545
  %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !66545
  %.sroa.4.sroa.5.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !66545
  %i.alu = getelementptr inbounds nuw i8, ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, i64 344 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i1090 = icmp eq ptr %i.akx, %i.aib
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1090, label %._crit_edge.i.i.i.i.i.i.i.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.loopexit.i.i:         ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i = ptrtoint ptr %i.alu to i64
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %._crit_edge.i.i.i.i.i.i.i.i.loopexit.i.i, %bb.jt
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %._crit_edge.i.i.i.i.i.i.i.i.loopexit.i.i ], [ %i.aif, %bb.jt ] ; 2 uses
  %i.alv = phi ptr [ %i.akx, %._crit_edge.i.i.i.i.i.i.i.i.loopexit.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.jt ] ; 2 uses
  %.pre-phi57.i.pre-phi.i.pre-phi = ptrtoint ptr %i.alv to i64
  %i.alw = sub nuw i64 %.pre-phi.i.i, %i.aif
  %i.alx = udiv exact i64 %i.alw, 344             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66548
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !66548
  %i.aly = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.alx, ptr %i.aly, align 8, !noalias !66548
  %i.alz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.alz, align 8, !noalias !66548
  %i.ama = sub nuw i64 %i.aie, %.pre-phi57.i.pre-phi.i.pre-phi
  %i.amb = udiv exact i64 %i.ama, 360
  invoke fastcc void @"_ZN4core3ptr488drop_in_place$LT$$u5b$rayon_core..job..StackJob$LT$rayon_core..latch..LatchRef$LT$rayon_core..latch..CountLatch$GT$$C$$RF$rayon_core..broadcast..broadcast_in$LT$index_scheduler..scheduler..process_export..$LT$impl$u20$index_scheduler..IndexScheduler$GT$..export_one_index..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$$u5d$$GT$17hdf8cb23645e52294E"(ptr noalias noundef nonnull align 8 %i.alv, i64 noundef %i.amb)
          to label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h10fc52b9687f0237E.exit.i.i.i.i.i.i.i" unwind label %bb.kg, !noalias !66548

bb.kg:                                            ; preds = %bb.kj, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.amc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr608drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$rayon_core..job..StackJob$LT$rayon_core..latch..LatchRef$LT$rayon_core..latch..CountLatch$GT$$C$$RF$rayon_core..broadcast..broadcast_in$LT$index_scheduler..scheduler..process_export..$LT$impl$u20$index_scheduler..IndexScheduler$GT$..export_one_index..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$$GT$17h99bd1f792f2d7d7dE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #79
          to label %.body.i.i.i.i.i.i.i unwind label %bb.kl, !noalias !66548

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h10fc52b9687f0237E.exit.i.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i1091 = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i.i, 0 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i1091, label %bb.km, label %bb.kh

bb.kh:                                            ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h10fc52b9687f0237E.exit.i.i.i.i.i.i.i"
  %i.amd = mul nuw nsw i64 %i.akj, 344            ; 4 uses
  %.not49.i.i.i.i.i.i.i = icmp eq i64 %i.aki, %i.amd
  br i1 %.not49.i.i.i.i.i.i.i, label %bb.km, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.ame = icmp samesign ule i64 %i.amd, %i.aki
  call void @llvm.assume(i1 %i.ame)
  %i.amf = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.aki, i64 noundef 8, i64 noundef %i.amd) #77, !noalias !66548 ; 2 uses
  %i.amg = icmp eq ptr %i.amf, null
  br i1 %i.amg, label %bb.kj, label %bb.km, !prof !175

bb.kj:                                            ; preds = %bb.ki
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.amd) #78
          to label %bb.kk unwind label %bb.kg, !noalias !66548

bb.kk:                                            ; preds = %bb.kj
  unreachable

bb.kl:                                            ; preds = %bb.kg
  %i.amh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.kl, %bb.jv, %bb.ju
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !66548
  unreachable

bb.km:                                            ; preds = %bb.ki, %bb.kh, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h10fc52b9687f0237E.exit.i.i.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h10fc52b9687f0237E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.kh ], [ %i.amf, %bb.ki ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !66526
  call void @llvm.experimental.noalias.scope.decl(metadata !66549)
  call void @llvm.experimental.noalias.scope.decl(metadata !66550)
  %i.ami = load ptr, ptr %i.ahe, align 8, !alias.scope !66551, !noalias !66526, !noundef !166 ; 2 uses
  %.not.i.i32.i.i = icmp eq ptr %i.ami, null
  br i1 %.not.i.i32.i.i, label %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.amj = atomicrmw add ptr %i.ami, i64 -1 release, align 8, !noalias !66552
  %i.amk = icmp eq i64 %i.amj, 1
  br i1 %i.amk, label %bb.ko, label %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i

bb.ko:                                            ; preds = %bb.kn
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h20baad51a127d8d8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahe)
          to label %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i unwind label %bb.il

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.je
  %eh.lpad-body.ph.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp1687, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ait, %bb.je ], [ %lpad.loopexit.split-lp1685, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr501drop_in_place$LT$alloc..vec..Vec$LT$rayon_core..job..StackJob$LT$rayon_core..latch..LatchRef$LT$rayon_core..latch..CountLatch$GT$$C$$RF$rayon_core..broadcast..broadcast_in$LT$index_scheduler..scheduler..process_export..$LT$impl$u20$index_scheduler..IndexScheduler$GT$..export_one_index..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$$GT$$GT$17hd006cb6526d4f79bE"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #79
          to label %.body.i.i unwind label %bb.kp, !noalias !66526

bb.kp:                                            ; preds = %.loopexit.split-lp.i.i, %bb.ix
  %i.aml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !66526
  unreachable

_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i: ; preds = %bb.ko, %bb.kn, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !66526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !66526
  %i.amm = atomicrmw add ptr %i.agq, i64 -1 monotonic, align 8, !noalias !66525 ; 0 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  %i.amo = load ptr, ptr %i.amn, align 8, !noalias !66525, !nonnull !166, !noundef !166
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  %i.amq = atomicrmw xchg ptr %i.amp, i8 0 seq_cst, align 1, !noalias !66525
  %i.amr = icmp eq i8 %i.amq, 0
  br i1 %i.amr, label %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit.thread227, label %bb.kq

bb.kq:                                            ; preds = %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i.i.i) ]
  %i.ams = icmp eq i64 %.pre-phi.i.i, %i.aif
  br i1 %i.ams, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h783ed708f92bbe56E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.kq, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i"
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.amu, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i" ], [ 0, %bb.kq ] ; 2 uses
  %i.amt = getelementptr inbounds nuw [344 x i8], ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 %.sroa.0.09.i.i.i.i ; 2 uses
  %i.amu = add nuw i64 %.sroa.0.09.i.i.i.i, 1     ; 4 uses
  %i.amv = load i64, ptr %i.amt, align 8, !range !189, !alias.scope !66553, !noalias !66554, !noundef !166
  %i.amw = icmp eq i64 %i.amv, 152
  br i1 %i.amw, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i", label %bb.kr

bb.kr:                                            ; preds = %.lr.ph.i.i.i.i
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.amt)
          to label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i" unwind label %bb.ks, !noalias !66554

"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i": ; preds = %bb.kr, %.lr.ph.i.i.i.i
  %i.amx = icmp eq i64 %i.amu, %i.alx
  br i1 %i.amx, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h783ed708f92bbe56E.exit.i.i", label %.lr.ph.i.i.i.i

bb.ks:                                            ; preds = %bb.kr
  %i.amy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amz = icmp eq i64 %i.amu, %i.alx
  br i1 %i.amz, label %.body.i3.i, label %.lr.ph12.i.i.i.i

.lr.ph12.i.i.i.i:                                 ; preds = %bb.ks, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i"
  %.sroa.0.110.i.i.i.i = phi i64 [ %i.anb, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i" ], [ %i.amu, %bb.ks ] ; 2 uses
  %i.ana = getelementptr inbounds nuw [344 x i8], ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 %.sroa.0.110.i.i.i.i ; 2 uses
  %i.anb = add nuw i64 %.sroa.0.110.i.i.i.i, 1    ; 2 uses
  %i.anc = load i64, ptr %i.ana, align 8, !range !189, !alias.scope !66555, !noalias !66554, !noundef !166
  %i.and = icmp eq i64 %i.anc, 152
  br i1 %i.and, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i", label %bb.kt

bb.kt:                                            ; preds = %.lr.ph12.i.i.i.i
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.ana)
          to label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i" unwind label %bb.ku, !noalias !66554

"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i": ; preds = %bb.kt, %.lr.ph12.i.i.i.i
  %i.ane = icmp eq i64 %i.anb, %i.alx
  br i1 %i.ane, label %.body.i3.i, label %.lr.ph12.i.i.i.i

bb.ku:                                            ; preds = %bb.kt
  %i.anf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !66554
  unreachable

.body.i3.i:                                       ; preds = %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i", %bb.ks
  br i1 %.not.i.i.i.i.i.i.i1091, label %"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..network..Origin$GT$17h6e2e2022bcfba0e0E.exit", label %bb.kv

bb.kv:                                            ; preds = %.body.i3.i
  %i.ang = mul nuw nsw i64 %i.akj, 344
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i.i.i.i.i.i.i, i64 noundef %i.ang, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !66554
  br label %"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..network..Origin$GT$17h6e2e2022bcfba0e0E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h783ed708f92bbe56E.exit.i.i": ; preds = %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i", %bb.kq
  br i1 %.not.i.i.i.i.i.i.i1091, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h783ed708f92bbe56E.exit.i.i"
  %i.anh = mul nuw nsw i64 %i.akj, 344
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i.i.i.i.i.i.i, i64 noundef %i.anh, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !66554
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h783ed708f92bbe56E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store i64 95, ptr %i.cg, align 8
  %.sroa.4323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 -9223372036854775798, ptr %.sroa.4323.0..sroa_idx, align 8
  %.val426 = load ptr, ptr %i.eg, align 8, !nonnull !166, !align !173, !noundef !166
  %.val427 = load i64, ptr %i.ek, align 8, !noundef !166
  invoke fastcc void @"_ZN15index_scheduler9scheduler14process_export49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$16export_one_index28_$u7b$$u7b$closure$u7d$$u7d$17haa09abe0750a68a5E"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.ch, ptr nonnull %.val426, i64 %.val427, ptr noalias noundef readonly align 8 captures(address) dereferenceable(320) %i.cg)
          to label %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit unwind label %bb.il

_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit: ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %.sroa.0139.0.copyload = load i64, ptr %i.ch, align 8 ; 2 uses
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.6141.sroa.0.0.copyload = load i64, ptr %.sroa.6141.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6141.sroa.6.0..sroa.6141.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.6141.sroa.6.0.copyload = load ptr, ptr %.sroa.6141.sroa.6.0..sroa.6141.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6141.sroa.7.0..sroa.6141.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.sroa.6141.sroa.7.0.copyload = load i64, ptr %.sroa.6141.sroa.7.0..sroa.6141.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.8143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.8143, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.8143.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %.not362 = icmp eq i64 %.sroa.0139.0.copyload, 152
  br i1 %.not362, label %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit.thread227, label %bb.ky

bb.ky:                                            ; preds = %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit
  %.sroa.3335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.3335.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.8143, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8143)
  store i64 %.sroa.0139.0.copyload, ptr %0, align 8
  %.sroa.2334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6141.sroa.0.0.copyload, ptr %.sroa.2334.0..sroa_idx, align 8
  %.sroa.2334.sroa.2.0..sroa.2334.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6141.sroa.6.0.copyload, ptr %.sroa.2334.sroa.2.0..sroa.2334.0..sroa_idx.sroa_idx, align 8
  %.sroa.2334.sroa.3.0..sroa.2334.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6141.sroa.7.0.copyload, ptr %.sroa.2334.sroa.3.0..sroa.2334.0..sroa_idx.sroa_idx, align 8
  br label %bb.io

_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit.thread227: ; preds = %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i, %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit
  %.sroa.6141.sroa.7.0237.ph = phi i64 [ %.sroa.6141.sroa.7.0.copyload, %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit ], [ %i.alx, %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i ] ; 3 uses
  %.sroa.6141.sroa.6.0235.ph = phi ptr [ %.sroa.6141.sroa.6.0.copyload, %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit ], [ %.sroa.01.0.i.i.i.i.i.i.i, %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i ] ; 5 uses
  %.sroa.6141.sroa.0.0233.ph = phi i64 [ %.sroa.6141.sroa.0.0.copyload, %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit ], [ %i.akj, %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8143)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6141.sroa.6.0235.ph) ]
  %i.ani = icmp ult i64 %.sroa.6141.sroa.7.0237.ph, 26812128014112721
  call void @llvm.assume(i1 %i.ani)
  %.idx = mul nuw nsw i64 %.sroa.6141.sroa.7.0237.ph, 344
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.6141.sroa.6.0235.ph, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  store ptr %.sroa.6141.sroa.6.0235.ph, ptr %i.cs, align 8
end_hunk_0
begin_hunk_1_@"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h3ffc06ec133fafccE":bb.a
  store ptr %.sroa.01.0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.h, align 8
  ret void

.split15:                                         ; preds = %bb.d
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2180, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4642) #78
  unreachable

.split:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !166, !noundef !166 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !166, !noundef !166 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 16, !nonnull !166, !noundef !166 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = and i64 %i.n, 7
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p     ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult ptr %i.q, %i.m
  %i.v = icmp ugt i64 %i.c, %i.t
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %bb.f, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit": ; preds = %.split
  %i.w = sub i64 0, %i.c
  %i.x = getelementptr i8, ptr %i.q, i64 %i.w     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  store ptr %i.x, ptr %i.k, align 16
  br label %bb.e

bb.f:                                             ; preds = %.split
  %i.y = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef %i.c) ; 2 uses
  %.not16 = icmp eq ptr %i.y, null
  br i1 %.not16, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 8, i64 noundef %i.c) #78
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h4776e5f266822b21E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !185692 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 224) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 0         ; 6 uses
  %i.d = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !169

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7bumpalo11collections7raw_vec17capacity_overflow17h2914ddf5de003a02E() #78
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.c, i64 noundef 8)
  br i1 %i.f, label %.split, label %.split15

bb.e:                                             ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit", %bb.f, %bb.b
  %.sroa.01.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.x, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit" ], [ %i.y, %bb.f ]
  store ptr %.sroa.01.0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.h, align 8
  ret void

.split15:                                         ; preds = %bb.d
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2180, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4642) #78
  unreachable

.split:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !166, !noundef !166 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !166, !noundef !166 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 16, !nonnull !166, !noundef !166 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = and i64 %i.n, 7
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p     ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult ptr %i.q, %i.m
  %i.v = icmp ugt i64 %i.c, %i.t
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %bb.f, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit": ; preds = %.split
  %i.w = sub i64 0, %i.c
  %i.x = getelementptr i8, ptr %i.q, i64 %i.w     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  store ptr %i.x, ptr %i.k, align 16
  br label %bb.e

bb.f:                                             ; preds = %.split
  %i.y = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef %i.c) ; 2 uses
  %.not16 = icmp eq ptr %i.y, null
  br i1 %.not16, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 8, i64 noundef %i.c) #78
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$25reserve_internal_or_panic17hddf2967ba5c54eb7E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #22 personality ptr @rust_eh_personality !guid !185695 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185696)
  %i.a = add i64 %2, %1                           ; 3 uses
  %i.b = icmp ult i64 %i.a, %1                    ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.e, !prof !169

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.e ], [ %i.a, %bb.c ] ; 3 uses
  %i.c = icmp ugt i64 %.sroa.02.0.i, 41175768021673106
  %i.d = mul nuw nsw i64 %.sroa.02.0.i, 224       ; 14 uses
  br i1 %i.c, label %bb.u, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !185696
  %i.f = shl i64 %.val.i, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.a, i64 %i.f)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !185696, !noundef !166 ; 2 uses
  %.not44.i = icmp eq i64 %i.h, 0
  %i.i = mul i64 %i.h, 224                        ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not44.i, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %0, align 8, !alias.scope !185696, !nonnull !166, !noundef !166 ; 6 uses
  %.val47.i = load ptr, ptr %i.j, align 8, !alias.scope !185696 ; 7 uses
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8), !noalias !185696
  br i1 %i.l, label %bb.h, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.thread56.i"

bb.h:                                             ; preds = %bb.g
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val47.i) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val47.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !185696, !nonnull !166, !noundef !166 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !185696, !nonnull !166, !noundef !166 ; 2 uses
  %i.r = load ptr, ptr %i.o, align 16, !noalias !185696, !nonnull !166, !noundef !166 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = and i64 %i.s, 7
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr i8, ptr %i.q, i64 %i.u     ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult ptr %i.v, %i.r
  %i.aa = icmp ugt i64 %i.d, %i.y
  %or.cond.i.i.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i.i.i, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i", label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i": ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.d
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  store ptr %i.ac, ptr %i.p, align 16, !noalias !185696
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %.not.i.i = icmp ugt i64 %i.d, %i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val47.i) ]
  br i1 %.not.i.i, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val47.i, i64 16 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !185696 ; 2 uses
  %.phi.trans.insert32.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 32 ; 2 uses
  %.pre33.i.i.i = load ptr, ptr %.phi.trans.insert32.i.i.i, align 8, !noalias !185696 ; 3 uses
  %i.ad = icmp eq ptr %.pre33.i.i.i, %i.k
  br i1 %i.ad, label %bb.l, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i": ; preds = %bb.k
  %.pre.i.i = load ptr, ptr %.pre.i.i.i, align 16, !noalias !185696
  %.pre.i = ptrtoint ptr %.pre33.i.i.i to i64
  %.pre59.i = and i64 %.pre.i, 7
  %.pre61.i = sub nsw i64 0, %.pre59.i
  br label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.thread23.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.thread23.i.i": ; preds = %bb.m, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i"
  %.pre-phi64.i = phi i64 [ %.pre61.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i" ], [ %i.av, %bb.m ]
  %4 = phi ptr [ %.phi.trans.insert32.i.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i" ], [ %i.aq, %bb.m ]
  %i.ae = phi ptr [ %.pre33.i.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i" ], [ %i.ar, %bb.m ]
  %i.af = phi ptr [ %.pre.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i" ], [ %i.as, %bb.m ] ; 2 uses
  %.pre-phi64.i.pre-phi = ptrtoint ptr %i.af to i64
  %i.ag = getelementptr i8, ptr %i.ae, i64 %.pre-phi64.i ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %.pre-phi64.i.pre-phi
  %i.aj = icmp ult ptr %i.ag, %i.af
  %i.ak = icmp ugt i64 %i.d, %i.ai
  %or.cond.i22.i.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i22.i.i.i, label %bb.o, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.thread23.i.i"
  %i.al = sub nsw i64 0, %i.d
  %i.am = getelementptr i8, ptr %i.ag, i64 %i.al  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  store ptr %i.am, ptr %4, align 8, !noalias !185696
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.an = sub nuw nsw i64 %i.d, %i.i              ; 3 uses
  %i.ao = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.an, i64 noundef range(i64 1, 9) 8), !noalias !185696
  br i1 %i.ao, label %bb.m, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.thread56.i"

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !185696, !nonnull !166, !noundef !166 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !185696, !nonnull !166, !noundef !166 ; 3 uses
  %i.as = load ptr, ptr %i.ap, align 16, !noalias !185696, !nonnull !166, !noundef !166 ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = and i64 %i.at, 7
  %i.av = sub nsw i64 0, %i.au                    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ar, i64 %i.av  ; 3 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult ptr %i.aw, %i.as
  %i.bb = icmp ugt i64 %i.an, %i.az
  %or.cond.i.i.i.i = or i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i.i, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.thread23.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = sub nsw i64 0, %i.an
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.bc  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  store ptr %i.bd, ptr %i.aq, align 16, !noalias !185696
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bd, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.k, i64 range(i64 1, 0) %i.i, i1 false), !noalias !185696
  br label %bb.t

bb.o:                                             ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.thread23.i.i"
  %i.be = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %.val47.i, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 2, 0) %i.d), !noalias !185696 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.thread56.i", label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread.i.i.i
  %.sroa.012.031.i.i.i = phi ptr [ %i.am, %.thread.i.i.i ], [ %i.be, %bb.o ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.012.031.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.k, i64 range(i64 1, 0) %i.i, i1 false), !noalias !185696
  br label %bb.t

bb.q:                                             ; preds = %bb.j
  %i.bg = sub nuw i64 %i.i, %i.d                  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val47.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !185696, !nonnull !166, !noundef !166
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !185696, !nonnull !166, !noundef !166 ; 2 uses
  %i.bl = icmp ne ptr %i.bk, %i.k
  %i.bm = lshr exact i64 %i.i, 1
  %.not.i.i.i = icmp ult i64 %i.bg, %i.bm
  %or.cond.i = select i1 %i.bl, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bg ; 3 uses
  store ptr %i.bn, ptr %i.bj, align 8, !noalias !185696
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %i.k, i64 %i.d, i1 false), !noalias !185696
  br label %bb.t

bb.s:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.j, align 8, !alias.scope !185696, !nonnull !166, !align !170, !noundef !166 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !185696, !nonnull !166, !noundef !166 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !185696, !nonnull !166, !noundef !166 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 16, !noalias !185696, !nonnull !166, !noundef !166 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = and i64 %i.bu, 7
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr i8, ptr %i.bs, i64 %i.bw  ; 3 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bt to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp ult ptr %i.bx, %i.bt
  %i.cc = icmp ugt i64 %i.d, %i.ca
  %or.cond.i.i = or i1 %i.cb, %i.cc
  br i1 %or.cond.i.i, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i", label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i": ; preds = %bb.s
  %i.cd = sub nsw i64 0, %i.d
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  store ptr %i.ce, ptr %i.br, align 16, !noalias !185696
  br label %bb.t

"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i": ; preds = %bb.s, %bb.i
  %.val47.sink.i = phi ptr [ %.val47.i, %bb.i ], [ %i.bo, %bb.s ]
  %i.cf = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %.val47.sink.i, i64 noundef 8, i64 noundef %i.d), !noalias !185696 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.thread56.i", label %bb.t

"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.thread56.i": ; preds = %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i", %bb.o, %bb.l, %bb.g
  tail call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 8, i64 noundef %i.d) #78, !noalias !185696
  unreachable

bb.t:                                             ; preds = %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i", %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i", %bb.r, %bb.q, %bb.p, %bb.n, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"
  %.sroa.029.254.i = phi ptr [ %i.cf, %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i" ], [ %i.ce, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i" ], [ %i.bn, %bb.r ], [ %i.k, %bb.q ], [ %i.bd, %bb.n ], [ %.sroa.012.031.i.i.i, %bb.p ], [ %i.ac, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i" ]
  store ptr %.sroa.029.254.i, ptr %0, align 8, !alias.scope !185696
  store i64 %.sroa.02.0.i, ptr %i.g, align 8, !alias.scope !185696
  ret void

bb.u:                                             ; preds = %bb.c, %bb.b, %bb.d
  tail call void @_ZN7bumpalo11collections7raw_vec17capacity_overflow17h2914ddf5de003a02E() #78
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7geojson10conversion12to_geo_types124_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geojson..GeoJson$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h22e85a80083cacf7E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(320) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !185858 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [320 x i8], align 8               ; 11 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  %i.d = alloca [320 x i8], align 8               ; 11 uses
  %.sroa.6.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %i.e = alloca [128 x i8], align 8               ; 4 uses
  %i.f = alloca [320 x i8], align 8               ; 11 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.15.i.i = alloca [288 x i8], align 8      ; 10 uses
  %i.j = alloca [320 x i8], align 8               ; 8 uses
  %i.k = load i64, ptr %1, align 8, !range !279, !noundef !166 ; 4 uses
  %i.l = icmp ne i64 %i.k, 9
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nsw i64 %i.k, -8
  %i.n = icmp samesign ugt i64 %i.k, 7
  %i.o = select i1 %i.n, i64 %i.m, i64 1
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @"_ZN7geojson10conversion12to_geo_types126_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Geometry$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h48d6c07297e0b94bE"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.p)
  br label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h119c2ed75d9dcf15E.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185860)
  %.not.i = icmp eq i64 %i.k, 7
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN7geojson10conversion12to_geo_types126_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Geometry$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h48d6c07297e0b94bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(320) %1)
          to label %bb.m unwind label %bb.k

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull readonly align 8 dereferenceable(320) %1, i64 320, i1 false), !alias.scope !185861
  br label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h119c2ed75d9dcf15E.exit"

bb.g:                                             ; preds = %bb.n, %bb.m
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185862)
  %i.r = load i64, ptr %i.q, align 8, !range !193, !alias.scope !185863, !noundef !166 ; 2 uses
  %switch.i.i = icmp sgt i64 %i.r, 0
  br i1 %switch.i.i, label %bb.h, label %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hac00a0033a45b80dE.exit.i"

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.val1.i.i = load ptr, ptr %i.s, align 8, !alias.scope !185863, !nonnull !166, !noundef !166
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !185864
  br label %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hac00a0033a45b80dE.exit.i"

.noexc.i:                                         ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i22.i", %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hac00a0033a45b80dE.exit.i"
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185865)
  %i.u = load i64, ptr %i.t, align 8, !range !192, !alias.scope !185866, !noundef !166
  %i.v = icmp eq i64 %i.u, -9223372036854775808
  br i1 %i.v, label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h119c2ed75d9dcf15E.exit", label %bb.i

bb.i:                                             ; preds = %.noexc.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185869)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val1.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !185870, !noundef !166 ; 4 uses
  %i.x = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !185870, !nonnull !166, !noundef !166
  %i.z = shl i64 %.val1.i.i.i.i.i, 3
  %i.aa = icmp slt i64 %.val1.i.i.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.aa), !noalias !185869
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 16                       ; 2 uses
  %i.ad = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  tail call void @llvm.assume(i1 %i.af), !noalias !185869
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag), !noalias !185869
  %i.ah = sub nuw nsw i64 -16, %i.ab
  %i.ai = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 %i.ah
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #77, !noalias !185871, !inline_history !201
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i, %bb.i
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h737a762b1bd6a592E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.t), !noalias !185859, !inline_history !259
  br label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h119c2ed75d9dcf15E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i22.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 224
  invoke void @"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17he11eb4f4790200b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ak) #79
          to label %common.resume unwind label %bb.p, !noalias !185859

bb.k:                                             ; preds = %bb.e
end_hunk_1
