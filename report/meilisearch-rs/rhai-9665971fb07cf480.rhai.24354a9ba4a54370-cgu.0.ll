Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 150
loop-unroll.NumUnrolled: 259
begin_hunk_0_@"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17hea54116f4dcf80a7E":bb.a
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3470)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3470 ; 2 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !alias.scope !3470 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.21.0.copyload.i = load i64, ptr %.sroa.21.0..sroa_idx.i, align 8, !alias.scope !3470 ; 6 uses
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.274.0.copyload.i = load i64, ptr %.sroa.274.0..sroa_idx.i, align 8, !alias.scope !3470 ; 2 uses
  %i.e = icmp eq i64 %.sroa.274.0.copyload.i, 0
  br i1 %i.e, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h3bfcb163c77c30beE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !3470
  %i.f = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.f, label %bb.c, label %.critedge.i1.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i2.i = icmp eq ptr %.sroa.7.0.copyload.i, null
  br i1 %.not.i.i2.i, label %bb.d, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i"

bb.d:                                             ; preds = %bb.c
  %i.g = inttoptr i64 %.sroa.13.0.copyload.i to ptr ; 3 uses
  %i.h = icmp eq i64 %.sroa.21.0.copyload.i, 0
  br i1 %i.h, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i", label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.d
  %xtraiter = and i64 %.sroa.21.0.copyload.i, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i32.i.prol.loopexit, label %.lr.ph.i.i32.i.prol

.lr.ph.i.i32.i.prol:                              ; preds = %.lr.ph.i.i32.i.preheader, %.lr.ph.i.i32.i.prol
  %.sroa.012.015.i.i33.i.prol = phi ptr [ %.sroa.012.0.i.i35.i.prol, %.lr.ph.i.i32.i.prol ], [ %i.g, %.lr.ph.i.i32.i.preheader ]
  %.sroa.011.014.i.i34.i.prol = phi i64 [ %i.j, %.lr.ph.i.i32.i.prol ], [ %.sroa.21.0.copyload.i, %.lr.ph.i.i32.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i32.i.prol ], [ 0, %.lr.ph.i.i32.i.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i33.i.prol, i64 456
  %i.j = add i64 %.sroa.011.014.i.i34.i.prol, -1  ; 2 uses
  %.sroa.012.0.i.i35.i.prol = load ptr, ptr %i.i, align 8, !noalias !3471, !nonnull !55, !noundef !55 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i32.i.prol.loopexit, label %.lr.ph.i.i32.i.prol, !llvm.loop !3410

.lr.ph.i.i32.i.prol.loopexit:                     ; preds = %.lr.ph.i.i32.i.prol, %.lr.ph.i.i32.i.preheader
  %.sroa.012.0.i.i35.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i32.i.preheader ], [ %.sroa.012.0.i.i35.i.prol, %.lr.ph.i.i32.i.prol ]
  %.sroa.012.015.i.i33.i.unr = phi ptr [ %i.g, %.lr.ph.i.i32.i.preheader ], [ %.sroa.012.0.i.i35.i.prol, %.lr.ph.i.i32.i.prol ]
  %.sroa.011.014.i.i34.i.unr = phi i64 [ %.sroa.21.0.copyload.i, %.lr.ph.i.i32.i.preheader ], [ %i.j, %.lr.ph.i.i32.i.prol ]
  %i.k = icmp ult i64 %.sroa.21.0.copyload.i, 8
  br i1 %i.k, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i", label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i.prol.loopexit, %.lr.ph.i.i32.i
  %.sroa.012.015.i.i33.i = phi ptr [ %.sroa.012.0.i.i35.i.7, %.lr.ph.i.i32.i ], [ %.sroa.012.015.i.i33.i.unr, %.lr.ph.i.i32.i.prol.loopexit ]
  %.sroa.011.014.i.i34.i = phi i64 [ %i.t, %.lr.ph.i.i32.i ], [ %.sroa.011.014.i.i34.i.unr, %.lr.ph.i.i32.i.prol.loopexit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i33.i, i64 456
  %.sroa.012.0.i.i35.i = load ptr, ptr %i.l, align 8, !noalias !3471, !nonnull !55, !noundef !55
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i, i64 456
  %.sroa.012.0.i.i35.i.1 = load ptr, ptr %i.m, align 8, !noalias !3471, !nonnull !55, !noundef !55
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.1, i64 456
  %.sroa.012.0.i.i35.i.2 = load ptr, ptr %i.n, align 8, !noalias !3471, !nonnull !55, !noundef !55
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.2, i64 456
  %.sroa.012.0.i.i35.i.3 = load ptr, ptr %i.o, align 8, !noalias !3471, !nonnull !55, !noundef !55
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.3, i64 456
  %.sroa.012.0.i.i35.i.4 = load ptr, ptr %i.p, align 8, !noalias !3471, !nonnull !55, !noundef !55
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.4, i64 456
  %.sroa.012.0.i.i35.i.5 = load ptr, ptr %i.q, align 8, !noalias !3471, !nonnull !55, !noundef !55
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.5, i64 456
  %.sroa.012.0.i.i35.i.6 = load ptr, ptr %i.r, align 8, !noalias !3471, !nonnull !55, !noundef !55
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.6, i64 456
  %i.t = add i64 %.sroa.011.014.i.i34.i, -8       ; 2 uses
  %.sroa.012.0.i.i35.i.7 = load ptr, ptr %i.s, align 8, !noalias !3471, !nonnull !55, !noundef !55 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i", label %.lr.ph.i.i32.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i": ; preds = %.lr.ph.i.i32.i.prol.loopexit, %.lr.ph.i.i32.i, %bb.d, %bb.c
  %.sroa.37.0.copyload.i.i8.i = phi i64 [ %.sroa.21.0.copyload.i, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i32.i ], [ 0, %.lr.ph.i.i32.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i9.i = phi i64 [ %.sroa.13.0.copyload.i, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i32.i ], [ 0, %.lr.ph.i.i32.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i10.i = phi ptr [ %.sroa.7.0.copyload.i, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.012.0.i.i35.i.lcssa.unr, %.lr.ph.i.i32.i.prol.loopexit ], [ %.sroa.012.0.i.i35.i.7, %.lr.ph.i.i32.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i10.i, i64 450
  %i.w = load i16, ptr %i.v, align 2, !noalias !3472, !noundef !55
  %i.x = zext i16 %i.w to i64
  %i.y = icmp ult i64 %.sroa.37.0.copyload.i.i8.i, %i.x
  br i1 %i.y, label %bb.f, label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i", %bb.e
  %.sroa.0.038.i.i.i.i14.i = phi ptr [ %i.aa, %bb.e ], [ %.sroa.05.0.copyload.i.i10.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i15.i = phi i64 [ %i.ac, %bb.e ], [ %.sroa.26.0.copyload.i.i9.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i" ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i14.i, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !3473, !noundef !55 ; 4 uses
  %.not.i.i.i.i.i16.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i16.i, label %bb.h, label %bb.e

._crit_edge.loopexit.i.i.i.i17.i:                 ; preds = %bb.e
  %i.ab = zext i16 %i.ae to i64
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i13.i
  %i.ac = add i64 %.sroa.5.037.i.i.i.i15.i, 1     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i14.i, i64 448
  %i.ae = load i16, ptr %i.ad, align 8, !noalias !3473 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 450
  %i.ag = load i16, ptr %i.af, align 2, !noalias !3472, !noundef !55
  %i.ah = icmp ult i16 %i.ae, %i.ag
  br i1 %i.ah, label %._crit_edge.loopexit.i.i.i.i17.i, label %.lr.ph.i.i.i.i13.i

bb.f:                                             ; preds = %._crit_edge.loopexit.i.i.i.i17.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i"
  %.sroa.6.sroa.4.0.ph.i.i.i18.i = phi i64 [ %.sroa.37.0.copyload.i.i8.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i" ], [ %i.ab, %._crit_edge.loopexit.i.i.i.i17.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i19.i = phi i64 [ %.sroa.26.0.copyload.i.i9.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i" ], [ %i.ac, %._crit_edge.loopexit.i.i.i.i17.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i20.i = phi ptr [ %.sroa.05.0.copyload.i.i10.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i" ], [ %i.aa, %._crit_edge.loopexit.i.i.i.i17.i ] ; 4 uses
  %i.ai = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i19.i, 0
  %i.aj = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i18.i, 1 ; 2 uses
  br i1 %i.ai, label %.lr.ph.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i20.i, i64 456
  %i.al = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i18.i, 11
  tail call void @llvm.assume(i1 %i.al), !noalias !3474
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %xtraiter57 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i19.i, 7 ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.pn30.in.i.i.i.i21.i.prol = phi ptr [ %i.an, %.prol.preheader ], [ %i.am, %bb.g ]
  %.pn28.in.i.i.i.i22.i.prol = phi i64 [ %.pn28.i.i.i.i23.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i19.i, %bb.g ]
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.prol.preheader ], [ 0, %bb.g ]
  %.pn28.i.i.i.i23.i.prol = add i64 %.pn28.in.i.i.i.i22.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i24.i.prol = load ptr, ptr %.pn30.in.i.i.i.i21.i.prol, align 8, !noalias !3475, !nonnull !55, !noundef !55 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.prol, i64 456 ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3424

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.pn30.i.i.i.i24.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.pn30.i.i.i.i24.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i21.i.unr = phi ptr [ %i.am, %bb.g ], [ %i.an, %.prol.preheader ]
  %.pn28.in.i.i.i.i22.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i19.i, %bb.g ], [ %.pn28.i.i.i.i23.i.prol, %.prol.preheader ]
  %i.ao = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i19.i, 8
  br i1 %i.ao, label %.lr.ph.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i21.i = phi ptr [ %i.ax, %.new ], [ %.pn30.in.i.i.i.i21.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i22.i = phi i64 [ %.pn28.i.i.i.i23.i.7, %.new ], [ %.pn28.in.i.i.i.i22.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i24.i = load ptr, ptr %.pn30.in.i.i.i.i21.i, align 8, !noalias !3475, !nonnull !55, !noundef !55
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i, i64 456
  %.pn30.i.i.i.i24.i.1 = load ptr, ptr %i.ap, align 8, !noalias !3475, !nonnull !55, !noundef !55
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.1, i64 456
  %.pn30.i.i.i.i24.i.2 = load ptr, ptr %i.aq, align 8, !noalias !3475, !nonnull !55, !noundef !55
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.2, i64 456
  %.pn30.i.i.i.i24.i.3 = load ptr, ptr %i.ar, align 8, !noalias !3475, !nonnull !55, !noundef !55
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.3, i64 456
  %.pn30.i.i.i.i24.i.4 = load ptr, ptr %i.as, align 8, !noalias !3475, !nonnull !55, !noundef !55
  %i.at = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.4, i64 456
  %.pn30.i.i.i.i24.i.5 = load ptr, ptr %i.at, align 8, !noalias !3475, !nonnull !55, !noundef !55
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.5, i64 456
  %.pn30.i.i.i.i24.i.6 = load ptr, ptr %i.au, align 8, !noalias !3475, !nonnull !55, !noundef !55
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.6, i64 456
  %.pn28.i.i.i.i23.i.7 = add i64 %.pn28.in.i.i.i.i22.i, -8 ; 2 uses
  %.pn30.i.i.i.i24.i.7 = load ptr, ptr %i.av, align 8, !noalias !3475, !nonnull !55, !noundef !55 ; 2 uses
  %i.aw = icmp eq i64 %.pn28.i.i.i.i23.i.7, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.7, i64 456
  br i1 %i.aw, label %.lr.ph.i.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i13.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2614) #70
          to label %.noexc.i.i30.i unwind label %bb.i, !noalias !3476

.noexc.i.i30.i:                                   ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !3474
  unreachable

.critedge.i1.i:                                   ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #70, !noalias !3477
  unreachable

.lr.ph.i.i:                                       ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.i.i.i26.i = phi i64 [ %i.aj, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i27.i = phi ptr [ %.sroa.0.0.ph.i.i.i20.i, %bb.f ], [ %.pn30.i.i.i.i24.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i24.i.7, %.new ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i20.i, i64 184
  %i.ba = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i18.i, 11
  tail call void @llvm.assume(i1 %i.ba), !noalias !3474
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.sroa.6.sroa.4.0.ph.i.i.i18.i
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.i.i.i20.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i18.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  br label %bb.j

bb.j:                                             ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i", %.lr.ph.i.i
  %.sroa.21.1.i = phi i64 [ %.sroa.7.0.i.i.i26.i, %.lr.ph.i.i ], [ %.sroa.7.0.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i" ] ; 3 uses
  %.sroa.274.1.in.i = phi i64 [ %.sroa.274.0.copyload.i, %.lr.ph.i.i ], [ %.sroa.274.1.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i" ]
  %.sroa.7.1.i = phi ptr [ %.sroa.07.0.i.i.i27.i, %.lr.ph.i.i ], [ %.sroa.07.0.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i" ] ; 5 uses
  %i.bi = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.dp, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i" ] ; 4 uses
  %.pn33.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %i.dq, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i" ] ; 2 uses
  %.sroa.274.1.i = add i64 %.sroa.274.1.in.i, -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn33.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3478)
  %i.bj = call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi), !noalias !3479
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi), !noalias !3479 ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  br label %"_ZN4rhai6module6Module8iter_var28_$u7b$$u7b$closure$u7d$$u7d$17h740a34ea64060362E.exit.i.i.i"

bb.l:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.bi, align 8, !alias.scope !3480, !noalias !3479, !nonnull !55, !noundef !55
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !3480, !noalias !3479, !noundef !55
  br label %"_ZN4rhai6module6Module8iter_var28_$u7b$$u7b$closure$u7d$$u7d$17h740a34ea64060362E.exit.i.i.i"

"_ZN4rhai6module6Module8iter_var28_$u7b$$u7b$closure$u7d$$u7d$17h740a34ea64060362E.exit.i.i.i": ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bl, %bb.k ], [ %i.bn, %bb.l ] ; 3 uses
  %.merged.i.i.i.i.i = phi i64 [ %i.bm, %bb.k ], [ %i.bp, %bb.l ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3481
  %i.bq = icmp ugt i64 %.merged.i.i.i.i.i, 23
  br i1 %i.bq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %"_ZN4rhai6module6Module8iter_var28_$u7b$$u7b$closure$u7d$$u7d$17h740a34ea64060362E.exit.i.i.i"
  call void @"_ZN88_$LT$smartstring..inline..InlineString$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc409ab0473dd43fdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i, i64 noundef %.merged.i.i.i.i.i), !noalias !3482
  br label %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit.i.i.i.i.i.i"

bb.n:                                             ; preds = %"_ZN4rhai6module6Module8iter_var28_$u7b$$u7b$closure$u7d$$u7d$17h740a34ea64060362E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3483
  %i.br = icmp slt i64 %.merged.i.i.i.i.i, 0
  br i1 %i.br, label %bb.o, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !71

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !3484
  %i.bs = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.merged.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #71, !noalias !3484 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, %bb.n
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.n ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.merged.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70, !noalias !3485
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i.i.i, i64 %.merged.i.i.i.i.i, i1 false), !noalias !3486
  store i64 %.merged.i.i.i.i.i, ptr %i.a, align 8, !noalias !3483
  store ptr %i.bs, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3483
  store i64 %.merged.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3483
  call void @"_ZN100_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17hfc4d082b05fc8cb7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3483
  br label %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit.i.i.i.i.i.i"

"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit.i.i.i.i.i.i": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i.i.i.i.i.i.i", %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3481
  store i64 1, ptr %i.c, align 8, !noalias !3481
  store i64 1, ptr %i.bd, align 8, !noalias !3481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3481
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !3488
  %i.bu = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !3488 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit.i.i.i.i.i.i", !prof !58

bb.p:                                             ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit.i.i.i.i.i.i"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70
          to label %.noexc.i.i.i.i.i.i unwind label %bb.q, !noalias !3482

.noexc.i.i.i.i.i.i:                               ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc6.i.i.i.i.i.i unwind label %bb.s, !noalias !3482

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.q
  br i1 %i.bx, label %common.resume.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc6.i.i.i.i.i.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %common.resume.i.i.i.i.i.i unwind label %bb.s, !noalias !3482

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !3482
  unreachable

common.resume.i.i.i.i.i.i:                        ; preds = %bb.u, %bb.r, %.noexc6.i.i.i.i.i.i
  %common.resume.op.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.r ], [ %i.bw, %.noexc6.i.i.i.i.i.i ], [ %i.cc, %bb.u ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i.i

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !3482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3481
  store ptr %i.bu, ptr %i.b, align 8, !noalias !3481
  store i8 12, ptr %i.bf, align 8, !noalias !3481
  store ptr %.pn33.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3481
  call void @llvm.experimental.noalias.scope.decl(metadata !3489)
  %i.bz = load i64, ptr %i.bg, align 8, !alias.scope !3489, !noalias !3490, !noundef !55 ; 3 uses
  %i.ca = load i64, ptr %.0.val, align 8, !range !65, !alias.scope !3489, !noalias !3490, !noundef !55
  %i.cb = icmp eq i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.t, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h51a34829a8378511E.exit.i.i"

bb.t:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit.i.i.i.i.i.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1228270c1d7168edE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2246)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h51a34829a8378511E.exit.i.i" unwind label %bb.u, !noalias !3490

bb.u:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr161drop_in_place$LT$$LP$rhai..types..immutable_string..ImmutableString$C$core..option..Option$LT$alloc..borrow..Cow$LT$rhai..types..dynamic..Dynamic$GT$$GT$$RP$$GT$17h0496a42422e4ef6cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b) #72
          to label %common.resume.i.i.i.i.i.i unwind label %bb.v, !noalias !3491

bb.v:                                             ; preds = %bb.u
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !3492
  unreachable

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h51a34829a8378511E.exit.i.i": ; preds = %bb.t, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit.i.i.i.i.i.i"
  %i.ce = load ptr, ptr %i.bh, align 8, !alias.scope !3489, !noalias !3490, !nonnull !55, !noundef !55
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3491
  %i.cg = add i64 %i.bz, 1
  store i64 %i.cg, ptr %i.bg, align 8, !alias.scope !3489, !noalias !3490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3481
  %i.ch = icmp eq i64 %.sroa.274.1.i, 0
  br i1 %i.ch, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h3bfcb163c77c30beE.exit", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h51a34829a8378511E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i, i64 450
  %i.cj = load i16, ptr %i.ci, align 2, !noalias !3493, !noundef !55
  %i.ck = zext i16 %i.cj to i64
  %i.cl = icmp ult i64 %.sroa.21.1.i, %i.ck
  br i1 %i.cl, label %.thread.i, label %.lr.ph.i.i.i.i.i

.thread.i:                                        ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i"
  %i.cm = add nuw nsw i64 %.sroa.21.1.i, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i", %bb.w
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.co, %bb.w ], [ %.sroa.7.1.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.cp, %bb.w ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i" ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 176
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !3494, !noundef !55 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cp = add i64 %.sroa.5.037.i.i.i.i.i, 1       ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 448
  %i.cr = load i16, ptr %i.cq, align 8, !noalias !3494 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 450
  %i.ct = load i16, ptr %i.cs, align 2, !noalias !3493, !noundef !55
  %i.cu = icmp ult i16 %i.cr, %i.ct
  br i1 %i.cu, label %bb.x, label %.lr.ph.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.cv = zext i16 %i.cr to i64                   ; 4 uses
  %i.cw = icmp eq i64 %i.cp, 0
  %i.cx = add nuw nsw i64 %i.cv, 1                ; 2 uses
  br i1 %i.cw, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 456
  %i.cz = icmp ult i16 %i.cr, 11
  call void @llvm.assume(i1 %i.cz), !noalias !3474
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  %xtraiter64 = and i64 %i.cp, 7                  ; 2 uses
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.prol.loopexit61, label %.prol.preheader60

.prol.preheader60:                                ; preds = %bb.y, %.prol.preheader60
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.db, %.prol.preheader60 ], [ %i.da, %bb.y ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader60 ], [ %i.cp, %bb.y ]
  %prol.iter66 = phi i64 [ %prol.iter66.next, %.prol.preheader60 ], [ 0, %bb.y ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !3495, !nonnull !55, !noundef !55 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 456 ; 2 uses
  %prol.iter66.next = add i64 %prol.iter66, 1     ; 2 uses
  %prol.iter66.cmp.not = icmp eq i64 %prol.iter66.next, %xtraiter64
  br i1 %prol.iter66.cmp.not, label %.prol.loopexit61, label %.prol.preheader60, !llvm.loop !3469

.prol.loopexit61:                                 ; preds = %.prol.preheader60, %bb.y
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.y ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader60 ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.da, %bb.y ], [ %i.db, %.prol.preheader60 ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %i.cp, %bb.y ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader60 ]
  %i.dc = icmp ult i64 %.sroa.5.037.i.i.i.i.i, 7
  br i1 %i.dc, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i", label %.new62

.new62:                                           ; preds = %.prol.loopexit61, %.new62
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.dl, %.new62 ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit61 ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new62 ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit61 ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !3495, !nonnull !55, !noundef !55
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 456
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.dd, align 8, !noalias !3495, !nonnull !55, !noundef !55
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 456
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.de, align 8, !noalias !3495, !nonnull !55, !noundef !55
  %i.df = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 456
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.df, align 8, !noalias !3495, !nonnull !55, !noundef !55
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 456
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.dg, align 8, !noalias !3495, !nonnull !55, !noundef !55
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 456
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.dh, align 8, !noalias !3495, !nonnull !55, !noundef !55
  %i.di = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 456
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.di, align 8, !noalias !3495, !nonnull !55, !noundef !55
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 456
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.dj, align 8, !noalias !3495, !nonnull !55, !noundef !55 ; 2 uses
  %i.dk = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 456
  br i1 %i.dk, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i", label %.new62

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2614) #70
          to label %.noexc.i.i.i unwind label %bb.aa, !noalias !3496

.noexc.i.i.i:                                     ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !3474
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i": ; preds = %.prol.loopexit61, %.new62, %bb.x, %.thread.i
  %.sroa.0.0.ph.i.i.i32.i = phi ptr [ %i.co, %bb.x ], [ %.sroa.7.1.i, %.thread.i ], [ %i.co, %.new62 ], [ %i.co, %.prol.loopexit61 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i31.i = phi i64 [ %i.cv, %bb.x ], [ %.sroa.21.1.i, %.thread.i ], [ %i.cv, %.new62 ], [ %i.cv, %.prol.loopexit61 ] ; 3 uses
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.cx, %bb.x ], [ %i.cm, %.thread.i ], [ 0, %.new62 ], [ 0, %.prol.loopexit61 ]
  %.sroa.07.0.i.i.i.i = phi ptr [ %i.co, %bb.x ], [ %.sroa.7.1.i, %.thread.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit61 ], [ %.pn30.i.i.i.i.i.7, %.new62 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i32.i, i64 184
  %i.do = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i31.i, 11
  call void @llvm.assume(i1 %i.do), !noalias !3474
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %.sroa.6.sroa.4.0.ph.i.i.i31.i
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.i.i.i32.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i31.i
  br label %bb.j

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h3bfcb163c77c30beE.exit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h51a34829a8378511E.exit.i.i", %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h7eb000e28984dd48E"(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3523)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !3524, !noalias !3525 ; 2 uses
  %i.b = icmp eq i64 %.promoted.i, 0
  br i1 %i.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hbd06a27b8e178148E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.promoted20.i = load ptr, ptr %0, align 8, !alias.scope !3523, !noalias !3525
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr i8, ptr %.0.val, i64 8
  %.promoted25.i = load i16, ptr %i.c, align 8, !alias.scope !3526, !noalias !3525
  %.promoted26.i = load ptr, ptr %i.d, align 8, !alias.scope !3523, !noalias !3525
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hba7eba8b483babcaE.exit.i", %.lr.ph.i
  %.lcssa28.i = phi ptr [ %.promoted26.i, %.lr.ph.i ], [ %.lcssa27.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hba7eba8b483babcaE.exit.i" ] ; 2 uses
  %i.f = phi i16 [ %.promoted25.i, %.lr.ph.i ], [ %i.p, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hba7eba8b483babcaE.exit.i" ] ; 2 uses
  %i.g = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.s, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hba7eba8b483babcaE.exit.i" ]
  %.lcssa152223.i = phi ptr [ %.promoted20.i, %.lr.ph.i ], [ %.lcssa1521.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hba7eba8b483babcaE.exit.i" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3529)
  %.not13.i.i.i.i = icmp eq i16 %i.f, 0
  br i1 %.not13.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge20.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !3526, !noalias !3525
  store ptr %i.k, ptr %0, align 8, !alias.scope !3526, !noalias !3525
  br label %._crit_edge20.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %.lcssa28.i, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %.lcssa152223.i, %bb.b ]
  %.val11.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !3530
  %i.j = icmp sgt <16 x i8> %.val11.i.i.i.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -640 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.j to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge20.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i, %bb.b
  %.lcssa27.i = phi ptr [ %i.l, %._crit_edge.i.i.i.i ], [ %.lcssa28.i, %bb.b ]
  %.lcssa1521.i = phi ptr [ %i.k, %._crit_edge.i.i.i.i ], [ %.lcssa152223.i, %bb.b ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.cast.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.m = add i16 %.lcssa.i.i.i.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i.i.i.i            ; 2 uses
  store i16 %i.p, ptr %i.c, align 8, !alias.scope !3526, !noalias !3525
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [40 x i8], ptr %.lcssa1521.i, i64 %i.q ; 3 uses
  %i.s = add i64 %i.g, -1                         ; 3 uses
  store i64 %i.s, ptr %i.a, align 8, !alias.scope !3524, !noalias !3525
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3532)
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3533, !noalias !3534, !nonnull !55, !align !56, !noundef !55 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3536)
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !3537 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3539)
  %i.w = load i8, ptr %i.t, align 8, !range !64, !alias.scope !3540, !noalias !3541, !noundef !55
  %i.x = icmp eq i8 %i.w, 4
  br i1 %i.x, label %bb.c, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hba7eba8b483babcaE.exit.i"

bb.c:                                             ; preds = %._crit_edge20.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3542)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i, align 8, !noalias !3543, !nonnull !55, !align !56, !noundef !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.z = load ptr, ptr %.val.i.i.i.i.i.i.i, align 8, !noalias !3543, !nonnull !55, !align !56, !noundef !55
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !3543, !nonnull !55, !align !56, !noundef !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !3543, !nonnull !55, !noundef !55 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.ae = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad), !noalias !3543
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad), !noalias !3543 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4rhai8packages9map_basic13map_functions6values17h8917c9a012ebb0ccE:bb.a
  %.pn30.i.i.i.i.i.i.4 = load ptr, ptr %i.av, align 8, !noalias !49935, !nonnull !55, !noundef !55
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.4, i64 456
  %.pn30.i.i.i.i.i.i.5 = load ptr, ptr %i.aw, align 8, !noalias !49935, !nonnull !55, !noundef !55
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.5, i64 456
  %.pn30.i.i.i.i.i.i.6 = load ptr, ptr %i.ax, align 8, !noalias !49935, !nonnull !55, !noundef !55
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.6, i64 456
  %.pn28.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.7 = load ptr, ptr %i.ay, align 8, !noalias !49935, !nonnull !55, !noundef !55 ; 2 uses
  %i.az = icmp eq i64 %.pn28.i.i.i.i.i.i.7, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.7, i64 456
  br i1 %i.az, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.i.i", label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2614) #70
          to label %.noexc.i.i2.i.i unwind label %bb.i, !noalias !49936

.noexc.i.i2.i.i:                                  ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !49934
  unreachable

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.i.i": ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i.i", %bb.f
  %.sroa.0.0.ph.i.i.i.i.i33 = phi ptr [ %i.ad, %bb.f ], [ %.sroa.05.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i.i" ], [ %i.ad, %.new ], [ %i.ad, %.prol.loopexit ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i32 = phi i64 [ %i.ak, %bb.f ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i.i" ], [ %i.ak, %.new ], [ %i.ak, %.prol.loopexit ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.am, %bb.f ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %.sroa.05.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i.i" ], [ %.pn30.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.bc = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i32, 11
  tail call void @llvm.assume(i1 %i.bc), !noalias !49934
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.i.i.i.i.i33, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i32
  call void @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..clone..Clone$GT$5clone17h1b28c043977b7655E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bd), !noalias !49930
  %.pr.i.i.i.i = load i8, ptr %i.b, align 8, !noalias !49930
  %.not.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 12
  br i1 %.not.i.i.i.i, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.thread.i.i.i.i", label %bb.k

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.thread.i.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.i.i", %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !49937, !noalias !49938
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.be, align 8, !alias.scope !49937, !noalias !49938
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bf, align 8, !alias.scope !49937, !noalias !49938
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h381598bf78952f0bE.exit

bb.j:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.b)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i" unwind label %bb.ab, !noalias !49930

bb.k:                                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.i.i"
  %i.bh = tail call i64 @llvm.uadd.sat.i64(i64 %i.l, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bh, i64 4) ; 2 uses
  %i.bi = shl i64 %.sroa.0.0.i.i.i.i.i, 4         ; 3 uses
  %i.bj = icmp ugt i64 %i.bh, 1152921504606846975
  %i.bk = icmp ugt i64 %i.bi, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.bj, %i.bk
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !71

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.k
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !49939
  %i.bl = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bi, i64 noundef range(i64 1, 9) 8) #71, !noalias !49939 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %bb.k
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 0, %bb.k ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70
          to label %.noexc.i.i.i.i unwind label %bb.j, !noalias !49930

.noexc.i.i.i.i:                                   ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !49930
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.c, align 8, !noalias !49930
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !49930
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !49930
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49941)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49942
  %i.bn = icmp eq i64 %i.l, 0
  br i1 %i.bn, label %.noexc6.thread.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i18.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i18.i.i.i.i": ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i, i64 450
  %i.bp = load i16, ptr %i.bo, align 2, !noalias !49943, !noundef !55
  %i.bq = zext i16 %i.bp to i64
  %i.br = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i, %i.bq
  br i1 %i.br, label %.thread.i.i, label %.lr.ph.i.i.i.i24.i.i.i.i

.thread.i.i:                                      ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i18.i.i.i.i"
  %i.bs = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i, 1
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i"

.lr.ph.i.i.i.i24.i.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i18.i.i.i.i", %bb.n
  %.sroa.0.038.i.i.i.i25.i.i.i.i = phi ptr [ %i.bu, %bb.n ], [ %.sroa.07.0.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i18.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i26.i.i.i.i = phi i64 [ %i.bv, %bb.n ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i18.i.i.i.i" ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i25.i.i.i.i, i64 176
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !49944, !noundef !55 ; 8 uses
  %.not.i.i.i.i.i27.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i27.i.i.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i24.i.i.i.i
  %i.bv = add i64 %.sroa.5.037.i.i.i.i26.i.i.i.i, 1 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i25.i.i.i.i, i64 448
  %i.bx = load i16, ptr %i.bw, align 8, !noalias !49944 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 450
  %i.bz = load i16, ptr %i.by, align 2, !noalias !49943, !noundef !55
  %i.ca = icmp ult i16 %i.bx, %i.bz
  br i1 %i.ca, label %bb.o, label %.lr.ph.i.i.i.i24.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cb = zext i16 %i.bx to i64                   ; 4 uses
  %i.cc = icmp eq i64 %i.bv, 0
  %i.cd = add nuw nsw i64 %i.cb, 1                ; 2 uses
  br i1 %i.cc, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 456
  %i.cf = icmp ult i16 %i.bx, 11
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %xtraiter103 = and i64 %i.bv, 7                 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %.prol.loopexit100, label %.prol.preheader99

.prol.preheader99:                                ; preds = %bb.p, %.prol.preheader99
  %.pn30.in.i.i.i.i32.i.i.i.i.prol = phi ptr [ %i.ch, %.prol.preheader99 ], [ %i.cg, %bb.p ]
  %.pn28.in.i.i.i.i33.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i34.i.i.i.i.prol, %.prol.preheader99 ], [ %i.bv, %bb.p ]
  %prol.iter105 = phi i64 [ %prol.iter105.next, %.prol.preheader99 ], [ 0, %bb.p ]
  %.pn28.i.i.i.i34.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i33.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i35.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i32.i.i.i.i.prol, align 8, !noalias !49945, !nonnull !55, !noundef !55 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.prol, i64 456 ; 2 uses
  %prol.iter105.next = add i64 %prol.iter105, 1   ; 2 uses
  %prol.iter105.cmp.not = icmp eq i64 %prol.iter105.next, %xtraiter103
  br i1 %prol.iter105.cmp.not, label %.prol.loopexit100, label %.prol.preheader99, !llvm.loop !49907

.prol.loopexit100:                                ; preds = %.prol.preheader99, %bb.p
  %.pn30.i.i.i.i35.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.p ], [ %.pn30.i.i.i.i35.i.i.i.i.prol, %.prol.preheader99 ]
  %.pn30.in.i.i.i.i32.i.i.i.i.unr = phi ptr [ %i.cg, %bb.p ], [ %i.ch, %.prol.preheader99 ]
  %.pn28.in.i.i.i.i33.i.i.i.i.unr = phi i64 [ %i.bv, %bb.p ], [ %.pn28.i.i.i.i34.i.i.i.i.prol, %.prol.preheader99 ]
  %i.ci = icmp ult i64 %.sroa.5.037.i.i.i.i26.i.i.i.i, 7
  br i1 %i.ci, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i", label %.new101

.new101:                                          ; preds = %.prol.loopexit100, %.new101
  %.pn30.in.i.i.i.i32.i.i.i.i = phi ptr [ %i.cr, %.new101 ], [ %.pn30.in.i.i.i.i32.i.i.i.i.unr, %.prol.loopexit100 ]
  %.pn28.in.i.i.i.i33.i.i.i.i = phi i64 [ %.pn28.i.i.i.i34.i.i.i.i.7, %.new101 ], [ %.pn28.in.i.i.i.i33.i.i.i.i.unr, %.prol.loopexit100 ]
  %.pn30.i.i.i.i35.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i32.i.i.i.i, align 8, !noalias !49945, !nonnull !55, !noundef !55
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i, i64 456
  %.pn30.i.i.i.i35.i.i.i.i.1 = load ptr, ptr %i.cj, align 8, !noalias !49945, !nonnull !55, !noundef !55
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.1, i64 456
  %.pn30.i.i.i.i35.i.i.i.i.2 = load ptr, ptr %i.ck, align 8, !noalias !49945, !nonnull !55, !noundef !55
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.2, i64 456
  %.pn30.i.i.i.i35.i.i.i.i.3 = load ptr, ptr %i.cl, align 8, !noalias !49945, !nonnull !55, !noundef !55
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.3, i64 456
  %.pn30.i.i.i.i35.i.i.i.i.4 = load ptr, ptr %i.cm, align 8, !noalias !49945, !nonnull !55, !noundef !55
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.4, i64 456
  %.pn30.i.i.i.i35.i.i.i.i.5 = load ptr, ptr %i.cn, align 8, !noalias !49945, !nonnull !55, !noundef !55
  %i.co = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.5, i64 456
  %.pn30.i.i.i.i35.i.i.i.i.6 = load ptr, ptr %i.co, align 8, !noalias !49945, !nonnull !55, !noundef !55
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.6, i64 456
  %.pn28.i.i.i.i34.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i33.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i35.i.i.i.i.7 = load ptr, ptr %i.cp, align 8, !noalias !49945, !nonnull !55, !noundef !55 ; 2 uses
  %i.cq = icmp eq i64 %.pn28.i.i.i.i34.i.i.i.i.7, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.7, i64 456
  br i1 %i.cq, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i", label %.new101

bb.q:                                             ; preds = %.lr.ph.i.i.i.i24.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2614) #70
          to label %.noexc.i.i41.i.i.i.i unwind label %bb.r, !noalias !49946

.noexc.i.i41.i.i.i.i:                             ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i": ; preds = %.prol.loopexit100, %.new101, %bb.o, %.thread.i.i
  %.sroa.0.0.ph.i.i.i31.i.i21.i.i = phi ptr [ %i.bu, %bb.o ], [ %.sroa.07.0.i.i.i.i.i, %.thread.i.i ], [ %i.bu, %.new101 ], [ %i.bu, %.prol.loopexit100 ]
  %.sroa.6.sroa.4.0.ph.i.i.i29.i.i20.i.i = phi i64 [ %i.cb, %bb.o ], [ %.sroa.7.0.i.i.i.i.i, %.thread.i.i ], [ %i.cb, %.new101 ], [ %i.cb, %.prol.loopexit100 ] ; 2 uses
  %.sroa.7.0.i.i.i37.i.i.i.i = phi i64 [ %i.cd, %bb.o ], [ %i.bs, %.thread.i.i ], [ 0, %.new101 ], [ 0, %.prol.loopexit100 ]
  %.sroa.07.0.i.i.i38.i.i.i.i = phi ptr [ %i.bu, %bb.o ], [ %.sroa.07.0.i.i.i.i.i, %.thread.i.i ], [ %.pn30.i.i.i.i35.i.i.i.i.lcssa.unr, %.prol.loopexit100 ], [ %.pn30.i.i.i.i35.i.i.i.i.7, %.new101 ]
  %i.ct = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i29.i.i20.i.i, 11
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.i.i.i31.i.i21.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i29.i.i20.i.i
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.i.i.i.i"

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.i.i.i.i": ; preds = %.noexc8.i.i.i.i, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i"
  %i.cv = phi ptr [ %i.db, %.noexc8.i.i.i.i ], [ %i.bl, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i" ]
  %i.cw = phi i64 [ %i.dd, %.noexc8.i.i.i.i ], [ 1, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i" ] ; 5 uses
  %.sroa.21.1.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i.i.i.i.i, %.noexc8.i.i.i.i ], [ %.sroa.7.0.i.i.i37.i.i.i.i, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i" ] ; 3 uses
  %.sroa.275.1.in.i.i.i.i = phi i64 [ %.sroa.275.1.i.i.i.i, %.noexc8.i.i.i.i ], [ %i.l, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i" ]
  %.sroa.7.1.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i, %.noexc8.i.i.i.i ], [ %.sroa.07.0.i.i.i38.i.i.i.i, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i" ] ; 5 uses
  %i.cx = phi ptr [ %i.el, %.noexc8.i.i.i.i ], [ %i.cu, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.preheader.i.i.i.i" ]
  %.sroa.275.1.i.i.i.i = add i64 %.sroa.275.1.in.i.i.i.i, -1 ; 3 uses
  invoke void @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..clone..Clone$GT$5clone17h1b28c043977b7655E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cx)
          to label %.noexc7.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !49930

.noexc7.i.i.i.i:                                  ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.i.i.i.i"
  %.pr.i.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !49947
  %.not.i.i5.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i.i, 12
  br i1 %.not.i.i5.i.i.i.i, label %.noexc6.thread.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc7.i.i.i.i
  %i.cy = icmp samesign ult i64 %i.cw, 576460752303423488
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = load i64, ptr %i.c, align 8, !range !65, !alias.scope !49948, !noalias !49949, !noundef !55
  %i.da = icmp eq i64 %i.cw, %i.cz
  br i1 %i.da, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i_crit_edge.i.i.i.i", %bb.s
  %i.db = phi ptr [ %.pre.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i_crit_edge.i.i.i.i" ], [ %i.cv, %bb.s ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !49947
  %i.dd = add nuw nsw i64 %i.cw, 1                ; 2 uses
  store i64 %i.dd, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !49948, !noalias !49949
  %i.de = icmp eq i64 %.sroa.275.1.i.i.i.i, 0
  br i1 %i.de, label %.noexc6.thread.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i) ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i, i64 450
  %i.dg = load i16, ptr %i.df, align 2, !noalias !49950, !noundef !55
  %i.dh = zext i16 %i.dg to i64
  %i.di = icmp ult i64 %.sroa.21.1.i.i.i.i, %i.dh
  br i1 %i.di, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i.i.i.i"
  %i.dj = add nuw nsw i64 %.sroa.21.1.i.i.i.i, 1
  br label %.noexc8.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i.i.i.i", %bb.t
  %.sroa.0.038.i.i.i.i.i.i.i.i = phi ptr [ %i.dl, %bb.t ], [ %.sroa.7.1.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i = phi i64 [ %i.dm, %bb.t ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i.i.i.i" ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 176
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !49951, !noundef !55 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dm = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 448
  %i.do = load i16, ptr %i.dn, align 8, !noalias !49951 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 450
  %i.dq = load i16, ptr %i.dp, align 2, !noalias !49950, !noundef !55
  %i.dr = icmp ult i16 %i.do, %i.dq
  br i1 %i.dr, label %bb.u, label %.lr.ph.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ds = zext i16 %i.do to i64                   ; 4 uses
  %i.dt = icmp eq i64 %i.dm, 0
  %i.du = add nuw nsw i64 %i.ds, 1                ; 2 uses
  br i1 %i.dt, label %.noexc8.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 456
  %i.dw = icmp ult i16 %i.do, 11
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du ; 2 uses
  %xtraiter110 = and i64 %i.dm, 7                 ; 2 uses
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.prol.loopexit107, label %.prol.preheader106

.prol.preheader106:                               ; preds = %bb.v, %.prol.preheader106
  %.pn30.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.dy, %.prol.preheader106 ], [ %i.dx, %bb.v ]
  %.pn28.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader106 ], [ %i.dm, %bb.v ]
  %prol.iter112 = phi i64 [ %prol.iter112.next, %.prol.preheader106 ], [ 0, %bb.v ]
  %.pn28.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !49952, !nonnull !55, !noundef !55 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.prol, i64 456 ; 2 uses
  %prol.iter112.next = add i64 %prol.iter112, 1   ; 2 uses
  %prol.iter112.cmp.not = icmp eq i64 %prol.iter112.next, %xtraiter110
  br i1 %prol.iter112.cmp.not, label %.prol.loopexit107, label %.prol.preheader106, !llvm.loop !49924

.prol.loopexit107:                                ; preds = %.prol.preheader106, %bb.v
  %.pn30.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.v ], [ %.pn30.i.i.i.i.i.i.i.i.prol, %.prol.preheader106 ]
  %.pn30.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.dx, %bb.v ], [ %i.dy, %.prol.preheader106 ]
  %.pn28.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.dm, %bb.v ], [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader106 ]
  %i.dz = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 7
  br i1 %i.dz, label %.noexc8.i.i.i.i, label %.new108

.new108:                                          ; preds = %.prol.loopexit107, %.new108
  %.pn30.in.i.i.i.i.i.i.i.i = phi ptr [ %i.ei, %.new108 ], [ %.pn30.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit107 ]
  %.pn28.in.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.7, %.new108 ], [ %.pn28.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit107 ]
  %.pn30.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i, align 8, !noalias !49952, !nonnull !55, !noundef !55
  %i.ea = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i, i64 456
  %.pn30.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ea, align 8, !noalias !49952, !nonnull !55, !noundef !55
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.1, i64 456
  %.pn30.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.eb, align 8, !noalias !49952, !nonnull !55, !noundef !55
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.2, i64 456
  %.pn30.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ec, align 8, !noalias !49952, !nonnull !55, !noundef !55
  %i.ed = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.3, i64 456
  %.pn30.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ed, align 8, !noalias !49952, !nonnull !55, !noundef !55
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.4, i64 456
  %.pn30.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ee, align 8, !noalias !49952, !nonnull !55, !noundef !55
  %i.ef = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.5, i64 456
  %.pn30.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.ef, align 8, !noalias !49952, !nonnull !55, !noundef !55
  %i.eg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.6, i64 456
  %.pn28.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.eg, align 8, !noalias !49952, !nonnull !55, !noundef !55 ; 2 uses
  %i.eh = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.7, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.7, i64 456
  br i1 %i.eh, label %.noexc8.i.i.i.i, label %.new108

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2614) #70
          to label %.noexc.i.i.i.i.i.i unwind label %bb.x, !noalias !49953

.noexc.i.i.i.i.i.i:                               ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.noexc8.i.i.i.i:                                  ; preds = %.prol.loopexit107, %.new108, %bb.u, %.thread.i.i.i.i
  %.sroa.0.0.ph.i.i.i39.i.i.i.i = phi ptr [ %i.dl, %bb.u ], [ %.sroa.7.1.i.i.i.i, %.thread.i.i.i.i ], [ %i.dl, %.new108 ], [ %i.dl, %.prol.loopexit107 ]
  %.sroa.6.sroa.4.0.ph.i.i.i38.i.i.i.i = phi i64 [ %i.ds, %bb.u ], [ %.sroa.21.1.i.i.i.i, %.thread.i.i.i.i ], [ %i.ds, %.new108 ], [ %i.ds, %.prol.loopexit107 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i = phi i64 [ %i.du, %bb.u ], [ %i.dj, %.thread.i.i.i.i ], [ 0, %.new108 ], [ 0, %.prol.loopexit107 ]
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %i.dl, %bb.u ], [ %.sroa.7.1.i.i.i.i, %.thread.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit107 ], [ %.pn30.i.i.i.i.i.i.i.i.7, %.new108 ]
  %i.ek = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i38.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.i.i.i39.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i38.i.i.i.i
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.i.i.i.i"

bb.y:                                             ; preds = %bb.z
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.a)
          to label %.body.i.i.i.i unwind label %bb.aa, !noalias !49947

bb.z:                                             ; preds = %bb.s
  %i.en = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.275.1.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cw, i64 noundef %i.en, i64 noundef 8, i64 noundef 16)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.y, !noalias !49949

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.z
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !49948, !noalias !49949
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i"

bb.aa:                                            ; preds = %bb.y
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !49947
  unreachable

.loopexit.i.i.i.i:                                ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.i.i.i.i, %bb.y
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.em, %bb.y ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ]
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #72
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i" unwind label %bb.ab, !noalias !49930

.noexc6.thread.i.i.i.i:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i", %.noexc7.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !49938
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h381598bf78952f0bE.exit

bb.ab:                                            ; preds = %.body.i.i.i.i, %bb.j
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !49930
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i": ; preds = %.body.i.i.i.i, %bb.j
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.bg, %bb.j ]
  resume { ptr, i32 } %.pn.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h381598bf78952f0bE.exit: ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08fc7a0b36046899E.exit.thread.i.i.i.i", %.noexc6.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !49930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !49929
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h381598bf78952f0bE.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages9map_basic13map_functions7to_json17he6421b1d82cbe09bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  tail call fastcc void @_ZN4rhai3api4json18format_map_as_json17hd06325ee8a986a4dE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN4rhai8packages9map_basic13map_functions8contains17hd4a9dc20ccb7d02aE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !55 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17hb0604be77ff01c1dE.exit", label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.f
  %.sroa.3.0.i.i = phi i64 [ %i.ab, %bb.f ], [ %.val1, %.preheader.i.preheader ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.aa, %bb.f ], [ %.val, %.preheader.i.preheader ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 184 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 450
  %i.d = load i16, ptr %i.c, align 2, !noalias !49968, !noundef !55 ; 2 uses
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.e, 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.g = icmp eq i16 %i.d, 0
  br i1 %i.g, label %"_ZN88_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..borrow..Borrow$LT$str$GT$$GT$6borrow17h78be225d2587348bE.exit.i.i.i._crit_edge", label %.lr.ph

bb.b:                                             ; preds = %"_ZN88_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..borrow..Borrow$LT$str$GT$$GT$6borrow17h78be225d2587348bE.exit.i.i.i"
  %i.h = icmp eq ptr %i.i, %i.f
  br i1 %i.h, label %"_ZN88_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..borrow..Borrow$LT$str$GT$$GT$6borrow17h78be225d2587348bE.exit.i.i.i._crit_edge", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.b
  %.sroa.01.0.i.i.i11 = phi ptr [ %i.i, %bb.b ], [ %i.b, %.preheader.i ] ; 5 uses
  %.sroa.8.0.i.i.i10 = phi i64 [ %i.j, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i11, i64 24 ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZN57_$LT$rhai..module..Module$u20$as$u20$core..fmt..Debug$GT$3fmt17he6d73d56cf18962eE":bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !53561
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i", %bb.d
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i224 = phi ptr [ %i.al, %bb.d ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i" ], [ %i.al, %.new ], [ %i.al, %.prol.loopexit ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i223 = phi i64 [ %i.as, %bb.d ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i" ], [ %i.as, %.new ], [ %i.as, %.prol.loopexit ] ; 2 uses
  %.sroa.17.0.copyload.i.i.i.i = phi i64 [ %i.au, %bb.d ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.copyload.i.i.i.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i224, i64 8
  %i.bl = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i223, 11
  call void @llvm.assume(i1 %i.bl), !noalias !53561
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i223 ; 4 uses
  %i.bn = call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm), !noalias !53568
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.bo = call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm), !noalias !53568 ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bo, 0
  %i.bq = extractvalue { ptr, i64 } %i.bo, 1
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.br = load ptr, ptr %i.bm, align 8, !alias.scope !53569, !noalias !53568, !nonnull !55, !noundef !55
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !53569, !noalias !53568, !noundef !55
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.h ], [ %i.br, %bb.i ] ; 2 uses
  %.merged.i.i.i.i.i.i.i = phi i64 [ %i.bq, %bb.h ], [ %i.bt, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i.i.i) ], !noalias !53561
  %i.bu = call i64 @llvm.uadd.sat.i64(i64 %i.u, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.bu, i64 4) ; 3 uses
  %i.bv = shl i64 %.sroa.0.0.i.i.i.i.i, 4         ; 4 uses
  %i.bw = icmp ugt i64 %i.bu, 1152921504606846975
  %i.bx = icmp ugt i64 %i.bv, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.bw, %i.bx
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !71

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.j
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !53570
  %i.by = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bv, i64 noundef range(i64 1, 9) 8) #71, !noalias !53570 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.k, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i"

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %bb.j
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 0, %bb.j ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70, !noalias !53562
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.by, align 8, !noalias !53562
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %.merged.i.i.i.i.i.i.i, ptr %i.ca, align 8, !noalias !53562
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.g, align 8, !noalias !53562
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.by, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !53562
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !53562
  call void @llvm.experimental.noalias.scope.decl(metadata !53571)
  call void @llvm.experimental.noalias.scope.decl(metadata !53572)
  %i.cb = icmp eq i64 %i.u, 0
  br i1 %i.cb, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h87fb45964da21e3aE.exit.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i"
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i.i.i.i, i64 362
  %i.cd = load i16, ptr %i.cc, align 2, !noalias !53573, !noundef !55
  %i.ce = zext i16 %i.cd to i64
  %i.cf = icmp samesign ult i64 %.sroa.17.0.copyload.i.i.i.i, %i.ce
  br i1 %i.cf, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i27.i.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i"
  %i.cg = add nuw nsw i64 %.sroa.17.0.copyload.i.i.i.i, 1
  br label %.loopexit.i.i39.i.i.i.i

.lr.ph.i.i.i.i.i.i27.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i", %bb.l
  %.sroa.0.038.i.i.i.i.i.i28.i.i.i.i = phi ptr [ %i.ch, %bb.l ], [ %.sroa.7.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i29.i.i.i.i = phi i64 [ %i.ci, %bb.l ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i" ] ; 2 uses
  %i.ch = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i28.i.i.i.i, align 8, !noalias !53574, !noundef !55 ; 8 uses
  %.not.i.i.i.i.i.i.i30.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i30.i.i.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i27.i.i.i.i
  %i.ci = add i64 %.sroa.5.037.i.i.i.i.i.i29.i.i.i.i, 1 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i28.i.i.i.i, i64 360
  %i.ck = load i16, ptr %i.cj, align 8, !noalias !53574 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 362
  %i.cm = load i16, ptr %i.cl, align 2, !noalias !53573, !noundef !55
  %i.cn = icmp ult i16 %i.ck, %i.cm
  br i1 %i.cn, label %bb.m, label %.lr.ph.i.i.i.i.i.i27.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.co = zext i16 %i.ck to i64                   ; 4 uses
  %i.cp = icmp eq i64 %i.ci, 0
  %i.cq = add nuw nsw i64 %i.co, 1                ; 2 uses
  br i1 %i.cp, label %.loopexit.i.i39.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 368
  %i.cs = icmp ult i16 %i.ck, 11
  call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq ; 2 uses
  %xtraiter425 = and i64 %i.ci, 7                 ; 2 uses
  %lcmp.mod426.not = icmp eq i64 %xtraiter425, 0
  br i1 %lcmp.mod426.not, label %.prol.loopexit422, label %.prol.preheader421

.prol.preheader421:                               ; preds = %bb.n, %.prol.preheader421
  %.pn30.in.i.i.i.i.i.i35.i.i.i.i.prol = phi ptr [ %i.cu, %.prol.preheader421 ], [ %i.ct, %bb.n ]
  %.pn28.in.i.i.i.i.i.i36.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i37.i.i.i.i.prol, %.prol.preheader421 ], [ %i.ci, %bb.n ]
  %prol.iter427 = phi i64 [ %prol.iter427.next, %.prol.preheader421 ], [ 0, %bb.n ]
  %.pn28.i.i.i.i.i.i37.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i36.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i38.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i35.i.i.i.i.prol, align 8, !noalias !53575, !nonnull !55, !noundef !55 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.prol, i64 368 ; 2 uses
  %prol.iter427.next = add i64 %prol.iter427, 1   ; 2 uses
  %prol.iter427.cmp.not = icmp eq i64 %prol.iter427.next, %xtraiter425
  br i1 %prol.iter427.cmp.not, label %.prol.loopexit422, label %.prol.preheader421, !llvm.loop !53354

.prol.loopexit422:                                ; preds = %.prol.preheader421, %bb.n
  %.pn30.i.i.i.i.i.i38.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.n ], [ %.pn30.i.i.i.i.i.i38.i.i.i.i.prol, %.prol.preheader421 ]
  %.pn30.in.i.i.i.i.i.i35.i.i.i.i.unr = phi ptr [ %i.ct, %bb.n ], [ %i.cu, %.prol.preheader421 ]
  %.pn28.in.i.i.i.i.i.i36.i.i.i.i.unr = phi i64 [ %i.ci, %bb.n ], [ %.pn28.i.i.i.i.i.i37.i.i.i.i.prol, %.prol.preheader421 ]
  %i.cv = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i29.i.i.i.i, 7
  br i1 %i.cv, label %.loopexit.i.i39.i.i.i.i, label %.new423

.new423:                                          ; preds = %.prol.loopexit422, %.new423
  %.pn30.in.i.i.i.i.i.i35.i.i.i.i = phi ptr [ %i.de, %.new423 ], [ %.pn30.in.i.i.i.i.i.i35.i.i.i.i.unr, %.prol.loopexit422 ]
  %.pn28.in.i.i.i.i.i.i36.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i37.i.i.i.i.7, %.new423 ], [ %.pn28.in.i.i.i.i.i.i36.i.i.i.i.unr, %.prol.loopexit422 ]
  %.pn30.i.i.i.i.i.i38.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i35.i.i.i.i, align 8, !noalias !53575, !nonnull !55, !noundef !55
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.1 = load ptr, ptr %i.cw, align 8, !noalias !53575, !nonnull !55, !noundef !55
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.1, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.2 = load ptr, ptr %i.cx, align 8, !noalias !53575, !nonnull !55, !noundef !55
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.2, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.3 = load ptr, ptr %i.cy, align 8, !noalias !53575, !nonnull !55, !noundef !55
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.3, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.4 = load ptr, ptr %i.cz, align 8, !noalias !53575, !nonnull !55, !noundef !55
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.4, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.5 = load ptr, ptr %i.da, align 8, !noalias !53575, !nonnull !55, !noundef !55
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.5, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.6 = load ptr, ptr %i.db, align 8, !noalias !53575, !nonnull !55, !noundef !55
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.6, i64 368
  %.pn28.i.i.i.i.i.i37.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i36.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i38.i.i.i.i.7 = load ptr, ptr %i.dc, align 8, !noalias !53575, !nonnull !55, !noundef !55 ; 2 uses
  %i.dd = icmp eq i64 %.pn28.i.i.i.i.i.i37.i.i.i.i.7, 0
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.7, i64 368
  br i1 %i.dd, label %.loopexit.i.i39.i.i.i.i, label %.new423

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i27.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2614) #70
          to label %.noexc.i.i.i.i47.i.i.i.i unwind label %bb.p, !noalias !53576

.noexc.i.i.i.i47.i.i.i.i:                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i39.i.i.i.i:                          ; preds = %.prol.loopexit422, %.new423, %bb.m, %.thread.i.i.i
  %.sroa.0.0.ph.i.i.i.i.i34.i41.i.i.i = phi ptr [ %i.ch, %bb.m ], [ %.sroa.7.0.copyload.i.i.i.i, %.thread.i.i.i ], [ %i.ch, %.new423 ], [ %i.ch, %.prol.loopexit422 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i32.i40.i.i.i = phi i64 [ %i.co, %bb.m ], [ %.sroa.17.0.copyload.i.i.i.i, %.thread.i.i.i ], [ %i.co, %.new423 ], [ %i.co, %.prol.loopexit422 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i40.i.i.i.i = phi i64 [ %i.cq, %bb.m ], [ %i.cg, %.thread.i.i.i ], [ 0, %.new423 ], [ 0, %.prol.loopexit422 ]
  %.sroa.07.0.i.i.i.i.i41.i.i.i.i = phi ptr [ %i.ch, %bb.m ], [ %.sroa.7.0.copyload.i.i.i.i, %.thread.i.i.i ], [ %.pn30.i.i.i.i.i.i38.i.i.i.i.lcssa.unr, %.prol.loopexit422 ], [ %.pn30.i.i.i.i.i.i38.i.i.i.i.7, %.new423 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i34.i41.i.i.i, i64 8
  %i.dh = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i32.i40.i.i.i, 11
  call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i32.i40.i.i.i ; 4 uses
  %i.dj = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di)
          to label %.noexc56.i.i.i.i unwind label %.thread50.i.i.i.i, !noalias !53562

.noexc56.i.i.i.i:                                 ; preds = %.loopexit.i.i39.i.i.i.i
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc56.i.i.i.i
  %i.dk = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di)
          to label %.noexc57.i.i.i.i unwind label %.thread50.i.i.i.i, !noalias !53562 ; 2 uses

.noexc57.i.i.i.i:                                 ; preds = %bb.q
  %i.dl = extractvalue { ptr, i64 } %i.dk, 0
  %i.dm = extractvalue { ptr, i64 } %i.dk, 1
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.r:                                             ; preds = %.noexc56.i.i.i.i
  %i.dn = load ptr, ptr %i.di, align 8, !alias.scope !53577, !noalias !53578, !nonnull !55, !noundef !55
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !53577, !noalias !53578, !noundef !55
  br label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.r, %.noexc57.i.i.i.i
  %.sroa.0.0.i.i.i.i.sink.i.i.i.i.ph = phi ptr [ %i.dl, %.noexc57.i.i.i.i ], [ %i.dn, %bb.r ]
  %.pn.i.i.i.i.i.i.ph = phi i64 [ %i.dm, %.noexc57.i.i.i.i ], [ %i.dp, %bb.r ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.backedge, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.0.i.i.i.i.sink.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.sink.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.0.0.i.i.i.i.sink.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.backedge ] ; 2 uses
  %i.dq = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.backedge ]
  %.sroa.7.1.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i41.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.backedge ] ; 5 uses
  %.sroa.17.1.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i.i.i40.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.235.1.in.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.235.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i.backedge ]
  %i.dr = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.backedge ] ; 3 uses
  %i.ds = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.backedge ] ; 4 uses
  %.pn.i.i.i.i.i.i = phi i64 [ %.pn.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.pn.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.backedge ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.sink.i.i.i.i) ]
  %.sroa.235.1.i.i.i.i = add i64 %.sroa.235.1.in.i.i.i.i, -1 ; 3 uses
  %i.dt = icmp samesign ult i64 %i.ds, 576460752303423488
  call void @llvm.assume(i1 %i.dt)
  %i.du = icmp eq i64 %i.ds, %i.dr
  br i1 %i.du, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i", label %bb.s

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dv = call i64 @llvm.uadd.sat.i64(i64 %.sroa.235.1.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.dr, i64 noundef %i.dv, i64 noundef 8, i64 noundef 16)
          to label %.noexc9.i.i.i.i unwind label %bb.ab, !noalias !53562

.noexc9.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i"
  %.pre2.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !65, !alias.scope !53579, !noalias !53580
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !53579, !noalias !53580
  br label %bb.s

bb.s:                                             ; preds = %.noexc9.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dw = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i ], [ %.pre.i.i.i.i, %.noexc9.i.i.i.i ] ; 2 uses
  %i.dx = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %.noexc9.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.ds ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.sink.i.i.i.i, ptr %i.dy, align 8, !noalias !53581
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %.pn.i.i.i.i.i.i, ptr %i.dz, align 8, !noalias !53581
  %i.ea = add nuw nsw i64 %i.ds, 1                ; 2 uses
  store i64 %i.ea, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !53579, !noalias !53580
  %i.eb = icmp eq i64 %.sroa.235.1.i.i.i.i, 0
  br i1 %i.eb, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h87fb45964da21e3aE.exit.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i": ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i) ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i, i64 362
  %i.ed = load i16, ptr %i.ec, align 2, !noalias !53582, !noundef !55
  %i.ee = zext i16 %i.ed to i64
  %i.ef = icmp ult i64 %.sroa.17.1.i.i.i.i, %i.ee
  br i1 %i.ef, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i"
  %i.eg = add nuw nsw i64 %.sroa.17.1.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i", %bb.t
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eh, %bb.t ], [ %.sroa.7.1.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ei, %bb.t ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.eh = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53583, !noundef !55 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ei = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 360
  %i.ek = load i16, ptr %i.ej, align 8, !noalias !53583 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 362
  %i.em = load i16, ptr %i.el, align 2, !noalias !53582, !noundef !55
  %i.en = icmp ult i16 %i.ek, %i.em
  br i1 %i.en, label %bb.u, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.eo = zext i16 %i.ek to i64                   ; 4 uses
  %i.ep = icmp eq i64 %i.ei, 0
  %i.eq = add nuw nsw i64 %i.eo, 1                ; 2 uses
  br i1 %i.ep, label %.loopexit.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 368
  %i.es = icmp ult i16 %i.ek, 11
  call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq ; 2 uses
  %xtraiter432 = and i64 %i.ei, 7                 ; 2 uses
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %.prol.loopexit429, label %.prol.preheader428

.prol.preheader428:                               ; preds = %bb.v, %.prol.preheader428
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.eu, %.prol.preheader428 ], [ %i.et, %bb.v ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader428 ], [ %i.ei, %bb.v ]
  %prol.iter434 = phi i64 [ %prol.iter434.next, %.prol.preheader428 ], [ 0, %bb.v ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !53584, !nonnull !55, !noundef !55 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 368 ; 2 uses
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %.prol.loopexit429, label %.prol.preheader428, !llvm.loop !53380

.prol.loopexit429:                                ; preds = %.prol.preheader428, %bb.v
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.v ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader428 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.et, %bb.v ], [ %i.eu, %.prol.preheader428 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ei, %bb.v ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader428 ]
  %i.ev = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.ev, label %.loopexit.i.i.i.i.i.i, label %.new430

.new430:                                          ; preds = %.prol.loopexit429, %.new430
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fe, %.new430 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit429 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new430 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit429 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53584, !nonnull !55, !noundef !55
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ew, align 8, !noalias !53584, !nonnull !55, !noundef !55
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ex, align 8, !noalias !53584, !nonnull !55, !noundef !55
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ey, align 8, !noalias !53584, !nonnull !55, !noundef !55
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ez, align 8, !noalias !53584, !nonnull !55, !noundef !55
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.fa, align 8, !noalias !53584, !nonnull !55, !noundef !55
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.fb, align 8, !noalias !53584, !nonnull !55, !noundef !55
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 368
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.fc, align 8, !noalias !53584, !nonnull !55, !noundef !55 ; 2 uses
  %i.fd = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.fe = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 368
  br i1 %i.fd, label %.loopexit.i.i.i.i.i.i, label %.new430

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2614) #70
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.x, !noalias !53585

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %.prol.loopexit429, %.new430, %bb.u, %.thread.i.i.i.i
  %.sroa.0.0.ph.i.i.i.i.i28.i.i.i.i = phi ptr [ %i.eh, %bb.u ], [ %.sroa.7.1.i.i.i.i, %.thread.i.i.i.i ], [ %i.eh, %.new430 ], [ %i.eh, %.prol.loopexit429 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i27.i.i.i.i = phi i64 [ %i.eo, %bb.u ], [ %.sroa.17.1.i.i.i.i, %.thread.i.i.i.i ], [ %i.eo, %.new430 ], [ %i.eo, %.prol.loopexit429 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eq, %bb.u ], [ %i.eg, %.thread.i.i.i.i ], [ 0, %.new430 ], [ 0, %.prol.loopexit429 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eh, %bb.u ], [ %.sroa.7.1.i.i.i.i, %.thread.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit429 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new430 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i28.i.i.i.i, i64 8
  %i.fh = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i27.i.i.i.i, 11
  call void @llvm.assume(i1 %i.fh)
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i27.i.i.i.i ; 4 uses
  %i.fj = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi)
          to label %.noexc14.i.i.i.i unwind label %bb.ab, !noalias !53562

.noexc14.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i.i.i
  br i1 %i.fj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc14.i.i.i.i
  %i.fk = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi)
          to label %.noexc15.i.i.i.i unwind label %bb.ab, !noalias !53562 ; 2 uses

.noexc15.i.i.i.i:                                 ; preds = %bb.y
  %i.fl = extractvalue { ptr, i64 } %i.fk, 0
  %i.fm = extractvalue { ptr, i64 } %i.fk, 1
  br label %.lr.ph.i.i.i.i.i.i.backedge

bb.z:                                             ; preds = %.noexc14.i.i.i.i
  %i.fn = load ptr, ptr %i.fi, align 8, !alias.scope !53586, !noalias !53587, !nonnull !55, !noundef !55
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !53586, !noalias !53587, !noundef !55
  br label %.lr.ph.i.i.i.i.i.i.backedge

.lr.ph.i.i.i.i.i.i.backedge:                      ; preds = %bb.z, %.noexc15.i.i.i.i
  %.sroa.0.0.i.i.i.i.sink.i.i.i.i.be = phi ptr [ %i.fl, %.noexc15.i.i.i.i ], [ %i.fn, %bb.z ]
  %.pn.i.i.i.i.i.i.be = phi i64 [ %i.fm, %.noexc15.i.i.i.i ], [ %i.fp, %bb.z ]
  br label %.lr.ph.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.a
  store i64 0, ptr %i.j, align 8, !alias.scope !53588, !noalias !53589
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.fq, align 8, !alias.scope !53588, !noalias !53589
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.fr, align 8, !alias.scope !53588, !noalias !53589
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h28aa6edbdf19db1dE.exit

.thread50.i.i.i.i:                                ; preds = %bb.q, %.loopexit.i.i39.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y, %.loopexit.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.pre.i.i.i.i = load i64, ptr %i.g, align 8, !range !65, !alias.scope !53590, !noalias !53562 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53590)
  %i.fs = icmp eq i64 %.val.i.pre.i.i.i.i, 0
  br i1 %i.fs, label %common.resume, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ab
  %.val1.i.i.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !53590, !noalias !53562
  %.pre.i.i.i = shl nuw i64 %.val.i.pre.i.i.i.i, 4
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i.i, %.thread50.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.bv, %.thread50.i.i.i.i ]
  %.val1.i.i.i.i.i = phi ptr [ %.val1.i.i.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.by, %.thread50.i.i.i.i ]
  %lpad.phi54.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %._crit_edge.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.thread50.i.i.i.i ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.pre-phi.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !53591
  br label %common.resume

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h87fb45964da21e3aE.exit.i.i.i.i": ; preds = %bb.s, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !53589
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h28aa6edbdf19db1dE.exit

common.resume:                                    ; preds = %.body, %bb.ad, %bb.ab, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %bb.ab ], [ %lpad.phi54.i.i.i.i, %bb.ac ], [ %.pn88, %bb.ad ], [ %.pn88, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h28aa6edbdf19db1dE.exit: ; preds = %bb.aa, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h87fb45964da21e3aE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !53562
  %i.ft = invoke noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2442, i64 noundef 12, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2441)
          to label %bb.af unwind label %bb.ae

.body:                                            ; preds = %bb.bj, %.body195, %bb.bg, %bb.bh, %bb.ae
  %.pn88 = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i154, %bb.bg ], [ %i.fx, %bb.ae ], [ %lpad.phi54.i.i.i.i130, %bb.bh ], [ %.pn, %.body195 ], [ %.pn, %bb.bj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53592)
  %.val.i = load i64, ptr %i.j, align 8, !range !65, !alias.scope !53592, !noundef !55 ; 2 uses
  %i.fu = icmp eq i64 %.val.i, 0
  br i1 %i.fu, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %.body
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i = load ptr, ptr %i.fv, align 8, !alias.scope !53592, !nonnull !55, !noundef !55
  %i.fw = shl nuw i64 %.val.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !53592
  br label %common.resume

bb.ae:                                            ; preds = %bb.ap, %bb.am, %.loopexit.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h28aa6edbdf19db1dE.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h28aa6edbdf19db1dE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fz = load ptr, ptr %i.fy, align 8, !noundef !55 ; 4 uses
  %.not85 = icmp ne ptr %i.fz, null
end_hunk_2
begin_hunk_3_@"_ZN57_$LT$rhai..module..Module$u20$as$u20$core..fmt..Debug$GT$3fmt17he6d73d56cf18962eE":bb.a
  %.sroa.7.0.copyload.i.i.i.i117 = phi ptr [ %i.gw, %bb.ai ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i103, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i.i.i.i.i.i115.lcssa.unr, %.prol.loopexit439 ], [ %.pn30.i.i.i.i.i.i.i.i.i115.7, %.new440 ] ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i111230, i64 8
  %i.hw = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i109229, 11
  call void @llvm.assume(i1 %i.hw), !noalias !53596
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.hv, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i109229 ; 4 uses
  %i.hy = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hx)
          to label %.noexc177 unwind label %bb.ae

.noexc177:                                        ; preds = %.loopexit.i.i.i.i
  br i1 %i.hy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.noexc177
  %i.hz = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hx)
          to label %.noexc178 unwind label %bb.ae ; 2 uses

.noexc178:                                        ; preds = %bb.am
  %i.ia = extractvalue { ptr, i64 } %i.hz, 0
  %i.ib = extractvalue { ptr, i64 } %i.hz, 1
  br label %bb.ao

bb.an:                                            ; preds = %.noexc177
  %i.ic = load ptr, ptr %i.hx, align 8, !alias.scope !53603, !noalias !53604, !nonnull !55, !noundef !55
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !alias.scope !53603, !noalias !53604, !noundef !55
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.noexc178
  %.sroa.0.0.i.i.i.i.i.i.i118 = phi ptr [ %i.ia, %.noexc178 ], [ %i.ic, %bb.an ] ; 2 uses
  %.merged.i.i.i.i.i.i.i119 = phi i64 [ %i.ib, %.noexc178 ], [ %i.ie, %bb.an ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i.i.i118) ], !noalias !53596
  %i.if = call i64 @llvm.uadd.sat.i64(i64 %i.gf, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i120 = call noundef i64 @llvm.umax.i64(i64 %i.if, i64 4) ; 3 uses
  %i.ig = shl i64 %.sroa.0.0.i.i.i.i.i120, 4      ; 4 uses
  %i.ih = icmp ugt i64 %i.if, 1152921504606846975
  %i.ii = icmp ugt i64 %i.ig, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i121 = or i1 %i.ih, %i.ii
  br i1 %or.cond.i.i.i.i.i.i.i121, label %bb.ap, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i122, !prof !71

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i122: ; preds = %bb.ao
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !53605
  %i.ij = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ig, i64 noundef range(i64 1, 9) 8) #71, !noalias !53605 ; 6 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.ap, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i123"

bb.ap:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i122, %bb.ao
  %.sroa.4.0.ph.i.i.i.i.i171 = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i122 ], [ 0, %bb.ao ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i171, i64 %i.ig, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70
          to label %.noexc179 unwind label %bb.ae

.noexc179:                                        ; preds = %bb.ap
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i123": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i122
  store ptr %.sroa.0.0.i.i.i.i.i.i.i118, ptr %i.ij, align 8, !noalias !53597
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 %.merged.i.i.i.i.i.i.i119, ptr %i.il, align 8, !noalias !53597
  store i64 %.sroa.0.0.i.i.i.i.i120, ptr %i.f, align 8, !noalias !53597
  %.sroa.4.0..sroa_idx.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.ij, ptr %.sroa.4.0..sroa_idx.i.i.i.i124, align 8, !noalias !53597
  %.sroa.64.0..sroa_idx.i.i.i.i125 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i125, align 8, !noalias !53597
  call void @llvm.experimental.noalias.scope.decl(metadata !53606)
  call void @llvm.experimental.noalias.scope.decl(metadata !53607)
  %i.im = icmp eq i64 %i.gf, 0
  br i1 %i.im, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hcdc70abdda0ac3f8E.exit.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i21.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i21.i.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i123"
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i.i.i.i117, i64 362
  %i.io = load i16, ptr %i.in, align 2, !noalias !53608, !noundef !55
  %i.ip = zext i16 %i.io to i64
  %i.iq = icmp samesign ult i64 %.sroa.17.0.copyload.i.i.i.i116, %i.ip
  br i1 %i.iq, label %.thread.i.i.i170, label %.lr.ph.i.i.i.i.i.i26.i.i.i.i

.thread.i.i.i170:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i21.i.i.i.i"
  %i.ir = add nuw nsw i64 %.sroa.17.0.copyload.i.i.i.i116, 1
  br label %.loopexit.i38.i.i.i.i

.lr.ph.i.i.i.i.i.i26.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i21.i.i.i.i", %bb.aq
  %.sroa.0.038.i.i.i.i.i.i27.i.i.i.i = phi ptr [ %i.is, %bb.aq ], [ %.sroa.7.0.copyload.i.i.i.i117, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i21.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i28.i.i.i.i = phi i64 [ %i.it, %bb.aq ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i21.i.i.i.i" ] ; 2 uses
  %i.is = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i27.i.i.i.i, align 8, !noalias !53609, !noundef !55 ; 8 uses
  %.not.i.i.i.i.i.i.i29.i.i.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i.i.i.i29.i.i.i.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i26.i.i.i.i
  %i.it = add i64 %.sroa.5.037.i.i.i.i.i.i28.i.i.i.i, 1 ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i27.i.i.i.i, i64 360
  %i.iv = load i16, ptr %i.iu, align 8, !noalias !53609 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 362
  %i.ix = load i16, ptr %i.iw, align 2, !noalias !53608, !noundef !55
  %i.iy = icmp ult i16 %i.iv, %i.ix
  br i1 %i.iy, label %bb.ar, label %.lr.ph.i.i.i.i.i.i26.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.iz = zext i16 %i.iv to i64                   ; 4 uses
  %i.ja = icmp eq i64 %i.it, 0
  %i.jb = add nuw nsw i64 %i.iz, 1                ; 2 uses
  br i1 %i.ja, label %.loopexit.i38.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 368
  %i.jd = icmp ult i16 %i.iv, 11
  call void @llvm.assume(i1 %i.jd)
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jb ; 2 uses
  %xtraiter449 = and i64 %i.it, 7                 ; 2 uses
  %lcmp.mod450.not = icmp eq i64 %xtraiter449, 0
  br i1 %lcmp.mod450.not, label %.prol.loopexit446, label %.prol.preheader445

.prol.preheader445:                               ; preds = %bb.as, %.prol.preheader445
  %.pn30.in.i.i.i.i.i.i34.i.i.i.i.prol = phi ptr [ %i.jf, %.prol.preheader445 ], [ %i.je, %bb.as ]
  %.pn28.in.i.i.i.i.i.i35.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i36.i.i.i.i.prol, %.prol.preheader445 ], [ %i.it, %bb.as ]
  %prol.iter451 = phi i64 [ %prol.iter451.next, %.prol.preheader445 ], [ 0, %bb.as ]
  %.pn28.i.i.i.i.i.i36.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i35.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i37.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i34.i.i.i.i.prol, align 8, !noalias !53610, !nonnull !55, !noundef !55 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i37.i.i.i.i.prol, i64 368 ; 2 uses
  %prol.iter451.next = add i64 %prol.iter451, 1   ; 2 uses
  %prol.iter451.cmp.not = icmp eq i64 %prol.iter451.next, %xtraiter449
  br i1 %prol.iter451.cmp.not, label %.prol.loopexit446, label %.prol.preheader445, !llvm.loop !53454

.prol.loopexit446:                                ; preds = %.prol.preheader445, %bb.as
  %.pn30.i.i.i.i.i.i37.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.as ], [ %.pn30.i.i.i.i.i.i37.i.i.i.i.prol, %.prol.preheader445 ]
  %.pn30.in.i.i.i.i.i.i34.i.i.i.i.unr = phi ptr [ %i.je, %bb.as ], [ %i.jf, %.prol.preheader445 ]
  %.pn28.in.i.i.i.i.i.i35.i.i.i.i.unr = phi i64 [ %i.it, %bb.as ], [ %.pn28.i.i.i.i.i.i36.i.i.i.i.prol, %.prol.preheader445 ]
  %i.jg = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i28.i.i.i.i, 7
  br i1 %i.jg, label %.loopexit.i38.i.i.i.i, label %.new447

.new447:                                          ; preds = %.prol.loopexit446, %.new447
  %.pn30.in.i.i.i.i.i.i34.i.i.i.i = phi ptr [ %i.jp, %.new447 ], [ %.pn30.in.i.i.i.i.i.i34.i.i.i.i.unr, %.prol.loopexit446 ]
  %.pn28.in.i.i.i.i.i.i35.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i36.i.i.i.i.7, %.new447 ], [ %.pn28.in.i.i.i.i.i.i35.i.i.i.i.unr, %.prol.loopexit446 ]
  %.pn30.i.i.i.i.i.i37.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i34.i.i.i.i, align 8, !noalias !53610, !nonnull !55, !noundef !55
  %i.jh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i37.i.i.i.i, i64 368
  %.pn30.i.i.i.i.i.i37.i.i.i.i.1 = load ptr, ptr %i.jh, align 8, !noalias !53610, !nonnull !55, !noundef !55
  %i.ji = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i37.i.i.i.i.1, i64 368
  %.pn30.i.i.i.i.i.i37.i.i.i.i.2 = load ptr, ptr %i.ji, align 8, !noalias !53610, !nonnull !55, !noundef !55
  %i.jj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i37.i.i.i.i.2, i64 368
  %.pn30.i.i.i.i.i.i37.i.i.i.i.3 = load ptr, ptr %i.jj, align 8, !noalias !53610, !nonnull !55, !noundef !55
  %i.jk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i37.i.i.i.i.3, i64 368
  %.pn30.i.i.i.i.i.i37.i.i.i.i.4 = load ptr, ptr %i.jk, align 8, !noalias !53610, !nonnull !55, !noundef !55
  %i.jl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i37.i.i.i.i.4, i64 368
  %.pn30.i.i.i.i.i.i37.i.i.i.i.5 = load ptr, ptr %i.jl, align 8, !noalias !53610, !nonnull !55, !noundef !55
  %i.jm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i37.i.i.i.i.5, i64 368
  %.pn30.i.i.i.i.i.i37.i.i.i.i.6 = load ptr, ptr %i.jm, align 8, !noalias !53610, !nonnull !55, !noundef !55
  %i.jn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i37.i.i.i.i.6, i64 368
  %.pn28.i.i.i.i.i.i36.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i35.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i37.i.i.i.i.7 = load ptr, ptr %i.jn, align 8, !noalias !53610, !nonnull !55, !noundef !55 ; 2 uses
  %i.jo = icmp eq i64 %.pn28.i.i.i.i.i.i36.i.i.i.i.7, 0
  %i.jp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i37.i.i.i.i.7, i64 368
  br i1 %i.jo, label %.loopexit.i38.i.i.i.i, label %.new447

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i26.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2614) #70
          to label %.noexc.i.i.i.i46.i.i.i.i unwind label %bb.au, !noalias !53611

.noexc.i.i.i.i46.i.i.i.i:                         ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.jq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i38.i.i.i.i:                            ; preds = %.prol.loopexit446, %.new447, %bb.ar, %.thread.i.i.i170
  %.sroa.0.0.ph.i.i.i.i.i33.i41.i.i.i = phi ptr [ %i.is, %bb.ar ], [ %.sroa.7.0.copyload.i.i.i.i117, %.thread.i.i.i170 ], [ %i.is, %.new447 ], [ %i.is, %.prol.loopexit446 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i31.i40.i.i.i = phi i64 [ %i.iz, %bb.ar ], [ %.sroa.17.0.copyload.i.i.i.i116, %.thread.i.i.i170 ], [ %i.iz, %.new447 ], [ %i.iz, %.prol.loopexit446 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i39.i.i.i.i = phi i64 [ %i.jb, %bb.ar ], [ %i.ir, %.thread.i.i.i170 ], [ 0, %.new447 ], [ 0, %.prol.loopexit446 ]
  %.sroa.07.0.i.i.i.i.i40.i.i.i.i = phi ptr [ %i.is, %bb.ar ], [ %.sroa.7.0.copyload.i.i.i.i117, %.thread.i.i.i170 ], [ %.pn30.i.i.i.i.i.i37.i.i.i.i.lcssa.unr, %.prol.loopexit446 ], [ %.pn30.i.i.i.i.i.i37.i.i.i.i.7, %.new447 ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i33.i41.i.i.i, i64 8
  %i.js = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i31.i40.i.i.i, 11
  call void @llvm.assume(i1 %i.js)
  %i.jt = getelementptr inbounds nuw [24 x i8], ptr %i.jr, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i31.i40.i.i.i ; 4 uses
  %i.ju = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jt)
          to label %.noexc55.i.i.i.i unwind label %.thread50.i.i.i.i126, !noalias !53597

.noexc55.i.i.i.i:                                 ; preds = %.loopexit.i38.i.i.i.i
  br i1 %i.ju, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.noexc55.i.i.i.i
  %i.jv = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jt)
          to label %.noexc56.i.i.i.i169 unwind label %.thread50.i.i.i.i126, !noalias !53597 ; 2 uses

.noexc56.i.i.i.i169:                              ; preds = %bb.av
  %i.jw = extractvalue { ptr, i64 } %i.jv, 0
  %i.jx = extractvalue { ptr, i64 } %i.jv, 1
  br label %.lr.ph.i.i.i.i.i.i133.preheader

bb.aw:                                            ; preds = %.noexc55.i.i.i.i
  %i.jy = load ptr, ptr %i.jt, align 8, !alias.scope !53612, !noalias !53613, !nonnull !55, !noundef !55
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !alias.scope !53612, !noalias !53613, !noundef !55
  br label %.lr.ph.i.i.i.i.i.i133.preheader

.lr.ph.i.i.i.i.i.i133.preheader:                  ; preds = %bb.aw, %.noexc56.i.i.i.i169
  %.sroa.0.0.i.i.i.i.sink.i.i.i.i135.ph = phi ptr [ %i.jw, %.noexc56.i.i.i.i169 ], [ %i.jy, %bb.aw ]
  %.pn.i.i.i.i.i.i139.ph = phi i64 [ %i.jx, %.noexc56.i.i.i.i169 ], [ %i.ka, %bb.aw ]
  br label %.lr.ph.i.i.i.i.i.i133

.lr.ph.i.i.i.i.i.i133:                            ; preds = %.lr.ph.i.i.i.i.i.i133.backedge, %.lr.ph.i.i.i.i.i.i133.preheader
  %.sroa.0.0.i.i.i.i.sink.i.i.i.i135 = phi ptr [ %.sroa.0.0.i.i.i.i.sink.i.i.i.i135.ph, %.lr.ph.i.i.i.i.i.i133.preheader ], [ %.sroa.0.0.i.i.i.i.sink.i.i.i.i135.be, %.lr.ph.i.i.i.i.i.i133.backedge ] ; 2 uses
  %i.kb = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i.i133.preheader ], [ %i.kh, %.lr.ph.i.i.i.i.i.i133.backedge ]
  %.sroa.7.1.i.i.i.i136 = phi ptr [ %.sroa.07.0.i.i.i.i.i40.i.i.i.i, %.lr.ph.i.i.i.i.i.i133.preheader ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i153, %.lr.ph.i.i.i.i.i.i133.backedge ] ; 5 uses
  %.sroa.17.1.i.i.i.i137 = phi i64 [ %.sroa.7.0.i.i.i.i.i39.i.i.i.i, %.lr.ph.i.i.i.i.i.i133.preheader ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i152, %.lr.ph.i.i.i.i.i.i133.backedge ] ; 3 uses
  %.sroa.235.1.in.i.i.i.i138 = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i133.preheader ], [ %.sroa.235.1.i.i.i.i140, %.lr.ph.i.i.i.i.i.i133.backedge ]
  %i.kc = phi i64 [ %.sroa.0.0.i.i.i.i.i120, %.lr.ph.i.i.i.i.i.i133.preheader ], [ %i.ki, %.lr.ph.i.i.i.i.i.i133.backedge ] ; 3 uses
  %i.kd = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i133.preheader ], [ %i.kl, %.lr.ph.i.i.i.i.i.i133.backedge ] ; 4 uses
  %.pn.i.i.i.i.i.i139 = phi i64 [ %.pn.i.i.i.i.i.i139.ph, %.lr.ph.i.i.i.i.i.i133.preheader ], [ %.pn.i.i.i.i.i.i139.be, %.lr.ph.i.i.i.i.i.i133.backedge ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.sink.i.i.i.i135) ]
  %.sroa.235.1.i.i.i.i140 = add i64 %.sroa.235.1.in.i.i.i.i138, -1 ; 3 uses
  %i.ke = icmp samesign ult i64 %i.kd, 576460752303423488
  call void @llvm.assume(i1 %i.ke)
  %i.kf = icmp eq i64 %i.kd, %i.kc
  br i1 %i.kf, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i165", label %bb.ax

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i165": ; preds = %.lr.ph.i.i.i.i.i.i133
  %i.kg = call i64 @llvm.uadd.sat.i64(i64 %.sroa.235.1.i.i.i.i140, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.kc, i64 noundef %i.kg, i64 noundef 8, i64 noundef 16)
          to label %.noexc9.i.i.i.i166 unwind label %bb.bg, !noalias !53597

.noexc9.i.i.i.i166:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i165"
  %.pre2.i.i.i.i.i.i167 = load i64, ptr %i.f, align 8, !range !65, !alias.scope !53614, !noalias !53615
  %.pre.i.i.i.i168 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i124, align 8, !alias.scope !53614, !noalias !53615
  br label %bb.ax

bb.ax:                                            ; preds = %.noexc9.i.i.i.i166, %.lr.ph.i.i.i.i.i.i133
  %i.kh = phi ptr [ %i.kb, %.lr.ph.i.i.i.i.i.i133 ], [ %.pre.i.i.i.i168, %.noexc9.i.i.i.i166 ] ; 2 uses
  %i.ki = phi i64 [ %i.kc, %.lr.ph.i.i.i.i.i.i133 ], [ %.pre2.i.i.i.i.i.i167, %.noexc9.i.i.i.i166 ]
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.kh, i64 %i.kd ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.sink.i.i.i.i135, ptr %i.kj, align 8, !noalias !53616
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store i64 %.pn.i.i.i.i.i.i139, ptr %i.kk, align 8, !noalias !53616
  %i.kl = add nuw nsw i64 %i.kd, 1                ; 2 uses
  store i64 %i.kl, ptr %.sroa.64.0..sroa_idx.i.i.i.i125, align 8, !alias.scope !53614, !noalias !53615
  %i.km = icmp eq i64 %.sroa.235.1.i.i.i.i140, 0
  br i1 %i.km, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hcdc70abdda0ac3f8E.exit.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i.i": ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i136) ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i136, i64 362
  %i.ko = load i16, ptr %i.kn, align 2, !noalias !53617, !noundef !55
  %i.kp = zext i16 %i.ko to i64
  %i.kq = icmp ult i64 %.sroa.17.1.i.i.i.i137, %i.kp
  br i1 %i.kq, label %.thread.i.i.i.i164, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141

.thread.i.i.i.i164:                               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i.i"
  %i.kr = add nuw nsw i64 %.sroa.17.1.i.i.i.i137, 1
  br label %.loopexit.i.i.i.i.i149

.lr.ph.i.i.i.i.i.i.i.i.i.i141:                    ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i.i", %bb.ay
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i142 = phi ptr [ %i.ks, %bb.ay ], [ %.sroa.7.1.i.i.i.i136, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i143 = phi i64 [ %i.kt, %bb.ay ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ks = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i142, align 8, !noalias !53618, !noundef !55 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i144 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i144, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i141
  %i.kt = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i143, 1 ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i142, i64 360
  %i.kv = load i16, ptr %i.ku, align 8, !noalias !53618 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 362
  %i.kx = load i16, ptr %i.kw, align 2, !noalias !53617, !noundef !55
  %i.ky = icmp ult i16 %i.kv, %i.kx
  br i1 %i.ky, label %bb.az, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141

bb.az:                                            ; preds = %bb.ay
  %i.kz = zext i16 %i.kv to i64                   ; 4 uses
  %i.la = icmp eq i64 %i.kt, 0
  %i.lb = add nuw nsw i64 %i.kz, 1                ; 2 uses
  br i1 %i.la, label %.loopexit.i.i.i.i.i149, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 368
  %i.ld = icmp ult i16 %i.kv, 11
  call void @llvm.assume(i1 %i.ld)
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lb ; 2 uses
  %xtraiter456 = and i64 %i.kt, 7                 ; 2 uses
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0
  br i1 %lcmp.mod457.not, label %.prol.loopexit453, label %.prol.preheader452

.prol.preheader452:                               ; preds = %bb.ba, %.prol.preheader452
  %.pn30.in.i.i.i.i.i.i.i.i.i.i145.prol = phi ptr [ %i.lf, %.prol.preheader452 ], [ %i.le, %bb.ba ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i146.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i147.prol, %.prol.preheader452 ], [ %i.kt, %bb.ba ]
  %prol.iter458 = phi i64 [ %prol.iter458.next, %.prol.preheader452 ], [ 0, %bb.ba ]
  %.pn28.i.i.i.i.i.i.i.i.i.i147.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i146.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i148.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i145.prol, align 8, !noalias !53619, !nonnull !55, !noundef !55 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i148.prol, i64 368 ; 2 uses
  %prol.iter458.next = add i64 %prol.iter458, 1   ; 2 uses
  %prol.iter458.cmp.not = icmp eq i64 %prol.iter458.next, %xtraiter456
  br i1 %prol.iter458.cmp.not, label %.prol.loopexit453, label %.prol.preheader452, !llvm.loop !53480

.prol.loopexit453:                                ; preds = %.prol.preheader452, %bb.ba
  %.pn30.i.i.i.i.i.i.i.i.i.i148.lcssa.unr = phi ptr [ poison, %bb.ba ], [ %.pn30.i.i.i.i.i.i.i.i.i.i148.prol, %.prol.preheader452 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i145.unr = phi ptr [ %i.le, %bb.ba ], [ %i.lf, %.prol.preheader452 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i146.unr = phi i64 [ %i.kt, %bb.ba ], [ %.pn28.i.i.i.i.i.i.i.i.i.i147.prol, %.prol.preheader452 ]
  %i.lg = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i143, 7
  br i1 %i.lg, label %.loopexit.i.i.i.i.i149, label %.new454

.new454:                                          ; preds = %.prol.loopexit453, %.new454
  %.pn30.in.i.i.i.i.i.i.i.i.i.i145 = phi ptr [ %i.lp, %.new454 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i145.unr, %.prol.loopexit453 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i146 = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i147.7, %.new454 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i146.unr, %.prol.loopexit453 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i148 = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i145, align 8, !noalias !53619, !nonnull !55, !noundef !55
  %i.lh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i148, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i148.1 = load ptr, ptr %i.lh, align 8, !noalias !53619, !nonnull !55, !noundef !55
  %i.li = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i148.1, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i148.2 = load ptr, ptr %i.li, align 8, !noalias !53619, !nonnull !55, !noundef !55
  %i.lj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i148.2, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i148.3 = load ptr, ptr %i.lj, align 8, !noalias !53619, !nonnull !55, !noundef !55
  %i.lk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i148.3, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i148.4 = load ptr, ptr %i.lk, align 8, !noalias !53619, !nonnull !55, !noundef !55
  %i.ll = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i148.4, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i148.5 = load ptr, ptr %i.ll, align 8, !noalias !53619, !nonnull !55, !noundef !55
  %i.lm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i148.5, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i148.6 = load ptr, ptr %i.lm, align 8, !noalias !53619, !nonnull !55, !noundef !55
  %i.ln = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i148.6, i64 368
  %.pn28.i.i.i.i.i.i.i.i.i.i147.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i146, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i148.7 = load ptr, ptr %i.ln, align 8, !noalias !53619, !nonnull !55, !noundef !55 ; 2 uses
  %i.lo = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i147.7, 0
  %i.lp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i148.7, i64 368
  br i1 %i.lo, label %.loopexit.i.i.i.i.i149, label %.new454

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i141
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2614) #70
          to label %.noexc.i.i.i.i.i.i.i.i163 unwind label %bb.bc, !noalias !53620

.noexc.i.i.i.i.i.i.i.i163:                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i149:                           ; preds = %.prol.loopexit453, %.new454, %bb.az, %.thread.i.i.i.i164
  %.sroa.0.0.ph.i.i.i.i.i28.i.i.i.i150 = phi ptr [ %i.ks, %bb.az ], [ %.sroa.7.1.i.i.i.i136, %.thread.i.i.i.i164 ], [ %i.ks, %.new454 ], [ %i.ks, %.prol.loopexit453 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i27.i.i.i.i151 = phi i64 [ %i.kz, %bb.az ], [ %.sroa.17.1.i.i.i.i137, %.thread.i.i.i.i164 ], [ %i.kz, %.new454 ], [ %i.kz, %.prol.loopexit453 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i152 = phi i64 [ %i.lb, %bb.az ], [ %i.kr, %.thread.i.i.i.i164 ], [ 0, %.new454 ], [ 0, %.prol.loopexit453 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i153 = phi ptr [ %i.ks, %bb.az ], [ %.sroa.7.1.i.i.i.i136, %.thread.i.i.i.i164 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i148.lcssa.unr, %.prol.loopexit453 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i148.7, %.new454 ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i28.i.i.i.i150, i64 8
  %i.ls = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i27.i.i.i.i151, 11
  call void @llvm.assume(i1 %i.ls)
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %i.lr, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i27.i.i.i.i151 ; 4 uses
  %i.lu = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lt)
          to label %.noexc13.i.i.i.i unwind label %bb.bg, !noalias !53597

.noexc13.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i.i149
  br i1 %i.lu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.noexc13.i.i.i.i
  %i.lv = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lt)
          to label %.noexc14.i.i.i.i162 unwind label %bb.bg, !noalias !53597 ; 2 uses

.noexc14.i.i.i.i162:                              ; preds = %bb.bd
  %i.lw = extractvalue { ptr, i64 } %i.lv, 0
  %i.lx = extractvalue { ptr, i64 } %i.lv, 1
  br label %.lr.ph.i.i.i.i.i.i133.backedge

bb.be:                                            ; preds = %.noexc13.i.i.i.i
  %i.ly = load ptr, ptr %i.lt, align 8, !alias.scope !53621, !noalias !53622, !nonnull !55, !noundef !55
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.ma = load i64, ptr %i.lz, align 8, !alias.scope !53621, !noalias !53622, !noundef !55
  br label %.lr.ph.i.i.i.i.i.i133.backedge

.lr.ph.i.i.i.i.i.i133.backedge:                   ; preds = %bb.be, %.noexc14.i.i.i.i162
  %.sroa.0.0.i.i.i.i.sink.i.i.i.i135.be = phi ptr [ %i.lw, %.noexc14.i.i.i.i162 ], [ %i.ly, %bb.be ]
  %.pn.i.i.i.i.i.i139.be = phi i64 [ %i.lx, %.noexc14.i.i.i.i162 ], [ %i.ma, %bb.be ]
  br label %.lr.ph.i.i.i.i.i.i133

bb.bf:                                            ; preds = %bb.af
  store i64 0, ptr %i.i, align 8, !alias.scope !53623, !noalias !53624
  %i.mb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.mb, align 8, !alias.scope !53623, !noalias !53624
  %i.mc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.mc, align 8, !alias.scope !53623, !noalias !53624
  br label %bb.bi

.thread50.i.i.i.i126:                             ; preds = %bb.av, %.loopexit.i38.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i127 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd, %.loopexit.i.i.i.i.i149, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i165"
  %lpad.loopexit.i.i.i.i154 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.pre.i.i.i.i155 = load i64, ptr %i.f, align 8, !range !65, !alias.scope !53625, !noalias !53597 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53625)
  %i.md = icmp eq i64 %.val.i.pre.i.i.i.i155, 0
  br i1 %i.md, label %.body, label %._crit_edge.i.i.i156

._crit_edge.i.i.i156:                             ; preds = %bb.bg
  %.val1.i.i.pre.i.i.i157 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i124, align 8, !alias.scope !53625, !noalias !53597
  %.pre.i.i.i158 = shl nuw i64 %.val.i.pre.i.i.i.i155, 4
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.i.i.i156, %.thread50.i.i.i.i126
  %.pre-phi.i.i.i128 = phi i64 [ %.pre.i.i.i158, %._crit_edge.i.i.i156 ], [ %i.ig, %.thread50.i.i.i.i126 ]
  %.val1.i.i.i.i.i129 = phi ptr [ %.val1.i.i.pre.i.i.i157, %._crit_edge.i.i.i156 ], [ %i.ij, %.thread50.i.i.i.i126 ]
  %lpad.phi54.i.i.i.i130 = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i154, %._crit_edge.i.i.i156 ], [ %lpad.loopexit.split-lp.i.i.i.i127, %.thread50.i.i.i.i126 ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i129, i64 noundef %.pre-phi.i.i.i128, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !53626
  br label %.body

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hcdc70abdda0ac3f8E.exit.i.i.i.i": ; preds = %bb.ax, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i123"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !53624
  br label %bb.bi

bb.bi:                                            ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hcdc70abdda0ac3f8E.exit.i.i.i.i", %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !53597
  %i.me = invoke noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2443, i64 noundef 7, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2441)
          to label %bb.bl unwind label %bb.bk

.body195:                                         ; preds = %bb.bz, %bb.bp, %bb.bq, %.body.i.i.i.i, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.ob, %bb.bz ], [ %i.mi, %bb.bk ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.my, %bb.bp ], [ %i.my, %bb.bq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53627)
  %.val.i180 = load i64, ptr %i.i, align 8, !range !65, !alias.scope !53627, !noundef !55 ; 2 uses
  %i.mf = icmp eq i64 %.val.i180, 0
  br i1 %i.mf, label %.body, label %bb.bj

bb.bj:                                            ; preds = %.body195
  %i.mg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i181 = load ptr, ptr %i.mg, align 8, !alias.scope !53627, !nonnull !55, !noundef !55
  %i.mh = shl nuw i64 %.val.i180, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i181, i64 noundef %i.mh, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !53627
  br label %.body

bb.bk:                                            ; preds = %bb.bm, %bb.bl, %bb.bi
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body195

bb.bl:                                            ; preds = %bb.bi
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.mk = invoke noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.me, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2445, i64 noundef 4, ptr noundef nonnull align 1 %i.mj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2444)
          to label %bb.bm unwind label %bb.bk

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !noundef !55
end_hunk_3
